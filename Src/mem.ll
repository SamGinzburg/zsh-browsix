; ModuleID = 'mem.c'
source_filename = "mem.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.heap = type { %struct.heap*, i32, i32, %struct.heapstack* }
%struct.heapstack = type { %struct.heapstack*, i32 }
%struct.__sigset_t = type { [32 x i32] }

@queueing_enabled = external global i32, align 4
@heaps = internal global %struct.heap* null, align 4
@fheap = internal global %struct.heap* null, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@.str = private unnamed_addr constant [27 x i8] c"fatal error: out of memory\00", align 1
@mmap_heap_alloc.pgsz = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"fatal error: out of heap memory\00", align 1

; Function Attrs: noinline nounwind
define %struct.heap* @new_heaps() #0 {
entry:
  %h = alloca %struct.heap*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp3 = alloca %struct.__sigset_t, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load %struct.heap*, %struct.heap** @heaps, align 4
  store %struct.heap* %1, %struct.heap** %h, align 4
  store %struct.heap* null, %struct.heap** @heaps, align 4
  store %struct.heap* null, %struct.heap** @fheap, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body1
  %3 = load i32, i32* @queue_front, align 4
  %4 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %5, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %6 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %6
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %7 = bitcast %struct.__sigset_t* %oset to i8*
  %8 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 128, i32 4, i1 false)
  %9 = load i32, i32* @queue_front, align 4
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %9
  %10 = load i32, i32* %arrayidx2, align 4
  call void @zhandler(i32 %10)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp3, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %11 = load %struct.heap*, %struct.heap** %h, align 4
  ret %struct.heap* %11
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define void @old_heaps(%struct.heap* %old) #0 {
entry:
  %old.addr = alloca %struct.heap*, align 4
  %h = alloca %struct.heap*, align 4
  %n = alloca %struct.heap*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp4 = alloca %struct.__sigset_t, align 4
  store %struct.heap* %old, %struct.heap** %old.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load %struct.heap*, %struct.heap** @heaps, align 4
  store %struct.heap* %1, %struct.heap** %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool = icmp ne %struct.heap* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.heap*, %struct.heap** %h, align 4
  %next = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 0
  %4 = load %struct.heap*, %struct.heap** %next, align 4
  store %struct.heap* %4, %struct.heap** %n, align 4
  %5 = load %struct.heap*, %struct.heap** %h, align 4
  %6 = bitcast %struct.heap* %5 to i8*
  %7 = load %struct.heap*, %struct.heap** %h, align 4
  %size = getelementptr inbounds %struct.heap, %struct.heap* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  %call = call i32 @munmap(i8* %6, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.heap*, %struct.heap** %n, align 4
  store %struct.heap* %9, %struct.heap** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.heap*, %struct.heap** %old.addr, align 4
  store %struct.heap* %10, %struct.heap** @heaps, align 4
  store %struct.heap* null, %struct.heap** @fheap, align 4
  br label %do.body

do.body:                                          ; preds = %for.end
  %11 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool1 = icmp ne i32 %dec, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body2
  %12 = load i32, i32* @queue_front, align 4
  %13 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %12, %13
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %14, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %15 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %15
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %16 = bitcast %struct.__sigset_t* %oset to i8*
  %17 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 4, i1 false)
  %18 = load i32, i32* @queue_front, align 4
  %arrayidx3 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %18
  %19 = load i32, i32* %arrayidx3, align 4
  call void @zhandler(i32 %19)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp4, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end5

do.end5:                                          ; preds = %if.end
  ret void
}

declare i32 @munmap(i8*, i32) #1

; Function Attrs: noinline nounwind
define %struct.heap* @switch_heaps(%struct.heap* %new) #0 {
entry:
  %new.addr = alloca %struct.heap*, align 4
  %h = alloca %struct.heap*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp3 = alloca %struct.__sigset_t, align 4
  store %struct.heap* %new, %struct.heap** %new.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load %struct.heap*, %struct.heap** @heaps, align 4
  store %struct.heap* %1, %struct.heap** %h, align 4
  %2 = load %struct.heap*, %struct.heap** %new.addr, align 4
  store %struct.heap* %2, %struct.heap** @heaps, align 4
  store %struct.heap* null, %struct.heap** @fheap, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body1
  %4 = load i32, i32* @queue_front, align 4
  %5 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %6, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %7 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %7
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %8 = bitcast %struct.__sigset_t* %oset to i8*
  %9 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 128, i32 4, i1 false)
  %10 = load i32, i32* @queue_front, align 4
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %10
  %11 = load i32, i32* %arrayidx2, align 4
  call void @zhandler(i32 %11)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp3, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %12 = load %struct.heap*, %struct.heap** %h, align 4
  ret %struct.heap* %12
}

; Function Attrs: noinline nounwind
define void @pushheap() #0 {
entry:
  %h = alloca %struct.heap*, align 4
  %hs = alloca %struct.heapstack*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp7 = alloca %struct.__sigset_t, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load %struct.heap*, %struct.heap** @heaps, align 4
  store %struct.heap* %1, %struct.heap** %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool = icmp ne %struct.heap* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i8* @zalloc(i32 8)
  %3 = bitcast i8* %call to %struct.heapstack*
  store %struct.heapstack* %3, %struct.heapstack** %hs, align 4
  %4 = load %struct.heap*, %struct.heap** %h, align 4
  %sp = getelementptr inbounds %struct.heap, %struct.heap* %4, i32 0, i32 3
  %5 = load %struct.heapstack*, %struct.heapstack** %sp, align 4
  %6 = load %struct.heapstack*, %struct.heapstack** %hs, align 4
  %next = getelementptr inbounds %struct.heapstack, %struct.heapstack* %6, i32 0, i32 0
  store %struct.heapstack* %5, %struct.heapstack** %next, align 4
  %7 = load %struct.heapstack*, %struct.heapstack** %hs, align 4
  %8 = load %struct.heap*, %struct.heap** %h, align 4
  %sp1 = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 3
  store %struct.heapstack* %7, %struct.heapstack** %sp1, align 4
  %9 = load %struct.heap*, %struct.heap** %h, align 4
  %used = getelementptr inbounds %struct.heap, %struct.heap* %9, i32 0, i32 2
  %10 = load i32, i32* %used, align 4
  %11 = load %struct.heapstack*, %struct.heapstack** %hs, align 4
  %used2 = getelementptr inbounds %struct.heapstack, %struct.heapstack* %11, i32 0, i32 1
  store i32 %10, i32* %used2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.heap*, %struct.heap** %h, align 4
  %next3 = getelementptr inbounds %struct.heap, %struct.heap* %12, i32 0, i32 0
  %13 = load %struct.heap*, %struct.heap** %next3, align 4
  store %struct.heap* %13, %struct.heap** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %14 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool4 = icmp ne i32 %dec, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body5
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
  %arrayidx6 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %21
  %22 = load i32, i32* %arrayidx6, align 4
  call void @zhandler(i32 %22)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp7, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end8

do.end8:                                          ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind
define i8* @zalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp8 = alloca %struct.__sigset_t, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %2 = load i32, i32* %size.addr, align 4
  %call = call i8* @malloc(i32 %2)
  store i8* %call, i8** %ptr, align 4
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end3:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end3
  %3 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool4 = icmp ne i32 %dec, 0
  br i1 %tobool4, label %if.end9, label %if.then5

if.then5:                                         ; preds = %do.body
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body6
  %4 = load i32, i32* @queue_front, align 4
  %5 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %6, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %7 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %7
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %8 = bitcast %struct.__sigset_t* %oset to i8*
  %9 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 128, i32 4, i1 false)
  %10 = load i32, i32* @queue_front, align 4
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %10
  %11 = load i32, i32* %arrayidx7, align 4
  call void @zhandler(i32 %11)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp8, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  %12 = load i8*, i8** %ptr, align 4
  ret i8* %12
}

; Function Attrs: noinline nounwind
define void @freeheap() #0 {
entry:
  %h = alloca %struct.heap*, align 4
  %hn = alloca %struct.heap*, align 4
  %hl = alloca %struct.heap*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp63 = alloca %struct.__sigset_t, align 4
  store %struct.heap* null, %struct.heap** %hl, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load %struct.heap*, %struct.heap** @fheap, align 4
  %tobool = icmp ne %struct.heap* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.heap*, %struct.heap** @fheap, align 4
  %sp = getelementptr inbounds %struct.heap, %struct.heap* %2, i32 0, i32 3
  %3 = load %struct.heapstack*, %struct.heapstack** %sp, align 4
  %tobool1 = icmp ne %struct.heapstack* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct.heap* null, %struct.heap** @fheap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load %struct.heap*, %struct.heap** @fheap, align 4
  %tobool2 = icmp ne %struct.heap* %4, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load %struct.heap*, %struct.heap** @fheap, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct.heap*, %struct.heap** @heaps, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.heap* [ %5, %cond.true ], [ %6, %cond.false ]
  store %struct.heap* %cond, %struct.heap** %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool3 = icmp ne %struct.heap* %7, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.heap*, %struct.heap** %h, align 4
  %next = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 0
  %9 = load %struct.heap*, %struct.heap** %next, align 4
  store %struct.heap* %9, %struct.heap** %hn, align 4
  %10 = load %struct.heap*, %struct.heap** %h, align 4
  %sp4 = getelementptr inbounds %struct.heap, %struct.heap* %10, i32 0, i32 3
  %11 = load %struct.heapstack*, %struct.heapstack** %sp4, align 4
  %tobool5 = icmp ne %struct.heapstack* %11, null
  br i1 %tobool5, label %if.then6, label %if.else26

if.then6:                                         ; preds = %for.body
  %12 = load %struct.heap*, %struct.heap** %h, align 4
  %sp7 = getelementptr inbounds %struct.heap, %struct.heap* %12, i32 0, i32 3
  %13 = load %struct.heapstack*, %struct.heapstack** %sp7, align 4
  %used = getelementptr inbounds %struct.heapstack, %struct.heapstack* %13, i32 0, i32 1
  %14 = load i32, i32* %used, align 4
  %15 = load %struct.heap*, %struct.heap** %h, align 4
  %used8 = getelementptr inbounds %struct.heap, %struct.heap* %15, i32 0, i32 2
  store i32 %14, i32* %used8, align 4
  %16 = load %struct.heap*, %struct.heap** @fheap, align 4
  %tobool9 = icmp ne %struct.heap* %16, null
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then6
  %17 = load %struct.heap*, %struct.heap** %h, align 4
  %used11 = getelementptr inbounds %struct.heap, %struct.heap* %17, i32 0, i32 2
  %18 = load i32, i32* %used11, align 4
  %19 = load %struct.heap*, %struct.heap** %h, align 4
  %size = getelementptr inbounds %struct.heap, %struct.heap* %19, i32 0, i32 1
  %20 = load i32, i32* %size, align 4
  %sub = sub i32 %20, 16
  %cmp = icmp ult i32 %18, %sub
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then10
  %21 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %21, %struct.heap** @fheap, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10
  br label %if.end25

if.else:                                          ; preds = %if.then6
  %22 = load %struct.heap*, %struct.heap** %h, align 4
  %size14 = getelementptr inbounds %struct.heap, %struct.heap* %22, i32 0, i32 1
  %23 = load i32, i32* %size14, align 4
  %sub15 = sub i32 %23, 16
  %24 = load %struct.heap*, %struct.heap** %h, align 4
  %used16 = getelementptr inbounds %struct.heap, %struct.heap* %24, i32 0, i32 2
  %25 = load i32, i32* %used16, align 4
  %sub17 = sub i32 %sub15, %25
  %26 = load %struct.heap*, %struct.heap** @fheap, align 4
  %size18 = getelementptr inbounds %struct.heap, %struct.heap* %26, i32 0, i32 1
  %27 = load i32, i32* %size18, align 4
  %sub19 = sub i32 %27, 16
  %28 = load %struct.heap*, %struct.heap** @fheap, align 4
  %used20 = getelementptr inbounds %struct.heap, %struct.heap* %28, i32 0, i32 2
  %29 = load i32, i32* %used20, align 4
  %sub21 = sub i32 %sub19, %29
  %cmp22 = icmp ugt i32 %sub17, %sub21
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  %30 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %30, %struct.heap** @fheap, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end13
  %31 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %31, %struct.heap** %hl, align 4
  br label %if.end52

if.else26:                                        ; preds = %for.body
  %32 = load %struct.heap*, %struct.heap** @fheap, align 4
  %33 = load %struct.heap*, %struct.heap** %h, align 4
  %cmp27 = icmp eq %struct.heap* %32, %33
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else26
  store %struct.heap* null, %struct.heap** @fheap, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else26
  %34 = load %struct.heap*, %struct.heap** %h, align 4
  %next30 = getelementptr inbounds %struct.heap, %struct.heap* %34, i32 0, i32 0
  %35 = load %struct.heap*, %struct.heap** %next30, align 4
  %tobool31 = icmp ne %struct.heap* %35, null
  br i1 %tobool31, label %if.then32, label %if.else48

if.then32:                                        ; preds = %if.end29
  %36 = load %struct.heap*, %struct.heap** %h, align 4
  %37 = load %struct.heap*, %struct.heap** @heaps, align 4
  %cmp33 = icmp eq %struct.heap* %36, %37
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.then32
  %38 = load %struct.heap*, %struct.heap** %h, align 4
  %next35 = getelementptr inbounds %struct.heap, %struct.heap* %38, i32 0, i32 0
  %39 = load %struct.heap*, %struct.heap** %next35, align 4
  store %struct.heap* %39, %struct.heap** @heaps, align 4
  store %struct.heap* %39, %struct.heap** %hl, align 4
  br label %if.end46

if.else36:                                        ; preds = %if.then32
  %40 = load %struct.heap*, %struct.heap** %hl, align 4
  %tobool37 = icmp ne %struct.heap* %40, null
  br i1 %tobool37, label %land.lhs.true38, label %if.else44

land.lhs.true38:                                  ; preds = %if.else36
  %41 = load %struct.heap*, %struct.heap** %hl, align 4
  %next39 = getelementptr inbounds %struct.heap, %struct.heap* %41, i32 0, i32 0
  %42 = load %struct.heap*, %struct.heap** %next39, align 4
  %43 = load %struct.heap*, %struct.heap** %h, align 4
  %cmp40 = icmp eq %struct.heap* %42, %43
  br i1 %cmp40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %land.lhs.true38
  %44 = load %struct.heap*, %struct.heap** %h, align 4
  %next42 = getelementptr inbounds %struct.heap, %struct.heap* %44, i32 0, i32 0
  %45 = load %struct.heap*, %struct.heap** %next42, align 4
  %46 = load %struct.heap*, %struct.heap** %hl, align 4
  %next43 = getelementptr inbounds %struct.heap, %struct.heap* %46, i32 0, i32 0
  store %struct.heap* %45, %struct.heap** %next43, align 4
  br label %if.end45

if.else44:                                        ; preds = %land.lhs.true38, %if.else36
  %47 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %47, %struct.heap** %hl, align 4
  br label %for.inc

if.end45:                                         ; preds = %if.then41
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then34
  %48 = load %struct.heap*, %struct.heap** %h, align 4
  %next47 = getelementptr inbounds %struct.heap, %struct.heap* %48, i32 0, i32 0
  store %struct.heap* null, %struct.heap** %next47, align 4
  br label %if.end50

if.else48:                                        ; preds = %if.end29
  %49 = load %struct.heap*, %struct.heap** %h, align 4
  %used49 = getelementptr inbounds %struct.heap, %struct.heap* %49, i32 0, i32 2
  store i32 0, i32* %used49, align 4
  %50 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %50, %struct.heap** %hl, align 4
  store %struct.heap* %50, %struct.heap** @fheap, align 4
  br label %for.end

if.end50:                                         ; preds = %if.end46
  %51 = load %struct.heap*, %struct.heap** %h, align 4
  %52 = bitcast %struct.heap* %51 to i8*
  %53 = load %struct.heap*, %struct.heap** %h, align 4
  %size51 = getelementptr inbounds %struct.heap, %struct.heap* %53, i32 0, i32 1
  %54 = load i32, i32* %size51, align 4
  %call = call i32 @munmap(i8* %52, i32 %54)
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %if.end25
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.else44
  %55 = load %struct.heap*, %struct.heap** %hn, align 4
  store %struct.heap* %55, %struct.heap** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else48, %for.cond
  %56 = load %struct.heap*, %struct.heap** %hl, align 4
  %tobool53 = icmp ne %struct.heap* %56, null
  br i1 %tobool53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %for.end
  %57 = load %struct.heap*, %struct.heap** %hl, align 4
  %next55 = getelementptr inbounds %struct.heap, %struct.heap* %57, i32 0, i32 0
  store %struct.heap* null, %struct.heap** %next55, align 4
  br label %if.end57

if.else56:                                        ; preds = %for.end
  store %struct.heap* null, %struct.heap** @fheap, align 4
  store %struct.heap* null, %struct.heap** @heaps, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.then54
  br label %do.body

do.body:                                          ; preds = %if.end57
  %58 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool58 = icmp ne i32 %dec, 0
  br i1 %tobool58, label %if.end64, label %if.then59

if.then59:                                        ; preds = %do.body
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body60
  %59 = load i32, i32* @queue_front, align 4
  %60 = load i32, i32* @queue_rear, align 4
  %cmp61 = icmp ne i32 %59, %60
  br i1 %cmp61, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %61 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %61, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %62 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %62
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %63 = bitcast %struct.__sigset_t* %oset to i8*
  %64 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %63, i8* %64, i32 128, i32 4, i1 false)
  %65 = load i32, i32* @queue_front, align 4
  %arrayidx62 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %65
  %66 = load i32, i32* %arrayidx62, align 4
  call void @zhandler(i32 %66)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp63, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end64

if.end64:                                         ; preds = %do.end, %do.body
  br label %do.end65

do.end65:                                         ; preds = %if.end64
  ret void
}

; Function Attrs: noinline nounwind
define void @popheap() #0 {
entry:
  %h = alloca %struct.heap*, align 4
  %hn = alloca %struct.heap*, align 4
  %hl = alloca %struct.heap*, align 4
  %hs = alloca %struct.heapstack*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp56 = alloca %struct.__sigset_t, align 4
  store %struct.heap* null, %struct.heap** %hl, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  store %struct.heap* null, %struct.heap** @fheap, align 4
  %1 = load %struct.heap*, %struct.heap** @heaps, align 4
  store %struct.heap* %1, %struct.heap** %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool = icmp ne %struct.heap* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.heap*, %struct.heap** %h, align 4
  %next = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 0
  %4 = load %struct.heap*, %struct.heap** %next, align 4
  store %struct.heap* %4, %struct.heap** %hn, align 4
  %5 = load %struct.heap*, %struct.heap** %h, align 4
  %sp = getelementptr inbounds %struct.heap, %struct.heap* %5, i32 0, i32 3
  %6 = load %struct.heapstack*, %struct.heapstack** %sp, align 4
  store %struct.heapstack* %6, %struct.heapstack** %hs, align 4
  %tobool1 = icmp ne %struct.heapstack* %6, null
  br i1 %tobool1, label %if.then, label %if.else21

if.then:                                          ; preds = %for.body
  %7 = load %struct.heapstack*, %struct.heapstack** %hs, align 4
  %next2 = getelementptr inbounds %struct.heapstack, %struct.heapstack* %7, i32 0, i32 0
  %8 = load %struct.heapstack*, %struct.heapstack** %next2, align 4
  %9 = load %struct.heap*, %struct.heap** %h, align 4
  %sp3 = getelementptr inbounds %struct.heap, %struct.heap* %9, i32 0, i32 3
  store %struct.heapstack* %8, %struct.heapstack** %sp3, align 4
  %10 = load %struct.heapstack*, %struct.heapstack** %hs, align 4
  %used = getelementptr inbounds %struct.heapstack, %struct.heapstack* %10, i32 0, i32 1
  %11 = load i32, i32* %used, align 4
  %12 = load %struct.heap*, %struct.heap** %h, align 4
  %used4 = getelementptr inbounds %struct.heap, %struct.heap* %12, i32 0, i32 2
  store i32 %11, i32* %used4, align 4
  %13 = load %struct.heap*, %struct.heap** @fheap, align 4
  %tobool5 = icmp ne %struct.heap* %13, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %14 = load %struct.heap*, %struct.heap** %h, align 4
  %used7 = getelementptr inbounds %struct.heap, %struct.heap* %14, i32 0, i32 2
  %15 = load i32, i32* %used7, align 4
  %16 = load %struct.heap*, %struct.heap** %h, align 4
  %size = getelementptr inbounds %struct.heap, %struct.heap* %16, i32 0, i32 1
  %17 = load i32, i32* %size, align 4
  %sub = sub i32 %17, 16
  %cmp = icmp ult i32 %15, %sub
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then6
  %18 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %18, %struct.heap** @fheap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then6
  br label %if.end20

if.else:                                          ; preds = %if.then
  %19 = load %struct.heap*, %struct.heap** %h, align 4
  %size9 = getelementptr inbounds %struct.heap, %struct.heap* %19, i32 0, i32 1
  %20 = load i32, i32* %size9, align 4
  %sub10 = sub i32 %20, 16
  %21 = load %struct.heap*, %struct.heap** %h, align 4
  %used11 = getelementptr inbounds %struct.heap, %struct.heap* %21, i32 0, i32 2
  %22 = load i32, i32* %used11, align 4
  %sub12 = sub i32 %sub10, %22
  %23 = load %struct.heap*, %struct.heap** @fheap, align 4
  %size13 = getelementptr inbounds %struct.heap, %struct.heap* %23, i32 0, i32 1
  %24 = load i32, i32* %size13, align 4
  %sub14 = sub i32 %24, 16
  %25 = load %struct.heap*, %struct.heap** @fheap, align 4
  %used15 = getelementptr inbounds %struct.heap, %struct.heap* %25, i32 0, i32 2
  %26 = load i32, i32* %used15, align 4
  %sub16 = sub i32 %sub14, %26
  %cmp17 = icmp ugt i32 %sub12, %sub16
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else
  %27 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %27, %struct.heap** @fheap, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %28 = load %struct.heapstack*, %struct.heapstack** %hs, align 4
  %29 = bitcast %struct.heapstack* %28 to i8*
  call void @zfree(i8* %29, i32 8)
  %30 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %30, %struct.heap** %hl, align 4
  br label %if.end45

if.else21:                                        ; preds = %for.body
  %31 = load %struct.heap*, %struct.heap** %h, align 4
  %next22 = getelementptr inbounds %struct.heap, %struct.heap* %31, i32 0, i32 0
  %32 = load %struct.heap*, %struct.heap** %next22, align 4
  %tobool23 = icmp ne %struct.heap* %32, null
  br i1 %tobool23, label %if.then24, label %if.else39

if.then24:                                        ; preds = %if.else21
  %33 = load %struct.heap*, %struct.heap** %h, align 4
  %34 = load %struct.heap*, %struct.heap** @heaps, align 4
  %cmp25 = icmp eq %struct.heap* %33, %34
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.then24
  %35 = load %struct.heap*, %struct.heap** %h, align 4
  %next27 = getelementptr inbounds %struct.heap, %struct.heap* %35, i32 0, i32 0
  %36 = load %struct.heap*, %struct.heap** %next27, align 4
  store %struct.heap* %36, %struct.heap** @heaps, align 4
  store %struct.heap* %36, %struct.heap** %hl, align 4
  br label %if.end37

if.else28:                                        ; preds = %if.then24
  %37 = load %struct.heap*, %struct.heap** %hl, align 4
  %tobool29 = icmp ne %struct.heap* %37, null
  br i1 %tobool29, label %land.lhs.true, label %if.else35

land.lhs.true:                                    ; preds = %if.else28
  %38 = load %struct.heap*, %struct.heap** %hl, align 4
  %next30 = getelementptr inbounds %struct.heap, %struct.heap* %38, i32 0, i32 0
  %39 = load %struct.heap*, %struct.heap** %next30, align 4
  %40 = load %struct.heap*, %struct.heap** %h, align 4
  %cmp31 = icmp eq %struct.heap* %39, %40
  br i1 %cmp31, label %if.then32, label %if.else35

if.then32:                                        ; preds = %land.lhs.true
  %41 = load %struct.heap*, %struct.heap** %h, align 4
  %next33 = getelementptr inbounds %struct.heap, %struct.heap* %41, i32 0, i32 0
  %42 = load %struct.heap*, %struct.heap** %next33, align 4
  %43 = load %struct.heap*, %struct.heap** %hl, align 4
  %next34 = getelementptr inbounds %struct.heap, %struct.heap* %43, i32 0, i32 0
  store %struct.heap* %42, %struct.heap** %next34, align 4
  br label %if.end36

if.else35:                                        ; preds = %land.lhs.true, %if.else28
  %44 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %44, %struct.heap** %hl, align 4
  br label %for.inc

if.end36:                                         ; preds = %if.then32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then26
  %45 = load %struct.heap*, %struct.heap** %h, align 4
  %next38 = getelementptr inbounds %struct.heap, %struct.heap* %45, i32 0, i32 0
  store %struct.heap* null, %struct.heap** %next38, align 4
  br label %if.end43

if.else39:                                        ; preds = %if.else21
  %46 = load %struct.heap*, %struct.heap** %hl, align 4
  %47 = load %struct.heap*, %struct.heap** %h, align 4
  %cmp40 = icmp eq %struct.heap* %46, %47
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.else39
  store %struct.heap* null, %struct.heap** %hl, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.else39
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end37
  %48 = load %struct.heap*, %struct.heap** %h, align 4
  %49 = bitcast %struct.heap* %48 to i8*
  %50 = load %struct.heap*, %struct.heap** %h, align 4
  %size44 = getelementptr inbounds %struct.heap, %struct.heap* %50, i32 0, i32 1
  %51 = load i32, i32* %size44, align 4
  %call = call i32 @munmap(i8* %49, i32 %51)
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end20
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %if.else35
  %52 = load %struct.heap*, %struct.heap** %hn, align 4
  store %struct.heap* %52, %struct.heap** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.heap*, %struct.heap** %hl, align 4
  %tobool46 = icmp ne %struct.heap* %53, null
  br i1 %tobool46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %for.end
  %54 = load %struct.heap*, %struct.heap** %hl, align 4
  %next48 = getelementptr inbounds %struct.heap, %struct.heap* %54, i32 0, i32 0
  store %struct.heap* null, %struct.heap** %next48, align 4
  br label %if.end50

if.else49:                                        ; preds = %for.end
  store %struct.heap* null, %struct.heap** @heaps, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then47
  br label %do.body

do.body:                                          ; preds = %if.end50
  %55 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool51 = icmp ne i32 %dec, 0
  br i1 %tobool51, label %if.end57, label %if.then52

if.then52:                                        ; preds = %do.body
  br label %do.body53

do.body53:                                        ; preds = %if.then52
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body53
  %56 = load i32, i32* @queue_front, align 4
  %57 = load i32, i32* @queue_rear, align 4
  %cmp54 = icmp ne i32 %56, %57
  br i1 %cmp54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %58, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %59 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %59
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %60 = bitcast %struct.__sigset_t* %oset to i8*
  %61 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 128, i32 4, i1 false)
  %62 = load i32, i32* @queue_front, align 4
  %arrayidx55 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %62
  %63 = load i32, i32* %arrayidx55, align 4
  call void @zhandler(i32 %63)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp56, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end57

if.end57:                                         ; preds = %do.end, %do.body
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  ret void
}

; Function Attrs: noinline nounwind
define void @zfree(i8* %p, i32 %sz) #0 {
entry:
  %p.addr = alloca i8*, align 4
  %sz.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 4
  store i32 %sz, i32* %sz.addr, align 4
  %0 = load i8*, i8** %p.addr, align 4
  call void @free(i8* %0)
  ret void
}

; Function Attrs: noinline nounwind
define i8* @zheapptr(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 4
  %h = alloca %struct.heap*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp10 = alloca %struct.__sigset_t, align 4
  store i8* %p, i8** %p.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load %struct.heap*, %struct.heap** @heaps, align 4
  store %struct.heap* %1, %struct.heap** %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool = icmp ne %struct.heap* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p.addr, align 4
  %4 = load %struct.heap*, %struct.heap** %h, align 4
  %5 = bitcast %struct.heap* %4 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 16
  %cmp = icmp uge i8* %3, %add.ptr
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8*, i8** %p.addr, align 4
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i32 8
  %7 = load %struct.heap*, %struct.heap** %h, align 4
  %8 = bitcast %struct.heap* %7 to i8*
  %add.ptr2 = getelementptr inbounds i8, i8* %8, i32 16
  %9 = load %struct.heap*, %struct.heap** %h, align 4
  %size = getelementptr inbounds %struct.heap, %struct.heap* %9, i32 0, i32 1
  %10 = load i32, i32* %size, align 4
  %sub = sub i32 %10, 16
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i32 %sub
  %cmp4 = icmp ult i8* %add.ptr1, %add.ptr3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.heap*, %struct.heap** %h, align 4
  %next = getelementptr inbounds %struct.heap, %struct.heap* %11, i32 0, i32 0
  %12 = load %struct.heap*, %struct.heap** %next, align 4
  store %struct.heap* %12, %struct.heap** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %13 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool5 = icmp ne i32 %dec, 0
  br i1 %tobool5, label %if.end11, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body7
  %14 = load i32, i32* @queue_front, align 4
  %15 = load i32, i32* @queue_rear, align 4
  %cmp8 = icmp ne i32 %14, %15
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %16, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %17 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %17
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %18 = bitcast %struct.__sigset_t* %oset to i8*
  %19 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 4, i1 false)
  %20 = load i32, i32* @queue_front, align 4
  %arrayidx9 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %20
  %21 = load i32, i32* %arrayidx9, align 4
  call void @zhandler(i32 %21)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp10, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %22 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool13 = icmp ne %struct.heap* %22, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end12
  %23 = load i8*, i8** %p.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind
define i8* @zhalloc(i32 %size) #0 {
entry:
  %retval = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  %h = alloca %struct.heap*, align 4
  %hp = alloca %struct.heap*, align 4
  %n = alloca i32, align 4
  %ret = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp14 = alloca %struct.__sigset_t, align 4
  %oset39 = alloca %struct.__sigset_t, align 4
  %tmp43 = alloca %struct.__sigset_t, align 4
  %tmp45 = alloca %struct.__sigset_t, align 4
  store i32 %size, i32* %size.addr, align 4
  store %struct.heap* null, %struct.heap** %hp, align 4
  %0 = load i32, i32* %size.addr, align 4
  %add = add i32 %0, 8
  %sub = sub i32 %add, 1
  %and = and i32 %sub, -8
  store i32 %and, i32* %size.addr, align 4
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %2 = load %struct.heap*, %struct.heap** @fheap, align 4
  %tobool = icmp ne %struct.heap* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.heap*, %struct.heap** @fheap, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.heap*, %struct.heap** @heaps, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.heap* [ %3, %cond.true ], [ %4, %cond.false ]
  store %struct.heap* %cond, %struct.heap** %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool1 = icmp ne %struct.heap* %5, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %6, %struct.heap** %hp, align 4
  %7 = load %struct.heap*, %struct.heap** %h, align 4
  %size2 = getelementptr inbounds %struct.heap, %struct.heap* %7, i32 0, i32 1
  %8 = load i32, i32* %size2, align 4
  %sub3 = sub i32 %8, 16
  %9 = load i32, i32* %size.addr, align 4
  %10 = load %struct.heap*, %struct.heap** %h, align 4
  %used = getelementptr inbounds %struct.heap, %struct.heap* %10, i32 0, i32 2
  %11 = load i32, i32* %used, align 4
  %add4 = add i32 %9, %11
  store i32 %add4, i32* %n, align 4
  %cmp = icmp uge i32 %sub3, %add4
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %n, align 4
  %13 = load %struct.heap*, %struct.heap** %h, align 4
  %used5 = getelementptr inbounds %struct.heap, %struct.heap* %13, i32 0, i32 2
  store i32 %12, i32* %used5, align 4
  %14 = load %struct.heap*, %struct.heap** %h, align 4
  %15 = bitcast %struct.heap* %14 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %15, i32 16
  %16 = load i32, i32* %n, align 4
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i32 %16
  %17 = load i32, i32* %size.addr, align 4
  %idx.neg = sub i32 0, %17
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i32 %idx.neg
  store i8* %add.ptr7, i8** %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %18 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool8 = icmp ne i32 %dec, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %do.body
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body10
  %19 = load i32, i32* @queue_front, align 4
  %20 = load i32, i32* @queue_rear, align 4
  %cmp11 = icmp ne i32 %19, %20
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* @queue_front, align 4
  %add12 = add nsw i32 %21, 1
  %rem = srem i32 %add12, 128
  store i32 %rem, i32* @queue_front, align 4
  %22 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %22
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %23 = bitcast %struct.__sigset_t* %oset to i8*
  %24 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 128, i32 4, i1 false)
  %25 = load i32, i32* @queue_front, align 4
  %arrayidx13 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %25
  %26 = load i32, i32* %arrayidx13, align 4
  call void @zhandler(i32 %26)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp14, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end15

do.end15:                                         ; preds = %if.end
  %27 = load i8*, i8** %ret, align 4
  store i8* %27, i8** %retval, align 4
  br label %return

if.end16:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %28 = load %struct.heap*, %struct.heap** %h, align 4
  %next = getelementptr inbounds %struct.heap, %struct.heap* %28, i32 0, i32 0
  %29 = load %struct.heap*, %struct.heap** %next, align 4
  store %struct.heap* %29, %struct.heap** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %size.addr, align 4
  %cmp17 = icmp ugt i32 16360, %30
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %for.end
  br label %cond.end21

cond.false19:                                     ; preds = %for.end
  %31 = load i32, i32* %size.addr, align 4
  %add20 = add i32 %31, 16
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true18
  %cond22 = phi i32 [ 16376, %cond.true18 ], [ %add20, %cond.false19 ]
  store i32 %cond22, i32* %n, align 4
  %call = call %struct.heap* @mmap_heap_alloc(i32* %n)
  store %struct.heap* %call, %struct.heap** %h, align 4
  %32 = load i32, i32* %n, align 4
  %33 = load %struct.heap*, %struct.heap** %h, align 4
  %size23 = getelementptr inbounds %struct.heap, %struct.heap* %33, i32 0, i32 1
  store i32 %32, i32* %size23, align 4
  %34 = load i32, i32* %size.addr, align 4
  %35 = load %struct.heap*, %struct.heap** %h, align 4
  %used24 = getelementptr inbounds %struct.heap, %struct.heap* %35, i32 0, i32 2
  store i32 %34, i32* %used24, align 4
  %36 = load %struct.heap*, %struct.heap** %h, align 4
  %next25 = getelementptr inbounds %struct.heap, %struct.heap* %36, i32 0, i32 0
  store %struct.heap* null, %struct.heap** %next25, align 4
  %37 = load %struct.heap*, %struct.heap** %h, align 4
  %sp = getelementptr inbounds %struct.heap, %struct.heap* %37, i32 0, i32 3
  store %struct.heapstack* null, %struct.heapstack** %sp, align 4
  %38 = load %struct.heap*, %struct.heap** %hp, align 4
  %tobool26 = icmp ne %struct.heap* %38, null
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %cond.end21
  %39 = load %struct.heap*, %struct.heap** %h, align 4
  %40 = load %struct.heap*, %struct.heap** %hp, align 4
  %next28 = getelementptr inbounds %struct.heap, %struct.heap* %40, i32 0, i32 0
  store %struct.heap* %39, %struct.heap** %next28, align 4
  br label %if.end29

if.else:                                          ; preds = %cond.end21
  %41 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %41, %struct.heap** @heaps, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then27
  %42 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %42, %struct.heap** @fheap, align 4
  br label %do.body30

do.body30:                                        ; preds = %if.end29
  %43 = load i32, i32* @queueing_enabled, align 4
  %dec31 = add nsw i32 %43, -1
  store i32 %dec31, i32* @queueing_enabled, align 4
  %tobool32 = icmp ne i32 %dec31, 0
  br i1 %tobool32, label %if.end48, label %if.then33

if.then33:                                        ; preds = %do.body30
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  br label %while.cond35

while.cond35:                                     ; preds = %while.body37, %do.body34
  %44 = load i32, i32* @queue_front, align 4
  %45 = load i32, i32* @queue_rear, align 4
  %cmp36 = icmp ne i32 %44, %45
  br i1 %cmp36, label %while.body37, label %while.end46

while.body37:                                     ; preds = %while.cond35
  %46 = load i32, i32* @queue_front, align 4
  %add40 = add nsw i32 %46, 1
  %rem41 = srem i32 %add40, 128
  store i32 %rem41, i32* @queue_front, align 4
  %47 = load i32, i32* @queue_front, align 4
  %arrayidx42 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %47
  call void @signal_setmask(%struct.__sigset_t* sret %tmp43, %struct.__sigset_t* byval align 4 %arrayidx42)
  %48 = bitcast %struct.__sigset_t* %oset39 to i8*
  %49 = bitcast %struct.__sigset_t* %tmp43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 128, i32 4, i1 false)
  %50 = load i32, i32* @queue_front, align 4
  %arrayidx44 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %50
  %51 = load i32, i32* %arrayidx44, align 4
  call void @zhandler(i32 %51)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp45, %struct.__sigset_t* byval align 4 %oset39)
  br label %while.cond35

while.end46:                                      ; preds = %while.cond35
  br label %do.end47

do.end47:                                         ; preds = %while.end46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %do.body30
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  %52 = load %struct.heap*, %struct.heap** %h, align 4
  %53 = bitcast %struct.heap* %52 to i8*
  %add.ptr50 = getelementptr inbounds i8, i8* %53, i32 16
  store i8* %add.ptr50, i8** %retval, align 4
  br label %return

return:                                           ; preds = %do.end49, %do.end15
  %54 = load i8*, i8** %retval, align 4
  ret i8* %54
}

; Function Attrs: noinline nounwind
define internal %struct.heap* @mmap_heap_alloc(i32* %n) #0 {
entry:
  %n.addr = alloca i32*, align 4
  %h = alloca %struct.heap*, align 4
  store i32* %n, i32** %n.addr, align 4
  %0 = load i32, i32* @mmap_heap_alloc.pgsz, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @sysconf(i32 30)
  store i32 %call, i32* @mmap_heap_alloc.pgsz, align 4
  %1 = load i32, i32* @mmap_heap_alloc.pgsz, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* @mmap_heap_alloc.pgsz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %n.addr, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @mmap_heap_alloc.pgsz, align 4
  %add = add i32 %3, %4
  %5 = load i32, i32* @mmap_heap_alloc.pgsz, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %add, %neg
  %6 = load i32*, i32** %n.addr, align 4
  store i32 %and, i32* %6, align 4
  %7 = load i32*, i32** %n.addr, align 4
  %8 = load i32, i32* %7, align 4
  %call1 = call i8* @mmap(i8* null, i32 %8, i32 3, i32 34, i32 -1, i32 0)
  %9 = bitcast i8* %call1 to %struct.heap*
  store %struct.heap* %9, %struct.heap** %h, align 4
  %10 = load %struct.heap*, %struct.heap** %h, align 4
  %cmp = icmp eq %struct.heap* %10, inttoptr (i32 -1 to %struct.heap*)
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end3:                                          ; preds = %if.end
  %11 = load %struct.heap*, %struct.heap** %h, align 4
  ret %struct.heap* %11
}

; Function Attrs: noinline nounwind
define i8* @hrealloc(i8* %p, i32 %old, i32 %new) #0 {
entry:
  %retval = alloca i8*, align 4
  %p.addr = alloca i8*, align 4
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %h = alloca %struct.heap*, align 4
  %ph = alloca %struct.heap*, align 4
  %ptr = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp30 = alloca %struct.__sigset_t, align 4
  %oset42 = alloca %struct.__sigset_t, align 4
  %tmp46 = alloca %struct.__sigset_t, align 4
  %tmp48 = alloca %struct.__sigset_t, align 4
  %oset78 = alloca %struct.__sigset_t, align 4
  %tmp82 = alloca %struct.__sigset_t, align 4
  %tmp84 = alloca %struct.__sigset_t, align 4
  %hnew = alloca %struct.heap*, align 4
  %n = alloca i32, align 4
  %oset121 = alloca %struct.__sigset_t, align 4
  %tmp125 = alloca %struct.__sigset_t, align 4
  %tmp127 = alloca %struct.__sigset_t, align 4
  %oset153 = alloca %struct.__sigset_t, align 4
  %tmp157 = alloca %struct.__sigset_t, align 4
  %tmp159 = alloca %struct.__sigset_t, align 4
  %t = alloca i8*, align 4
  %oset183 = alloca %struct.__sigset_t, align 4
  %tmp187 = alloca %struct.__sigset_t, align 4
  %tmp189 = alloca %struct.__sigset_t, align 4
  store i8* %p, i8** %p.addr, align 4
  store i32 %old, i32* %old.addr, align 4
  store i32 %new, i32* %new.addr, align 4
  %0 = load i32, i32* %old.addr, align 4
  %add = add i32 %0, 8
  %sub = sub i32 %add, 1
  %and = and i32 %sub, -8
  store i32 %and, i32* %old.addr, align 4
  %1 = load i32, i32* %new.addr, align 4
  %add1 = add i32 %1, 8
  %sub2 = sub i32 %add1, 1
  %and3 = and i32 %sub2, -8
  store i32 %and3, i32* %new.addr, align 4
  %2 = load i32, i32* %old.addr, align 4
  %3 = load i32, i32* %new.addr, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p.addr, align 4
  store i8* %4, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %old.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8*, i8** %p.addr, align 4
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %new.addr, align 4
  %call = call i8* @zhalloc(i32 %7)
  store i8* %call, i8** %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %9 = load %struct.heap*, %struct.heap** @heaps, align 4
  store %struct.heap* %9, %struct.heap** %h, align 4
  store %struct.heap* null, %struct.heap** %ph, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load %struct.heap*, %struct.heap** %h, align 4
  %tobool7 = icmp ne %struct.heap* %10, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p.addr, align 4
  %12 = load %struct.heap*, %struct.heap** %h, align 4
  %13 = bitcast %struct.heap* %12 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %13, i32 16
  %cmp8 = icmp uge i8* %11, %add.ptr
  br i1 %cmp8, label %land.lhs.true9, label %if.end15

land.lhs.true9:                                   ; preds = %for.body
  %14 = load i8*, i8** %p.addr, align 4
  %15 = load %struct.heap*, %struct.heap** %h, align 4
  %16 = bitcast %struct.heap* %15 to i8*
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i32 16
  %17 = load %struct.heap*, %struct.heap** %h, align 4
  %size = getelementptr inbounds %struct.heap, %struct.heap* %17, i32 0, i32 1
  %18 = load i32, i32* %size, align 4
  %sub11 = sub i32 %18, 16
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr10, i32 %sub11
  %cmp13 = icmp ult i8* %14, %add.ptr12
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true9
  br label %for.end

if.end15:                                         ; preds = %land.lhs.true9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %19 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %19, %struct.heap** %ph, align 4
  %20 = load %struct.heap*, %struct.heap** %h, align 4
  %next = getelementptr inbounds %struct.heap, %struct.heap* %20, i32 0, i32 0
  %21 = load %struct.heap*, %struct.heap** %next, align 4
  store %struct.heap* %21, %struct.heap** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then14, %for.cond
  %22 = load i8*, i8** %p.addr, align 4
  %23 = load i32, i32* %old.addr, align 4
  %add.ptr16 = getelementptr inbounds i8, i8* %22, i32 %23
  %24 = load %struct.heap*, %struct.heap** %h, align 4
  %25 = bitcast %struct.heap* %24 to i8*
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i32 16
  %26 = load %struct.heap*, %struct.heap** %h, align 4
  %used = getelementptr inbounds %struct.heap, %struct.heap* %26, i32 0, i32 2
  %27 = load i32, i32* %used, align 4
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i32 %27
  %cmp19 = icmp ult i8* %add.ptr16, %add.ptr18
  br i1 %cmp19, label %if.then20, label %if.end54

if.then20:                                        ; preds = %for.end
  %28 = load i32, i32* %new.addr, align 4
  %29 = load i32, i32* %old.addr, align 4
  %cmp21 = icmp ugt i32 %28, %29
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then20
  %30 = load i32, i32* %new.addr, align 4
  %call23 = call i8* @zhalloc(i32 %30)
  store i8* %call23, i8** %ptr, align 4
  %31 = load i8*, i8** %ptr, align 4
  %32 = load i8*, i8** %p.addr, align 4
  %33 = load i32, i32* %old.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 %33, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then22
  %34 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool24 = icmp ne i32 %dec, 0
  br i1 %tobool24, label %if.end31, label %if.then25

if.then25:                                        ; preds = %do.body
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body26
  %35 = load i32, i32* @queue_front, align 4
  %36 = load i32, i32* @queue_rear, align 4
  %cmp27 = icmp ne i32 %35, %36
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* @queue_front, align 4
  %add28 = add nsw i32 %37, 1
  %rem = srem i32 %add28, 128
  store i32 %rem, i32* @queue_front, align 4
  %38 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %38
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %39 = bitcast %struct.__sigset_t* %oset to i8*
  %40 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %39, i8* %40, i32 128, i32 4, i1 false)
  %41 = load i32, i32* @queue_front, align 4
  %arrayidx29 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %41
  %42 = load i32, i32* %arrayidx29, align 4
  call void @zhandler(i32 %42)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp30, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end31

if.end31:                                         ; preds = %do.end, %do.body
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %43 = load i8*, i8** %ptr, align 4
  store i8* %43, i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then20
  br label %do.body33

do.body33:                                        ; preds = %if.else
  %44 = load i32, i32* @queueing_enabled, align 4
  %dec34 = add nsw i32 %44, -1
  store i32 %dec34, i32* @queueing_enabled, align 4
  %tobool35 = icmp ne i32 %dec34, 0
  br i1 %tobool35, label %if.end51, label %if.then36

if.then36:                                        ; preds = %do.body33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %while.cond38

while.cond38:                                     ; preds = %while.body40, %do.body37
  %45 = load i32, i32* @queue_front, align 4
  %46 = load i32, i32* @queue_rear, align 4
  %cmp39 = icmp ne i32 %45, %46
  br i1 %cmp39, label %while.body40, label %while.end49

while.body40:                                     ; preds = %while.cond38
  %47 = load i32, i32* @queue_front, align 4
  %add43 = add nsw i32 %47, 1
  %rem44 = srem i32 %add43, 128
  store i32 %rem44, i32* @queue_front, align 4
  %48 = load i32, i32* @queue_front, align 4
  %arrayidx45 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %48
  call void @signal_setmask(%struct.__sigset_t* sret %tmp46, %struct.__sigset_t* byval align 4 %arrayidx45)
  %49 = bitcast %struct.__sigset_t* %oset42 to i8*
  %50 = bitcast %struct.__sigset_t* %tmp46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 128, i32 4, i1 false)
  %51 = load i32, i32* @queue_front, align 4
  %arrayidx47 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %51
  %52 = load i32, i32* %arrayidx47, align 4
  call void @zhandler(i32 %52)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp48, %struct.__sigset_t* byval align 4 %oset42)
  br label %while.cond38

while.end49:                                      ; preds = %while.cond38
  br label %do.end50

do.end50:                                         ; preds = %while.end49
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %do.body33
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  %53 = load i32, i32* %new.addr, align 4
  %tobool53 = icmp ne i32 %53, 0
  br i1 %tobool53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end52
  %54 = load i8*, i8** %p.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end52
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %54, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %retval, align 4
  br label %return

if.end54:                                         ; preds = %for.end
  %55 = load i8*, i8** %p.addr, align 4
  %56 = load %struct.heap*, %struct.heap** %h, align 4
  %57 = bitcast %struct.heap* %56 to i8*
  %add.ptr55 = getelementptr inbounds i8, i8* %57, i32 16
  %cmp56 = icmp eq i8* %55, %add.ptr55
  br i1 %cmp56, label %if.then57, label %if.end133

if.then57:                                        ; preds = %if.end54
  %58 = load i32, i32* %new.addr, align 4
  %tobool58 = icmp ne i32 %58, 0
  br i1 %tobool58, label %if.end89, label %if.then59

if.then59:                                        ; preds = %if.then57
  %59 = load %struct.heap*, %struct.heap** %ph, align 4
  %tobool60 = icmp ne %struct.heap* %59, null
  br i1 %tobool60, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.then59
  %60 = load %struct.heap*, %struct.heap** %h, align 4
  %next62 = getelementptr inbounds %struct.heap, %struct.heap* %60, i32 0, i32 0
  %61 = load %struct.heap*, %struct.heap** %next62, align 4
  %62 = load %struct.heap*, %struct.heap** %ph, align 4
  %next63 = getelementptr inbounds %struct.heap, %struct.heap* %62, i32 0, i32 0
  store %struct.heap* %61, %struct.heap** %next63, align 4
  br label %if.end66

if.else64:                                        ; preds = %if.then59
  %63 = load %struct.heap*, %struct.heap** %h, align 4
  %next65 = getelementptr inbounds %struct.heap, %struct.heap* %63, i32 0, i32 0
  %64 = load %struct.heap*, %struct.heap** %next65, align 4
  store %struct.heap* %64, %struct.heap** @heaps, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %if.then61
  store %struct.heap* null, %struct.heap** @fheap, align 4
  %65 = load %struct.heap*, %struct.heap** %h, align 4
  %66 = bitcast %struct.heap* %65 to i8*
  %67 = load %struct.heap*, %struct.heap** %h, align 4
  %size67 = getelementptr inbounds %struct.heap, %struct.heap* %67, i32 0, i32 1
  %68 = load i32, i32* %size67, align 4
  %call68 = call i32 @munmap(i8* %66, i32 %68)
  br label %do.body69

do.body69:                                        ; preds = %if.end66
  %69 = load i32, i32* @queueing_enabled, align 4
  %dec70 = add nsw i32 %69, -1
  store i32 %dec70, i32* @queueing_enabled, align 4
  %tobool71 = icmp ne i32 %dec70, 0
  br i1 %tobool71, label %if.end87, label %if.then72

if.then72:                                        ; preds = %do.body69
  br label %do.body73

do.body73:                                        ; preds = %if.then72
  br label %while.cond74

while.cond74:                                     ; preds = %while.body76, %do.body73
  %70 = load i32, i32* @queue_front, align 4
  %71 = load i32, i32* @queue_rear, align 4
  %cmp75 = icmp ne i32 %70, %71
  br i1 %cmp75, label %while.body76, label %while.end85

while.body76:                                     ; preds = %while.cond74
  %72 = load i32, i32* @queue_front, align 4
  %add79 = add nsw i32 %72, 1
  %rem80 = srem i32 %add79, 128
  store i32 %rem80, i32* @queue_front, align 4
  %73 = load i32, i32* @queue_front, align 4
  %arrayidx81 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %73
  call void @signal_setmask(%struct.__sigset_t* sret %tmp82, %struct.__sigset_t* byval align 4 %arrayidx81)
  %74 = bitcast %struct.__sigset_t* %oset78 to i8*
  %75 = bitcast %struct.__sigset_t* %tmp82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %75, i32 128, i32 4, i1 false)
  %76 = load i32, i32* @queue_front, align 4
  %arrayidx83 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %76
  %77 = load i32, i32* %arrayidx83, align 4
  call void @zhandler(i32 %77)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp84, %struct.__sigset_t* byval align 4 %oset78)
  br label %while.cond74

while.end85:                                      ; preds = %while.cond74
  br label %do.end86

do.end86:                                         ; preds = %while.end85
  br label %if.end87

if.end87:                                         ; preds = %do.end86, %do.body69
  br label %do.end88

do.end88:                                         ; preds = %if.end87
  store i8* null, i8** %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.then57
  %78 = load i32, i32* %new.addr, align 4
  %79 = load %struct.heap*, %struct.heap** %h, align 4
  %size90 = getelementptr inbounds %struct.heap, %struct.heap* %79, i32 0, i32 1
  %80 = load i32, i32* %size90, align 4
  %sub91 = sub i32 %80, 16
  %cmp92 = icmp ugt i32 %78, %sub91
  br i1 %cmp92, label %if.then93, label %if.end110

if.then93:                                        ; preds = %if.end89
  %81 = load i32, i32* %new.addr, align 4
  %add96 = add i32 %81, 16
  %add97 = add i32 %add96, 16376
  store i32 %add97, i32* %n, align 4
  %82 = load i32, i32* %n, align 4
  %rem98 = urem i32 %82, 16376
  %83 = load i32, i32* %n, align 4
  %sub99 = sub i32 %83, %rem98
  store i32 %sub99, i32* %n, align 4
  store %struct.heap* null, %struct.heap** @fheap, align 4
  %call100 = call %struct.heap* @mmap_heap_alloc(i32* %n)
  store %struct.heap* %call100, %struct.heap** %hnew, align 4
  %84 = load %struct.heap*, %struct.heap** %hnew, align 4
  %85 = bitcast %struct.heap* %84 to i8*
  %86 = load %struct.heap*, %struct.heap** %h, align 4
  %87 = bitcast %struct.heap* %86 to i8*
  %88 = load %struct.heap*, %struct.heap** %h, align 4
  %size101 = getelementptr inbounds %struct.heap, %struct.heap* %88, i32 0, i32 1
  %89 = load i32, i32* %size101, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %85, i8* %87, i32 %89, i32 4, i1 false)
  %90 = load %struct.heap*, %struct.heap** %h, align 4
  %91 = bitcast %struct.heap* %90 to i8*
  %92 = load %struct.heap*, %struct.heap** %h, align 4
  %size102 = getelementptr inbounds %struct.heap, %struct.heap* %92, i32 0, i32 1
  %93 = load i32, i32* %size102, align 4
  %call103 = call i32 @munmap(i8* %91, i32 %93)
  %94 = load %struct.heap*, %struct.heap** %hnew, align 4
  store %struct.heap* %94, %struct.heap** %h, align 4
  %95 = load i32, i32* %n, align 4
  %96 = load %struct.heap*, %struct.heap** %h, align 4
  %size104 = getelementptr inbounds %struct.heap, %struct.heap* %96, i32 0, i32 1
  store i32 %95, i32* %size104, align 4
  %97 = load %struct.heap*, %struct.heap** %ph, align 4
  %tobool105 = icmp ne %struct.heap* %97, null
  br i1 %tobool105, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.then93
  %98 = load %struct.heap*, %struct.heap** %h, align 4
  %99 = load %struct.heap*, %struct.heap** %ph, align 4
  %next107 = getelementptr inbounds %struct.heap, %struct.heap* %99, i32 0, i32 0
  store %struct.heap* %98, %struct.heap** %next107, align 4
  br label %if.end109

if.else108:                                       ; preds = %if.then93
  %100 = load %struct.heap*, %struct.heap** %h, align 4
  store %struct.heap* %100, %struct.heap** @heaps, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then106
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end89
  %101 = load i32, i32* %new.addr, align 4
  %102 = load %struct.heap*, %struct.heap** %h, align 4
  %used111 = getelementptr inbounds %struct.heap, %struct.heap* %102, i32 0, i32 2
  store i32 %101, i32* %used111, align 4
  br label %do.body112

do.body112:                                       ; preds = %if.end110
  %103 = load i32, i32* @queueing_enabled, align 4
  %dec113 = add nsw i32 %103, -1
  store i32 %dec113, i32* @queueing_enabled, align 4
  %tobool114 = icmp ne i32 %dec113, 0
  br i1 %tobool114, label %if.end130, label %if.then115

if.then115:                                       ; preds = %do.body112
  br label %do.body116

do.body116:                                       ; preds = %if.then115
  br label %while.cond117

while.cond117:                                    ; preds = %while.body119, %do.body116
  %104 = load i32, i32* @queue_front, align 4
  %105 = load i32, i32* @queue_rear, align 4
  %cmp118 = icmp ne i32 %104, %105
  br i1 %cmp118, label %while.body119, label %while.end128

while.body119:                                    ; preds = %while.cond117
  %106 = load i32, i32* @queue_front, align 4
  %add122 = add nsw i32 %106, 1
  %rem123 = srem i32 %add122, 128
  store i32 %rem123, i32* @queue_front, align 4
  %107 = load i32, i32* @queue_front, align 4
  %arrayidx124 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %107
  call void @signal_setmask(%struct.__sigset_t* sret %tmp125, %struct.__sigset_t* byval align 4 %arrayidx124)
  %108 = bitcast %struct.__sigset_t* %oset121 to i8*
  %109 = bitcast %struct.__sigset_t* %tmp125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %108, i8* %109, i32 128, i32 4, i1 false)
  %110 = load i32, i32* @queue_front, align 4
  %arrayidx126 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %110
  %111 = load i32, i32* %arrayidx126, align 4
  call void @zhandler(i32 %111)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp127, %struct.__sigset_t* byval align 4 %oset121)
  br label %while.cond117

while.end128:                                     ; preds = %while.cond117
  br label %do.end129

do.end129:                                        ; preds = %while.end128
  br label %if.end130

if.end130:                                        ; preds = %do.end129, %do.body112
  br label %do.end131

do.end131:                                        ; preds = %if.end130
  %112 = load %struct.heap*, %struct.heap** %h, align 4
  %113 = bitcast %struct.heap* %112 to i8*
  %add.ptr132 = getelementptr inbounds i8, i8* %113, i32 16
  store i8* %add.ptr132, i8** %retval, align 4
  br label %return

if.end133:                                        ; preds = %if.end54
  %114 = load %struct.heap*, %struct.heap** %h, align 4
  %used134 = getelementptr inbounds %struct.heap, %struct.heap* %114, i32 0, i32 2
  %115 = load i32, i32* %used134, align 4
  %116 = load i32, i32* %new.addr, align 4
  %117 = load i32, i32* %old.addr, align 4
  %sub135 = sub i32 %116, %117
  %add136 = add i32 %115, %sub135
  %118 = load %struct.heap*, %struct.heap** %h, align 4
  %size137 = getelementptr inbounds %struct.heap, %struct.heap* %118, i32 0, i32 1
  %119 = load i32, i32* %size137, align 4
  %sub138 = sub i32 %119, 16
  %cmp139 = icmp ule i32 %add136, %sub138
  br i1 %cmp139, label %if.then140, label %if.else164

if.then140:                                       ; preds = %if.end133
  %120 = load i32, i32* %new.addr, align 4
  %121 = load i32, i32* %old.addr, align 4
  %sub141 = sub i32 %120, %121
  %122 = load %struct.heap*, %struct.heap** %h, align 4
  %used142 = getelementptr inbounds %struct.heap, %struct.heap* %122, i32 0, i32 2
  %123 = load i32, i32* %used142, align 4
  %add143 = add i32 %123, %sub141
  store i32 %add143, i32* %used142, align 4
  br label %do.body144

do.body144:                                       ; preds = %if.then140
  %124 = load i32, i32* @queueing_enabled, align 4
  %dec145 = add nsw i32 %124, -1
  store i32 %dec145, i32* @queueing_enabled, align 4
  %tobool146 = icmp ne i32 %dec145, 0
  br i1 %tobool146, label %if.end162, label %if.then147

if.then147:                                       ; preds = %do.body144
  br label %do.body148

do.body148:                                       ; preds = %if.then147
  br label %while.cond149

while.cond149:                                    ; preds = %while.body151, %do.body148
  %125 = load i32, i32* @queue_front, align 4
  %126 = load i32, i32* @queue_rear, align 4
  %cmp150 = icmp ne i32 %125, %126
  br i1 %cmp150, label %while.body151, label %while.end160

while.body151:                                    ; preds = %while.cond149
  %127 = load i32, i32* @queue_front, align 4
  %add154 = add nsw i32 %127, 1
  %rem155 = srem i32 %add154, 128
  store i32 %rem155, i32* @queue_front, align 4
  %128 = load i32, i32* @queue_front, align 4
  %arrayidx156 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %128
  call void @signal_setmask(%struct.__sigset_t* sret %tmp157, %struct.__sigset_t* byval align 4 %arrayidx156)
  %129 = bitcast %struct.__sigset_t* %oset153 to i8*
  %130 = bitcast %struct.__sigset_t* %tmp157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %129, i8* %130, i32 128, i32 4, i1 false)
  %131 = load i32, i32* @queue_front, align 4
  %arrayidx158 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %131
  %132 = load i32, i32* %arrayidx158, align 4
  call void @zhandler(i32 %132)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp159, %struct.__sigset_t* byval align 4 %oset153)
  br label %while.cond149

while.end160:                                     ; preds = %while.cond149
  br label %do.end161

do.end161:                                        ; preds = %while.end160
  br label %if.end162

if.end162:                                        ; preds = %do.end161, %do.body144
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  %133 = load i8*, i8** %p.addr, align 4
  store i8* %133, i8** %retval, align 4
  br label %return

if.else164:                                       ; preds = %if.end133
  %134 = load i32, i32* %new.addr, align 4
  %call166 = call i8* @zhalloc(i32 %134)
  store i8* %call166, i8** %t, align 4
  %135 = load i8*, i8** %t, align 4
  %136 = load i8*, i8** %p.addr, align 4
  %137 = load i32, i32* %old.addr, align 4
  %138 = load i32, i32* %new.addr, align 4
  %cmp167 = icmp ugt i32 %137, %138
  br i1 %cmp167, label %cond.true168, label %cond.false169

cond.true168:                                     ; preds = %if.else164
  %139 = load i32, i32* %new.addr, align 4
  br label %cond.end170

cond.false169:                                    ; preds = %if.else164
  %140 = load i32, i32* %old.addr, align 4
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false169, %cond.true168
  %cond171 = phi i32 [ %139, %cond.true168 ], [ %140, %cond.false169 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %135, i8* %136, i32 %cond171, i32 1, i1 false)
  %141 = load i32, i32* %old.addr, align 4
  %142 = load %struct.heap*, %struct.heap** %h, align 4
  %used172 = getelementptr inbounds %struct.heap, %struct.heap* %142, i32 0, i32 2
  %143 = load i32, i32* %used172, align 4
  %sub173 = sub i32 %143, %141
  store i32 %sub173, i32* %used172, align 4
  br label %do.body174

do.body174:                                       ; preds = %cond.end170
  %144 = load i32, i32* @queueing_enabled, align 4
  %dec175 = add nsw i32 %144, -1
  store i32 %dec175, i32* @queueing_enabled, align 4
  %tobool176 = icmp ne i32 %dec175, 0
  br i1 %tobool176, label %if.end192, label %if.then177

if.then177:                                       ; preds = %do.body174
  br label %do.body178

do.body178:                                       ; preds = %if.then177
  br label %while.cond179

while.cond179:                                    ; preds = %while.body181, %do.body178
  %145 = load i32, i32* @queue_front, align 4
  %146 = load i32, i32* @queue_rear, align 4
  %cmp180 = icmp ne i32 %145, %146
  br i1 %cmp180, label %while.body181, label %while.end190

while.body181:                                    ; preds = %while.cond179
  %147 = load i32, i32* @queue_front, align 4
  %add184 = add nsw i32 %147, 1
  %rem185 = srem i32 %add184, 128
  store i32 %rem185, i32* @queue_front, align 4
  %148 = load i32, i32* @queue_front, align 4
  %arrayidx186 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %148
  call void @signal_setmask(%struct.__sigset_t* sret %tmp187, %struct.__sigset_t* byval align 4 %arrayidx186)
  %149 = bitcast %struct.__sigset_t* %oset183 to i8*
  %150 = bitcast %struct.__sigset_t* %tmp187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %149, i8* %150, i32 128, i32 4, i1 false)
  %151 = load i32, i32* @queue_front, align 4
  %arrayidx188 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %151
  %152 = load i32, i32* %arrayidx188, align 4
  call void @zhandler(i32 %152)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp189, %struct.__sigset_t* byval align 4 %oset183)
  br label %while.cond179

while.end190:                                     ; preds = %while.cond179
  br label %do.end191

do.end191:                                        ; preds = %while.end190
  br label %if.end192

if.end192:                                        ; preds = %do.end191, %do.body174
  br label %do.end193

do.end193:                                        ; preds = %if.end192
  %153 = load i8*, i8** %t, align 4
  store i8* %153, i8** %retval, align 4
  br label %return

return:                                           ; preds = %do.end193, %do.end163, %do.end131, %do.end88, %cond.end, %do.end32, %if.then5, %if.then
  %154 = load i8*, i8** %retval, align 4
  ret i8* %154
}

; Function Attrs: noinline nounwind
define i8* @hcalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %ptr = alloca i8*, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %call = call i8* @zhalloc(i32 %0)
  store i8* %call, i8** %ptr, align 4
  %1 = load i8*, i8** %ptr, align 4
  %2 = load i32, i32* %size.addr, align 4
  call void @llvm.memset.p0i8.i32(i8* %1, i8 0, i32 %2, i32 1, i1 false)
  %3 = load i8*, i8** %ptr, align 4
  ret i8* %3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i8* @malloc(i32) #1

declare void @zerr(i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: noinline nounwind
define i8* @zshcalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %ptr = alloca i8*, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %call = call i8* @zalloc(i32 %0)
  store i8* %call, i8** %ptr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %ptr, align 4
  %3 = load i32, i32* %size.addr, align 4
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 %3, i32 1, i1 false)
  %4 = load i8*, i8** %ptr, align 4
  ret i8* %4
}

; Function Attrs: noinline nounwind
define i8* @zrealloc(i8* %ptr, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 4
  %ptr.addr = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp9 = alloca %struct.__sigset_t, align 4
  %oset28 = alloca %struct.__sigset_t, align 4
  %tmp32 = alloca %struct.__sigset_t, align 4
  %tmp34 = alloca %struct.__sigset_t, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i8*, i8** %ptr.addr, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %ptr.addr, align 4
  %4 = load i32, i32* %size.addr, align 4
  %call = call i8* @realloc(i8* %3, i32 %4)
  store i8* %call, i8** %ptr.addr, align 4
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %if.then2
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool5 = icmp ne i32 %dec, 0
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body7
  %6 = load i32, i32* @queue_front, align 4
  %7 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %8, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %9 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %9
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %10 = bitcast %struct.__sigset_t* %oset to i8*
  %11 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 128, i32 4, i1 false)
  %12 = load i32, i32* @queue_front, align 4
  %arrayidx8 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %12
  %13 = load i32, i32* %arrayidx8, align 4
  call void @zhandler(i32 %13)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp9, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  %14 = load i8*, i8** %ptr.addr, align 4
  store i8* %14, i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %15 = load i8*, i8** %ptr.addr, align 4
  call void @free(i8* %15)
  br label %if.end12

if.end12:                                         ; preds = %if.else
  store i8* null, i8** %ptr.addr, align 4
  br label %if.end18

if.else13:                                        ; preds = %entry
  %16 = load i32, i32* %size.addr, align 4
  %call14 = call i8* @malloc(i32 %16)
  store i8* %call14, i8** %ptr.addr, align 4
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.else13
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end12
  br label %do.body19

do.body19:                                        ; preds = %if.end18
  %17 = load i32, i32* @queueing_enabled, align 4
  %dec20 = add nsw i32 %17, -1
  store i32 %dec20, i32* @queueing_enabled, align 4
  %tobool21 = icmp ne i32 %dec20, 0
  br i1 %tobool21, label %if.end37, label %if.then22

if.then22:                                        ; preds = %do.body19
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %while.cond24

while.cond24:                                     ; preds = %while.body26, %do.body23
  %18 = load i32, i32* @queue_front, align 4
  %19 = load i32, i32* @queue_rear, align 4
  %cmp25 = icmp ne i32 %18, %19
  br i1 %cmp25, label %while.body26, label %while.end35

while.body26:                                     ; preds = %while.cond24
  %20 = load i32, i32* @queue_front, align 4
  %add29 = add nsw i32 %20, 1
  %rem30 = srem i32 %add29, 128
  store i32 %rem30, i32* @queue_front, align 4
  %21 = load i32, i32* @queue_front, align 4
  %arrayidx31 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %21
  call void @signal_setmask(%struct.__sigset_t* sret %tmp32, %struct.__sigset_t* byval align 4 %arrayidx31)
  %22 = bitcast %struct.__sigset_t* %oset28 to i8*
  %23 = bitcast %struct.__sigset_t* %tmp32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 128, i32 4, i1 false)
  %24 = load i32, i32* @queue_front, align 4
  %arrayidx33 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %24
  %25 = load i32, i32* %arrayidx33, align 4
  call void @zhandler(i32 %25)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp34, %struct.__sigset_t* byval align 4 %oset28)
  br label %while.cond24

while.end35:                                      ; preds = %while.cond24
  br label %do.end36

do.end36:                                         ; preds = %while.end35
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %do.body19
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %26 = load i8*, i8** %ptr.addr, align 4
  store i8* %26, i8** %retval, align 4
  br label %return

return:                                           ; preds = %do.end38, %do.end11
  %27 = load i8*, i8** %retval, align 4
  ret i8* %27
}

declare i8* @realloc(i8*, i32) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind
define void @zsfree(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 4
  store i8* %p, i8** %p.addr, align 4
  %0 = load i8*, i8** %p.addr, align 4
  call void @free(i8* %0)
  ret void
}

declare i32 @sysconf(i32) #1

declare i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
