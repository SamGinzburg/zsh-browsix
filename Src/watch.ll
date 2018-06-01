; ModuleID = 'watch.c'
source_filename = "watch.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.anon, i32, %struct.timeval, [4 x i32], [20 x i8] }
%struct.anon = type { i16, i16 }
%struct.timeval = type { i32, i32 }
%struct.__sigset_t = type { [32 x i32] }
%struct._IO_FILE = type opaque
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [22 x i8] c"%n has %a %l from %m.\00", align 1
@default_watchfmt = constant i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), align 4
@watch = external global i8**, align 4
@wtab = internal global %struct.utmpx* null, align 4
@wtabsz = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"/dev/null/utmp\00", align 1
@lastutmpcheck = internal global i32 0, align 4
@errflag = external global i32, align 4
@queueing_enabled = external global i32, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"WATCHFMT\00", align 1
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@stdout = external constant %struct._IO_FILE*, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"notme\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"logged off\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"logged on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@typtab = external global [256 x i16], align 2
@.str.10 = private unnamed_addr constant [8 x i8] c"%l:%M%p\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%K:%M\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%a %f\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%y-%m-%d\00", align 1
@txtattrmask = external global i32, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"/dev/null/wtmp\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@lastwatch = external global i32, align 4

; Function Attrs: noinline nounwind
define void @dowatch() #0 {
entry:
  %utab = alloca %struct.utmpx*, align 4
  %uptr = alloca %struct.utmpx*, align 4
  %wptr = alloca %struct.utmpx*, align 4
  %st = alloca %struct.stat, align 8
  %s = alloca i8**, align 4
  %fmt = alloca i8*, align 4
  %utabsz = alloca i32, align 4
  %uct = alloca i32, align 4
  %wct = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp53 = alloca %struct.__sigset_t, align 4
  %0 = load i8**, i8*** @watch, align 4
  store i8** %0, i8*** %s, align 4
  call void @holdintr()
  %1 = load %struct.utmpx*, %struct.utmpx** @wtab, align 4
  %tobool = icmp ne %struct.utmpx* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @readwtab(%struct.utmpx** @wtab, i32 32)
  store i32 %call, i32* @wtabsz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @stat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct.stat* %st)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 19
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %2 = load i32, i32* %tv_sec, align 8
  %3 = load i32, i32* @lastutmpcheck, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void @noholdintr()
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %st_mtim5 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 19
  %tv_sec6 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim5, i32 0, i32 0
  %4 = load i32, i32* %tv_sec6, align 8
  store i32 %4, i32* @lastutmpcheck, align 4
  %5 = load i32, i32* @wtabsz, align 4
  %add = add nsw i32 %5, 4
  %call7 = call i32 @readwtab(%struct.utmpx** %utab, i32 %add)
  store i32 %call7, i32* %utabsz, align 4
  call void @noholdintr()
  %6 = load i32, i32* @errflag, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  %7 = load %struct.utmpx*, %struct.utmpx** %utab, align 4
  %8 = bitcast %struct.utmpx* %7 to i8*
  call void @free(i8* %8)
  br label %return

if.end10:                                         ; preds = %if.end4
  %9 = load i32, i32* @wtabsz, align 4
  store i32 %9, i32* %wct, align 4
  %10 = load i32, i32* %utabsz, align 4
  store i32 %10, i32* %uct, align 4
  %11 = load %struct.utmpx*, %struct.utmpx** %utab, align 4
  store %struct.utmpx* %11, %struct.utmpx** %uptr, align 4
  %12 = load %struct.utmpx*, %struct.utmpx** @wtab, align 4
  store %struct.utmpx* %12, %struct.utmpx** %wptr, align 4
  %13 = load i32, i32* @errflag, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  %14 = load %struct.utmpx*, %struct.utmpx** %utab, align 4
  %15 = bitcast %struct.utmpx* %14 to i8*
  call void @free(i8* %15)
  br label %return

if.end13:                                         ; preds = %if.end10
  %16 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call14 = call i8* @getsparam_u(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call14, i8** %fmt, align 4
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8** %fmt, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %if.end17
  %17 = load i32, i32* %uct, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %land.rhs, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %while.cond
  %18 = load i32, i32* %wct, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false19, %while.cond
  %19 = load i32, i32* @errflag, align 4
  %tobool21 = icmp ne i32 %19, 0
  %lnot = xor i1 %tobool21, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false19
  %20 = phi i1 [ false, %lor.lhs.false19 ], [ %lnot, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i32, i32* %uct, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %lor.lhs.false23, label %if.then27

lor.lhs.false23:                                  ; preds = %while.body
  %22 = load i32, i32* %wct, align 4
  %tobool24 = icmp ne i32 %22, 0
  br i1 %tobool24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false23
  %23 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %24 = load %struct.utmpx*, %struct.utmpx** %wptr, align 4
  %call25 = call i32 @ucmp(%struct.utmpx* %23, %struct.utmpx* %24)
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %land.lhs.true, %while.body
  %25 = load i32, i32* %wct, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %wct, align 4
  %26 = load %struct.utmpx*, %struct.utmpx** %wptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i32 1
  store %struct.utmpx* %incdec.ptr, %struct.utmpx** %wptr, align 4
  %27 = load i8**, i8*** %s, align 4
  %28 = load i8*, i8** %fmt, align 4
  call void @watchlog(i32 0, %struct.utmpx* %26, i8** %27, i8* %28)
  br label %if.end43

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false23
  %29 = load i32, i32* %wct, align 4
  %tobool28 = icmp ne i32 %29, 0
  br i1 %tobool28, label %lor.lhs.false29, label %if.then34

lor.lhs.false29:                                  ; preds = %if.else
  %30 = load i32, i32* %uct, align 4
  %tobool30 = icmp ne i32 %30, 0
  br i1 %tobool30, label %land.lhs.true31, label %if.else37

land.lhs.true31:                                  ; preds = %lor.lhs.false29
  %31 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %32 = load %struct.utmpx*, %struct.utmpx** %wptr, align 4
  %call32 = call i32 @ucmp(%struct.utmpx* %31, %struct.utmpx* %32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %land.lhs.true31, %if.else
  %33 = load i32, i32* %uct, align 4
  %dec35 = add nsw i32 %33, -1
  store i32 %dec35, i32* %uct, align 4
  %34 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %incdec.ptr36 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %34, i32 1
  store %struct.utmpx* %incdec.ptr36, %struct.utmpx** %uptr, align 4
  %35 = load i8**, i8*** %s, align 4
  %36 = load i8*, i8** %fmt, align 4
  call void @watchlog(i32 1, %struct.utmpx* %34, i8** %35, i8* %36)
  br label %if.end42

if.else37:                                        ; preds = %land.lhs.true31, %lor.lhs.false29
  %37 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %incdec.ptr38 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %37, i32 1
  store %struct.utmpx* %incdec.ptr38, %struct.utmpx** %uptr, align 4
  %38 = load %struct.utmpx*, %struct.utmpx** %wptr, align 4
  %incdec.ptr39 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %38, i32 1
  store %struct.utmpx* %incdec.ptr39, %struct.utmpx** %wptr, align 4
  %39 = load i32, i32* %wct, align 4
  %dec40 = add nsw i32 %39, -1
  store i32 %dec40, i32* %wct, align 4
  %40 = load i32, i32* %uct, align 4
  %dec41 = add nsw i32 %40, -1
  store i32 %dec41, i32* %uct, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then34
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then27
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.end
  %41 = load i32, i32* @queueing_enabled, align 4
  %dec44 = add nsw i32 %41, -1
  store i32 %dec44, i32* @queueing_enabled, align 4
  %tobool45 = icmp ne i32 %dec44, 0
  br i1 %tobool45, label %if.end55, label %if.then46

if.then46:                                        ; preds = %do.body
  br label %do.body47

do.body47:                                        ; preds = %if.then46
  br label %while.cond48

while.cond48:                                     ; preds = %while.body50, %do.body47
  %42 = load i32, i32* @queue_front, align 4
  %43 = load i32, i32* @queue_rear, align 4
  %cmp49 = icmp ne i32 %42, %43
  br i1 %cmp49, label %while.body50, label %while.end54

while.body50:                                     ; preds = %while.cond48
  %44 = load i32, i32* @queue_front, align 4
  %add51 = add nsw i32 %44, 1
  %rem = srem i32 %add51, 128
  store i32 %rem, i32* @queue_front, align 4
  %45 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %45
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %46 = bitcast %struct.__sigset_t* %oset to i8*
  %47 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %46, i8* %47, i32 128, i32 4, i1 false)
  %48 = load i32, i32* @queue_front, align 4
  %arrayidx52 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %48
  %49 = load i32, i32* %arrayidx52, align 4
  call void @zhandler(i32 %49)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp53, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond48

while.end54:                                      ; preds = %while.cond48
  br label %do.end

do.end:                                           ; preds = %while.end54
  br label %if.end55

if.end55:                                         ; preds = %do.end, %do.body
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  %50 = load %struct.utmpx*, %struct.utmpx** @wtab, align 4
  %51 = bitcast %struct.utmpx* %50 to i8*
  call void @free(i8* %51)
  %52 = load %struct.utmpx*, %struct.utmpx** %utab, align 4
  store %struct.utmpx* %52, %struct.utmpx** @wtab, align 4
  %53 = load i32, i32* %utabsz, align 4
  store i32 %53, i32* @wtabsz, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call57 = call i32 @fflush(%struct._IO_FILE* %54)
  br label %return

return:                                           ; preds = %do.end56, %if.then12, %if.then9, %if.then3
  ret void
}

declare void @holdintr() #1

; Function Attrs: noinline nounwind
define internal i32 @readwtab(%struct.utmpx** %head, i32 %initial_sz) #0 {
entry:
  %head.addr = alloca %struct.utmpx**, align 4
  %initial_sz.addr = alloca i32, align 4
  %uptr = alloca %struct.utmpx*, align 4
  %wtabmax = alloca i32, align 4
  %sz = alloca i32, align 4
  %tmp = alloca %struct.utmpx*, align 4
  store %struct.utmpx** %head, %struct.utmpx*** %head.addr, align 4
  store i32 %initial_sz, i32* %initial_sz.addr, align 4
  %0 = load i32, i32* %initial_sz.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %initial_sz.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %1, %cond.false ]
  store i32 %cond, i32* %wtabmax, align 4
  store i32 0, i32* %sz, align 4
  %2 = load i32, i32* %wtabmax, align 4
  %mul = mul i32 %2, 384
  %call = call i8* @zalloc(i32 %mul)
  %3 = bitcast i8* %call to %struct.utmpx*
  %4 = load %struct.utmpx**, %struct.utmpx*** %head.addr, align 4
  store %struct.utmpx* %3, %struct.utmpx** %4, align 4
  store %struct.utmpx* %3, %struct.utmpx** %uptr, align 4
  call void @setutent()
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %cond.end
  %call1 = call %struct.utmpx* @getutent()
  store %struct.utmpx* %call1, %struct.utmpx** %tmp, align 4
  %cmp2 = icmp ne %struct.utmpx* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %6 = bitcast %struct.utmpx* %5 to i8*
  %7 = load %struct.utmpx*, %struct.utmpx** %tmp, align 4
  %8 = bitcast %struct.utmpx* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %8, i32 384, i32 4, i1 false)
  %9 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %ut_type = getelementptr inbounds %struct.utmpx, %struct.utmpx* %9, i32 0, i32 0
  %10 = load i16, i16* %ut_type, align 4
  %conv = sext i16 %10 to i32
  %cmp3 = icmp eq i32 %conv, 7
  br i1 %cmp3, label %if.then, label %if.end15

if.then:                                          ; preds = %while.body
  %11 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 1
  store %struct.utmpx* %incdec.ptr, %struct.utmpx** %uptr, align 4
  %12 = load i32, i32* %sz, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %sz, align 4
  %13 = load i32, i32* %wtabmax, align 4
  %cmp5 = icmp eq i32 %inc, %13
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.then
  %14 = load %struct.utmpx**, %struct.utmpx*** %head.addr, align 4
  %15 = load %struct.utmpx*, %struct.utmpx** %14, align 4
  %16 = bitcast %struct.utmpx* %15 to i8*
  %17 = load i32, i32* %wtabmax, align 4
  %mul8 = mul nsw i32 %17, 2
  store i32 %mul8, i32* %wtabmax, align 4
  %mul9 = mul i32 %mul8, 384
  %call10 = call i8* @realloc(i8* %16, i32 %mul9)
  %18 = bitcast i8* %call10 to %struct.utmpx*
  store %struct.utmpx* %18, %struct.utmpx** %uptr, align 4
  %19 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %cmp11 = icmp eq %struct.utmpx* %19, null
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then7
  %20 = load i32, i32* %sz, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %sz, align 4
  br label %while.end

if.end:                                           ; preds = %if.then7
  %21 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %22 = load %struct.utmpx**, %struct.utmpx*** %head.addr, align 4
  store %struct.utmpx* %21, %struct.utmpx** %22, align 4
  %23 = load i32, i32* %sz, align 4
  %24 = load %struct.utmpx*, %struct.utmpx** %uptr, align 4
  %add.ptr = getelementptr inbounds %struct.utmpx, %struct.utmpx* %24, i32 %23
  store %struct.utmpx* %add.ptr, %struct.utmpx** %uptr, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then13, %while.cond
  call void @endutent()
  %25 = load i32, i32* %sz, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.end
  %26 = load %struct.utmpx**, %struct.utmpx*** %head.addr, align 4
  %27 = load %struct.utmpx*, %struct.utmpx** %26, align 4
  %28 = bitcast %struct.utmpx* %27 to i8*
  %29 = load i32, i32* %sz, align 4
  call void @qsort(i8* %28, i32 %29, i32 384, i32 (i8*, i8*)* bitcast (i32 (%struct.utmpx*, %struct.utmpx*)* @ucmp to i32 (i8*, i8*)*))
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.end
  %30 = load i32, i32* %sz, align 4
  ret i32 %30
}

declare i32 @stat(i8*, %struct.stat*) #1

declare void @noholdintr() #1

declare void @free(i8*) #1

declare i8* @getsparam_u(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @ucmp(%struct.utmpx* %u, %struct.utmpx* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.utmpx*, align 4
  %v.addr = alloca %struct.utmpx*, align 4
  store %struct.utmpx* %u, %struct.utmpx** %u.addr, align 4
  store %struct.utmpx* %v, %struct.utmpx** %v.addr, align 4
  %0 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_tv = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i32 0, i32 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ut_tv, i32 0, i32 0
  %1 = load i32, i32* %tv_sec, align 4
  %2 = load %struct.utmpx*, %struct.utmpx** %v.addr, align 4
  %ut_tv1 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %2, i32 0, i32 8
  %tv_sec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %ut_tv1, i32 0, i32 0
  %3 = load i32, i32* %tv_sec2, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line = getelementptr inbounds %struct.utmpx, %struct.utmpx* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i32 0, i32 0
  %5 = load %struct.utmpx*, %struct.utmpx** %v.addr, align 4
  %ut_line3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line3, i32 0, i32 0
  %call = call i32 @strncmp(i8* %arraydecay, i8* %arraydecay4, i32 32)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_tv5 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 8
  %tv_sec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %ut_tv5, i32 0, i32 0
  %7 = load i32, i32* %tv_sec6, align 4
  %8 = load %struct.utmpx*, %struct.utmpx** %v.addr, align 4
  %ut_tv7 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %8, i32 0, i32 8
  %tv_sec8 = getelementptr inbounds %struct.timeval, %struct.timeval* %ut_tv7, i32 0, i32 0
  %9 = load i32, i32* %tv_sec8, align 4
  %sub = sub nsw i32 %7, %9
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind
define internal void @watchlog(i32 %inout, %struct.utmpx* %u, i8** %w, i8* %fmt) #0 {
entry:
  %inout.addr = alloca i32, align 4
  %u.addr = alloca %struct.utmpx*, align 4
  %w.addr = alloca i8**, align 4
  %fmt.addr = alloca i8*, align 4
  %v = alloca i8*, align 4
  %vv = alloca i8*, align 4
  %sav = alloca i8, align 1
  %bad = alloca i32, align 4
  store i32 %inout, i32* %inout.addr, align 4
  store %struct.utmpx* %u, %struct.utmpx** %u.addr, align 4
  store i8** %w, i8*** %w.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  %0 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_user = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user, i32 0, i32 0
  %1 = load i8, i8* %arraydecay, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end100

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %w.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8**, i8*** %w.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %inout.addr, align 4
  %7 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %8 = load i8*, i8** %fmt.addr, align 4
  %call4 = call i8* @watchlog2(i32 %6, %struct.utmpx* %7, i8* %8, i32 1, i32 0)
  br label %for.end100

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i8**, i8*** %w.addr, align 4
  %10 = load i8*, i8** %9, align 4
  %tobool6 = icmp ne i8* %10, null
  br i1 %tobool6, label %land.lhs.true7, label %if.end18

land.lhs.true7:                                   ; preds = %if.end5
  %11 = load i8**, i8*** %w.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %call8 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end18, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %13 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_user11 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %13, i32 0, i32 4
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user11, i32 0, i32 0
  %call13 = call i8* @get_username()
  %call14 = call i32 @strncmp(i8* %arraydecay12, i8* %call13, i32 32)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true10
  %14 = load i32, i32* %inout.addr, align 4
  %15 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %16 = load i8*, i8** %fmt.addr, align 4
  %call17 = call i8* @watchlog2(i32 %14, %struct.utmpx* %15, i8* %16, i32 1, i32 0)
  br label %for.end100

if.end18:                                         ; preds = %land.lhs.true10, %land.lhs.true7, %if.end5
  br label %for.cond

for.cond:                                         ; preds = %for.inc98, %if.end18
  %17 = load i8**, i8*** %w.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %tobool19 = icmp ne i8* %18, null
  br i1 %tobool19, label %for.body, label %for.end100

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %bad, align 4
  %19 = load i8**, i8*** %w.addr, align 4
  %20 = load i8*, i8** %19, align 4
  store i8* %20, i8** %v, align 4
  %21 = load i8*, i8** %v, align 4
  %22 = load i8, i8* %21, align 1
  %conv = sext i8 %22 to i32
  %cmp = icmp ne i32 %conv, 64
  br i1 %cmp, label %land.lhs.true21, label %if.end43

land.lhs.true21:                                  ; preds = %for.body
  %23 = load i8*, i8** %v, align 4
  %24 = load i8, i8* %23, align 1
  %conv22 = sext i8 %24 to i32
  %cmp23 = icmp ne i32 %conv22, 37
  br i1 %cmp23, label %if.then25, label %if.end43

if.then25:                                        ; preds = %land.lhs.true21
  %25 = load i8*, i8** %v, align 4
  store i8* %25, i8** %vv, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.then25
  %26 = load i8*, i8** %vv, align 4
  %27 = load i8, i8* %26, align 1
  %conv27 = sext i8 %27 to i32
  %tobool28 = icmp ne i32 %conv27, 0
  br i1 %tobool28, label %land.lhs.true29, label %land.end

land.lhs.true29:                                  ; preds = %for.cond26
  %28 = load i8*, i8** %vv, align 4
  %29 = load i8, i8* %28, align 1
  %conv30 = sext i8 %29 to i32
  %cmp31 = icmp ne i32 %conv30, 64
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true29
  %30 = load i8*, i8** %vv, align 4
  %31 = load i8, i8* %30, align 1
  %conv33 = sext i8 %31 to i32
  %cmp34 = icmp ne i32 %conv33, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true29, %for.cond26
  %32 = phi i1 [ false, %land.lhs.true29 ], [ false, %for.cond26 ], [ %cmp34, %land.rhs ]
  br i1 %32, label %for.body36, label %for.end

for.body36:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %33 = load i8*, i8** %vv, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %vv, align 4
  br label %for.cond26

for.end:                                          ; preds = %land.end
  %34 = load i8*, i8** %vv, align 4
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %sav, align 1
  %36 = load i8*, i8** %vv, align 4
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %v, align 4
  %38 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_user37 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %38, i32 0, i32 4
  %arraydecay38 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user37, i32 0, i32 0
  %call39 = call i32 @watchlog_match(i8* %37, i8* %arraydecay38, i32 32)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.end
  store i32 1, i32* %bad, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.end
  %39 = load i8, i8* %sav, align 1
  %40 = load i8*, i8** %vv, align 4
  store i8 %39, i8* %40, align 1
  %41 = load i8*, i8** %vv, align 4
  store i8* %41, i8** %v, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %land.lhs.true21, %for.body
  br label %for.cond44

for.cond44:                                       ; preds = %if.end92, %if.end43
  %42 = load i8*, i8** %v, align 4
  %43 = load i8, i8* %42, align 1
  %conv45 = sext i8 %43 to i32
  %cmp46 = icmp eq i32 %conv45, 37
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %for.cond44
  %44 = load i8*, i8** %v, align 4
  %incdec.ptr49 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr49, i8** %v, align 4
  store i8* %incdec.ptr49, i8** %vv, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc59, %if.then48
  %45 = load i8*, i8** %vv, align 4
  %46 = load i8, i8* %45, align 1
  %conv51 = sext i8 %46 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %land.rhs53, label %land.end57

land.rhs53:                                       ; preds = %for.cond50
  %47 = load i8*, i8** %vv, align 4
  %48 = load i8, i8* %47, align 1
  %conv54 = sext i8 %48 to i32
  %cmp55 = icmp ne i32 %conv54, 64
  br label %land.end57

land.end57:                                       ; preds = %land.rhs53, %for.cond50
  %49 = phi i1 [ false, %for.cond50 ], [ %cmp55, %land.rhs53 ]
  br i1 %49, label %for.body58, label %for.end61

for.body58:                                       ; preds = %land.end57
  br label %for.inc59

for.inc59:                                        ; preds = %for.body58
  %50 = load i8*, i8** %vv, align 4
  %incdec.ptr60 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr60, i8** %vv, align 4
  br label %for.cond50

for.end61:                                        ; preds = %land.end57
  %51 = load i8*, i8** %vv, align 4
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %sav, align 1
  %53 = load i8*, i8** %vv, align 4
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %v, align 4
  %55 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line = getelementptr inbounds %struct.utmpx, %struct.utmpx* %55, i32 0, i32 2
  %arraydecay62 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i32 0, i32 0
  %call63 = call i32 @watchlog_match(i8* %54, i8* %arraydecay62, i32 32)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %for.end61
  store i32 1, i32* %bad, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %for.end61
  %56 = load i8, i8* %sav, align 1
  %57 = load i8*, i8** %vv, align 4
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %vv, align 4
  store i8* %58, i8** %v, align 4
  br label %if.end92

if.else:                                          ; preds = %for.cond44
  %59 = load i8*, i8** %v, align 4
  %60 = load i8, i8* %59, align 1
  %conv67 = sext i8 %60 to i32
  %cmp68 = icmp eq i32 %conv67, 64
  br i1 %cmp68, label %if.then70, label %if.else90

if.then70:                                        ; preds = %if.else
  %61 = load i8*, i8** %v, align 4
  %incdec.ptr71 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr71, i8** %v, align 4
  store i8* %incdec.ptr71, i8** %vv, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc81, %if.then70
  %62 = load i8*, i8** %vv, align 4
  %63 = load i8, i8* %62, align 1
  %conv73 = sext i8 %63 to i32
  %tobool74 = icmp ne i32 %conv73, 0
  br i1 %tobool74, label %land.rhs75, label %land.end79

land.rhs75:                                       ; preds = %for.cond72
  %64 = load i8*, i8** %vv, align 4
  %65 = load i8, i8* %64, align 1
  %conv76 = sext i8 %65 to i32
  %cmp77 = icmp ne i32 %conv76, 37
  br label %land.end79

land.end79:                                       ; preds = %land.rhs75, %for.cond72
  %66 = phi i1 [ false, %for.cond72 ], [ %cmp77, %land.rhs75 ]
  br i1 %66, label %for.body80, label %for.end83

for.body80:                                       ; preds = %land.end79
  br label %for.inc81

for.inc81:                                        ; preds = %for.body80
  %67 = load i8*, i8** %vv, align 4
  %incdec.ptr82 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr82, i8** %vv, align 4
  br label %for.cond72

for.end83:                                        ; preds = %land.end79
  %68 = load i8*, i8** %vv, align 4
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %sav, align 1
  %70 = load i8*, i8** %vv, align 4
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %v, align 4
  %72 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_host = getelementptr inbounds %struct.utmpx, %struct.utmpx* %72, i32 0, i32 5
  %arraydecay84 = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host, i32 0, i32 0
  %73 = load i8*, i8** %v, align 4
  %call85 = call i32 @strlen(i8* %73)
  %call86 = call i32 @watchlog_match(i8* %71, i8* %arraydecay84, i32 %call85)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end89, label %if.then88

if.then88:                                        ; preds = %for.end83
  store i32 1, i32* %bad, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %for.end83
  %74 = load i8, i8* %sav, align 1
  %75 = load i8*, i8** %vv, align 4
  store i8 %74, i8* %75, align 1
  %76 = load i8*, i8** %vv, align 4
  store i8* %76, i8** %v, align 4
  br label %if.end91

if.else90:                                        ; preds = %if.else
  br label %for.end93

if.end91:                                         ; preds = %if.end89
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end66
  br label %for.cond44

for.end93:                                        ; preds = %if.else90
  %77 = load i32, i32* %bad, align 4
  %tobool94 = icmp ne i32 %77, 0
  br i1 %tobool94, label %if.end97, label %if.then95

if.then95:                                        ; preds = %for.end93
  %78 = load i32, i32* %inout.addr, align 4
  %79 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %80 = load i8*, i8** %fmt.addr, align 4
  %call96 = call i8* @watchlog2(i32 %78, %struct.utmpx* %79, i8* %80, i32 1, i32 0)
  br label %for.end100

if.end97:                                         ; preds = %for.end93
  br label %for.inc98

for.inc98:                                        ; preds = %if.end97
  %81 = load i8**, i8*** %w.addr, align 4
  %incdec.ptr99 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %incdec.ptr99, i8*** %w.addr, align 4
  br label %for.cond

for.end100:                                       ; preds = %if.then, %if.then3, %if.then16, %if.then95, %for.cond
  ret void
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define i32 @bin_log(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8**, i8*** @watch, align 4
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.utmpx*, %struct.utmpx** @wtab, align 4
  %tobool1 = icmp ne %struct.utmpx* %1, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load %struct.utmpx*, %struct.utmpx** @wtab, align 4
  %3 = bitcast %struct.utmpx* %2 to i8*
  call void @free(i8* %3)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call = call i8* @zalloc(i32 1)
  %4 = bitcast i8* %call to %struct.utmpx*
  store %struct.utmpx* %4, %struct.utmpx** @wtab, align 4
  store i32 0, i32* @wtabsz, align 4
  store i32 0, i32* @lastutmpcheck, align 4
  call void @dowatch()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare i8* @zalloc(i32) #1

declare void @setutent() #1

declare %struct.utmpx* @getutent() #1

declare i8* @realloc(i8*, i32) #1

declare void @endutent() #1

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i8* @watchlog2(i32 %inout, %struct.utmpx* %u, i8* %fmt, i32 %prnt, i32 %fini) #0 {
entry:
  %retval = alloca i8*, align 4
  %inout.addr = alloca i32, align 4
  %u.addr = alloca %struct.utmpx*, align 4
  %fmt.addr = alloca i8*, align 4
  %prnt.addr = alloca i32, align 4
  %fini.addr = alloca i32, align 4
  %buf = alloca [40 x i8], align 1
  %buf2 = alloca [80 x i8], align 1
  %timet = alloca i32, align 4
  %tm = alloca %struct.tm*, align 4
  %fm2 = alloca i8*, align 4
  %len = alloca i32, align 4
  %p = alloca i8*, align 4
  %i = alloca i32, align 4
  %dd = alloca i8*, align 4
  %ss = alloca i8*, align 4
  %n = alloca i32, align 4
  store i32 %inout, i32* %inout.addr, align 4
  store %struct.utmpx* %u, %struct.utmpx** %u.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  store i32 %prnt, i32* %prnt.addr, align 4
  store i32 %fini, i32* %fini.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end173, %entry
  %0 = load i8*, i8** %fmt.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %fmt.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 4
  %5 = load i8, i8* %incdec.ptr, align 1
  %tobool2 = icmp ne i8 %5, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %6 = load i32, i32* %prnt.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %7 = load i8*, i8** %fmt.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %call = call i32 @putchar(i32 %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %9 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %fmt.addr, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %fini.addr, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  %11 = load i8*, i8** %fmt.addr, align 4
  store i8* %11, i8** %retval, align 4
  br label %return

if.else10:                                        ; preds = %if.else
  br label %while.end

if.end11:                                         ; preds = %if.end
  br label %if.end173

if.else12:                                        ; preds = %while.body
  %12 = load i8*, i8** %fmt.addr, align 4
  %13 = load i8, i8* %12, align 1
  %conv13 = sext i8 %13 to i32
  %14 = load i32, i32* %fini.addr, align 4
  %cmp14 = icmp eq i32 %conv13, %14
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else12
  %15 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr17, i8** %fmt.addr, align 4
  store i8* %incdec.ptr17, i8** %retval, align 4
  br label %return

if.else18:                                        ; preds = %if.else12
  %16 = load i8*, i8** %fmt.addr, align 4
  %17 = load i8, i8* %16, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp ne i32 %conv19, 37
  br i1 %cmp20, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.else18
  %18 = load i32, i32* %prnt.addr, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.then22
  %19 = load i8*, i8** %fmt.addr, align 4
  %20 = load i8, i8* %19, align 1
  %conv25 = sext i8 %20 to i32
  %call26 = call i32 @putchar(i32 %conv25)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then22
  %21 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr28, i8** %fmt.addr, align 4
  br label %if.end171

if.else29:                                        ; preds = %if.else18
  %22 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr30, i8** %fmt.addr, align 4
  %23 = load i8, i8* %incdec.ptr30, align 1
  %conv31 = sext i8 %23 to i32
  %cmp32 = icmp eq i32 %conv31, 40
  br i1 %cmp32, label %if.then34, label %if.else37

if.then34:                                        ; preds = %if.else29
  %24 = load i32, i32* %inout.addr, align 4
  %25 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %26 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr35 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr35, i8** %fmt.addr, align 4
  %27 = load i32, i32* %prnt.addr, align 4
  %call36 = call i8* @watch3ary(i32 %24, %struct.utmpx* %25, i8* %incdec.ptr35, i32 %27)
  store i8* %call36, i8** %fmt.addr, align 4
  br label %if.end170

if.else37:                                        ; preds = %if.else29
  %28 = load i32, i32* %prnt.addr, align 4
  %tobool38 = icmp ne i32 %28, 0
  br i1 %tobool38, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else37
  %29 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr40, i8** %fmt.addr, align 4
  br label %if.end169

if.else41:                                        ; preds = %if.else37
  %30 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr42 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr42, i8** %fmt.addr, align 4
  store i8* %30, i8** %fm2, align 4
  %31 = load i8, i8* %30, align 1
  %conv43 = sext i8 %31 to i32
  switch i32 %conv43, label %sw.default [
    i32 110, label %sw.bb
    i32 97, label %sw.bb45
    i32 108, label %sw.bb48
    i32 109, label %sw.bb61
    i32 77, label %sw.bb77
    i32 84, label %sw.bb81
    i32 116, label %sw.bb81
    i32 64, label %sw.bb81
    i32 87, label %sw.bb81
    i32 119, label %sw.bb81
    i32 68, label %sw.bb81
    i32 37, label %sw.bb152
    i32 83, label %sw.bb154
    i32 115, label %sw.bb155
    i32 66, label %sw.bb157
    i32 98, label %sw.bb159
    i32 85, label %sw.bb161
    i32 117, label %sw.bb163
  ]

sw.bb:                                            ; preds = %if.else41
  %32 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_user = getelementptr inbounds %struct.utmpx, %struct.utmpx* %32, i32 0, i32 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user, i32 0, i32 0
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* %arraydecay)
  br label %sw.epilog168

sw.bb45:                                          ; preds = %if.else41
  %33 = load i32, i32* %inout.addr, align 4
  %tobool46 = icmp ne i32 %33, 0
  %lnot = xor i1 %tobool46, true
  %cond = select i1 %lnot, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %cond)
  br label %sw.epilog168

sw.bb48:                                          ; preds = %if.else41
  %34 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line = getelementptr inbounds %struct.utmpx, %struct.utmpx* %34, i32 0, i32 2
  %arraydecay49 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i32 0, i32 0
  %call50 = call i32 @strncmp(i8* %arraydecay49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else56, label %if.then52

if.then52:                                        ; preds = %sw.bb48
  %35 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line53 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %35, i32 0, i32 2
  %arraydecay54 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line53, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay54, i32 3
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 29, i8* %add.ptr)
  br label %if.end60

if.else56:                                        ; preds = %sw.bb48
  %36 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line57 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %36, i32 0, i32 2
  %arraydecay58 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line57, i32 0, i32 0
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* %arraydecay58)
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.then52
  br label %sw.epilog168

sw.bb61:                                          ; preds = %if.else41
  %37 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_host = getelementptr inbounds %struct.utmpx, %struct.utmpx* %37, i32 0, i32 5
  %arraydecay62 = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host, i32 0, i32 0
  store i8* %arraydecay62, i8** %p, align 4
  store i32 256, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb61
  %38 = load i32, i32* %i, align 4
  %tobool63 = icmp ne i32 %38, 0
  br i1 %tobool63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %39 = load i8*, i8** %p, align 4
  %40 = load i8, i8* %39, align 1
  %conv64 = sext i8 %40 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %41 = phi i1 [ false, %for.cond ], [ %tobool65, %land.rhs ]
  br i1 %41, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %42 = load i8*, i8** %p, align 4
  %43 = load i8, i8* %42, align 1
  %conv66 = sext i8 %43 to i32
  %cmp67 = icmp eq i32 %conv66, 46
  br i1 %cmp67, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %for.body
  %44 = load i8*, i8** %p, align 4
  %arrayidx = getelementptr inbounds i8, i8* %44, i32 1
  %45 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %45 to i32
  %arrayidx69 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %46 = load i16, i16* %arrayidx69, align 2
  %conv70 = sext i16 %46 to i32
  %and = and i32 %conv70, 1
  %tobool71 = icmp ne i32 %and, 0
  br i1 %tobool71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %land.lhs.true
  br label %for.end

if.end73:                                         ; preds = %land.lhs.true, %for.body
  %47 = load i8*, i8** %p, align 4
  %48 = load i8, i8* %47, align 1
  %conv74 = sext i8 %48 to i32
  %call75 = call i32 @putchar(i32 %conv74)
  br label %for.inc

for.inc:                                          ; preds = %if.end73
  %49 = load i32, i32* %i, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %i, align 4
  %50 = load i8*, i8** %p, align 4
  %incdec.ptr76 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr76, i8** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then72, %land.end
  br label %sw.epilog168

sw.bb77:                                          ; preds = %if.else41
  %51 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_host78 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %51, i32 0, i32 5
  %arraydecay79 = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host78, i32 0, i32 0
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 256, i8* %arraydecay79)
  br label %sw.epilog168

sw.bb81:                                          ; preds = %if.else41, %if.else41, %if.else41, %if.else41, %if.else41, %if.else41
  %52 = load i8*, i8** %fm2, align 4
  %53 = load i8, i8* %52, align 1
  %conv82 = sext i8 %53 to i32
  switch i32 %conv82, label %sw.epilog [
    i32 64, label %sw.bb83
    i32 116, label %sw.bb83
    i32 84, label %sw.bb84
    i32 119, label %sw.bb85
    i32 87, label %sw.bb86
    i32 68, label %sw.bb87
  ]

sw.bb83:                                          ; preds = %sw.bb81, %sw.bb81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8** %fm2, align 4
  br label %sw.epilog

sw.bb84:                                          ; preds = %sw.bb81
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %fm2, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %sw.bb81
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8** %fm2, align 4
  br label %sw.epilog

sw.bb86:                                          ; preds = %sw.bb81
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8** %fm2, align 4
  br label %sw.epilog

sw.bb87:                                          ; preds = %sw.bb81
  %54 = load i8*, i8** %fm2, align 4
  %arrayidx88 = getelementptr inbounds i8, i8* %54, i32 1
  %55 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %55 to i32
  %cmp90 = icmp eq i32 %conv89, 123
  br i1 %cmp90, label %if.then92, label %if.else128

if.then92:                                        ; preds = %sw.bb87
  store i32 79, i32* %n, align 4
  %56 = load i8*, i8** %fm2, align 4
  %add.ptr93 = getelementptr inbounds i8, i8* %56, i32 2
  store i8* %add.ptr93, i8** %ss, align 4
  %arraydecay94 = getelementptr inbounds [80 x i8], [80 x i8]* %buf2, i32 0, i32 0
  store i8* %arraydecay94, i8** %dd, align 4
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc116, %if.then92
  %57 = load i32, i32* %n, align 4
  %dec96 = add nsw i32 %57, -1
  store i32 %dec96, i32* %n, align 4
  %tobool97 = icmp ne i32 %57, 0
  br i1 %tobool97, label %land.lhs.true98, label %land.end105

land.lhs.true98:                                  ; preds = %for.cond95
  %58 = load i8*, i8** %ss, align 4
  %59 = load i8, i8* %58, align 1
  %conv99 = sext i8 %59 to i32
  %tobool100 = icmp ne i32 %conv99, 0
  br i1 %tobool100, label %land.rhs101, label %land.end105

land.rhs101:                                      ; preds = %land.lhs.true98
  %60 = load i8*, i8** %ss, align 4
  %61 = load i8, i8* %60, align 1
  %conv102 = sext i8 %61 to i32
  %cmp103 = icmp ne i32 %conv102, 125
  br label %land.end105

land.end105:                                      ; preds = %land.rhs101, %land.lhs.true98, %for.cond95
  %62 = phi i1 [ false, %land.lhs.true98 ], [ false, %for.cond95 ], [ %cmp103, %land.rhs101 ]
  br i1 %62, label %for.body106, label %for.end119

for.body106:                                      ; preds = %land.end105
  %63 = load i8*, i8** %ss, align 4
  %64 = load i8, i8* %63, align 1
  %conv107 = sext i8 %64 to i32
  %cmp108 = icmp eq i32 %conv107, 92
  br i1 %cmp108, label %land.lhs.true110, label %cond.false

land.lhs.true110:                                 ; preds = %for.body106
  %65 = load i8*, i8** %ss, align 4
  %arrayidx111 = getelementptr inbounds i8, i8* %65, i32 1
  %66 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %66 to i32
  %tobool113 = icmp ne i32 %conv112, 0
  br i1 %tobool113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true110
  %67 = load i8*, i8** %ss, align 4
  %incdec.ptr114 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr114, i8** %ss, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true110, %for.body106
  %68 = load i8*, i8** %ss, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond115 = phi i8* [ %incdec.ptr114, %cond.true ], [ %68, %cond.false ]
  %69 = load i8, i8* %cond115, align 1
  %70 = load i8*, i8** %dd, align 4
  store i8 %69, i8* %70, align 1
  br label %for.inc116

for.inc116:                                       ; preds = %cond.end
  %71 = load i8*, i8** %ss, align 4
  %incdec.ptr117 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr117, i8** %ss, align 4
  %72 = load i8*, i8** %dd, align 4
  %incdec.ptr118 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr118, i8** %dd, align 4
  br label %for.cond95

for.end119:                                       ; preds = %land.end105
  %73 = load i8*, i8** %ss, align 4
  %74 = load i8, i8* %73, align 1
  %conv120 = sext i8 %74 to i32
  %cmp121 = icmp eq i32 %conv120, 125
  br i1 %cmp121, label %if.then123, label %if.else126

if.then123:                                       ; preds = %for.end119
  %75 = load i8*, i8** %dd, align 4
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %ss, align 4
  %add.ptr124 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %add.ptr124, i8** %fmt.addr, align 4
  %arraydecay125 = getelementptr inbounds [80 x i8], [80 x i8]* %buf2, i32 0, i32 0
  store i8* %arraydecay125, i8** %fm2, align 4
  br label %if.end127

if.else126:                                       ; preds = %for.end119
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8** %fm2, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.then123
  br label %if.end129

if.else128:                                       ; preds = %sw.bb87
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8** %fm2, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else128, %if.end127
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %if.end129, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83
  %77 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %78 = load i32, i32* %inout.addr, align 4
  %call130 = call i32 @getlogtime(%struct.utmpx* %77, i32 %78)
  store i32 %call130, i32* %timet, align 4
  %call131 = call %struct.tm* @localtime(i32* %timet)
  store %struct.tm* %call131, %struct.tm** %tm, align 4
  %arraydecay132 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %79 = load i8*, i8** %fm2, align 4
  %80 = load %struct.tm*, %struct.tm** %tm, align 4
  %call133 = call i32 @ztrftime(i8* %arraydecay132, i32 40, i8* %79, %struct.tm* %80, i32 0)
  store i32 %call133, i32* %len, align 4
  %81 = load i32, i32* %len, align 4
  %cmp134 = icmp sgt i32 %81, 0
  br i1 %cmp134, label %if.then136, label %if.end139

if.then136:                                       ; preds = %sw.epilog
  %arraydecay137 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %82 = load i32, i32* %len, align 4
  %call138 = call i8* @metafy(i8* %arraydecay137, i32 %82, i32 5)
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %sw.epilog
  %arraydecay140 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %83 = load i8, i8* %arraydecay140, align 1
  %conv141 = sext i8 %83 to i32
  %cmp142 = icmp eq i32 %conv141, 32
  br i1 %cmp142, label %cond.true144, label %cond.false147

cond.true144:                                     ; preds = %if.end139
  %arraydecay145 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %add.ptr146 = getelementptr inbounds i8, i8* %arraydecay145, i32 1
  br label %cond.end149

cond.false147:                                    ; preds = %if.end139
  %arraydecay148 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false147, %cond.true144
  %cond150 = phi i8* [ %add.ptr146, %cond.true144 ], [ %arraydecay148, %cond.false147 ]
  %call151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %cond150)
  br label %sw.epilog168

sw.bb152:                                         ; preds = %if.else41
  %call153 = call i32 @putchar(i32 37)
  br label %sw.epilog168

sw.bb154:                                         ; preds = %if.else41
  %84 = load i32, i32* @txtattrmask, align 4
  %or = or i32 %84, 2
  store i32 %or, i32* @txtattrmask, align 4
  call void @tsetcap(i32 19, i32 1)
  br label %sw.epilog168

sw.bb155:                                         ; preds = %if.else41
  %85 = load i32, i32* @txtattrmask, align 4
  %and156 = and i32 %85, -3
  store i32 %and156, i32* @txtattrmask, align 4
  call void @tsetcap(i32 22, i32 5)
  br label %sw.epilog168

sw.bb157:                                         ; preds = %if.else41
  %86 = load i32, i32* @txtattrmask, align 4
  %or158 = or i32 %86, 1
  store i32 %or158, i32* @txtattrmask, align 4
  call void @tsetcap(i32 18, i32 5)
  br label %sw.epilog168

sw.bb159:                                         ; preds = %if.else41
  %87 = load i32, i32* @txtattrmask, align 4
  %and160 = and i32 %87, -2
  store i32 %and160, i32* @txtattrmask, align 4
  call void @tsetcap(i32 21, i32 5)
  br label %sw.epilog168

sw.bb161:                                         ; preds = %if.else41
  %88 = load i32, i32* @txtattrmask, align 4
  %or162 = or i32 %88, 4
  store i32 %or162, i32* @txtattrmask, align 4
  call void @tsetcap(i32 20, i32 1)
  br label %sw.epilog168

sw.bb163:                                         ; preds = %if.else41
  %89 = load i32, i32* @txtattrmask, align 4
  %and164 = and i32 %89, -5
  store i32 %and164, i32* @txtattrmask, align 4
  call void @tsetcap(i32 23, i32 5)
  br label %sw.epilog168

sw.default:                                       ; preds = %if.else41
  %call165 = call i32 @putchar(i32 37)
  %90 = load i8*, i8** %fm2, align 4
  %91 = load i8, i8* %90, align 1
  %conv166 = sext i8 %91 to i32
  %call167 = call i32 @putchar(i32 %conv166)
  br label %sw.epilog168

sw.epilog168:                                     ; preds = %sw.default, %sw.bb163, %sw.bb161, %sw.bb159, %sw.bb157, %sw.bb155, %sw.bb154, %sw.bb152, %cond.end149, %sw.bb77, %for.end, %if.end60, %sw.bb45, %sw.bb
  br label %if.end169

if.end169:                                        ; preds = %sw.epilog168, %if.then39
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then34
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.end27
  br label %if.end172

if.end172:                                        ; preds = %if.end171
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %if.end11
  br label %while.cond

while.end:                                        ; preds = %if.else10, %while.cond
  %92 = load i32, i32* %prnt.addr, align 4
  %tobool174 = icmp ne i32 %92, 0
  br i1 %tobool174, label %if.then175, label %if.end177

if.then175:                                       ; preds = %while.end
  %call176 = call i32 @putchar(i32 10)
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %while.end
  %93 = load i8*, i8** %fmt.addr, align 4
  store i8* %93, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end177, %if.then16, %if.then9
  %94 = load i8*, i8** %retval, align 4
  ret i8* %94
}

declare i8* @get_username() #1

; Function Attrs: noinline nounwind
define internal i32 @watchlog_match(i8* %teststr, i8* %actual, i32 %len) #0 {
entry:
  %teststr.addr = alloca i8*, align 4
  %actual.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %pprog = alloca %struct.patprog*, align 4
  %str = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp9 = alloca %struct.__sigset_t, align 4
  store i8* %teststr, i8** %teststr.addr, align 4
  store i8* %actual, i8** %actual.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %teststr.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %str, align 4
  %1 = load i8*, i8** %str, align 4
  call void @tokenize(i8* %1)
  %2 = load i8*, i8** %str, align 4
  %call1 = call %struct.patprog* @patcompile(i8* %2, i32 64, i8** null)
  store %struct.patprog* %call1, %struct.patprog** %pprog, align 4
  %tobool = icmp ne %struct.patprog* %call1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %4 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %5 = load i8*, i8** %actual.addr, align 4
  %call2 = call i32 @pattry(%struct.patprog* %4, i8* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool5 = icmp ne i32 %dec, 0
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body7
  %7 = load i32, i32* @queue_front, align 4
  %8 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %9, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %10 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %10
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %11 = bitcast %struct.__sigset_t* %oset to i8*
  %12 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 4, i1 false)
  %13 = load i32, i32* @queue_front, align 4
  %arrayidx8 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %13
  %14 = load i32, i32* %arrayidx8, align 4
  call void @zhandler(i32 %14)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp9, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %if.end16

if.else:                                          ; preds = %entry
  %15 = load i8*, i8** %actual.addr, align 4
  %16 = load i8*, i8** %teststr.addr, align 4
  %17 = load i32, i32* %len.addr, align 4
  %call12 = call i32 @strncmp(i8* %15, i8* %16, i32 %17)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.else
  store i32 1, i32* %ret, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %do.end11
  %18 = load i32, i32* %ret, align 4
  ret i32 %18
}

declare i32 @strlen(i8*) #1

declare i32 @putchar(i32) #1

; Function Attrs: noinline nounwind
define internal i8* @watch3ary(i32 %inout, %struct.utmpx* %u, i8* %fmt, i32 %prnt) #0 {
entry:
  %inout.addr = alloca i32, align 4
  %u.addr = alloca %struct.utmpx*, align 4
  %fmt.addr = alloca i8*, align 4
  %prnt.addr = alloca i32, align 4
  %truth = alloca i32, align 4
  %sep = alloca i32, align 4
  store i32 %inout, i32* %inout.addr, align 4
  store %struct.utmpx* %u, %struct.utmpx** %u.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  store i32 %prnt, i32* %prnt.addr, align 4
  store i32 1, i32* %truth, align 4
  %0 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 110, label %sw.bb
    i32 97, label %sw.bb3
    i32 108, label %sw.bb4
    i32 109, label %sw.bb15
    i32 77, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_user = getelementptr inbounds %struct.utmpx, %struct.utmpx* %2, i32 0, i32 4
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %ut_user, i32 0, i32 0
  %3 = load i8, i8* %arrayidx, align 4
  %conv1 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv1, 0
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %truth, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load i32, i32* %inout.addr, align 4
  store i32 %4, i32* %truth, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i32 0, i32 0
  %call = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb4
  %6 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line5 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line5, i32 0, i32 3
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %truth, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb4
  %8 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line10 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %8, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line10, i32 0, i32 0
  %9 = load i8, i8* %arrayidx11, align 4
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %truth, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry, %entry
  %10 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_host = getelementptr inbounds %struct.utmpx, %struct.utmpx* %10, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* %ut_host, i32 0, i32 0
  %11 = load i8, i8* %arrayidx16, align 4
  %conv17 = sext i8 %11 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, i32* %truth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %prnt.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %if.end, %sw.bb3, %sw.bb
  %12 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr20, i8** %fmt.addr, align 4
  %13 = load i8, i8* %12, align 1
  %conv21 = sext i8 %13 to i32
  store i32 %conv21, i32* %sep, align 4
  %14 = load i32, i32* %inout.addr, align 4
  %15 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %16 = load i8*, i8** %fmt.addr, align 4
  %17 = load i32, i32* %truth, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.epilog
  %18 = load i32, i32* %prnt.addr, align 4
  %tobool23 = icmp ne i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog
  %19 = phi i1 [ false, %sw.epilog ], [ %tobool23, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  %20 = load i32, i32* %sep, align 4
  %call24 = call i8* @watchlog2(i32 %14, %struct.utmpx* %15, i8* %16, i32 %land.ext, i32 %20)
  store i8* %call24, i8** %fmt.addr, align 4
  %21 = load i32, i32* %inout.addr, align 4
  %22 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %23 = load i8*, i8** %fmt.addr, align 4
  %24 = load i32, i32* %truth, align 4
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %land.end28, label %land.rhs26

land.rhs26:                                       ; preds = %land.end
  %25 = load i32, i32* %prnt.addr, align 4
  %tobool27 = icmp ne i32 %25, 0
  br label %land.end28

land.end28:                                       ; preds = %land.rhs26, %land.end
  %26 = phi i1 [ false, %land.end ], [ %tobool27, %land.rhs26 ]
  %land.ext29 = zext i1 %26 to i32
  %call30 = call i8* @watchlog2(i32 %21, %struct.utmpx* %22, i8* %23, i32 %land.ext29, i32 41)
  ret i8* %call30
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @getlogtime(%struct.utmpx* %u, i32 %inout) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.utmpx*, align 4
  %inout.addr = alloca i32, align 4
  %in = alloca %struct._IO_FILE*, align 4
  %uu = alloca %struct.utmpx, align 4
  %first = alloca i32, align 4
  %srchlimit = alloca i32, align 4
  store %struct.utmpx* %u, %struct.utmpx** %u.addr, align 4
  store i32 %inout, i32* %inout.addr, align 4
  store i32 1, i32* %first, align 4
  store i32 50, i32* %srchlimit, align 4
  %0 = load i32, i32* %inout.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_tv = getelementptr inbounds %struct.utmpx, %struct.utmpx* %1, i32 0, i32 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ut_tv, i32 0, i32 0
  %2 = load i32, i32* %tv_sec, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 4
  %tobool1 = icmp ne %struct._IO_FILE* %call, null
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @time(i32* null)
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call5 = call i32 @fseek(%struct._IO_FILE* %3, i32 0, i32 2)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %5 = load i32, i32* %first, align 4
  %tobool6 = icmp ne i32 %5, 0
  %cond = select i1 %tobool6, i32 -1, i32 -2
  %mul = mul i32 %cond, 384
  %call7 = call i32 @fseek(%struct._IO_FILE* %4, i32 %mul, i32 1)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call10 = call i32 @fclose(%struct._IO_FILE* %6)
  %call11 = call i32 @time(i32* null)
  store i32 %call11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %do.body
  store i32 0, i32* %first, align 4
  %7 = bitcast %struct.utmpx* %uu to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call13 = call i32 @fread(i8* %7, i32 384, i32 1, %struct._IO_FILE* %8)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end12
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call16 = call i32 @fclose(%struct._IO_FILE* %9)
  %call17 = call i32 @time(i32* null)
  store i32 %call17, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  %ut_tv19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %uu, i32 0, i32 8
  %tv_sec20 = getelementptr inbounds %struct.timeval, %struct.timeval* %ut_tv19, i32 0, i32 0
  %10 = load i32, i32* %tv_sec20, align 4
  %11 = load i32, i32* @lastwatch, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %12 = load i32, i32* %srchlimit, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %srchlimit, align 4
  %tobool21 = icmp ne i32 %12, 0
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false, %if.end18
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call23 = call i32 @fclose(%struct._IO_FILE* %13)
  %call24 = call i32 @time(i32* null)
  store i32 %call24, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end25
  %14 = bitcast %struct.utmpx* %uu to i8*
  %15 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %16 = bitcast %struct.utmpx* %15 to i8*
  %call26 = call i32 @memcmp(i8* %14, i8* %16, i32 384)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body28

do.body28:                                        ; preds = %do.cond35, %do.end
  %17 = bitcast %struct.utmpx* %uu to i8*
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call29 = call i32 @fread(i8* %17, i32 384, i32 1, %struct._IO_FILE* %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end34, label %if.then31

if.then31:                                        ; preds = %do.body28
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call32 = call i32 @fclose(%struct._IO_FILE* %19)
  %call33 = call i32 @time(i32* null)
  store i32 %call33, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %do.body28
  br label %do.cond35

do.cond35:                                        ; preds = %if.end34
  %ut_line = getelementptr inbounds %struct.utmpx, %struct.utmpx* %uu, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line, i32 0, i32 0
  %20 = load %struct.utmpx*, %struct.utmpx** %u.addr, align 4
  %ut_line36 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [32 x i8], [32 x i8]* %ut_line36, i32 0, i32 0
  %call38 = call i32 @strncmp(i8* %arraydecay, i8* %arraydecay37, i32 32)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %do.body28, label %do.end40

do.end40:                                         ; preds = %do.cond35
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call41 = call i32 @fclose(%struct._IO_FILE* %21)
  %ut_tv42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %uu, i32 0, i32 8
  %tv_sec43 = getelementptr inbounds %struct.timeval, %struct.timeval* %ut_tv42, i32 0, i32 0
  %22 = load i32, i32* %tv_sec43, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end40, %if.then31, %if.then22, %if.then15, %if.then9, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare %struct.tm* @localtime(i32*) #1

declare i32 @ztrftime(i8*, i32, i8*, %struct.tm*, i32) #1

declare i8* @metafy(i8*, i32, i32) #1

declare void @tsetcap(i32, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @time(i32*) #1

declare i32 @fseek(%struct._IO_FILE*, i32, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #1

declare i32 @memcmp(i8*, i8*, i32) #1

declare i8* @dupstring(i8*) #1

declare void @tokenize(i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
