; ModuleID = 'input.c'
source_filename = "input.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.__sigset_t = type { [32 x i32] }
%struct._IO_FILE = type opaque
%struct.instacks = type { i8*, i8*, %struct.alias*, i32, i32, i32 }
%struct.alias = type { %struct.hashnode, i8*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }

@queueing_enabled = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@bshin = common global %struct._IO_FILE* null, align 4
@typtab = external global [256 x i16], align 2
@lexstop = external global i32, align 4
@inbufleft = internal global i32 0, align 4
@inbufct = common global i32 0, align 4
@inbufptr = internal global i8* null, align 4
@inbufflags = common global i32 0, align 4
@strin = common global i32 0, align 4
@lineno = external global i32, align 4
@errflag = external global i32, align 4
@inbuf = internal global i8* null, align 4
@.str = private unnamed_addr constant [47 x i8] c"Garbled input at %c (binary file as commands?)\00", align 1
@inbufpush = internal global i8* null, align 4
@instacktop = internal global %struct.instacks* null, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"read error on %s\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@instack = internal global %struct.instacks* null, align 4
@instacksz = internal global i32 4, align 4
@SHIN = common global i32 0, align 4
@opts = external global [181 x i8], align 1
@isfirstln = external global i32, align 4
@prompt2 = external global i8*, align 4
@rprompt2 = external global i8*, align 4
@prompt = external global i8*, align 4
@rprompt = external global i8*, align 4
@SHTTY = external global i32, align 4
@histdone = external global i32, align 4
@keyboardhackchar = external global i8, align 1
@isfirstch = external global i32, align 4
@inalmore = external global i32, align 4

; Function Attrs: noinline nounwind
define i8* @shingetline() #0 {
entry:
  %line = alloca i8*, align 4
  %ll = alloca i32, align 4
  %c = alloca i32, align 4
  %buf = alloca [8092 x i8], align 1
  %p = alloca i8*, align 4
  %q = alloca i32, align 4
  %agg.tmp = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp3 = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %agg.tmp15 = alloca %struct.__sigset_t, align 4
  %tmp16 = alloca %struct.__sigset_t, align 4
  %agg.tmp48 = alloca %struct.__sigset_t, align 4
  %tmp49 = alloca %struct.__sigset_t, align 4
  %agg.tmp70 = alloca %struct.__sigset_t, align 4
  %tmp71 = alloca %struct.__sigset_t, align 4
  %oset79 = alloca %struct.__sigset_t, align 4
  %tmp83 = alloca %struct.__sigset_t, align 4
  %tmp85 = alloca %struct.__sigset_t, align 4
  store i8* null, i8** %line, align 4
  store i32 0, i32* %ll, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  store i32 %0, i32* %q, align 4
  %arraydecay = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 4
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp, i32 28)
  call void @signal_unblock(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %agg.tmp)
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body1

do.body1:                                         ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body1
  %1 = load i32, i32* @queue_front, align 4
  %2 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %3, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %4 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %4
  call void @signal_setmask(%struct.__sigset_t* sret %tmp3, %struct.__sigset_t* byval align 4 %arrayidx)
  %5 = bitcast %struct.__sigset_t* %oset to i8*
  %6 = bitcast %struct.__sigset_t* %tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 128, i32 4, i1 false)
  %7 = load i32, i32* @queue_front, align 4
  %arrayidx4 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %7
  %8 = load i32, i32* %arrayidx4, align 4
  call void @zhandler(i32 %8)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp5, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %do.end6

do.end6:                                          ; preds = %do.end
  br label %for.cond

for.cond:                                         ; preds = %if.end91, %do.end6
  br label %do.body7

do.body7:                                         ; preds = %land.end, %for.cond
  %call = call i32* @__errno_location()
  store i32 0, i32* %call, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @bshin, align 4
  %call8 = call i32 @fgetc(%struct._IO_FILE* %9)
  store i32 %call8, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body7
  %10 = load i32, i32* %c, align 4
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call10 = call i32* @__errno_location()
  %11 = load i32, i32* %call10, align 4
  %cmp11 = icmp eq i32 %11, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %cmp11, %land.rhs ]
  br i1 %12, label %do.body7, label %do.end12

do.end12:                                         ; preds = %land.end
  %13 = load i32, i32* %c, align 4
  %cmp13 = icmp slt i32 %13, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end12
  %14 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %14, 10
  br i1 %cmp14, label %if.then, label %if.end32

if.then:                                          ; preds = %lor.lhs.false, %do.end12
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp15, i32 28)
  call void @signal_block(%struct.__sigset_t* sret %tmp16, %struct.__sigset_t* byval align 4 %agg.tmp15)
  %15 = load i32, i32* %q, align 4
  store i32 %15, i32* @queueing_enabled, align 4
  %16 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %16, 10
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  %17 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  store i8 10, i8* %17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  %18 = load i8*, i8** %p, align 4
  %arraydecay19 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %cmp20 = icmp ugt i8* %18, %arraydecay19
  br i1 %cmp20, label %if.then21, label %if.end31

if.then21:                                        ; preds = %if.end
  %19 = load i8*, i8** %p, align 4
  %incdec.ptr22 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr22, i8** %p, align 4
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %line, align 4
  %21 = load i32, i32* %ll, align 4
  %22 = load i8*, i8** %p, align 4
  %arraydecay23 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay23 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add24 = add nsw i32 %21, %sub.ptr.sub
  %call25 = call i8* @zrealloc(i8* %20, i32 %add24)
  store i8* %call25, i8** %line, align 4
  %23 = load i8*, i8** %line, align 4
  %24 = load i32, i32* %ll, align 4
  %add.ptr = getelementptr inbounds i8, i8* %23, i32 %24
  %arraydecay26 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %25 = load i8*, i8** %p, align 4
  %arraydecay27 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast28 = ptrtoint i8* %25 to i32
  %sub.ptr.rhs.cast29 = ptrtoint i8* %arraydecay27 to i32
  %sub.ptr.sub30 = sub i32 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* %arraydecay26, i32 %sub.ptr.sub30, i32 1, i1 false)
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.end
  %26 = load i8*, i8** %line, align 4
  ret i8* %26

if.end32:                                         ; preds = %lor.lhs.false
  %27 = load i32, i32* %c, align 4
  %conv = trunc i32 %27 to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx33 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %28 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %28 to i32
  %and = and i32 %conv34, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end32
  %29 = load i8*, i8** %p, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr36, i8** %p, align 4
  store i8 -125, i8* %29, align 1
  %30 = load i32, i32* %c, align 4
  %xor = xor i32 %30, 32
  %conv37 = trunc i32 %xor to i8
  %31 = load i8*, i8** %p, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr38, i8** %p, align 4
  store i8 %conv37, i8* %31, align 1
  br label %if.end41

if.else:                                          ; preds = %if.end32
  %32 = load i32, i32* %c, align 4
  %conv39 = trunc i32 %32 to i8
  %33 = load i8*, i8** %p, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr40, i8** %p, align 4
  store i8 %conv39, i8* %33, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then35
  %34 = load i8*, i8** %p, align 4
  %arraydecay42 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %add.ptr43 = getelementptr inbounds i8, i8* %arraydecay42, i32 8092
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i32 -1
  %cmp45 = icmp uge i8* %34, %add.ptr44
  br i1 %cmp45, label %if.then47, label %if.end91

if.then47:                                        ; preds = %if.end41
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp48, i32 28)
  call void @signal_block(%struct.__sigset_t* sret %tmp49, %struct.__sigset_t* byval align 4 %agg.tmp48)
  %35 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %36 = load i8*, i8** %line, align 4
  %37 = load i32, i32* %ll, align 4
  %38 = load i8*, i8** %p, align 4
  %arraydecay50 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast51 = ptrtoint i8* %38 to i32
  %sub.ptr.rhs.cast52 = ptrtoint i8* %arraydecay50 to i32
  %sub.ptr.sub53 = sub i32 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %add54 = add nsw i32 %37, %sub.ptr.sub53
  %add55 = add nsw i32 %add54, 1
  %call56 = call i8* @zrealloc(i8* %36, i32 %add55)
  store i8* %call56, i8** %line, align 4
  %39 = load i8*, i8** %line, align 4
  %40 = load i32, i32* %ll, align 4
  %add.ptr57 = getelementptr inbounds i8, i8* %39, i32 %40
  %arraydecay58 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %41 = load i8*, i8** %p, align 4
  %arraydecay59 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast60 = ptrtoint i8* %41 to i32
  %sub.ptr.rhs.cast61 = ptrtoint i8* %arraydecay59 to i32
  %sub.ptr.sub62 = sub i32 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr57, i8* %arraydecay58, i32 %sub.ptr.sub62, i32 1, i1 false)
  %42 = load i8*, i8** %p, align 4
  %arraydecay63 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast64 = ptrtoint i8* %42 to i32
  %sub.ptr.rhs.cast65 = ptrtoint i8* %arraydecay63 to i32
  %sub.ptr.sub66 = sub i32 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %43 = load i32, i32* %ll, align 4
  %add67 = add nsw i32 %43, %sub.ptr.sub66
  store i32 %add67, i32* %ll, align 4
  %44 = load i8*, i8** %line, align 4
  %45 = load i32, i32* %ll, align 4
  %arrayidx68 = getelementptr inbounds i8, i8* %44, i32 %45
  store i8 0, i8* %arrayidx68, align 1
  %arraydecay69 = getelementptr inbounds [8092 x i8], [8092 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay69, i8** %p, align 4
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp70, i32 28)
  call void @signal_unblock(%struct.__sigset_t* sret %tmp71, %struct.__sigset_t* byval align 4 %agg.tmp70)
  br label %do.body72

do.body72:                                        ; preds = %if.then47
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body73

do.body73:                                        ; preds = %do.body72
  br label %while.cond74

while.cond74:                                     ; preds = %while.body77, %do.body73
  %46 = load i32, i32* @queue_front, align 4
  %47 = load i32, i32* @queue_rear, align 4
  %cmp75 = icmp ne i32 %46, %47
  br i1 %cmp75, label %while.body77, label %while.end86

while.body77:                                     ; preds = %while.cond74
  %48 = load i32, i32* @queue_front, align 4
  %add80 = add nsw i32 %48, 1
  %rem81 = srem i32 %add80, 128
  store i32 %rem81, i32* @queue_front, align 4
  %49 = load i32, i32* @queue_front, align 4
  %arrayidx82 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %49
  call void @signal_setmask(%struct.__sigset_t* sret %tmp83, %struct.__sigset_t* byval align 4 %arrayidx82)
  %50 = bitcast %struct.__sigset_t* %oset79 to i8*
  %51 = bitcast %struct.__sigset_t* %tmp83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %50, i8* %51, i32 128, i32 4, i1 false)
  %52 = load i32, i32* @queue_front, align 4
  %arrayidx84 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %52
  %53 = load i32, i32* %arrayidx84, align 4
  call void @zhandler(i32 %53)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp85, %struct.__sigset_t* byval align 4 %oset79)
  br label %while.cond74

while.end86:                                      ; preds = %while.cond74
  br label %do.end88

do.end88:                                         ; preds = %while.end86
  br label %do.end90

do.end90:                                         ; preds = %do.end88
  br label %if.end91

if.end91:                                         ; preds = %do.end90, %if.end41
  br label %for.cond
}

declare void @signal_unblock(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare void @signal_mask(%struct.__sigset_t* sret, i32) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

declare i32* @__errno_location() #1

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @signal_block(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare i8* @zrealloc(i8*, i32) #1

; Function Attrs: noinline nounwind
define i32 @ingetc() #0 {
entry:
  %retval = alloca i32, align 4
  %lastc = alloca i32, align 4
  store i32 32, i32* %lastc, align 4
  %0 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 32, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %if.then25, %if.then7, %if.end
  %1 = load i32, i32* @inbufleft, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end15

if.then2:                                         ; preds = %for.cond
  %2 = load i32, i32* @inbufleft, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @inbufleft, align 4
  %3 = load i32, i32* @inbufct, align 4
  %dec3 = add nsw i32 %3, -1
  store i32 %dec3, i32* @inbufct, align 4
  %4 = load i8*, i8** @inbufptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** @inbufptr, align 4
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %lastc, align 4
  %conv4 = trunc i32 %conv to i8
  %idxprom = zext i8 %conv4 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv5 = sext i16 %6 to i32
  %and = and i32 %conv5, 16
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then2
  br label %for.cond

if.end8:                                          ; preds = %if.then2
  %7 = load i32, i32* @inbufflags, align 4
  %and9 = and i32 %7, 64
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %8 = load i32, i32* @strin, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end8
  %9 = load i32, i32* %lastc, align 4
  %cmp = icmp eq i32 %9, 10
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @lineno, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true, %lor.lhs.false
  br label %for.end

if.end15:                                         ; preds = %for.cond
  %11 = load i32, i32* @inbufct, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %if.end22, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end15
  %12 = load i32, i32* @strin, align 4
  %tobool18 = icmp ne i32 %12, 0
  br i1 %tobool18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %13 = load i32, i32* @errflag, align 4
  %tobool20 = icmp ne i32 %13, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false19, %land.lhs.true17
  store i32 1, i32* @lexstop, align 4
  br label %for.end

if.end22:                                         ; preds = %lor.lhs.false19, %if.end15
  %14 = load i32, i32* @inbufflags, align 4
  %and23 = and i32 %14, 8
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @inpoptop()
  br label %for.cond

if.end26:                                         ; preds = %if.end22
  %call = call i32 @inputline()
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  br label %for.end

if.end29:                                         ; preds = %if.end26
  br label %for.cond

for.end:                                          ; preds = %if.then28, %if.then21, %if.end14
  %15 = load i32, i32* @lexstop, align 4
  %tobool30 = icmp ne i32 %15, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %for.end
  %16 = load i32, i32* %lastc, align 4
  call void @zshlex_raw_add(i32 %16)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.end
  %17 = load i32, i32* %lastc, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal void @inpoptop() #0 {
entry:
  %t = alloca i8*, align 4
  %0 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @inbufflags, align 4
  %and = and i32 %1, -49
  store i32 %and, i32* @inbufflags, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load i8*, i8** @inbufptr, align 4
  %3 = load i8*, i8** @inbuf, align 4
  %cmp = icmp ugt i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** @inbufptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** @inbufptr, align 4
  %5 = load i32, i32* @inbufct, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @inbufct, align 4
  %6 = load i32, i32* @inbufleft, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @inbufleft, align 4
  %7 = load i32, i32* @inbufflags, align 4
  %and2 = and i32 %7, 262
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %while.body
  call void @zshlex_raw_back()
  br label %if.end

if.end:                                           ; preds = %if.then4, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end5

if.end5:                                          ; preds = %while.end, %entry
  %8 = load i8*, i8** @inbuf, align 4
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %9 = load i32, i32* @inbufflags, align 4
  %and7 = and i32 %9, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %10 = load i8*, i8** @inbuf, align 4
  call void @free(i8* %10)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end5
  %11 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %incdec.ptr11 = getelementptr inbounds %struct.instacks, %struct.instacks* %11, i32 -1
  store %struct.instacks* %incdec.ptr11, %struct.instacks** @instacktop, align 4
  %12 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %buf = getelementptr inbounds %struct.instacks, %struct.instacks* %12, i32 0, i32 0
  %13 = load i8*, i8** %buf, align 4
  store i8* %13, i8** @inbuf, align 4
  %14 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %bufptr = getelementptr inbounds %struct.instacks, %struct.instacks* %14, i32 0, i32 1
  %15 = load i8*, i8** %bufptr, align 4
  store i8* %15, i8** @inbufpush, align 4
  store i8* %15, i8** @inbufptr, align 4
  %16 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %bufleft = getelementptr inbounds %struct.instacks, %struct.instacks* %16, i32 0, i32 3
  %17 = load i32, i32* %bufleft, align 4
  store i32 %17, i32* @inbufleft, align 4
  %18 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %bufct = getelementptr inbounds %struct.instacks, %struct.instacks* %18, i32 0, i32 4
  %19 = load i32, i32* %bufct, align 4
  store i32 %19, i32* @inbufct, align 4
  %20 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %flags = getelementptr inbounds %struct.instacks, %struct.instacks* %20, i32 0, i32 5
  %21 = load i32, i32* %flags, align 4
  store i32 %21, i32* @inbufflags, align 4
  %22 = load i32, i32* @inbufflags, align 4
  %and12 = and i32 %22, 48
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  br label %if.end27

if.end15:                                         ; preds = %if.end10
  %23 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %alias = getelementptr inbounds %struct.instacks, %struct.instacks* %23, i32 0, i32 2
  %24 = load %struct.alias*, %struct.alias** %alias, align 4
  %tobool16 = icmp ne %struct.alias* %24, null
  br i1 %tobool16, label %if.then17, label %if.end27

if.then17:                                        ; preds = %if.end15
  %25 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %alias18 = getelementptr inbounds %struct.instacks, %struct.instacks* %25, i32 0, i32 2
  %26 = load %struct.alias*, %struct.alias** %alias18, align 4
  %text = getelementptr inbounds %struct.alias, %struct.alias* %26, i32 0, i32 1
  %27 = load i8*, i8** %text, align 4
  store i8* %27, i8** %t, align 4
  %28 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %alias19 = getelementptr inbounds %struct.instacks, %struct.instacks* %28, i32 0, i32 2
  %29 = load %struct.alias*, %struct.alias** %alias19, align 4
  %inuse = getelementptr inbounds %struct.alias, %struct.alias* %29, i32 0, i32 2
  store i32 0, i32* %inuse, align 4
  %30 = load i8*, i8** %t, align 4
  %31 = load i8, i8* %30, align 1
  %conv = sext i8 %31 to i32
  %tobool20 = icmp ne i32 %conv, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end26

land.lhs.true21:                                  ; preds = %if.then17
  %32 = load i8*, i8** %t, align 4
  %33 = load i8*, i8** %t, align 4
  %call = call i32 @strlen(i8* %33)
  %sub = sub i32 %call, 1
  %arrayidx = getelementptr inbounds i8, i8* %32, i32 %sub
  %34 = load i8, i8* %arrayidx, align 1
  %conv22 = sext i8 %34 to i32
  %cmp23 = icmp eq i32 %conv22, 32
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true21
  store i32 1, i32* @inalmore, align 4
  call void @histbackword()
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true21, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %if.end26, %if.end15
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @inputline() #0 {
entry:
  %retval = alloca i32, align 4
  %ingetcline = alloca i8*, align 4
  %ingetcpmptl = alloca i8**, align 4
  %ingetcpmptr = alloca i8**, align 4
  %context = alloca i32, align 4
  %pptbuf = alloca i8*, align 4
  %pptlen = alloca i32, align 4
  %flags = alloca i32, align 4
  %stripptr = alloca i8*, align 4
  %ct = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %oinbuf = alloca i8*, align 4
  %newlen = alloca i32, align 4
  %oldlen = alloca i32, align 4
  store i8** null, i8*** %ingetcpmptl, align 4
  store i8** null, i8*** %ingetcpmptr, align 4
  store i32 0, i32* %context, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv1 = sext i8 %1 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %if.then, label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* @isfirstln, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  store i8** @prompt2, i8*** %ingetcpmptl, align 4
  %3 = load i8*, i8** @rprompt2, align 4
  %tobool5 = icmp ne i8* %3, null
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  store i8** @rprompt2, i8*** %ingetcpmptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then4
  store i32 1, i32* %context, align 4
  br label %if.end10

if.else:                                          ; preds = %if.then
  store i8** @prompt, i8*** %ingetcpmptl, align 4
  %4 = load i8*, i8** @rprompt, align 4
  %tobool7 = icmp ne i8* %4, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  store i8** @rprompt, i8*** %ingetcpmptr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %entry
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv12 = sext i8 %5 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %land.lhs.true14, label %if.then22

land.lhs.true14:                                  ; preds = %if.end11
  %6 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv15 = sext i8 %6 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %land.lhs.true17, label %if.then22

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %7 = load i32, i32* @SHTTY, align 4
  %cmp = icmp ne i32 %7, -1
  br i1 %cmp, label %land.lhs.true19, label %if.then22

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  %conv20 = sext i8 %8 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %if.else34, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19, %land.lhs.true17, %land.lhs.true14, %if.end11
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv23 = sext i8 %9 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %land.lhs.true25, label %if.end32

land.lhs.true25:                                  ; preds = %if.then22
  %10 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv26 = sext i8 %10 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %land.lhs.true25
  %11 = load i8**, i8*** %ingetcpmptl, align 4
  %tobool29 = icmp ne i8** %11, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then28
  %12 = load i8**, i8*** %ingetcpmptl, align 4
  %13 = load i8*, i8** %12, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ null, %cond.false ]
  %call = call i8* @promptexpand(i8* %cond, i32 0, i8* null, i8* null, i32* null)
  %call30 = call i8* @unmetafy(i8* %call, i32* %pptlen)
  store i8* %call30, i8** %pptbuf, align 4
  %14 = load i8*, i8** %pptbuf, align 4
  %15 = load i32, i32* %pptlen, align 4
  %call31 = call i32 @write_loop(i32 2, i8* %14, i32 %15)
  %16 = load i8*, i8** %pptbuf, align 4
  call void @free(i8* %16)
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %land.lhs.true25, %if.then22
  %call33 = call i8* @shingetline()
  store i8* %call33, i8** %ingetcline, align 4
  br label %if.end40

if.else34:                                        ; preds = %land.lhs.true19
  store i32 3, i32* %flags, align 4
  %17 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 91), align 1
  %tobool35 = icmp ne i8 %17, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else34
  %18 = load i32, i32* %flags, align 4
  %or = or i32 %18, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.else34
  %19 = load i8**, i8*** %ingetcpmptl, align 4
  %20 = load i8**, i8*** %ingetcpmptr, align 4
  %21 = load i32, i32* %flags, align 4
  %22 = load i32, i32* %context, align 4
  %call38 = call i8* (i32, ...) @zleentry(i32 1, i8** %19, i8** %20, i32 %21, i32 %22)
  store i8* %call38, i8** %ingetcline, align 4
  %23 = load i32, i32* @histdone, align 4
  %or39 = or i32 %23, 8
  store i32 %or39, i32* @histdone, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %if.end32
  %24 = load i8*, i8** %ingetcline, align 4
  %tobool41 = icmp ne i8* %24, null
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end40
  store i32 1, i32* @lexstop, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end40
  %25 = load i32, i32* @errflag, align 4
  %tobool44 = icmp ne i32 %25, 0
  br i1 %tobool44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end43
  %26 = load i8*, i8** %ingetcline, align 4
  call void @free(i8* %26)
  %27 = load i32, i32* @errflag, align 4
  %or46 = or i32 %27, 1
  store i32 %or46, i32* @errflag, align 4
  store i32 1, i32* @lexstop, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end43
  %28 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 174), align 1
  %tobool48 = icmp ne i8 %28, 0
  br i1 %tobool48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end47
  %29 = load i8*, i8** %ingetcline, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call50 = call i32 @zputs(i8* %29, %struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call51 = call i32 @fflush(%struct._IO_FILE* %31)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47
  %32 = load i8, i8* @keyboardhackchar, align 1
  %conv53 = zext i8 %32 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.end109

land.lhs.true55:                                  ; preds = %if.end52
  %33 = load i8*, i8** %ingetcline, align 4
  %34 = load i8, i8* %33, align 1
  %conv56 = sext i8 %34 to i32
  %tobool57 = icmp ne i32 %conv56, 0
  br i1 %tobool57, label %land.lhs.true58, label %if.end109

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %35 = load i8*, i8** %ingetcline, align 4
  %36 = load i8*, i8** %ingetcline, align 4
  %call59 = call i32 @strlen(i8* %36)
  %sub = sub i32 %call59, 1
  %arrayidx = getelementptr inbounds i8, i8* %35, i32 %sub
  %37 = load i8, i8* %arrayidx, align 1
  %conv60 = sext i8 %37 to i32
  %cmp61 = icmp eq i32 %conv60, 10
  br i1 %cmp61, label %land.lhs.true63, label %if.end109

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %38 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv64 = sext i8 %38 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %land.lhs.true66, label %if.end109

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %39 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv67 = sext i8 %39 to i32
  %tobool68 = icmp ne i32 %conv67, 0
  br i1 %tobool68, label %land.lhs.true69, label %if.end109

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %40 = load i32, i32* @SHTTY, align 4
  %cmp70 = icmp ne i32 %40, -1
  br i1 %cmp70, label %land.lhs.true72, label %if.end109

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %41 = load i8*, i8** %ingetcline, align 4
  %arrayidx73 = getelementptr inbounds i8, i8* %41, i32 1
  %42 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %42 to i32
  %tobool75 = icmp ne i32 %conv74, 0
  br i1 %tobool75, label %if.then76, label %if.end109

if.then76:                                        ; preds = %land.lhs.true72
  %43 = load i8*, i8** %ingetcline, align 4
  %44 = load i8*, i8** %ingetcline, align 4
  %call77 = call i32 @strlen(i8* %44)
  %add.ptr = getelementptr inbounds i8, i8* %43, i32 %call77
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr, i32 -2
  store i8* %add.ptr78, i8** %stripptr, align 4
  %45 = load i8*, i8** %stripptr, align 4
  %46 = load i8, i8* %45, align 1
  %conv79 = sext i8 %46 to i32
  %47 = load i8, i8* @keyboardhackchar, align 1
  %conv80 = zext i8 %47 to i32
  %cmp81 = icmp eq i32 %conv79, %conv80
  br i1 %cmp81, label %if.then83, label %if.end108

if.then83:                                        ; preds = %if.then76
  store i32 1, i32* %ct, align 4
  %48 = load i8, i8* @keyboardhackchar, align 1
  %conv84 = zext i8 %48 to i32
  %cmp85 = icmp eq i32 %conv84, 39
  br i1 %cmp85, label %if.then94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then83
  %49 = load i8, i8* @keyboardhackchar, align 1
  %conv87 = zext i8 %49 to i32
  %cmp88 = icmp eq i32 %conv87, 34
  br i1 %cmp88, label %if.then94, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false
  %50 = load i8, i8* @keyboardhackchar, align 1
  %conv91 = zext i8 %50 to i32
  %cmp92 = icmp eq i32 %conv91, 96
  br i1 %cmp92, label %if.then94, label %if.end102

if.then94:                                        ; preds = %lor.lhs.false90, %lor.lhs.false, %if.then83
  store i32 0, i32* %ct, align 4
  %51 = load i8*, i8** %ingetcline, align 4
  store i8* %51, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then94
  %52 = load i8*, i8** %ptr, align 4
  %53 = load i8, i8* %52, align 1
  %tobool95 = icmp ne i8 %53, 0
  br i1 %tobool95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i8*, i8** %ptr, align 4
  %55 = load i8, i8* %54, align 1
  %conv96 = sext i8 %55 to i32
  %56 = load i8, i8* @keyboardhackchar, align 1
  %conv97 = zext i8 %56 to i32
  %cmp98 = icmp eq i32 %conv96, %conv97
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %for.body
  %57 = load i32, i32* %ct, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %ct, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end101
  %58 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end102

if.end102:                                        ; preds = %for.end, %lor.lhs.false90
  %59 = load i32, i32* %ct, align 4
  %and = and i32 %59, 1
  %tobool103 = icmp ne i32 %and, 0
  br i1 %tobool103, label %if.then104, label %if.end107

if.then104:                                       ; preds = %if.end102
  %60 = load i8*, i8** %stripptr, align 4
  %arrayidx105 = getelementptr inbounds i8, i8* %60, i32 0
  store i8 10, i8* %arrayidx105, align 1
  %61 = load i8*, i8** %stripptr, align 4
  %arrayidx106 = getelementptr inbounds i8, i8* %61, i32 1
  store i8 0, i8* %arrayidx106, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end102
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then76
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %land.lhs.true72, %land.lhs.true69, %land.lhs.true66, %land.lhs.true63, %land.lhs.true58, %land.lhs.true55, %if.end52
  store i32 1, i32* @isfirstch, align 4
  %62 = load i32, i32* @inbufflags, align 4
  %and110 = and i32 %62, 128
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %land.lhs.true112, label %if.else136

land.lhs.true112:                                 ; preds = %if.end109
  %63 = load i8*, i8** @inbuf, align 4
  %tobool113 = icmp ne i8* %63, null
  br i1 %tobool113, label %if.then114, label %if.else136

if.then114:                                       ; preds = %land.lhs.true112
  %64 = load i8*, i8** @inbuf, align 4
  store i8* %64, i8** %oinbuf, align 4
  %65 = load i8*, i8** %ingetcline, align 4
  %call115 = call i32 @strlen(i8* %65)
  store i32 %call115, i32* %newlen, align 4
  %66 = load i8*, i8** @inbufptr, align 4
  %67 = load i8*, i8** @inbuf, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %66 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %67 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %68 = load i32, i32* @inbufleft, align 4
  %add = add nsw i32 %sub.ptr.sub, %68
  store i32 %add, i32* %oldlen, align 4
  %69 = load i32, i32* @inbufflags, align 4
  %and116 = and i32 %69, 1
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then118, label %if.else122

if.then118:                                       ; preds = %if.then114
  %70 = load i8*, i8** @inbuf, align 4
  %71 = load i32, i32* %oldlen, align 4
  %72 = load i32, i32* %newlen, align 4
  %add119 = add nsw i32 %71, %72
  %add120 = add nsw i32 %add119, 1
  %call121 = call i8* @realloc(i8* %70, i32 %add120)
  store i8* %call121, i8** @inbuf, align 4
  br label %if.end126

if.else122:                                       ; preds = %if.then114
  %73 = load i32, i32* %oldlen, align 4
  %74 = load i32, i32* %newlen, align 4
  %add123 = add nsw i32 %73, %74
  %add124 = add nsw i32 %add123, 1
  %call125 = call i8* @zalloc(i32 %add124)
  store i8* %call125, i8** @inbuf, align 4
  %75 = load i8*, i8** @inbuf, align 4
  %76 = load i8*, i8** %oinbuf, align 4
  %77 = load i32, i32* %oldlen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %75, i8* %76, i32 %77, i32 1, i1 false)
  br label %if.end126

if.end126:                                        ; preds = %if.else122, %if.then118
  %78 = load i8*, i8** @inbuf, align 4
  %79 = load i8*, i8** %oinbuf, align 4
  %sub.ptr.lhs.cast127 = ptrtoint i8* %78 to i32
  %sub.ptr.rhs.cast128 = ptrtoint i8* %79 to i32
  %sub.ptr.sub129 = sub i32 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128
  %80 = load i8*, i8** @inbufptr, align 4
  %add.ptr130 = getelementptr inbounds i8, i8* %80, i32 %sub.ptr.sub129
  store i8* %add.ptr130, i8** @inbufptr, align 4
  %81 = load i8*, i8** @inbuf, align 4
  %82 = load i32, i32* %oldlen, align 4
  %add.ptr131 = getelementptr inbounds i8, i8* %81, i32 %82
  %83 = load i8*, i8** %ingetcline, align 4
  %call132 = call i8* @strcpy(i8* %add.ptr131, i8* %83)
  %84 = load i8*, i8** %ingetcline, align 4
  call void @free(i8* %84)
  %85 = load i32, i32* %newlen, align 4
  %86 = load i32, i32* @inbufleft, align 4
  %add133 = add nsw i32 %86, %85
  store i32 %add133, i32* @inbufleft, align 4
  %87 = load i32, i32* %newlen, align 4
  %88 = load i32, i32* @inbufct, align 4
  %add134 = add nsw i32 %88, %87
  store i32 %add134, i32* @inbufct, align 4
  %89 = load i32, i32* @inbufflags, align 4
  %or135 = or i32 %89, 1
  store i32 %or135, i32* @inbufflags, align 4
  br label %if.end137

if.else136:                                       ; preds = %land.lhs.true112, %if.end109
  %90 = load i8*, i8** %ingetcline, align 4
  call void @inputsetline(i8* %90, i32 1)
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.end126
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end137, %if.then45, %if.then42
  %91 = load i32, i32* %retval, align 4
  ret i32 %91
}

declare void @zshlex_raw_add(i32) #1

; Function Attrs: noinline nounwind
define void @inungetc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %cback = alloca i8*, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end33, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @inbufptr, align 4
  %2 = load i8*, i8** @inbuf, align 4
  %cmp = icmp ne i8* %1, %2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load i8*, i8** @inbufptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 -1
  store i8* %incdec.ptr, i8** @inbufptr, align 4
  %4 = load i32, i32* @inbufct, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @inbufct, align 4
  %5 = load i32, i32* @inbufleft, align 4
  %inc2 = add nsw i32 %5, 1
  store i32 %inc2, i32* @inbufleft, align 4
  %6 = load i32, i32* @inbufflags, align 4
  %and = and i32 %6, 64
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1
  %7 = load i32, i32* @strin, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then1
  %8 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp eq i32 %8, 10
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* @lineno, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* @lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %lor.lhs.false
  br label %if.end12

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* @inbufflags, align 4
  %and7 = and i32 %10, 8
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.else
  %11 = load i32, i32* %c.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), i32 %11)
  br label %if.end33

if.else10:                                        ; preds = %if.else
  %call = call i8* @zshcalloc(i32 2)
  store i8* %call, i8** %cback, align 4
  %12 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i8*, i8** %cback, align 4
  %arrayidx = getelementptr inbounds i8, i8* %13, i32 0
  store i8 %conv, i8* %arrayidx, align 1
  %14 = load i8*, i8** %cback, align 4
  call void @inpush(i8* %14, i32 9, %struct.alias* null)
  br label %if.end11

if.end11:                                         ; preds = %if.else10
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %15 = load i8*, i8** @inbufptr, align 4
  %16 = load i8*, i8** @inbufpush, align 4
  %cmp13 = icmp eq i8* %15, %16
  br i1 %cmp13, label %land.lhs.true15, label %if.end32

land.lhs.true15:                                  ; preds = %if.end12
  %17 = load i32, i32* @inbufflags, align 4
  %and16 = and i32 %17, 48
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end32

if.then18:                                        ; preds = %land.lhs.true15
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then18
  %18 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %alias = getelementptr inbounds %struct.instacks, %struct.instacks* %18, i32 0, i32 2
  %19 = load %struct.alias*, %struct.alias** %alias, align 4
  %tobool19 = icmp ne %struct.alias* %19, null
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body
  %20 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %alias21 = getelementptr inbounds %struct.instacks, %struct.instacks* %20, i32 0, i32 2
  %21 = load %struct.alias*, %struct.alias** %alias21, align 4
  %inuse = getelementptr inbounds %struct.alias, %struct.alias* %21, i32 0, i32 2
  store i32 1, i32* %inuse, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.body
  %22 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %incdec.ptr23 = getelementptr inbounds %struct.instacks, %struct.instacks* %22, i32 1
  store %struct.instacks* %incdec.ptr23, %struct.instacks** @instacktop, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end22
  %23 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %flags = getelementptr inbounds %struct.instacks, %struct.instacks* %23, i32 0, i32 5
  %24 = load i32, i32* %flags, align 4
  %and24 = and i32 %24, 48
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %25 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %bufleft = getelementptr inbounds %struct.instacks, %struct.instacks* %25, i32 0, i32 3
  %26 = load i32, i32* %bufleft, align 4
  %tobool26 = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool26, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %27 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %27, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %28 = load i32, i32* @inbufflags, align 4
  %and27 = and i32 %28, 32
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %do.end
  store i32 14, i32* @inbufflags, align 4
  br label %if.end31

if.else30:                                        ; preds = %do.end
  store i32 10, i32* @inbufflags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  store i32 0, i32* @inbufleft, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @inbufptr, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** @inbuf, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %land.lhs.true15, %if.end12
  call void @zshlex_raw_back()
  br label %if.end33

if.end33:                                         ; preds = %if.then9, %if.end32, %entry
  ret void
}

declare void @zerr(i8*, ...) #1

declare i8* @zshcalloc(i32) #1

; Function Attrs: noinline nounwind
define void @inpush(i8* %str, i32 %flags, %struct.alias* %inalias) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %inalias.addr = alloca %struct.alias*, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store %struct.alias* %inalias, %struct.alias** %inalias.addr, align 4
  %0 = load %struct.instacks*, %struct.instacks** @instack, align 4
  %tobool = icmp ne %struct.instacks* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @instacksz, align 4
  %mul = mul i32 %1, 24
  %call = call i8* @zalloc(i32 %mul)
  %2 = bitcast i8* %call to %struct.instacks*
  store %struct.instacks* %2, %struct.instacks** @instack, align 4
  %3 = load %struct.instacks*, %struct.instacks** @instack, align 4
  store %struct.instacks* %3, %struct.instacks** @instacktop, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** @inbuf, align 4
  %5 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %buf = getelementptr inbounds %struct.instacks, %struct.instacks* %5, i32 0, i32 0
  store i8* %4, i8** %buf, align 4
  %6 = load i8*, i8** @inbufptr, align 4
  %7 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %bufptr = getelementptr inbounds %struct.instacks, %struct.instacks* %7, i32 0, i32 1
  store i8* %6, i8** %bufptr, align 4
  %8 = load i32, i32* @inbufleft, align 4
  %9 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %bufleft = getelementptr inbounds %struct.instacks, %struct.instacks* %9, i32 0, i32 3
  store i32 %8, i32* %bufleft, align 4
  %10 = load i32, i32* @inbufct, align 4
  %11 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %bufct = getelementptr inbounds %struct.instacks, %struct.instacks* %11, i32 0, i32 4
  store i32 %10, i32* %bufct, align 4
  %12 = load i32, i32* @inbufflags, align 4
  %and = and i32 %12, -49
  store i32 %and, i32* @inbufflags, align 4
  %13 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %13, 6
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.else15

if.then3:                                         ; preds = %if.end
  %14 = load i32, i32* %flags.addr, align 4
  %or = or i32 %14, 10
  store i32 %or, i32* %flags.addr, align 4
  %15 = load i32, i32* %flags.addr, align 4
  %and4 = and i32 %15, 4
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %16 = load i32, i32* @inbufflags, align 4
  %or7 = or i32 %16, 32
  %17 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %flags8 = getelementptr inbounds %struct.instacks, %struct.instacks* %17, i32 0, i32 5
  store i32 %or7, i32* %flags8, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then3
  %18 = load i32, i32* @inbufflags, align 4
  %or9 = or i32 %18, 16
  %19 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %flags10 = getelementptr inbounds %struct.instacks, %struct.instacks* %19, i32 0, i32 5
  store i32 %or9, i32* %flags10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %20 = load %struct.alias*, %struct.alias** %inalias.addr, align 4
  %21 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %alias = getelementptr inbounds %struct.instacks, %struct.instacks* %21, i32 0, i32 2
  store %struct.alias* %20, %struct.alias** %alias, align 4
  %tobool12 = icmp ne %struct.alias* %20, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %22 = load %struct.alias*, %struct.alias** %inalias.addr, align 4
  %inuse = getelementptr inbounds %struct.alias, %struct.alias* %22, i32 0, i32 2
  store i32 1, i32* %inuse, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  br label %if.end24

if.else15:                                        ; preds = %if.end
  %23 = load i32, i32* @inbufflags, align 4
  %24 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %flags16 = getelementptr inbounds %struct.instacks, %struct.instacks* %24, i32 0, i32 5
  store i32 %23, i32* %flags16, align 4
  %and17 = and i32 %23, 2
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.else15
  %25 = load i32, i32* %flags.addr, align 4
  %and19 = and i32 %25, 8
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  %26 = load i32, i32* %flags.addr, align 4
  %or22 = or i32 %26, 2
  store i32 %or22, i32* %flags.addr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true, %if.else15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end14
  %27 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %incdec.ptr = getelementptr inbounds %struct.instacks, %struct.instacks* %27, i32 1
  store %struct.instacks* %incdec.ptr, %struct.instacks** @instacktop, align 4
  %28 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %29 = load %struct.instacks*, %struct.instacks** @instack, align 4
  %30 = load i32, i32* @instacksz, align 4
  %add.ptr = getelementptr inbounds %struct.instacks, %struct.instacks* %29, i32 %30
  %cmp = icmp eq %struct.instacks* %28, %add.ptr
  br i1 %cmp, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end24
  %31 = load %struct.instacks*, %struct.instacks** @instack, align 4
  %32 = bitcast %struct.instacks* %31 to i8*
  %33 = load i32, i32* @instacksz, align 4
  %add = add nsw i32 %33, 4
  %mul26 = mul i32 %add, 24
  %call27 = call i8* @realloc(i8* %32, i32 %mul26)
  %34 = bitcast i8* %call27 to %struct.instacks*
  store %struct.instacks* %34, %struct.instacks** @instack, align 4
  %35 = load %struct.instacks*, %struct.instacks** @instack, align 4
  %36 = load i32, i32* @instacksz, align 4
  %add.ptr28 = getelementptr inbounds %struct.instacks, %struct.instacks* %35, i32 %36
  store %struct.instacks* %add.ptr28, %struct.instacks** @instacktop, align 4
  %37 = load i32, i32* @instacksz, align 4
  %add29 = add nsw i32 %37, 4
  store i32 %add29, i32* @instacksz, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end24
  %38 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  %flags31 = getelementptr inbounds %struct.instacks, %struct.instacks* %38, i32 0, i32 5
  store i32 0, i32* %flags31, align 4
  store i8* null, i8** @inbuf, align 4
  store i8* null, i8** @inbufpush, align 4
  %39 = load i8*, i8** %str.addr, align 4
  %40 = load i32, i32* %flags.addr, align 4
  call void @inputsetline(i8* %39, i32 %40)
  ret void
}

declare void @zshlex_raw_back() #1

; Function Attrs: noinline nounwind
define i32 @stuff(i8* %fn) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca i8*, align 4
  %in = alloca %struct._IO_FILE*, align 4
  %buf = alloca i8*, align 4
  %len = alloca i32, align 4
  store i8* %fn, i8** %fn.addr, align 4
  %0 = load i8*, i8** %fn.addr, align 4
  %call = call i8* @unmeta(i8* %0)
  %call1 = call %struct._IO_FILE* @fopen(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %in, align 4
  %tobool = icmp ne %struct._IO_FILE* %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %fn.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %1)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call2 = call i32 @fseek(%struct._IO_FILE* %2, i32 0, i32 2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call3 = call i32 @ftell(%struct._IO_FILE* %3)
  store i32 %call3, i32* %len, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call4 = call i32 @fseek(%struct._IO_FILE* %4, i32 0, i32 0)
  %5 = load i32, i32* %len, align 4
  %add = add nsw i32 %5, 1
  %call5 = call i8* @zalloc(i32 %add)
  store i8* %call5, i8** %buf, align 4
  %6 = load i8*, i8** %buf, align 4
  %7 = load i32, i32* %len, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call6 = call i32 @fread(i8* %6, i32 %7, i32 1, %struct._IO_FILE* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  %9 = load i8*, i8** %fn.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call9 = call i32 @fclose(%struct._IO_FILE* %10)
  %11 = load i8*, i8** %buf, align 4
  %12 = load i32, i32* %len, align 4
  %add10 = add nsw i32 %12, 1
  call void @zfree(i8* %11, i32 %add10)
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call12 = call i32 @fclose(%struct._IO_FILE* %13)
  %14 = load i8*, i8** %buf, align 4
  %15 = load i32, i32* %len, align 4
  %arrayidx = getelementptr inbounds i8, i8* %14, i32 %15
  store i8 0, i8* %arrayidx, align 1
  %16 = load i8*, i8** %buf, align 4
  %17 = load i32, i32* %len, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call13 = call i32 @fwrite(i8* %16, i32 %17, i32 1, %struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call14 = call i32 @fflush(%struct._IO_FILE* %19)
  %20 = load i8*, i8** %buf, align 4
  %21 = load i32, i32* %len, align 4
  %call15 = call i8* @metafy(i8* %20, i32 %21, i32 0)
  call void @inputsetline(i8* %call15, i32 1)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then8, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @unmeta(i8*) #1

declare i32 @fseek(%struct._IO_FILE*, i32, i32) #1

declare i32 @ftell(%struct._IO_FILE*) #1

declare i8* @zalloc(i32) #1

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @zfree(i8*, i32) #1

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define internal void @inputsetline(i8* %str, i32 %flags) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp11 = alloca %struct.__sigset_t, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32, i32* @inbufflags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** @inbuf, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** @inbuf, align 4
  call void @free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8*, i8** %str.addr, align 4
  store i8* %4, i8** @inbufptr, align 4
  store i8* %4, i8** @inbuf, align 4
  %5 = load i8*, i8** @inbuf, align 4
  %call = call i32 @strlen(i8* %5)
  store i32 %call, i32* @inbufleft, align 4
  %6 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %6, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* @inbufleft, align 4
  %8 = load i32, i32* @inbufct, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* @inbufct, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* @inbufleft, align 4
  store i32 %9, i32* @inbufct, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %10 = load i32, i32* %flags.addr, align 4
  store i32 %10, i32* @inbufflags, align 4
  br label %do.body

do.body:                                          ; preds = %if.end5
  %11 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool6 = icmp ne i32 %dec, 0
  br i1 %tobool6, label %if.end12, label %if.then7

if.then7:                                         ; preds = %do.body
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body8
  %12 = load i32, i32* @queue_front, align 4
  %13 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %12, %13
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* @queue_front, align 4
  %add9 = add nsw i32 %14, 1
  %rem = srem i32 %add9, 128
  store i32 %rem, i32* @queue_front, align 4
  %15 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %15
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %16 = bitcast %struct.__sigset_t* %oset to i8*
  %17 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 4, i1 false)
  %18 = load i32, i32* @queue_front, align 4
  %arrayidx10 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %18
  %19 = load i32, i32* %arrayidx10, align 4
  call void @zhandler(i32 %19)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp11, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  ret void
}

declare i8* @metafy(i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define void @inerrflush() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @inbufct, align 4
  %tobool1 = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call = call i32 @ingetc()
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare i8* @realloc(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @inpop() #0 {
entry:
  %remcont = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* @inbufflags, align 4
  %and = and i32 %0, 8
  store i32 %and, i32* %remcont, align 4
  call void @inpoptop()
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* %remcont, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind
define void @inpopalias() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @inbufflags, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @inpoptop()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind
define i8* @ingetptr() #0 {
entry:
  %0 = load i8*, i8** @inbufptr, align 4
  ret i8* %0
}

; Function Attrs: noinline nounwind
define i8* @input_hasalias() #0 {
entry:
  %retval = alloca i8*, align 4
  %flags = alloca i32, align 4
  %instackptr = alloca %struct.instacks*, align 4
  %0 = load i32, i32* @inbufflags, align 4
  store i32 %0, i32* %flags, align 4
  %1 = load %struct.instacks*, %struct.instacks** @instacktop, align 4
  store %struct.instacks* %1, %struct.instacks** %instackptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end4, %entry
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load %struct.instacks*, %struct.instacks** %instackptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.instacks, %struct.instacks* %3, i32 -1
  store %struct.instacks* %incdec.ptr, %struct.instacks** %instackptr, align 4
  %4 = load %struct.instacks*, %struct.instacks** %instackptr, align 4
  %alias = getelementptr inbounds %struct.instacks, %struct.instacks* %4, i32 0, i32 2
  %5 = load %struct.alias*, %struct.alias** %alias, align 4
  %tobool1 = icmp ne %struct.alias* %5, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load %struct.instacks*, %struct.instacks** %instackptr, align 4
  %alias3 = getelementptr inbounds %struct.instacks, %struct.instacks* %6, i32 0, i32 2
  %7 = load %struct.alias*, %struct.alias** %alias3, align 4
  %node = getelementptr inbounds %struct.alias, %struct.alias* %7, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %8 = load i8*, i8** %nam, align 4
  store i8* %8, i8** %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.instacks*, %struct.instacks** %instackptr, align 4
  %flags5 = getelementptr inbounds %struct.instacks, %struct.instacks* %9, i32 0, i32 5
  %10 = load i32, i32* %flags5, align 4
  store i32 %10, i32* %flags, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i8* null, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then2
  %11 = load i8*, i8** %retval, align 4
  ret i8* %11
}

declare i8* @unmetafy(i8*, i32*) #1

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*) #1

declare i32 @write_loop(i32, i8*, i32) #1

declare void @free(i8*) #1

declare i8* @zleentry(i32, ...) #1

declare i32 @zputs(i8*, %struct._IO_FILE*) #1

declare i32 @strlen(i8*) #1

declare i8* @strcpy(i8*, i8*) #1

declare void @histbackword() #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
