; ModuleID = 'context.c'
source_filename = "context.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.context_stack = type { %struct.context_stack*, %struct.hist_stack, %struct.lex_stack, %struct.parse_stack }
%struct.hist_stack = type { i32, i32, i32, i32, i32, i8*, i8*, i16*, i32, i32, i32 ()*, void (i32)*, void (i32)*, void (i32)*, void ()*, void ()*, void (i32)*, i8*, i32, i32 }
%struct.lex_stack = type { i32, i32, i32, i32, i32, i8*, i8*, %struct.lexbufstate, i32, i8*, %struct.lexbufstate, i32, i32 }
%struct.lexbufstate = type { i8*, i32, i32 }
%struct.parse_stack = type { %struct.heredocs*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.eccstr*, i32, i32, i32 }
%struct.heredocs = type { %struct.heredocs*, i32, i32, i8* }
%struct.eccstr = type { %struct.eccstr*, %struct.eccstr*, i8*, i32, i32, i32, i32 }
%struct.__sigset_t = type { [32 x i32] }

@queueing_enabled = external global i32, align 4
@cstack = internal global %struct.context_stack* null, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4

; Function Attrs: noinline nounwind
define void @zcontext_save_partial(i32 %parts) #0 {
entry:
  %parts.addr = alloca i32, align 4
  %cs = alloca %struct.context_stack*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp20 = alloca %struct.__sigset_t, align 4
  store i32 %parts, i32* %parts.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call = call i8* @malloc(i32 224)
  %1 = bitcast i8* %call to %struct.context_stack*
  store %struct.context_stack* %1, %struct.context_stack** %cs, align 4
  %2 = load i32, i32* %parts.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %hist_stack = getelementptr inbounds %struct.context_stack, %struct.context_stack* %3, i32 0, i32 1
  %4 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %tobool1 = icmp ne %struct.context_stack* %4, null
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  call void @hist_context_save(%struct.hist_stack* %hist_stack, i32 %lnot.ext)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %parts.addr, align 4
  %and2 = and i32 %5, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %6 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %lex_stack = getelementptr inbounds %struct.context_stack, %struct.context_stack* %6, i32 0, i32 2
  %7 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %tobool5 = icmp ne %struct.context_stack* %7, null
  %lnot6 = xor i1 %tobool5, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  call void @lex_context_save(%struct.lex_stack* %lex_stack, i32 %lnot.ext7)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %8 = load i32, i32* %parts.addr, align 4
  %and9 = and i32 %8, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end8
  %9 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %parse_stack = getelementptr inbounds %struct.context_stack, %struct.context_stack* %9, i32 0, i32 3
  %10 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %tobool12 = icmp ne %struct.context_stack* %10, null
  %lnot13 = xor i1 %tobool12, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  call void @parse_context_save(%struct.parse_stack* %parse_stack, i32 %lnot.ext14)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end8
  %11 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %12 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %next = getelementptr inbounds %struct.context_stack, %struct.context_stack* %12, i32 0, i32 0
  store %struct.context_stack* %11, %struct.context_stack** %next, align 4
  %13 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  store %struct.context_stack* %13, %struct.context_stack** @cstack, align 4
  br label %do.body

do.body:                                          ; preds = %if.end15
  %14 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool16 = icmp ne i32 %dec, 0
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %do.body
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body18
  %15 = load i32, i32* @queue_front, align 4
  %16 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %15, %16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %17, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %18 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %18
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %19 = bitcast %struct.__sigset_t* %oset to i8*
  %20 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 4, i1 false)
  %21 = load i32, i32* @queue_front, align 4
  %arrayidx19 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %21
  %22 = load i32, i32* %arrayidx19, align 4
  call void @zhandler(i32 %22)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp20, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  ret void
}

declare i8* @malloc(i32) #1

declare void @hist_context_save(%struct.hist_stack*, i32) #1

declare void @lex_context_save(%struct.lex_stack*, i32) #1

declare void @parse_context_save(%struct.parse_stack*, i32) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define void @zcontext_save() #0 {
entry:
  call void @zcontext_save_partial(i32 7)
  ret void
}

; Function Attrs: noinline nounwind
define void @zcontext_restore_partial(i32 %parts) #0 {
entry:
  %parts.addr = alloca i32, align 4
  %cs = alloca %struct.context_stack*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp20 = alloca %struct.__sigset_t, align 4
  store i32 %parts, i32* %parts.addr, align 4
  %0 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  store %struct.context_stack* %0, %struct.context_stack** %cs, align 4
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %2 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %next = getelementptr inbounds %struct.context_stack, %struct.context_stack* %2, i32 0, i32 0
  %3 = load %struct.context_stack*, %struct.context_stack** %next, align 4
  store %struct.context_stack* %3, %struct.context_stack** @cstack, align 4
  %4 = load i32, i32* %parts.addr, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %hist_stack = getelementptr inbounds %struct.context_stack, %struct.context_stack* %5, i32 0, i32 1
  %6 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %tobool1 = icmp ne %struct.context_stack* %6, null
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  call void @hist_context_restore(%struct.hist_stack* %hist_stack, i32 %lnot.ext)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %parts.addr, align 4
  %and2 = and i32 %7, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %8 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %lex_stack = getelementptr inbounds %struct.context_stack, %struct.context_stack* %8, i32 0, i32 2
  %9 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %tobool5 = icmp ne %struct.context_stack* %9, null
  %lnot6 = xor i1 %tobool5, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  call void @lex_context_restore(%struct.lex_stack* %lex_stack, i32 %lnot.ext7)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %10 = load i32, i32* %parts.addr, align 4
  %and9 = and i32 %10, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end8
  %11 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %parse_stack = getelementptr inbounds %struct.context_stack, %struct.context_stack* %11, i32 0, i32 3
  %12 = load %struct.context_stack*, %struct.context_stack** @cstack, align 4
  %tobool12 = icmp ne %struct.context_stack* %12, null
  %lnot13 = xor i1 %tobool12, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  call void @parse_context_restore(%struct.parse_stack* %parse_stack, i32 %lnot.ext14)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end8
  %13 = load %struct.context_stack*, %struct.context_stack** %cs, align 4
  %14 = bitcast %struct.context_stack* %13 to i8*
  call void @free(i8* %14)
  br label %do.body

do.body:                                          ; preds = %if.end15
  %15 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool16 = icmp ne i32 %dec, 0
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %do.body
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body18
  %16 = load i32, i32* @queue_front, align 4
  %17 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %16, %17
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %18, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %19 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %19
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %20 = bitcast %struct.__sigset_t* %oset to i8*
  %21 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 128, i32 4, i1 false)
  %22 = load i32, i32* @queue_front, align 4
  %arrayidx19 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %22
  %23 = load i32, i32* %arrayidx19, align 4
  call void @zhandler(i32 %23)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp20, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  ret void
}

declare void @hist_context_restore(%struct.hist_stack*, i32) #1

declare void @lex_context_restore(%struct.lex_stack*, i32) #1

declare void @parse_context_restore(%struct.parse_stack*, i32) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind
define void @zcontext_restore() #0 {
entry:
  call void @zcontext_restore_partial(i32 7)
  ret void
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
