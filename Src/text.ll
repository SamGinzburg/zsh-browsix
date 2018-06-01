; ModuleID = 'text.c'
source_filename = "text.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.__sigset_t = type { [32 x i32] }
%struct.tstack = type { %struct.tstack*, i32, i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8*, i32*, i32 }
%struct._IO_FILE = type opaque
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.estate = type { %struct.eprog*, i32*, i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.anon = type { %union.linkroot* }
%struct.anon.4 = type { i32* }
%struct.anon.1 = type { i32* }
%struct.anon.2 = type { i32, i32* }
%struct.anon.3 = type { i32 }
%struct.redir = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@cond_binary_ops = internal global [16 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* null], align 4
@text_expand_tabs = common global i32 0, align 4
@queueing_enabled = external global i32, align 4
@tindent = internal global i32 0, align 4
@tnewlins = internal global i32 0, align 4
@tsiz = internal global i32 0, align 4
@tbuf = internal global i8* null, align 4
@tptr = internal global i8* null, align 4
@tlim = internal global i8* null, align 4
@tjob = internal global i32 0, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@getjobtext.jbuf = internal global [80 x i8] zeroinitializer, align 1
@getredirs.fstr = internal global [18 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)], align 4
@.str = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">|\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c">>|\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"&>\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"&>|\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"&>>\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"&>>|\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"<<-\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"<&\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c">&\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"=~\00", align 1
@tstack = internal global %struct.tstack* null, align 4
@tfree = internal global %struct.tstack* null, align 4
@.str.28 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"coproc\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"coproc \00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"() { ... }\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"() {\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"for \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c")) do\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"select \00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"until \00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"while \00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"repeat \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"case \00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" in\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"esac\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c" ;;\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c" ;&\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c" ;|\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"if \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"elif \00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"[[ \00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c" ]]\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"builtin autoload -X\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"} always {\00", align 1
@tpending = internal global i8* null, align 4
@.str.75 = private unnamed_addr constant [6 x i8] c"\0A%s%s\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind
define i32 @is_cond_binary_op(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %op = alloca i8**, align 4
  store i8* %str, i8** %str.addr, align 4
  store i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @cond_binary_ops, i32 0, i32 0), i8*** %op, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %op, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 4
  %3 = load i8**, i8*** %op, align 4
  %4 = load i8*, i8** %3, align 4
  %call = call i32 @strcmp(i8* %2, i8* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i8**, i8*** %op, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %op, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind
define void @zoutputtab(%struct._IO_FILE* %outf) #0 {
entry:
  %outf.addr = alloca %struct._IO_FILE*, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 4
  %0 = load i32, i32* @text_expand_tabs, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @text_expand_tabs, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @text_expand_tabs, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 4
  %call = call i32 @fputc(i32 32, %struct._IO_FILE* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end4

if.else:                                          ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 4
  %call3 = call i32 @fputc(i32 9, %struct._IO_FILE* %6)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else, %for.end
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define i8* @getpermtext(%struct.eprog* %prog, i32* %c, i32 %start_indent) #0 {
entry:
  %prog.addr = alloca %struct.eprog*, align 4
  %c.addr = alloca i32*, align 4
  %start_indent.addr = alloca i32, align 4
  %s = alloca %struct.estate, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp11 = alloca %struct.__sigset_t, align 4
  store %struct.eprog* %prog, %struct.eprog** %prog.addr, align 4
  store i32* %c, i32** %c.addr, align 4
  store i32 %start_indent, i32* %start_indent.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32*, i32** %c.addr, align 4
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %prog1 = getelementptr inbounds %struct.eprog, %struct.eprog* %2, i32 0, i32 5
  %3 = load i32*, i32** %prog1, align 4
  store i32* %3, i32** %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  call void @useeprog(%struct.eprog* %4)
  %5 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %prog2 = getelementptr inbounds %struct.estate, %struct.estate* %s, i32 0, i32 0
  store %struct.eprog* %5, %struct.eprog** %prog2, align 4
  %6 = load i32*, i32** %c.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %s, i32 0, i32 1
  store i32* %6, i32** %pc, align 4
  %7 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %strs = getelementptr inbounds %struct.eprog, %struct.eprog* %7, i32 0, i32 6
  %8 = load i8*, i8** %strs, align 4
  %strs3 = getelementptr inbounds %struct.estate, %struct.estate* %s, i32 0, i32 2
  store i8* %8, i8** %strs3, align 4
  %9 = load i32, i32* %start_indent.addr, align 4
  store i32 %9, i32* @tindent, align 4
  store i32 1, i32* @tnewlins, align 4
  store i32 32, i32* @tsiz, align 4
  %call = call i8* @zalloc(i32 32)
  store i8* %call, i8** @tbuf, align 4
  %10 = load i8*, i8** @tbuf, align 4
  store i8* %10, i8** @tptr, align 4
  %11 = load i8*, i8** @tbuf, align 4
  %12 = load i32, i32* @tsiz, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 %12
  store i8* %add.ptr, i8** @tlim, align 4
  store i32 0, i32* @tjob, align 4
  %13 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %len = getelementptr inbounds %struct.eprog, %struct.eprog* %13, i32 0, i32 1
  %14 = load i32, i32* %len, align 4
  %tobool4 = icmp ne i32 %14, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @gettext2(%struct.estate* %s)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %15 = load i8*, i8** @tptr, align 4
  store i8 0, i8* %15, align 1
  %16 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  call void @freeeprog(%struct.eprog* %16)
  %17 = load i8*, i8** @tbuf, align 4
  call void @untokenize(i8* %17)
  br label %do.body

do.body:                                          ; preds = %if.end6
  %18 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool7 = icmp ne i32 %dec, 0
  br i1 %tobool7, label %if.end12, label %if.then8

if.then8:                                         ; preds = %do.body
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body9
  %19 = load i32, i32* @queue_front, align 4
  %20 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %19, %20
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %21, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %22 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %22
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %23 = bitcast %struct.__sigset_t* %oset to i8*
  %24 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 128, i32 4, i1 false)
  %25 = load i32, i32* @queue_front, align 4
  %arrayidx10 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %25
  %26 = load i32, i32* %arrayidx10, align 4
  call void @zhandler(i32 %26)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp11, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  %27 = load i8*, i8** @tbuf, align 4
  ret i8* %27
}

declare void @useeprog(%struct.eprog*) #1

declare i8* @zalloc(i32) #1

; Function Attrs: noinline nounwind
define internal void @gettext2(%struct.estate* %state) #0 {
entry:
  %state.addr = alloca %struct.estate*, align 4
  %s = alloca %struct.tstack*, align 4
  %n = alloca %struct.tstack*, align 4
  %stack = alloca i32, align 4
  %code = alloca i32, align 4
  %p = alloca i32*, align 4
  %end239 = alloca i32*, align 4
  %nargs = alloca i32, align 4
  %nargs287 = alloca i32, align 4
  %end378 = alloca i32*, align 4
  %ialts = alloca i32, align 4
  %prev_pc = alloca i32*, align 4
  %prev_pc430 = alloca i32*, align 4
  %ialts431 = alloca i32, align 4
  %end482 = alloca i32*, align 4
  %ctype = alloca i32, align 4
  %name = alloca i8*, align 4
  %c2 = alloca [4 x i8], align 1
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 0, i32* %stack, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog720
  %0 = load i32, i32* %stack, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load %struct.tstack*, %struct.tstack** @tstack, align 4
  store %struct.tstack* %1, %struct.tstack** %s, align 4
  %tobool1 = icmp ne %struct.tstack* %1, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %while.end721

if.end:                                           ; preds = %if.then
  %2 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop = getelementptr inbounds %struct.tstack, %struct.tstack* %2, i32 0, i32 2
  %3 = load i32, i32* %pop, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %4 = load %struct.tstack*, %struct.tstack** %s, align 4
  %prev = getelementptr inbounds %struct.tstack, %struct.tstack* %4, i32 0, i32 0
  %5 = load %struct.tstack*, %struct.tstack** %prev, align 4
  store %struct.tstack* %5, %struct.tstack** @tstack, align 4
  %6 = load %struct.tstack*, %struct.tstack** @tfree, align 4
  %7 = load %struct.tstack*, %struct.tstack** %s, align 4
  %prev5 = getelementptr inbounds %struct.tstack, %struct.tstack* %7, i32 0, i32 0
  store %struct.tstack* %6, %struct.tstack** %prev5, align 4
  %8 = load %struct.tstack*, %struct.tstack** %s, align 4
  store %struct.tstack* %8, %struct.tstack** @tfree, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %9 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code7 = getelementptr inbounds %struct.tstack, %struct.tstack* %9, i32 0, i32 1
  %10 = load i32, i32* %code7, align 4
  store i32 %10, i32* %code, align 4
  store i32 0, i32* %stack, align 4
  br label %if.end8

if.else:                                          ; preds = %while.body
  store %struct.tstack* null, %struct.tstack** %s, align 4
  %11 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %11, i32 0, i32 1
  %12 = load i32*, i32** %pc, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %code, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end6
  %14 = load i32, i32* %code, align 4
  %and = and i32 %14, 31
  switch i32 %and, label %sw.default719 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb52
    i32 3, label %sw.bb132
    i32 4, label %sw.bb169
    i32 5, label %sw.bb181
    i32 6, label %sw.bb182
    i32 7, label %sw.bb184
    i32 8, label %sw.bb188
    i32 9, label %sw.bb203
    i32 10, label %sw.bb222
    i32 11, label %sw.bb235
    i32 12, label %sw.bb305
    i32 13, label %sw.bb332
    i32 14, label %sw.bb348
    i32 15, label %sw.bb367
    i32 16, label %sw.bb375
    i32 17, label %sw.bb479
    i32 18, label %sw.bb538
    i32 19, label %sw.bb687
    i32 20, label %sw.bb689
    i32 21, label %sw.bb690
    i32 0, label %sw.bb718
  ]

sw.bb:                                            ; preds = %if.end8
  %15 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool9 = icmp ne %struct.tstack* %15, null
  br i1 %tobool9, label %if.else12, label %if.then10

if.then10:                                        ; preds = %sw.bb
  %16 = load i32, i32* %code, align 4
  %17 = load i32, i32* %code, align 4
  %shr = lshr i32 %17, 5
  %and11 = and i32 %shr, 16
  %call = call %struct.tstack* @tpush(i32 %16, i32 %and11)
  store %struct.tstack* %call, %struct.tstack** %s, align 4
  store i32 0, i32* %stack, align 4
  br label %if.end42

if.else12:                                        ; preds = %sw.bb
  %18 = load i32, i32* %code, align 4
  %shr13 = lshr i32 %18, 5
  %and14 = and i32 %shr13, 4
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.else12
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  %19 = load i32, i32* %code, align 4
  %shr17 = lshr i32 %19, 5
  %and18 = and i32 %shr17, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.else12
  %20 = load i32, i32* %code, align 4
  %shr23 = lshr i32 %20, 5
  %and24 = and i32 %shr23, 16
  store i32 %and24, i32* %stack, align 4
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end41, label %if.then26

if.then26:                                        ; preds = %if.end22
  %21 = load i32, i32* @tnewlins, align 4
  %tobool27 = icmp ne i32 %21, 0
  br i1 %tobool27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then26
  call void @taddnl(i32 0)
  br label %if.end33

if.else29:                                        ; preds = %if.then26
  %22 = load i32, i32* %code, align 4
  %shr30 = lshr i32 %22, 5
  %and31 = and i32 %shr30, 4
  %tobool32 = icmp ne i32 %and31, 0
  %cond = select i1 %tobool32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0)
  call void @taddstr(i8* %cond)
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then28
  %23 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc34 = getelementptr inbounds %struct.estate, %struct.estate* %23, i32 0, i32 1
  %24 = load i32*, i32** %pc34, align 4
  %incdec.ptr35 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr35, i32** %pc34, align 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code36 = getelementptr inbounds %struct.tstack, %struct.tstack* %26, i32 0, i32 1
  store i32 %25, i32* %code36, align 4
  %27 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code37 = getelementptr inbounds %struct.tstack, %struct.tstack* %27, i32 0, i32 1
  %28 = load i32, i32* %code37, align 4
  %shr38 = lshr i32 %28, 5
  %and39 = and i32 %shr38, 16
  %29 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop40 = getelementptr inbounds %struct.tstack, %struct.tstack* %29, i32 0, i32 2
  store i32 %and39, i32* %pop40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end33, %if.end22
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then10
  %30 = load i32, i32* %stack, align 4
  %tobool43 = icmp ne i32 %30, 0
  br i1 %tobool43, label %if.end51, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end42
  %31 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code44 = getelementptr inbounds %struct.tstack, %struct.tstack* %31, i32 0, i32 1
  %32 = load i32, i32* %code44, align 4
  %shr45 = lshr i32 %32, 5
  %and46 = and i32 %shr45, 32
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %land.lhs.true
  %33 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc49 = getelementptr inbounds %struct.estate, %struct.estate* %33, i32 0, i32 1
  %34 = load i32*, i32** %pc49, align 4
  %incdec.ptr50 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr50, i32** %pc49, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %land.lhs.true, %if.end42
  br label %sw.epilog720

sw.bb52:                                          ; preds = %if.end8
  %35 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool53 = icmp ne %struct.tstack* %35, null
  br i1 %tobool53, label %if.else84, label %if.then54

if.then54:                                        ; preds = %sw.bb52
  %36 = load i32, i32* %code, align 4
  %shr55 = lshr i32 %36, 5
  %and56 = and i32 %shr55, 28
  %and57 = and i32 %and56, 16
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.end63, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.then54
  %37 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc60 = getelementptr inbounds %struct.estate, %struct.estate* %37, i32 0, i32 1
  %38 = load i32*, i32** %pc60, align 4
  %39 = load i32, i32* %38, align 4
  %and61 = and i32 %39, 31
  %cmp = icmp ne i32 %and61, 3
  br i1 %cmp, label %if.then62, label %if.end63

if.then62:                                        ; preds = %land.lhs.true59
  store i32 -1, i32* %stack, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true59, %if.then54
  %40 = load i32, i32* %code, align 4
  %shr64 = lshr i32 %40, 5
  %and65 = and i32 %shr64, 28
  %and66 = and i32 %and65, 8
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end63
  %41 = load i32, i32* %stack, align 4
  %tobool69 = icmp ne i32 %41, 0
  %cond70 = select i1 %tobool69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)
  call void @taddstr(i8* %cond70)
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end63
  %42 = load i32, i32* %code, align 4
  %shr72 = lshr i32 %42, 5
  %and73 = and i32 %shr72, 28
  %and74 = and i32 %and73, 4
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.end71
  %43 = load i32, i32* %stack, align 4
  %tobool77 = icmp ne i32 %43, 0
  %cond78 = select i1 %tobool77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)
  call void @taddstr(i8* %cond78)
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end71
  %44 = load i32, i32* %code, align 4
  %45 = load i32, i32* %code, align 4
  %shr80 = lshr i32 %45, 5
  %and81 = and i32 %shr80, 3
  %cmp82 = icmp eq i32 %and81, 0
  %conv = zext i1 %cmp82 to i32
  %call83 = call %struct.tstack* @tpush(i32 %44, i32 %conv)
  store %struct.tstack* %call83, %struct.tstack** %s, align 4
  br label %if.end119

if.else84:                                        ; preds = %sw.bb52
  %46 = load i32, i32* %code, align 4
  %shr85 = lshr i32 %46, 5
  %and86 = and i32 %shr85, 3
  %cmp87 = icmp eq i32 %and86, 0
  %conv88 = zext i1 %cmp87 to i32
  store i32 %conv88, i32* %stack, align 4
  br i1 %cmp87, label %if.end118, label %if.then89

if.then89:                                        ; preds = %if.else84
  %47 = load i32, i32* %code, align 4
  %shr90 = lshr i32 %47, 5
  %and91 = and i32 %shr90, 3
  %cmp92 = icmp eq i32 %and91, 2
  %cond94 = select i1 %cmp92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)
  call void @taddstr(i8* %cond94)
  %48 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc95 = getelementptr inbounds %struct.estate, %struct.estate* %48, i32 0, i32 1
  %49 = load i32*, i32** %pc95, align 4
  %incdec.ptr96 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr96, i32** %pc95, align 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code97 = getelementptr inbounds %struct.tstack, %struct.tstack* %51, i32 0, i32 1
  store i32 %50, i32* %code97, align 4
  %52 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code98 = getelementptr inbounds %struct.tstack, %struct.tstack* %52, i32 0, i32 1
  %53 = load i32, i32* %code98, align 4
  %shr99 = lshr i32 %53, 5
  %and100 = and i32 %shr99, 3
  %cmp101 = icmp eq i32 %and100, 0
  %conv102 = zext i1 %cmp101 to i32
  %54 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop103 = getelementptr inbounds %struct.tstack, %struct.tstack* %54, i32 0, i32 2
  store i32 %conv102, i32* %pop103, align 4
  %55 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code104 = getelementptr inbounds %struct.tstack, %struct.tstack* %55, i32 0, i32 1
  %56 = load i32, i32* %code104, align 4
  %shr105 = lshr i32 %56, 5
  %and106 = and i32 %shr105, 28
  %and107 = and i32 %and106, 8
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.then89
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.then89
  %57 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code111 = getelementptr inbounds %struct.tstack, %struct.tstack* %57, i32 0, i32 1
  %58 = load i32, i32* %code111, align 4
  %shr112 = lshr i32 %58, 5
  %and113 = and i32 %shr112, 28
  %and114 = and i32 %and113, 4
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end110
  call void @taddstr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end110
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.else84
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end79
  %59 = load i32, i32* %stack, align 4
  %cmp120 = icmp slt i32 %59, 1
  br i1 %cmp120, label %land.lhs.true122, label %if.end131

land.lhs.true122:                                 ; preds = %if.end119
  %60 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code123 = getelementptr inbounds %struct.tstack, %struct.tstack* %60, i32 0, i32 1
  %61 = load i32, i32* %code123, align 4
  %shr124 = lshr i32 %61, 5
  %and125 = and i32 %shr124, 28
  %and126 = and i32 %and125, 16
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then128, label %if.end131

if.then128:                                       ; preds = %land.lhs.true122
  %62 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc129 = getelementptr inbounds %struct.estate, %struct.estate* %62, i32 0, i32 1
  %63 = load i32*, i32** %pc129, align 4
  %incdec.ptr130 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr130, i32** %pc129, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %land.lhs.true122, %if.end119
  br label %sw.epilog720

sw.bb132:                                         ; preds = %if.end8
  %64 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool133 = icmp ne %struct.tstack* %64, null
  br i1 %tobool133, label %if.else148, label %if.then134

if.then134:                                       ; preds = %sw.bb132
  %65 = load i32, i32* %code, align 4
  %66 = load i32, i32* %code, align 4
  %shr135 = lshr i32 %66, 5
  %and136 = and i32 %shr135, 1
  %cmp137 = icmp eq i32 %and136, 0
  %conv138 = zext i1 %cmp137 to i32
  %call139 = call %struct.tstack* @tpush(i32 %65, i32 %conv138)
  %67 = load i32, i32* %code, align 4
  %shr140 = lshr i32 %67, 5
  %and141 = and i32 %shr140, 1
  %cmp142 = icmp eq i32 %and141, 1
  br i1 %cmp142, label %if.then144, label %if.end147

if.then144:                                       ; preds = %if.then134
  %68 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc145 = getelementptr inbounds %struct.estate, %struct.estate* %68, i32 0, i32 1
  %69 = load i32*, i32** %pc145, align 4
  %incdec.ptr146 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %incdec.ptr146, i32** %pc145, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.then134
  br label %if.end168

if.else148:                                       ; preds = %sw.bb132
  %70 = load i32, i32* %code, align 4
  %shr149 = lshr i32 %70, 5
  %and150 = and i32 %shr149, 1
  %cmp151 = icmp eq i32 %and150, 0
  %conv152 = zext i1 %cmp151 to i32
  store i32 %conv152, i32* %stack, align 4
  br i1 %cmp151, label %if.end167, label %if.then153

if.then153:                                       ; preds = %if.else148
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0))
  %71 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc154 = getelementptr inbounds %struct.estate, %struct.estate* %71, i32 0, i32 1
  %72 = load i32*, i32** %pc154, align 4
  %incdec.ptr155 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %incdec.ptr155, i32** %pc154, align 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code156 = getelementptr inbounds %struct.tstack, %struct.tstack* %74, i32 0, i32 1
  store i32 %73, i32* %code156, align 4
  %75 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code157 = getelementptr inbounds %struct.tstack, %struct.tstack* %75, i32 0, i32 1
  %76 = load i32, i32* %code157, align 4
  %shr158 = lshr i32 %76, 5
  %and159 = and i32 %shr158, 1
  %cmp160 = icmp eq i32 %and159, 0
  %conv161 = zext i1 %cmp160 to i32
  %77 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop162 = getelementptr inbounds %struct.tstack, %struct.tstack* %77, i32 0, i32 2
  store i32 %conv161, i32* %pop162, align 4
  br i1 %cmp160, label %if.end166, label %if.then163

if.then163:                                       ; preds = %if.then153
  %78 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc164 = getelementptr inbounds %struct.estate, %struct.estate* %78, i32 0, i32 1
  %79 = load i32*, i32** %pc164, align 4
  %incdec.ptr165 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr165, i32** %pc164, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.then153
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.else148
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.end147
  br label %sw.epilog720

sw.bb169:                                         ; preds = %if.end8
  %80 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool170 = icmp ne %struct.tstack* %80, null
  br i1 %tobool170, label %if.else176, label %if.then171

if.then171:                                       ; preds = %sw.bb169
  %81 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc172 = getelementptr inbounds %struct.estate, %struct.estate* %81, i32 0, i32 1
  %82 = load i32*, i32** %pc172, align 4
  %incdec.ptr173 = getelementptr inbounds i32, i32* %82, i32 -1
  store i32* %incdec.ptr173, i32** %pc172, align 4
  %83 = load i32, i32* %code, align 4
  %call174 = call %struct.tstack* @tpush(i32 %83, i32 1)
  store %struct.tstack* %call174, %struct.tstack** %n, align 4
  %84 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call175 = call %union.linkroot* @ecgetredirs(%struct.estate* %84)
  %85 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u = getelementptr inbounds %struct.tstack, %struct.tstack* %85, i32 0, i32 3
  %_redir = bitcast %union.anon* %u to %struct.anon*
  %list = getelementptr inbounds %struct.anon, %struct.anon* %_redir, i32 0, i32 0
  store %union.linkroot* %call175, %union.linkroot** %list, align 4
  br label %if.end180

if.else176:                                       ; preds = %sw.bb169
  %86 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u177 = getelementptr inbounds %struct.tstack, %struct.tstack* %86, i32 0, i32 3
  %_redir178 = bitcast %union.anon* %u177 to %struct.anon*
  %list179 = getelementptr inbounds %struct.anon, %struct.anon* %_redir178, i32 0, i32 0
  %87 = load %union.linkroot*, %union.linkroot** %list179, align 4
  call void @getredirs(%union.linkroot* %87)
  store i32 1, i32* %stack, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.else176, %if.then171
  br label %sw.epilog720

sw.bb181:                                         ; preds = %if.end8
  %88 = load i32, i32* %code, align 4
  %89 = load %struct.estate*, %struct.estate** %state.addr, align 4
  call void @taddassign(i32 %88, %struct.estate* %89, i32 0)
  br label %sw.epilog720

sw.bb182:                                         ; preds = %if.end8
  %90 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %91 = load i32, i32* %code, align 4
  %shr183 = lshr i32 %91, 5
  call void @taddlist(%struct.estate* %90, i32 %shr183)
  store i32 1, i32* %stack, align 4
  br label %sw.epilog720

sw.bb184:                                         ; preds = %if.end8
  %92 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %93 = load i32, i32* %code, align 4
  %shr185 = lshr i32 %93, 5
  call void @taddlist(%struct.estate* %92, i32 %shr185)
  %94 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %95 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc186 = getelementptr inbounds %struct.estate, %struct.estate* %95, i32 0, i32 1
  %96 = load i32*, i32** %pc186, align 4
  %incdec.ptr187 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr187, i32** %pc186, align 4
  %97 = load i32, i32* %96, align 4
  call void @taddassignlist(%struct.estate* %94, i32 %97)
  store i32 1, i32* %stack, align 4
  br label %sw.epilog720

sw.bb188:                                         ; preds = %if.end8
  %98 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool189 = icmp ne %struct.tstack* %98, null
  br i1 %tobool189, label %if.else197, label %if.then190

if.then190:                                       ; preds = %sw.bb188
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  %99 = load i32, i32* @tindent, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* @tindent, align 4
  call void @taddnl(i32 1)
  %100 = load i32, i32* %code, align 4
  %call191 = call %struct.tstack* @tpush(i32 %100, i32 1)
  store %struct.tstack* %call191, %struct.tstack** %n, align 4
  %101 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc192 = getelementptr inbounds %struct.estate, %struct.estate* %101, i32 0, i32 1
  %102 = load i32*, i32** %pc192, align 4
  %103 = load i32, i32* %code, align 4
  %shr193 = lshr i32 %103, 5
  %add.ptr = getelementptr inbounds i32, i32* %102, i32 %shr193
  %104 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u194 = getelementptr inbounds %struct.tstack, %struct.tstack* %104, i32 0, i32 3
  %_subsh = bitcast %union.anon* %u194 to %struct.anon.4*
  %end = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_subsh, i32 0, i32 0
  store i32* %add.ptr, i32** %end, align 4
  %105 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc195 = getelementptr inbounds %struct.estate, %struct.estate* %105, i32 0, i32 1
  %106 = load i32*, i32** %pc195, align 4
  %incdec.ptr196 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %incdec.ptr196, i32** %pc195, align 4
  br label %if.end202

if.else197:                                       ; preds = %sw.bb188
  %107 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u198 = getelementptr inbounds %struct.tstack, %struct.tstack* %107, i32 0, i32 3
  %_subsh199 = bitcast %union.anon* %u198 to %struct.anon.4*
  %end200 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_subsh199, i32 0, i32 0
  %108 = load i32*, i32** %end200, align 4
  %109 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc201 = getelementptr inbounds %struct.estate, %struct.estate* %109, i32 0, i32 1
  store i32* %108, i32** %pc201, align 4
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.else197, %if.then190
  br label %sw.epilog720

sw.bb203:                                         ; preds = %if.end8
  %110 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool204 = icmp ne %struct.tstack* %110, null
  br i1 %tobool204, label %if.else216, label %if.then205

if.then205:                                       ; preds = %sw.bb203
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  %111 = load i32, i32* @tindent, align 4
  %inc206 = add nsw i32 %111, 1
  store i32 %inc206, i32* @tindent, align 4
  call void @taddnl(i32 1)
  %112 = load i32, i32* %code, align 4
  %call207 = call %struct.tstack* @tpush(i32 %112, i32 1)
  store %struct.tstack* %call207, %struct.tstack** %n, align 4
  %113 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc208 = getelementptr inbounds %struct.estate, %struct.estate* %113, i32 0, i32 1
  %114 = load i32*, i32** %pc208, align 4
  %115 = load i32, i32* %code, align 4
  %shr209 = lshr i32 %115, 5
  %add.ptr210 = getelementptr inbounds i32, i32* %114, i32 %shr209
  %116 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u211 = getelementptr inbounds %struct.tstack, %struct.tstack* %116, i32 0, i32 3
  %_subsh212 = bitcast %union.anon* %u211 to %struct.anon.4*
  %end213 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_subsh212, i32 0, i32 0
  store i32* %add.ptr210, i32** %end213, align 4
  %117 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc214 = getelementptr inbounds %struct.estate, %struct.estate* %117, i32 0, i32 1
  %118 = load i32*, i32** %pc214, align 4
  %incdec.ptr215 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %incdec.ptr215, i32** %pc214, align 4
  br label %if.end221

if.else216:                                       ; preds = %sw.bb203
  %119 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u217 = getelementptr inbounds %struct.tstack, %struct.tstack* %119, i32 0, i32 3
  %_subsh218 = bitcast %union.anon* %u217 to %struct.anon.4*
  %end219 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_subsh218, i32 0, i32 0
  %120 = load i32*, i32** %end219, align 4
  %121 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc220 = getelementptr inbounds %struct.estate, %struct.estate* %121, i32 0, i32 1
  store i32* %120, i32** %pc220, align 4
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else216, %if.then205
  br label %sw.epilog720

sw.bb222:                                         ; preds = %if.end8
  %122 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool223 = icmp ne %struct.tstack* %122, null
  br i1 %tobool223, label %if.else233, label %if.then224

if.then224:                                       ; preds = %sw.bb222
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0))
  %123 = load i32, i32* %code, align 4
  %shr225 = lshr i32 %123, 5
  %cmp226 = icmp eq i32 %shr225, 1
  br i1 %cmp226, label %if.then228, label %if.else231

if.then228:                                       ; preds = %if.then224
  call void @taddchr(i32 32)
  %124 = load i32, i32* @tindent, align 4
  %inc229 = add nsw i32 %124, 1
  store i32 %inc229, i32* @tindent, align 4
  %125 = load i32, i32* %code, align 4
  %call230 = call %struct.tstack* @tpush(i32 %125, i32 1)
  br label %if.end232

if.else231:                                       ; preds = %if.then224
  store i32 1, i32* %stack, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.else231, %if.then228
  br label %if.end234

if.else233:                                       ; preds = %sw.bb222
  call void @dec_tindent()
  store i32 1, i32* %stack, align 4
  br label %if.end234

if.end234:                                        ; preds = %if.else233, %if.end232
  br label %sw.epilog720

sw.bb235:                                         ; preds = %if.end8
  %126 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool236 = icmp ne %struct.tstack* %126, null
  br i1 %tobool236, label %if.else272, label %if.then237

if.then237:                                       ; preds = %sw.bb235
  %127 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc238 = getelementptr inbounds %struct.estate, %struct.estate* %127, i32 0, i32 1
  %128 = load i32*, i32** %pc238, align 4
  store i32* %128, i32** %p, align 4
  %129 = load i32*, i32** %p, align 4
  %130 = load i32, i32* %code, align 4
  %shr240 = lshr i32 %130, 5
  %add.ptr241 = getelementptr inbounds i32, i32* %129, i32 %shr240
  store i32* %add.ptr241, i32** %end239, align 4
  %131 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc242 = getelementptr inbounds %struct.estate, %struct.estate* %131, i32 0, i32 1
  %132 = load i32*, i32** %pc242, align 4
  %incdec.ptr243 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %incdec.ptr243, i32** %pc242, align 4
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %nargs, align 4
  %134 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %135 = load i32, i32* %nargs, align 4
  call void @taddlist(%struct.estate* %134, i32 %135)
  %136 = load i32, i32* %nargs, align 4
  %tobool244 = icmp ne i32 %136, 0
  br i1 %tobool244, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.then237
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %if.then237
  %137 = load i32, i32* @tjob, align 4
  %tobool247 = icmp ne i32 %137, 0
  br i1 %tobool247, label %if.then248, label %if.else255

if.then248:                                       ; preds = %if.end246
  call void @taddstr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0))
  %138 = load i32*, i32** %end239, align 4
  %139 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc249 = getelementptr inbounds %struct.estate, %struct.estate* %139, i32 0, i32 1
  store i32* %138, i32** %pc249, align 4
  %140 = load i32, i32* %nargs, align 4
  %tobool250 = icmp ne i32 %140, 0
  br i1 %tobool250, label %if.end254, label %if.then251

if.then251:                                       ; preds = %if.then248
  %141 = load i32*, i32** %end239, align 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc252 = getelementptr inbounds %struct.estate, %struct.estate* %143, i32 0, i32 1
  %144 = load i32*, i32** %pc252, align 4
  %add.ptr253 = getelementptr inbounds i32, i32* %144, i32 %142
  store i32* %add.ptr253, i32** %pc252, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.then248
  store i32 1, i32* %stack, align 4
  br label %if.end271

if.else255:                                       ; preds = %if.end246
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  %145 = load i32, i32* @tindent, align 4
  %inc256 = add nsw i32 %145, 1
  store i32 %inc256, i32* @tindent, align 4
  call void @taddnl(i32 1)
  %146 = load i32, i32* %code, align 4
  %call257 = call %struct.tstack* @tpush(i32 %146, i32 1)
  store %struct.tstack* %call257, %struct.tstack** %n, align 4
  %147 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %strs = getelementptr inbounds %struct.estate, %struct.estate* %147, i32 0, i32 2
  %148 = load i8*, i8** %strs, align 4
  %149 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u258 = getelementptr inbounds %struct.tstack, %struct.tstack* %149, i32 0, i32 3
  %_funcdef = bitcast %union.anon* %u258 to %struct.anon.0*
  %strs259 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef, i32 0, i32 0
  store i8* %148, i8** %strs259, align 4
  %150 = load i32*, i32** %end239, align 4
  %151 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u260 = getelementptr inbounds %struct.tstack, %struct.tstack* %151, i32 0, i32 3
  %_funcdef261 = bitcast %union.anon* %u260 to %struct.anon.0*
  %end262 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef261, i32 0, i32 1
  store i32* %150, i32** %end262, align 4
  %152 = load i32, i32* %nargs, align 4
  %153 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u263 = getelementptr inbounds %struct.tstack, %struct.tstack* %153, i32 0, i32 3
  %_funcdef264 = bitcast %union.anon* %u263 to %struct.anon.0*
  %nargs265 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef264, i32 0, i32 2
  store i32 %152, i32* %nargs265, align 4
  %154 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc266 = getelementptr inbounds %struct.estate, %struct.estate* %154, i32 0, i32 1
  %155 = load i32*, i32** %pc266, align 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %strs267 = getelementptr inbounds %struct.estate, %struct.estate* %157, i32 0, i32 2
  %158 = load i8*, i8** %strs267, align 4
  %add.ptr268 = getelementptr inbounds i8, i8* %158, i32 %156
  store i8* %add.ptr268, i8** %strs267, align 4
  %159 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc269 = getelementptr inbounds %struct.estate, %struct.estate* %159, i32 0, i32 1
  %160 = load i32*, i32** %pc269, align 4
  %add.ptr270 = getelementptr inbounds i32, i32* %160, i32 3
  store i32* %add.ptr270, i32** %pc269, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.else255, %if.end254
  br label %if.end304

if.else272:                                       ; preds = %sw.bb235
  %161 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u273 = getelementptr inbounds %struct.tstack, %struct.tstack* %161, i32 0, i32 3
  %_funcdef274 = bitcast %union.anon* %u273 to %struct.anon.0*
  %strs275 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef274, i32 0, i32 0
  %162 = load i8*, i8** %strs275, align 4
  %163 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %strs276 = getelementptr inbounds %struct.estate, %struct.estate* %163, i32 0, i32 2
  store i8* %162, i8** %strs276, align 4
  %164 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u277 = getelementptr inbounds %struct.tstack, %struct.tstack* %164, i32 0, i32 3
  %_funcdef278 = bitcast %union.anon* %u277 to %struct.anon.0*
  %end279 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef278, i32 0, i32 1
  %165 = load i32*, i32** %end279, align 4
  %166 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc280 = getelementptr inbounds %struct.estate, %struct.estate* %166, i32 0, i32 1
  store i32* %165, i32** %pc280, align 4
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  %167 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u281 = getelementptr inbounds %struct.tstack, %struct.tstack* %167, i32 0, i32 3
  %_funcdef282 = bitcast %union.anon* %u281 to %struct.anon.0*
  %nargs283 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef282, i32 0, i32 2
  %168 = load i32, i32* %nargs283, align 4
  %cmp284 = icmp eq i32 %168, 0
  br i1 %cmp284, label %if.then286, label %if.end303

if.then286:                                       ; preds = %if.else272
  %169 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc288 = getelementptr inbounds %struct.estate, %struct.estate* %169, i32 0, i32 1
  %170 = load i32*, i32** %pc288, align 4
  %incdec.ptr289 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %incdec.ptr289, i32** %pc288, align 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u290 = getelementptr inbounds %struct.tstack, %struct.tstack* %172, i32 0, i32 3
  %_funcdef291 = bitcast %union.anon* %u290 to %struct.anon.0*
  %end292 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef291, i32 0, i32 1
  %173 = load i32*, i32** %end292, align 4
  %add.ptr293 = getelementptr inbounds i32, i32* %173, i32 %171
  store i32* %add.ptr293, i32** %end292, align 4
  %174 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc294 = getelementptr inbounds %struct.estate, %struct.estate* %174, i32 0, i32 1
  %175 = load i32*, i32** %pc294, align 4
  %incdec.ptr295 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %incdec.ptr295, i32** %pc294, align 4
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %nargs287, align 4
  %177 = load i32, i32* %nargs287, align 4
  %tobool296 = icmp ne i32 %177, 0
  br i1 %tobool296, label %if.then297, label %if.end298

if.then297:                                       ; preds = %if.then286
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  %178 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %179 = load i32, i32* %nargs287, align 4
  call void @taddlist(%struct.estate* %178, i32 %179)
  br label %if.end298

if.end298:                                        ; preds = %if.then297, %if.then286
  %180 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u299 = getelementptr inbounds %struct.tstack, %struct.tstack* %180, i32 0, i32 3
  %_funcdef300 = bitcast %union.anon* %u299 to %struct.anon.0*
  %end301 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %_funcdef300, i32 0, i32 1
  %181 = load i32*, i32** %end301, align 4
  %182 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc302 = getelementptr inbounds %struct.estate, %struct.estate* %182, i32 0, i32 1
  store i32* %181, i32** %pc302, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.end298, %if.else272
  store i32 1, i32* %stack, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end271
  br label %sw.epilog720

sw.bb305:                                         ; preds = %if.end8
  %183 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool306 = icmp ne %struct.tstack* %183, null
  br i1 %tobool306, label %if.else330, label %if.then307

if.then307:                                       ; preds = %sw.bb305
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0))
  %184 = load i32, i32* %code, align 4
  %shr308 = lshr i32 %184, 5
  %and309 = and i32 %shr308, 3
  %cmp310 = icmp eq i32 %and309, 2
  br i1 %cmp310, label %if.then312, label %if.else316

if.then312:                                       ; preds = %if.then307
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0))
  %185 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call313 = call i8* @ecgetstr(%struct.estate* %185, i32 0, i32* null)
  call void @taddstr(i8* %call313)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %186 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call314 = call i8* @ecgetstr(%struct.estate* %186, i32 0, i32* null)
  call void @taddstr(i8* %call314)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %187 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call315 = call i8* @ecgetstr(%struct.estate* %187, i32 0, i32* null)
  call void @taddstr(i8* %call315)
  call void @taddstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end327

if.else316:                                       ; preds = %if.then307
  %188 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %189 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc317 = getelementptr inbounds %struct.estate, %struct.estate* %189, i32 0, i32 1
  %190 = load i32*, i32** %pc317, align 4
  %incdec.ptr318 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %incdec.ptr318, i32** %pc317, align 4
  %191 = load i32, i32* %190, align 4
  call void @taddlist(%struct.estate* %188, i32 %191)
  %192 = load i32, i32* %code, align 4
  %shr319 = lshr i32 %192, 5
  %and320 = and i32 %shr319, 3
  %cmp321 = icmp eq i32 %and320, 1
  br i1 %cmp321, label %if.then323, label %if.end326

if.then323:                                       ; preds = %if.else316
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  %193 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %194 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc324 = getelementptr inbounds %struct.estate, %struct.estate* %194, i32 0, i32 1
  %195 = load i32*, i32** %pc324, align 4
  %incdec.ptr325 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %incdec.ptr325, i32** %pc324, align 4
  %196 = load i32, i32* %195, align 4
  call void @taddlist(%struct.estate* %193, i32 %196)
  br label %if.end326

if.end326:                                        ; preds = %if.then323, %if.else316
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %if.then312
  %197 = load i32, i32* @tindent, align 4
  %inc328 = add nsw i32 %197, 1
  store i32 %inc328, i32* @tindent, align 4
  call void @taddnl(i32 0)
  %198 = load i32, i32* %code, align 4
  %call329 = call %struct.tstack* @tpush(i32 %198, i32 1)
  br label %if.end331

if.else330:                                       ; preds = %sw.bb305
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.else330, %if.end327
  br label %sw.epilog720

sw.bb332:                                         ; preds = %if.end8
  %199 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool333 = icmp ne %struct.tstack* %199, null
  br i1 %tobool333, label %if.else346, label %if.then334

if.then334:                                       ; preds = %sw.bb332
  call void @taddstr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0))
  %200 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call335 = call i8* @ecgetstr(%struct.estate* %200, i32 0, i32* null)
  call void @taddstr(i8* %call335)
  %201 = load i32, i32* %code, align 4
  %shr336 = lshr i32 %201, 5
  %and337 = and i32 %shr336, 1
  %cmp338 = icmp eq i32 %and337, 1
  br i1 %cmp338, label %if.then340, label %if.end343

if.then340:                                       ; preds = %if.then334
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  %202 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %203 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc341 = getelementptr inbounds %struct.estate, %struct.estate* %203, i32 0, i32 1
  %204 = load i32*, i32** %pc341, align 4
  %incdec.ptr342 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %incdec.ptr342, i32** %pc341, align 4
  %205 = load i32, i32* %204, align 4
  call void @taddlist(%struct.estate* %202, i32 %205)
  br label %if.end343

if.end343:                                        ; preds = %if.then340, %if.then334
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  call void @taddnl(i32 0)
  %206 = load i32, i32* @tindent, align 4
  %inc344 = add nsw i32 %206, 1
  store i32 %inc344, i32* @tindent, align 4
  %207 = load i32, i32* %code, align 4
  %call345 = call %struct.tstack* @tpush(i32 %207, i32 1)
  br label %if.end347

if.else346:                                       ; preds = %sw.bb332
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.else346, %if.end343
  br label %sw.epilog720

sw.bb348:                                         ; preds = %if.end8
  %208 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool349 = icmp ne %struct.tstack* %208, null
  br i1 %tobool349, label %if.else358, label %if.then350

if.then350:                                       ; preds = %sw.bb348
  %209 = load i32, i32* %code, align 4
  %shr351 = lshr i32 %209, 5
  %and352 = and i32 %shr351, 1
  %cmp353 = icmp eq i32 %and352, 1
  %cond355 = select i1 %cmp353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)
  call void @taddstr(i8* %cond355)
  %210 = load i32, i32* @tindent, align 4
  %inc356 = add nsw i32 %210, 1
  store i32 %inc356, i32* @tindent, align 4
  %211 = load i32, i32* %code, align 4
  %call357 = call %struct.tstack* @tpush(i32 %211, i32 0)
  br label %if.end366

if.else358:                                       ; preds = %sw.bb348
  %212 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop359 = getelementptr inbounds %struct.tstack, %struct.tstack* %212, i32 0, i32 2
  %213 = load i32, i32* %pop359, align 4
  %tobool360 = icmp ne i32 %213, 0
  br i1 %tobool360, label %if.else364, label %if.then361

if.then361:                                       ; preds = %if.else358
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  %214 = load i32, i32* @tindent, align 4
  %inc362 = add nsw i32 %214, 1
  store i32 %inc362, i32* @tindent, align 4
  call void @taddnl(i32 0)
  %215 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop363 = getelementptr inbounds %struct.tstack, %struct.tstack* %215, i32 0, i32 2
  store i32 1, i32* %pop363, align 4
  br label %if.end365

if.else364:                                       ; preds = %if.else358
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end365

if.end365:                                        ; preds = %if.else364, %if.then361
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %if.then350
  br label %sw.epilog720

sw.bb367:                                         ; preds = %if.end8
  %216 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool368 = icmp ne %struct.tstack* %216, null
  br i1 %tobool368, label %if.else373, label %if.then369

if.then369:                                       ; preds = %sw.bb367
  call void @taddstr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0))
  %217 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call370 = call i8* @ecgetstr(%struct.estate* %217, i32 0, i32* null)
  call void @taddstr(i8* %call370)
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  %218 = load i32, i32* @tindent, align 4
  %inc371 = add nsw i32 %218, 1
  store i32 %inc371, i32* @tindent, align 4
  call void @taddnl(i32 0)
  %219 = load i32, i32* %code, align 4
  %call372 = call %struct.tstack* @tpush(i32 %219, i32 1)
  br label %if.end374

if.else373:                                       ; preds = %sw.bb367
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.else373, %if.then369
  br label %sw.epilog720

sw.bb375:                                         ; preds = %if.end8
  %220 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool376 = icmp ne %struct.tstack* %220, null
  br i1 %tobool376, label %if.else422, label %if.then377

if.then377:                                       ; preds = %sw.bb375
  %221 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc379 = getelementptr inbounds %struct.estate, %struct.estate* %221, i32 0, i32 1
  %222 = load i32*, i32** %pc379, align 4
  %223 = load i32, i32* %code, align 4
  %shr380 = lshr i32 %223, 5
  %shr381 = lshr i32 %shr380, 3
  %add.ptr382 = getelementptr inbounds i32, i32* %222, i32 %shr381
  store i32* %add.ptr382, i32** %end378, align 4
  call void @taddstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0))
  %224 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call383 = call i8* @ecgetstr(%struct.estate* %224, i32 0, i32* null)
  call void @taddstr(i8* %call383)
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0))
  %225 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc384 = getelementptr inbounds %struct.estate, %struct.estate* %225, i32 0, i32 1
  %226 = load i32*, i32** %pc384, align 4
  %227 = load i32*, i32** %end378, align 4
  %cmp385 = icmp uge i32* %226, %227
  br i1 %cmp385, label %if.then387, label %if.else392

if.then387:                                       ; preds = %if.then377
  %228 = load i32, i32* @tnewlins, align 4
  %tobool388 = icmp ne i32 %228, 0
  br i1 %tobool388, label %if.then389, label %if.else390

if.then389:                                       ; preds = %if.then387
  call void @taddnl(i32 0)
  br label %if.end391

if.else390:                                       ; preds = %if.then387
  call void @taddchr(i32 32)
  br label %if.end391

if.end391:                                        ; preds = %if.else390, %if.then389
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end421

if.else392:                                       ; preds = %if.then377
  %229 = load i32, i32* @tindent, align 4
  %inc393 = add nsw i32 %229, 1
  store i32 %inc393, i32* @tindent, align 4
  %230 = load i32, i32* @tnewlins, align 4
  %tobool394 = icmp ne i32 %230, 0
  br i1 %tobool394, label %if.then395, label %if.else396

if.then395:                                       ; preds = %if.else392
  call void @taddnl(i32 0)
  br label %if.end397

if.else396:                                       ; preds = %if.else392
  call void @taddchr(i32 32)
  br label %if.end397

if.end397:                                        ; preds = %if.else396, %if.then395
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  %231 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc398 = getelementptr inbounds %struct.estate, %struct.estate* %231, i32 0, i32 1
  %232 = load i32*, i32** %pc398, align 4
  %incdec.ptr399 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %incdec.ptr399, i32** %pc398, align 4
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %code, align 4
  %234 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc400 = getelementptr inbounds %struct.estate, %struct.estate* %234, i32 0, i32 1
  %235 = load i32*, i32** %pc400, align 4
  %incdec.ptr401 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %incdec.ptr401, i32** %pc400, align 4
  store i32* %235, i32** %prev_pc, align 4
  %236 = load i32*, i32** %prev_pc, align 4
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %ialts, align 4
  br label %while.cond402

while.cond402:                                    ; preds = %if.end410, %if.end397
  %238 = load i32, i32* %ialts, align 4
  %dec = add i32 %238, -1
  store i32 %dec, i32* %ialts, align 4
  %tobool403 = icmp ne i32 %238, 0
  br i1 %tobool403, label %while.body404, label %while.end

while.body404:                                    ; preds = %while.cond402
  %239 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call405 = call i8* @ecgetstr(%struct.estate* %239, i32 0, i32* null)
  call void @taddstr(i8* %call405)
  %240 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc406 = getelementptr inbounds %struct.estate, %struct.estate* %240, i32 0, i32 1
  %241 = load i32*, i32** %pc406, align 4
  %incdec.ptr407 = getelementptr inbounds i32, i32* %241, i32 1
  store i32* %incdec.ptr407, i32** %pc406, align 4
  %242 = load i32, i32* %ialts, align 4
  %tobool408 = icmp ne i32 %242, 0
  br i1 %tobool408, label %if.then409, label %if.end410

if.then409:                                       ; preds = %while.body404
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end410

if.end410:                                        ; preds = %if.then409, %while.body404
  br label %while.cond402

while.end:                                        ; preds = %while.cond402
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0))
  %243 = load i32, i32* @tindent, align 4
  %inc411 = add nsw i32 %243, 1
  store i32 %inc411, i32* @tindent, align 4
  %244 = load i32, i32* %code, align 4
  %call412 = call %struct.tstack* @tpush(i32 %244, i32 0)
  store %struct.tstack* %call412, %struct.tstack** %n, align 4
  %245 = load i32*, i32** %end378, align 4
  %246 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u413 = getelementptr inbounds %struct.tstack, %struct.tstack* %246, i32 0, i32 3
  %_case = bitcast %union.anon* %u413 to %struct.anon.1*
  %end414 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %_case, i32 0, i32 0
  store i32* %245, i32** %end414, align 4
  %247 = load i32*, i32** %prev_pc, align 4
  %248 = load i32, i32* %code, align 4
  %shr415 = lshr i32 %248, 5
  %shr416 = lshr i32 %shr415, 3
  %add.ptr417 = getelementptr inbounds i32, i32* %247, i32 %shr416
  %249 = load i32*, i32** %end378, align 4
  %cmp418 = icmp uge i32* %add.ptr417, %249
  %conv419 = zext i1 %cmp418 to i32
  %250 = load %struct.tstack*, %struct.tstack** %n, align 4
  %pop420 = getelementptr inbounds %struct.tstack, %struct.tstack* %250, i32 0, i32 2
  store i32 %conv419, i32* %pop420, align 4
  br label %if.end421

if.end421:                                        ; preds = %while.end, %if.end391
  br label %if.end478

if.else422:                                       ; preds = %sw.bb375
  %251 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc423 = getelementptr inbounds %struct.estate, %struct.estate* %251, i32 0, i32 1
  %252 = load i32*, i32** %pc423, align 4
  %253 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u424 = getelementptr inbounds %struct.tstack, %struct.tstack* %253, i32 0, i32 3
  %_case425 = bitcast %union.anon* %u424 to %struct.anon.1*
  %end426 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %_case425, i32 0, i32 0
  %254 = load i32*, i32** %end426, align 4
  %cmp427 = icmp ult i32* %252, %254
  br i1 %cmp427, label %if.then429, label %if.else466

if.then429:                                       ; preds = %if.else422
  call void @dec_tindent()
  %255 = load i32, i32* %code, align 4
  %shr432 = lshr i32 %255, 5
  %and433 = and i32 %shr432, 7
  switch i32 %and433, label %sw.default [
    i32 1, label %sw.bb434
    i32 2, label %sw.bb435
  ]

sw.bb434:                                         ; preds = %if.then429
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0))
  br label %sw.epilog

sw.bb435:                                         ; preds = %if.then429
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then429
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb435, %sw.bb434
  %256 = load i32, i32* @tnewlins, align 4
  %tobool436 = icmp ne i32 %256, 0
  br i1 %tobool436, label %if.then437, label %if.else438

if.then437:                                       ; preds = %sw.epilog
  call void @taddnl(i32 0)
  br label %if.end439

if.else438:                                       ; preds = %sw.epilog
  call void @taddchr(i32 32)
  br label %if.end439

if.end439:                                        ; preds = %if.else438, %if.then437
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  %257 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc440 = getelementptr inbounds %struct.estate, %struct.estate* %257, i32 0, i32 1
  %258 = load i32*, i32** %pc440, align 4
  %incdec.ptr441 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %incdec.ptr441, i32** %pc440, align 4
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %code, align 4
  %260 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc442 = getelementptr inbounds %struct.estate, %struct.estate* %260, i32 0, i32 1
  %261 = load i32*, i32** %pc442, align 4
  %incdec.ptr443 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %incdec.ptr443, i32** %pc442, align 4
  store i32* %261, i32** %prev_pc430, align 4
  %262 = load i32*, i32** %prev_pc430, align 4
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %ialts431, align 4
  br label %while.cond444

while.cond444:                                    ; preds = %if.end453, %if.end439
  %264 = load i32, i32* %ialts431, align 4
  %dec445 = add i32 %264, -1
  store i32 %dec445, i32* %ialts431, align 4
  %tobool446 = icmp ne i32 %264, 0
  br i1 %tobool446, label %while.body447, label %while.end454

while.body447:                                    ; preds = %while.cond444
  %265 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call448 = call i8* @ecgetstr(%struct.estate* %265, i32 0, i32* null)
  call void @taddstr(i8* %call448)
  %266 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc449 = getelementptr inbounds %struct.estate, %struct.estate* %266, i32 0, i32 1
  %267 = load i32*, i32** %pc449, align 4
  %incdec.ptr450 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %incdec.ptr450, i32** %pc449, align 4
  %268 = load i32, i32* %ialts431, align 4
  %tobool451 = icmp ne i32 %268, 0
  br i1 %tobool451, label %if.then452, label %if.end453

if.then452:                                       ; preds = %while.body447
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end453

if.end453:                                        ; preds = %if.then452, %while.body447
  br label %while.cond444

while.end454:                                     ; preds = %while.cond444
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0))
  %269 = load i32, i32* @tindent, align 4
  %inc455 = add nsw i32 %269, 1
  store i32 %inc455, i32* @tindent, align 4
  %270 = load i32, i32* %code, align 4
  %271 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code456 = getelementptr inbounds %struct.tstack, %struct.tstack* %271, i32 0, i32 1
  store i32 %270, i32* %code456, align 4
  %272 = load i32*, i32** %prev_pc430, align 4
  %273 = load i32, i32* %code, align 4
  %shr457 = lshr i32 %273, 5
  %shr458 = lshr i32 %shr457, 3
  %add.ptr459 = getelementptr inbounds i32, i32* %272, i32 %shr458
  %274 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u460 = getelementptr inbounds %struct.tstack, %struct.tstack* %274, i32 0, i32 3
  %_case461 = bitcast %union.anon* %u460 to %struct.anon.1*
  %end462 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %_case461, i32 0, i32 0
  %275 = load i32*, i32** %end462, align 4
  %cmp463 = icmp uge i32* %add.ptr459, %275
  %conv464 = zext i1 %cmp463 to i32
  %276 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop465 = getelementptr inbounds %struct.tstack, %struct.tstack* %276, i32 0, i32 2
  store i32 %conv464, i32* %pop465, align 4
  br label %if.end477

if.else466:                                       ; preds = %if.else422
  call void @dec_tindent()
  %277 = load i32, i32* %code, align 4
  %shr467 = lshr i32 %277, 5
  %and468 = and i32 %shr467, 7
  switch i32 %and468, label %sw.default471 [
    i32 1, label %sw.bb469
    i32 2, label %sw.bb470
  ]

sw.bb469:                                         ; preds = %if.else466
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0))
  br label %sw.epilog472

sw.bb470:                                         ; preds = %if.else466
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0))
  br label %sw.epilog472

sw.default471:                                    ; preds = %if.else466
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0))
  br label %sw.epilog472

sw.epilog472:                                     ; preds = %sw.default471, %sw.bb470, %sw.bb469
  call void @dec_tindent()
  %278 = load i32, i32* @tnewlins, align 4
  %tobool473 = icmp ne i32 %278, 0
  br i1 %tobool473, label %if.then474, label %if.else475

if.then474:                                       ; preds = %sw.epilog472
  call void @taddnl(i32 0)
  br label %if.end476

if.else475:                                       ; preds = %sw.epilog472
  call void @taddchr(i32 32)
  br label %if.end476

if.end476:                                        ; preds = %if.else475, %if.then474
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %while.end454
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %if.end421
  br label %sw.epilog720

sw.bb479:                                         ; preds = %if.end8
  %279 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool480 = icmp ne %struct.tstack* %279, null
  br i1 %tobool480, label %if.else496, label %if.then481

if.then481:                                       ; preds = %sw.bb479
  %280 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc483 = getelementptr inbounds %struct.estate, %struct.estate* %280, i32 0, i32 1
  %281 = load i32*, i32** %pc483, align 4
  %282 = load i32, i32* %code, align 4
  %shr484 = lshr i32 %282, 5
  %shr485 = lshr i32 %shr484, 2
  %add.ptr486 = getelementptr inbounds i32, i32* %281, i32 %shr485
  store i32* %add.ptr486, i32** %end482, align 4
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0))
  %283 = load i32, i32* @tindent, align 4
  %inc487 = add nsw i32 %283, 1
  store i32 %inc487, i32* @tindent, align 4
  %284 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc488 = getelementptr inbounds %struct.estate, %struct.estate* %284, i32 0, i32 1
  %285 = load i32*, i32** %pc488, align 4
  %incdec.ptr489 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %incdec.ptr489, i32** %pc488, align 4
  %286 = load i32, i32* %code, align 4
  %call490 = call %struct.tstack* @tpush(i32 %286, i32 0)
  store %struct.tstack* %call490, %struct.tstack** %n, align 4
  %287 = load i32*, i32** %end482, align 4
  %288 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u491 = getelementptr inbounds %struct.tstack, %struct.tstack* %288, i32 0, i32 3
  %_if = bitcast %union.anon* %u491 to %struct.anon.2*
  %end492 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %_if, i32 0, i32 1
  store i32* %287, i32** %end492, align 4
  %289 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u493 = getelementptr inbounds %struct.tstack, %struct.tstack* %289, i32 0, i32 3
  %_if494 = bitcast %union.anon* %u493 to %struct.anon.2*
  %cond495 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %_if494, i32 0, i32 0
  store i32 1, i32* %cond495, align 4
  br label %if.end537

if.else496:                                       ; preds = %sw.bb479
  %290 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop497 = getelementptr inbounds %struct.tstack, %struct.tstack* %290, i32 0, i32 2
  %291 = load i32, i32* %pop497, align 4
  %tobool498 = icmp ne i32 %291, 0
  br i1 %tobool498, label %if.then499, label %if.else500

if.then499:                                       ; preds = %if.else496
  store i32 1, i32* %stack, align 4
  br label %if.end536

if.else500:                                       ; preds = %if.else496
  %292 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u501 = getelementptr inbounds %struct.tstack, %struct.tstack* %292, i32 0, i32 3
  %_if502 = bitcast %union.anon* %u501 to %struct.anon.2*
  %cond503 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %_if502, i32 0, i32 0
  %293 = load i32, i32* %cond503, align 4
  %tobool504 = icmp ne i32 %293, 0
  br i1 %tobool504, label %if.then505, label %if.else510

if.then505:                                       ; preds = %if.else500
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  %294 = load i32, i32* @tindent, align 4
  %inc506 = add nsw i32 %294, 1
  store i32 %inc506, i32* @tindent, align 4
  call void @taddnl(i32 0)
  %295 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u507 = getelementptr inbounds %struct.tstack, %struct.tstack* %295, i32 0, i32 3
  %_if508 = bitcast %union.anon* %u507 to %struct.anon.2*
  %cond509 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %_if508, i32 0, i32 0
  store i32 0, i32* %cond509, align 4
  br label %if.end535

if.else510:                                       ; preds = %if.else500
  %296 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc511 = getelementptr inbounds %struct.estate, %struct.estate* %296, i32 0, i32 1
  %297 = load i32*, i32** %pc511, align 4
  %298 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u512 = getelementptr inbounds %struct.tstack, %struct.tstack* %298, i32 0, i32 3
  %_if513 = bitcast %union.anon* %u512 to %struct.anon.2*
  %end514 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %_if513, i32 0, i32 1
  %299 = load i32*, i32** %end514, align 4
  %cmp515 = icmp ult i32* %297, %299
  br i1 %cmp515, label %if.then517, label %if.else532

if.then517:                                       ; preds = %if.else510
  call void @dec_tindent()
  call void @taddnl(i32 0)
  %300 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc518 = getelementptr inbounds %struct.estate, %struct.estate* %300, i32 0, i32 1
  %301 = load i32*, i32** %pc518, align 4
  %incdec.ptr519 = getelementptr inbounds i32, i32* %301, i32 1
  store i32* %incdec.ptr519, i32** %pc518, align 4
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %code, align 4
  %303 = load i32, i32* %code, align 4
  %shr520 = lshr i32 %303, 5
  %and521 = and i32 %shr520, 3
  %cmp522 = icmp eq i32 %and521, 2
  br i1 %cmp522, label %if.then524, label %if.else529

if.then524:                                       ; preds = %if.then517
  call void @taddstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0))
  %304 = load i32, i32* @tindent, align 4
  %inc525 = add nsw i32 %304, 1
  store i32 %inc525, i32* @tindent, align 4
  %305 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u526 = getelementptr inbounds %struct.tstack, %struct.tstack* %305, i32 0, i32 3
  %_if527 = bitcast %union.anon* %u526 to %struct.anon.2*
  %cond528 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %_if527, i32 0, i32 0
  store i32 1, i32* %cond528, align 4
  br label %if.end531

if.else529:                                       ; preds = %if.then517
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0))
  %306 = load i32, i32* @tindent, align 4
  %inc530 = add nsw i32 %306, 1
  store i32 %inc530, i32* @tindent, align 4
  call void @taddnl(i32 0)
  br label %if.end531

if.end531:                                        ; preds = %if.else529, %if.then524
  br label %if.end534

if.else532:                                       ; preds = %if.else510
  %307 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop533 = getelementptr inbounds %struct.tstack, %struct.tstack* %307, i32 0, i32 2
  store i32 1, i32* %pop533, align 4
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end534

if.end534:                                        ; preds = %if.else532, %if.end531
  br label %if.end535

if.end535:                                        ; preds = %if.end534, %if.then505
  br label %if.end536

if.end536:                                        ; preds = %if.end535, %if.then499
  br label %if.end537

if.end537:                                        ; preds = %if.end536, %if.then481
  br label %sw.epilog720

sw.bb538:                                         ; preds = %if.end8
  %308 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool539 = icmp ne %struct.tstack* %308, null
  br i1 %tobool539, label %if.else543, label %if.then540

if.then540:                                       ; preds = %sw.bb538
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0))
  %309 = load i32, i32* %code, align 4
  %call541 = call %struct.tstack* @tpush(i32 %309, i32 1)
  store %struct.tstack* %call541, %struct.tstack** %n, align 4
  %310 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u542 = getelementptr inbounds %struct.tstack, %struct.tstack* %310, i32 0, i32 3
  %_cond = bitcast %union.anon* %u542 to %struct.anon.3*
  %par = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond, i32 0, i32 0
  store i32 2, i32* %par, align 4
  br label %if.end599

if.else543:                                       ; preds = %sw.bb538
  %311 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u544 = getelementptr inbounds %struct.tstack, %struct.tstack* %311, i32 0, i32 3
  %_cond545 = bitcast %union.anon* %u544 to %struct.anon.3*
  %par546 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond545, i32 0, i32 0
  %312 = load i32, i32* %par546, align 4
  %cmp547 = icmp eq i32 %312, 2
  br i1 %cmp547, label %if.then549, label %if.else550

if.then549:                                       ; preds = %if.else543
  call void @taddstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %sw.epilog720

if.else550:                                       ; preds = %if.else543
  %313 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u551 = getelementptr inbounds %struct.tstack, %struct.tstack* %313, i32 0, i32 3
  %_cond552 = bitcast %union.anon* %u551 to %struct.anon.3*
  %par553 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond552, i32 0, i32 0
  %314 = load i32, i32* %par553, align 4
  %cmp554 = icmp eq i32 %314, 1
  br i1 %cmp554, label %if.then556, label %if.else557

if.then556:                                       ; preds = %if.else550
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %sw.epilog720

if.else557:                                       ; preds = %if.else550
  %315 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code558 = getelementptr inbounds %struct.tstack, %struct.tstack* %315, i32 0, i32 1
  %316 = load i32, i32* %code558, align 4
  %shr559 = lshr i32 %316, 5
  %and560 = and i32 %shr559, 127
  %cmp561 = icmp eq i32 %and560, 1
  br i1 %cmp561, label %if.then563, label %if.else576

if.then563:                                       ; preds = %if.else557
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  %317 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc564 = getelementptr inbounds %struct.estate, %struct.estate* %317, i32 0, i32 1
  %318 = load i32*, i32** %pc564, align 4
  %incdec.ptr565 = getelementptr inbounds i32, i32* %318, i32 1
  store i32* %incdec.ptr565, i32** %pc564, align 4
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %code, align 4
  %320 = load i32, i32* %code, align 4
  %shr566 = lshr i32 %320, 5
  %and567 = and i32 %shr566, 127
  %cmp568 = icmp eq i32 %and567, 2
  br i1 %cmp568, label %if.then570, label %if.end575

if.then570:                                       ; preds = %if.then563
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %321 = load i32, i32* %code, align 4
  %call571 = call %struct.tstack* @tpush(i32 %321, i32 1)
  store %struct.tstack* %call571, %struct.tstack** %n, align 4
  %322 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u572 = getelementptr inbounds %struct.tstack, %struct.tstack* %322, i32 0, i32 3
  %_cond573 = bitcast %union.anon* %u572 to %struct.anon.3*
  %par574 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond573, i32 0, i32 0
  store i32 1, i32* %par574, align 4
  br label %if.end575

if.end575:                                        ; preds = %if.then570, %if.then563
  br label %if.end596

if.else576:                                       ; preds = %if.else557
  %323 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code577 = getelementptr inbounds %struct.tstack, %struct.tstack* %323, i32 0, i32 1
  %324 = load i32, i32* %code577, align 4
  %shr578 = lshr i32 %324, 5
  %and579 = and i32 %shr578, 127
  %cmp580 = icmp eq i32 %and579, 2
  br i1 %cmp580, label %if.then582, label %if.end595

if.then582:                                       ; preds = %if.else576
  call void @taddstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %325 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc583 = getelementptr inbounds %struct.estate, %struct.estate* %325, i32 0, i32 1
  %326 = load i32*, i32** %pc583, align 4
  %incdec.ptr584 = getelementptr inbounds i32, i32* %326, i32 1
  store i32* %incdec.ptr584, i32** %pc583, align 4
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %code, align 4
  %328 = load i32, i32* %code, align 4
  %shr585 = lshr i32 %328, 5
  %and586 = and i32 %shr585, 127
  %cmp587 = icmp eq i32 %and586, 1
  br i1 %cmp587, label %if.then589, label %if.end594

if.then589:                                       ; preds = %if.then582
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %329 = load i32, i32* %code, align 4
  %call590 = call %struct.tstack* @tpush(i32 %329, i32 1)
  store %struct.tstack* %call590, %struct.tstack** %n, align 4
  %330 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u591 = getelementptr inbounds %struct.tstack, %struct.tstack* %330, i32 0, i32 3
  %_cond592 = bitcast %union.anon* %u591 to %struct.anon.3*
  %par593 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond592, i32 0, i32 0
  store i32 1, i32* %par593, align 4
  br label %if.end594

if.end594:                                        ; preds = %if.then589, %if.then582
  br label %if.end595

if.end595:                                        ; preds = %if.end594, %if.else576
  br label %if.end596

if.end596:                                        ; preds = %if.end595, %if.end575
  br label %if.end597

if.end597:                                        ; preds = %if.end596
  br label %if.end598

if.end598:                                        ; preds = %if.end597
  br label %if.end599

if.end599:                                        ; preds = %if.end598, %if.then540
  br label %while.cond600

while.cond600:                                    ; preds = %sw.epilog685, %if.end599
  %331 = load i32, i32* %stack, align 4
  %tobool601 = icmp ne i32 %331, 0
  %lnot = xor i1 %tobool601, true
  br i1 %lnot, label %while.body602, label %while.end686

while.body602:                                    ; preds = %while.cond600
  %332 = load i32, i32* %code, align 4
  %shr603 = lshr i32 %332, 5
  %and604 = and i32 %shr603, 127
  store i32 %and604, i32* %ctype, align 4
  switch i32 %and604, label %sw.default660 [
    i32 0, label %sw.bb605
    i32 1, label %sw.bb618
    i32 2, label %sw.bb635
    i32 18, label %sw.bb652
    i32 19, label %sw.bb656
  ]

sw.bb605:                                         ; preds = %while.body602
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0))
  %333 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc606 = getelementptr inbounds %struct.estate, %struct.estate* %333, i32 0, i32 1
  %334 = load i32*, i32** %pc606, align 4
  %incdec.ptr607 = getelementptr inbounds i32, i32* %334, i32 1
  store i32* %incdec.ptr607, i32** %pc606, align 4
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %code, align 4
  %336 = load i32, i32* %code, align 4
  %shr608 = lshr i32 %336, 5
  %and609 = and i32 %shr608, 127
  %cmp610 = icmp ule i32 %and609, 2
  br i1 %cmp610, label %if.then612, label %if.end617

if.then612:                                       ; preds = %sw.bb605
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %337 = load i32, i32* %code, align 4
  %call613 = call %struct.tstack* @tpush(i32 %337, i32 1)
  store %struct.tstack* %call613, %struct.tstack** %n, align 4
  %338 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u614 = getelementptr inbounds %struct.tstack, %struct.tstack* %338, i32 0, i32 3
  %_cond615 = bitcast %union.anon* %u614 to %struct.anon.3*
  %par616 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond615, i32 0, i32 0
  store i32 1, i32* %par616, align 4
  br label %if.end617

if.end617:                                        ; preds = %if.then612, %sw.bb605
  br label %sw.epilog685

sw.bb618:                                         ; preds = %while.body602
  %339 = load i32, i32* %code, align 4
  %call619 = call %struct.tstack* @tpush(i32 %339, i32 1)
  store %struct.tstack* %call619, %struct.tstack** %n, align 4
  %340 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u620 = getelementptr inbounds %struct.tstack, %struct.tstack* %340, i32 0, i32 3
  %_cond621 = bitcast %union.anon* %u620 to %struct.anon.3*
  %par622 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond621, i32 0, i32 0
  store i32 0, i32* %par622, align 4
  %341 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc623 = getelementptr inbounds %struct.estate, %struct.estate* %341, i32 0, i32 1
  %342 = load i32*, i32** %pc623, align 4
  %incdec.ptr624 = getelementptr inbounds i32, i32* %342, i32 1
  store i32* %incdec.ptr624, i32** %pc623, align 4
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %code, align 4
  %344 = load i32, i32* %code, align 4
  %shr625 = lshr i32 %344, 5
  %and626 = and i32 %shr625, 127
  %cmp627 = icmp eq i32 %and626, 2
  br i1 %cmp627, label %if.then629, label %if.end634

if.then629:                                       ; preds = %sw.bb618
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %345 = load i32, i32* %code, align 4
  %call630 = call %struct.tstack* @tpush(i32 %345, i32 1)
  store %struct.tstack* %call630, %struct.tstack** %n, align 4
  %346 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u631 = getelementptr inbounds %struct.tstack, %struct.tstack* %346, i32 0, i32 3
  %_cond632 = bitcast %union.anon* %u631 to %struct.anon.3*
  %par633 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond632, i32 0, i32 0
  store i32 1, i32* %par633, align 4
  br label %if.end634

if.end634:                                        ; preds = %if.then629, %sw.bb618
  br label %sw.epilog685

sw.bb635:                                         ; preds = %while.body602
  %347 = load i32, i32* %code, align 4
  %call636 = call %struct.tstack* @tpush(i32 %347, i32 1)
  store %struct.tstack* %call636, %struct.tstack** %n, align 4
  %348 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u637 = getelementptr inbounds %struct.tstack, %struct.tstack* %348, i32 0, i32 3
  %_cond638 = bitcast %union.anon* %u637 to %struct.anon.3*
  %par639 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond638, i32 0, i32 0
  store i32 0, i32* %par639, align 4
  %349 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc640 = getelementptr inbounds %struct.estate, %struct.estate* %349, i32 0, i32 1
  %350 = load i32*, i32** %pc640, align 4
  %incdec.ptr641 = getelementptr inbounds i32, i32* %350, i32 1
  store i32* %incdec.ptr641, i32** %pc640, align 4
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %code, align 4
  %352 = load i32, i32* %code, align 4
  %shr642 = lshr i32 %352, 5
  %and643 = and i32 %shr642, 127
  %cmp644 = icmp eq i32 %and643, 1
  br i1 %cmp644, label %if.then646, label %if.end651

if.then646:                                       ; preds = %sw.bb635
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %353 = load i32, i32* %code, align 4
  %call647 = call %struct.tstack* @tpush(i32 %353, i32 1)
  store %struct.tstack* %call647, %struct.tstack** %n, align 4
  %354 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u648 = getelementptr inbounds %struct.tstack, %struct.tstack* %354, i32 0, i32 3
  %_cond649 = bitcast %union.anon* %u648 to %struct.anon.3*
  %par650 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %_cond649, i32 0, i32 0
  store i32 1, i32* %par650, align 4
  br label %if.end651

if.end651:                                        ; preds = %if.then646, %sw.bb635
  br label %sw.epilog685

sw.bb652:                                         ; preds = %while.body602
  %355 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call653 = call i8* @ecgetstr(%struct.estate* %355, i32 0, i32* null)
  call void @taddstr(i8* %call653)
  call void @taddchr(i32 32)
  %356 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %357 = load i32, i32* %code, align 4
  %shr654 = lshr i32 %357, 5
  %shr655 = lshr i32 %shr654, 7
  call void @taddlist(%struct.estate* %356, i32 %shr655)
  store i32 1, i32* %stack, align 4
  br label %sw.epilog685

sw.bb656:                                         ; preds = %while.body602
  %358 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call657 = call i8* @ecgetstr(%struct.estate* %358, i32 0, i32* null)
  store i8* %call657, i8** %name, align 4
  %359 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call658 = call i8* @ecgetstr(%struct.estate* %359, i32 0, i32* null)
  call void @taddstr(i8* %call658)
  call void @taddchr(i32 32)
  %360 = load i8*, i8** %name, align 4
  call void @taddstr(i8* %360)
  call void @taddchr(i32 32)
  %361 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call659 = call i8* @ecgetstr(%struct.estate* %361, i32 0, i32* null)
  call void @taddstr(i8* %call659)
  store i32 1, i32* %stack, align 4
  br label %sw.epilog685

sw.default660:                                    ; preds = %while.body602
  %362 = load i32, i32* %ctype, align 4
  %cmp661 = icmp slt i32 %362, 18
  br i1 %cmp661, label %if.then663, label %if.else677

if.then663:                                       ; preds = %sw.default660
  %363 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call664 = call i8* @ecgetstr(%struct.estate* %363, i32 0, i32* null)
  call void @taddstr(i8* %call664)
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  %364 = load i32, i32* %ctype, align 4
  %sub = sub nsw i32 %364, 3
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* @cond_binary_ops, i32 0, i32 %sub
  %365 = load i8*, i8** %arrayidx, align 4
  call void @taddstr(i8* %365)
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  %366 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call665 = call i8* @ecgetstr(%struct.estate* %366, i32 0, i32* null)
  call void @taddstr(i8* %call665)
  %367 = load i32, i32* %ctype, align 4
  %cmp666 = icmp eq i32 %367, 3
  br i1 %cmp666, label %if.then673, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then663
  %368 = load i32, i32* %ctype, align 4
  %cmp668 = icmp eq i32 %368, 4
  br i1 %cmp668, label %if.then673, label %lor.lhs.false670

lor.lhs.false670:                                 ; preds = %lor.lhs.false
  %369 = load i32, i32* %ctype, align 4
  %cmp671 = icmp eq i32 %369, 5
  br i1 %cmp671, label %if.then673, label %if.end676

if.then673:                                       ; preds = %lor.lhs.false670, %lor.lhs.false, %if.then663
  %370 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc674 = getelementptr inbounds %struct.estate, %struct.estate* %370, i32 0, i32 1
  %371 = load i32*, i32** %pc674, align 4
  %incdec.ptr675 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %incdec.ptr675, i32** %pc674, align 4
  br label %if.end676

if.end676:                                        ; preds = %if.then673, %lor.lhs.false670
  br label %if.end684

if.else677:                                       ; preds = %sw.default660
  %arrayidx678 = getelementptr inbounds [4 x i8], [4 x i8]* %c2, i32 0, i32 0
  store i8 45, i8* %arrayidx678, align 1
  %372 = load i32, i32* %ctype, align 4
  %conv679 = trunc i32 %372 to i8
  %arrayidx680 = getelementptr inbounds [4 x i8], [4 x i8]* %c2, i32 0, i32 1
  store i8 %conv679, i8* %arrayidx680, align 1
  %arrayidx681 = getelementptr inbounds [4 x i8], [4 x i8]* %c2, i32 0, i32 2
  store i8 32, i8* %arrayidx681, align 1
  %arrayidx682 = getelementptr inbounds [4 x i8], [4 x i8]* %c2, i32 0, i32 3
  store i8 0, i8* %arrayidx682, align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %c2, i32 0, i32 0
  call void @taddstr(i8* %arraydecay)
  %373 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call683 = call i8* @ecgetstr(%struct.estate* %373, i32 0, i32* null)
  call void @taddstr(i8* %call683)
  br label %if.end684

if.end684:                                        ; preds = %if.else677, %if.end676
  store i32 1, i32* %stack, align 4
  br label %sw.epilog685

sw.epilog685:                                     ; preds = %if.end684, %sw.bb656, %sw.bb652, %if.end651, %if.end634, %if.end617
  br label %while.cond600

while.end686:                                     ; preds = %while.cond600
  br label %sw.epilog720

sw.bb687:                                         ; preds = %if.end8
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0))
  %374 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call688 = call i8* @ecgetstr(%struct.estate* %374, i32 0, i32* null)
  call void @taddstr(i8* %call688)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %sw.epilog720

sw.bb689:                                         ; preds = %if.end8
  call void @taddstr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %sw.epilog720

sw.bb690:                                         ; preds = %if.end8
  %375 = load %struct.tstack*, %struct.tstack** %s, align 4
  %tobool691 = icmp ne %struct.tstack* %375, null
  br i1 %tobool691, label %if.else705, label %if.then692

if.then692:                                       ; preds = %sw.bb690
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  %376 = load i32, i32* @tindent, align 4
  %inc693 = add nsw i32 %376, 1
  store i32 %inc693, i32* @tindent, align 4
  call void @taddnl(i32 0)
  %377 = load i32, i32* %code, align 4
  %call694 = call %struct.tstack* @tpush(i32 %377, i32 0)
  store %struct.tstack* %call694, %struct.tstack** %n, align 4
  %378 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc695 = getelementptr inbounds %struct.estate, %struct.estate* %378, i32 0, i32 1
  %379 = load i32*, i32** %pc695, align 4
  %incdec.ptr696 = getelementptr inbounds i32, i32* %379, i32 1
  store i32* %incdec.ptr696, i32** %pc695, align 4
  %380 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc697 = getelementptr inbounds %struct.estate, %struct.estate* %380, i32 0, i32 1
  %381 = load i32*, i32** %pc697, align 4
  %382 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc698 = getelementptr inbounds %struct.estate, %struct.estate* %382, i32 0, i32 1
  %383 = load i32*, i32** %pc698, align 4
  %arrayidx699 = getelementptr inbounds i32, i32* %383, i32 -1
  %384 = load i32, i32* %arrayidx699, align 4
  %shr700 = lshr i32 %384, 5
  %add.ptr701 = getelementptr inbounds i32, i32* %381, i32 %shr700
  %385 = load %struct.tstack*, %struct.tstack** %n, align 4
  %u702 = getelementptr inbounds %struct.tstack, %struct.tstack* %385, i32 0, i32 3
  %_subsh703 = bitcast %union.anon* %u702 to %struct.anon.4*
  %end704 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_subsh703, i32 0, i32 0
  store i32* %add.ptr701, i32** %end704, align 4
  br label %if.end717

if.else705:                                       ; preds = %sw.bb690
  %386 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop706 = getelementptr inbounds %struct.tstack, %struct.tstack* %386, i32 0, i32 2
  %387 = load i32, i32* %pop706, align 4
  %tobool707 = icmp ne i32 %387, 0
  br i1 %tobool707, label %if.else715, label %if.then708

if.then708:                                       ; preds = %if.else705
  %388 = load %struct.tstack*, %struct.tstack** %s, align 4
  %u709 = getelementptr inbounds %struct.tstack, %struct.tstack* %388, i32 0, i32 3
  %_subsh710 = bitcast %union.anon* %u709 to %struct.anon.4*
  %end711 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_subsh710, i32 0, i32 0
  %389 = load i32*, i32** %end711, align 4
  %390 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc712 = getelementptr inbounds %struct.estate, %struct.estate* %390, i32 0, i32 1
  store i32* %389, i32** %pc712, align 4
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  %391 = load i32, i32* @tindent, align 4
  %inc713 = add nsw i32 %391, 1
  store i32 %inc713, i32* @tindent, align 4
  call void @taddnl(i32 0)
  %392 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop714 = getelementptr inbounds %struct.tstack, %struct.tstack* %392, i32 0, i32 2
  store i32 1, i32* %pop714, align 4
  br label %if.end716

if.else715:                                       ; preds = %if.else705
  call void @dec_tindent()
  call void @taddnl(i32 0)
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  store i32 1, i32* %stack, align 4
  br label %if.end716

if.end716:                                        ; preds = %if.else715, %if.then708
  br label %if.end717

if.end717:                                        ; preds = %if.end716, %if.then692
  br label %sw.epilog720

sw.bb718:                                         ; preds = %if.end8
  store i32 1, i32* %stack, align 4
  br label %sw.epilog720

sw.default719:                                    ; preds = %if.end8
  br label %return

sw.epilog720:                                     ; preds = %sw.bb718, %if.end717, %sw.bb689, %sw.bb687, %while.end686, %if.then556, %if.then549, %if.end537, %if.end478, %if.end374, %if.end366, %if.end347, %if.end331, %if.end304, %if.end234, %if.end221, %if.end202, %sw.bb184, %sw.bb182, %sw.bb181, %if.end180, %if.end168, %if.end131, %if.end51
  br label %while.body

while.end721:                                     ; preds = %if.then2
  call void @tdopending()
  br label %return

return:                                           ; preds = %while.end721, %sw.default719
  ret void
}

declare void @freeeprog(%struct.eprog*) #1

declare void @untokenize(i8*) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define i8* @getjobtext(%struct.eprog* %prog, i32* %c) #0 {
entry:
  %prog.addr = alloca %struct.eprog*, align 4
  %c.addr = alloca i32*, align 4
  %s = alloca %struct.estate, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp9 = alloca %struct.__sigset_t, align 4
  store %struct.eprog* %prog, %struct.eprog** %prog.addr, align 4
  store i32* %c, i32** %c.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32*, i32** %c.addr, align 4
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %prog1 = getelementptr inbounds %struct.eprog, %struct.eprog* %2, i32 0, i32 5
  %3 = load i32*, i32** %prog1, align 4
  store i32* %3, i32** %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  call void @useeprog(%struct.eprog* %4)
  %5 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %prog2 = getelementptr inbounds %struct.estate, %struct.estate* %s, i32 0, i32 0
  store %struct.eprog* %5, %struct.eprog** %prog2, align 4
  %6 = load i32*, i32** %c.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %s, i32 0, i32 1
  store i32* %6, i32** %pc, align 4
  %7 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %strs = getelementptr inbounds %struct.eprog, %struct.eprog* %7, i32 0, i32 6
  %8 = load i8*, i8** %strs, align 4
  %strs3 = getelementptr inbounds %struct.estate, %struct.estate* %s, i32 0, i32 2
  store i8* %8, i8** %strs3, align 4
  store i32 0, i32* @tindent, align 4
  store i32 0, i32* @tnewlins, align 4
  store i8* null, i8** @tbuf, align 4
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @getjobtext.jbuf, i32 0, i32 0), i8** @tptr, align 4
  %9 = load i8*, i8** @tptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 80
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i32 -1
  store i8* %add.ptr4, i8** @tlim, align 4
  store i32 1, i32* @tjob, align 4
  call void @gettext2(%struct.estate* %s)
  %10 = load i8*, i8** @tptr, align 4
  store i8 0, i8* %10, align 1
  %11 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  call void @freeeprog(%struct.eprog* %11)
  call void @untokenize(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @getjobtext.jbuf, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool5 = icmp ne i32 %dec, 0
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body7
  %13 = load i32, i32* @queue_front, align 4
  %14 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %15, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %16 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %16
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %17 = bitcast %struct.__sigset_t* %oset to i8*
  %18 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 4, i1 false)
  %19 = load i32, i32* @queue_front, align 4
  %arrayidx8 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %19
  %20 = load i32, i32* %arrayidx8, align 4
  call void @zhandler(i32 %20)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp9, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @getjobtext.jbuf, i32 0, i32 0)
}

; Function Attrs: noinline nounwind
define void @getredirs(%union.linkroot* %redirs) #0 {
entry:
  %redirs.addr = alloca %union.linkroot*, align 4
  %n = alloca %struct.linknode*, align 4
  %f = alloca %struct.redir*, align 4
  %fnamelen = alloca i32, align 4
  %sav = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp71 = alloca %struct.__sigset_t, align 4
  store %union.linkroot* %redirs, %union.linkroot** %redirs.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  call void @taddchr(i32 32)
  %1 = load %union.linkroot*, %union.linkroot** %redirs.addr, align 4
  %list = bitcast %union.linkroot* %1 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %2 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %2, %struct.linknode** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool = icmp ne %struct.linknode* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 2
  %5 = load i8*, i8** %dat, align 4
  %6 = bitcast i8* %5 to %struct.redir*
  store %struct.redir* %6, %struct.redir** %f, align 4
  %7 = load %struct.redir*, %struct.redir** %f, align 4
  %type = getelementptr inbounds %struct.redir, %struct.redir* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 4
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %9 = load %struct.redir*, %struct.redir** %f, align 4
  %varid = getelementptr inbounds %struct.redir, %struct.redir* %9, i32 0, i32 5
  %10 = load i8*, i8** %varid, align 4
  %tobool1 = icmp ne i8* %10, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @taddchr(i32 123)
  %11 = load %struct.redir*, %struct.redir** %f, align 4
  %varid2 = getelementptr inbounds %struct.redir, %struct.redir* %11, i32 0, i32 5
  %12 = load i8*, i8** %varid2, align 4
  call void @taddstr(i8* %12)
  call void @taddchr(i32 125)
  br label %if.end11

if.else:                                          ; preds = %sw.bb
  %13 = load %struct.redir*, %struct.redir** %f, align 4
  %fd1 = getelementptr inbounds %struct.redir, %struct.redir* %13, i32 0, i32 2
  %14 = load i32, i32* %fd1, align 4
  %15 = load %struct.redir*, %struct.redir** %f, align 4
  %type3 = getelementptr inbounds %struct.redir, %struct.redir* %15, i32 0, i32 0
  %16 = load i32, i32* %type3, align 4
  %cmp = icmp sge i32 %16, 8
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct.redir*, %struct.redir** %f, align 4
  %type4 = getelementptr inbounds %struct.redir, %struct.redir* %17, i32 0, i32 0
  %18 = load i32, i32* %type4, align 4
  %cmp5 = icmp sle i32 %18, 13
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %if.else
  %19 = load %struct.redir*, %struct.redir** %f, align 4
  %type6 = getelementptr inbounds %struct.redir, %struct.redir* %19, i32 0, i32 0
  %20 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %20, 16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %21 = phi i1 [ true, %land.lhs.true ], [ %cmp7, %lor.rhs ]
  %cond = select i1 %21, i32 0, i32 1
  %cmp8 = icmp ne i32 %14, %cond
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.end
  %22 = load %struct.redir*, %struct.redir** %f, align 4
  %fd110 = getelementptr inbounds %struct.redir, %struct.redir* %22, i32 0, i32 2
  %23 = load i32, i32* %fd110, align 4
  %add = add nsw i32 48, %23
  call void @taddchr(i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then9, %lor.end
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %24 = load %struct.redir*, %struct.redir** %f, align 4
  %type12 = getelementptr inbounds %struct.redir, %struct.redir* %24, i32 0, i32 0
  %25 = load i32, i32* %type12, align 4
  %cmp13 = icmp eq i32 %25, 12
  br i1 %cmp13, label %land.lhs.true14, label %if.else49

land.lhs.true14:                                  ; preds = %if.end11
  %26 = load %struct.redir*, %struct.redir** %f, align 4
  %flags = getelementptr inbounds %struct.redir, %struct.redir* %26, i32 0, i32 1
  %27 = load i32, i32* %flags, align 4
  %and = and i32 %27, 1
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then16, label %if.else49

if.then16:                                        ; preds = %land.lhs.true14
  %28 = load i32, i32* @tnewlins, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then16
  %29 = load i8*, i8** getelementptr inbounds ([18 x i8*], [18 x i8*]* @getredirs.fstr, i32 0, i32 10), align 4
  call void @taddstr(i8* %29)
  %30 = load %struct.redir*, %struct.redir** %f, align 4
  %here_terminator = getelementptr inbounds %struct.redir, %struct.redir* %30, i32 0, i32 6
  %31 = load i8*, i8** %here_terminator, align 4
  call void @taddstr(i8* %31)
  %32 = load %struct.redir*, %struct.redir** %f, align 4
  %name = getelementptr inbounds %struct.redir, %struct.redir* %32, i32 0, i32 4
  %33 = load i8*, i8** %name, align 4
  %34 = load %struct.redir*, %struct.redir** %f, align 4
  %munged_here_terminator = getelementptr inbounds %struct.redir, %struct.redir* %34, i32 0, i32 7
  %35 = load i8*, i8** %munged_here_terminator, align 4
  call void @taddpending(i8* %33, i8* %35)
  br label %if.end48

if.else19:                                        ; preds = %if.then16
  %36 = load i8*, i8** getelementptr inbounds ([18 x i8*], [18 x i8*]* @getredirs.fstr, i32 0, i32 12), align 4
  call void @taddstr(i8* %36)
  %37 = load %struct.redir*, %struct.redir** %f, align 4
  %name20 = getelementptr inbounds %struct.redir, %struct.redir* %37, i32 0, i32 4
  %38 = load i8*, i8** %name20, align 4
  %call = call i32 @strlen(i8* %38)
  store i32 %call, i32* %fnamelen, align 4
  %39 = load i32, i32* %fnamelen, align 4
  %cmp21 = icmp sgt i32 %39, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.else30

land.lhs.true22:                                  ; preds = %if.else19
  %40 = load %struct.redir*, %struct.redir** %f, align 4
  %name23 = getelementptr inbounds %struct.redir, %struct.redir* %40, i32 0, i32 4
  %41 = load i8*, i8** %name23, align 4
  %42 = load i32, i32* %fnamelen, align 4
  %sub = sub nsw i32 %42, 1
  %arrayidx = getelementptr inbounds i8, i8* %41, i32 %sub
  %43 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %43 to i32
  %cmp24 = icmp eq i32 %conv, 10
  br i1 %cmp24, label %if.then26, label %if.else30

if.then26:                                        ; preds = %land.lhs.true22
  store i32 1, i32* %sav, align 4
  %44 = load %struct.redir*, %struct.redir** %f, align 4
  %name27 = getelementptr inbounds %struct.redir, %struct.redir* %44, i32 0, i32 4
  %45 = load i8*, i8** %name27, align 4
  %46 = load i32, i32* %fnamelen, align 4
  %sub28 = sub nsw i32 %46, 1
  %arrayidx29 = getelementptr inbounds i8, i8* %45, i32 %sub28
  store i8 0, i8* %arrayidx29, align 1
  br label %if.end31

if.else30:                                        ; preds = %land.lhs.true22, %if.else19
  store i32 0, i32* %sav, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then26
  %47 = load %struct.redir*, %struct.redir** %f, align 4
  %name32 = getelementptr inbounds %struct.redir, %struct.redir* %47, i32 0, i32 4
  %48 = load i8*, i8** %name32, align 4
  %call33 = call i32 @has_token(i8* %48)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.else38, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void @taddchr(i32 39)
  %49 = load %struct.redir*, %struct.redir** %f, align 4
  %name36 = getelementptr inbounds %struct.redir, %struct.redir* %49, i32 0, i32 4
  %50 = load i8*, i8** %name36, align 4
  %call37 = call i8* @quotestring(i8* %50, i32 2)
  call void @taddstr(i8* %call37)
  call void @taddchr(i32 39)
  br label %if.end41

if.else38:                                        ; preds = %if.end31
  call void @taddchr(i32 34)
  %51 = load %struct.redir*, %struct.redir** %f, align 4
  %name39 = getelementptr inbounds %struct.redir, %struct.redir* %51, i32 0, i32 4
  %52 = load i8*, i8** %name39, align 4
  %call40 = call i8* @quotestring(i8* %52, i32 3)
  call void @taddstr(i8* %call40)
  call void @taddchr(i32 34)
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  %53 = load i32, i32* %sav, align 4
  %tobool42 = icmp ne i32 %53, 0
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end41
  %54 = load %struct.redir*, %struct.redir** %f, align 4
  %name44 = getelementptr inbounds %struct.redir, %struct.redir* %54, i32 0, i32 4
  %55 = load i8*, i8** %name44, align 4
  %56 = load i32, i32* %fnamelen, align 4
  %sub45 = sub nsw i32 %56, 1
  %arrayidx46 = getelementptr inbounds i8, i8* %55, i32 %sub45
  store i8 10, i8* %arrayidx46, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end41
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then18
  br label %if.end62

if.else49:                                        ; preds = %land.lhs.true14, %if.end11
  %57 = load %struct.redir*, %struct.redir** %f, align 4
  %type50 = getelementptr inbounds %struct.redir, %struct.redir* %57, i32 0, i32 0
  %58 = load i32, i32* %type50, align 4
  %arrayidx51 = getelementptr inbounds [18 x i8*], [18 x i8*]* @getredirs.fstr, i32 0, i32 %58
  %59 = load i8*, i8** %arrayidx51, align 4
  call void @taddstr(i8* %59)
  %60 = load %struct.redir*, %struct.redir** %f, align 4
  %type52 = getelementptr inbounds %struct.redir, %struct.redir* %60, i32 0, i32 0
  %61 = load i32, i32* %type52, align 4
  %cmp53 = icmp ne i32 %61, 13
  br i1 %cmp53, label %land.lhs.true55, label %if.end60

land.lhs.true55:                                  ; preds = %if.else49
  %62 = load %struct.redir*, %struct.redir** %f, align 4
  %type56 = getelementptr inbounds %struct.redir, %struct.redir* %62, i32 0, i32 0
  %63 = load i32, i32* %type56, align 4
  %cmp57 = icmp ne i32 %63, 14
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %land.lhs.true55
  call void @taddchr(i32 32)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %land.lhs.true55, %if.else49
  %64 = load %struct.redir*, %struct.redir** %f, align 4
  %name61 = getelementptr inbounds %struct.redir, %struct.redir* %64, i32 0, i32 4
  %65 = load i8*, i8** %name61, align 4
  call void @taddstr(i8* %65)
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %if.end48
  call void @taddchr(i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end62
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %66 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %66, i32 0, i32 0
  %67 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %67, %struct.linknode** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i8*, i8** @tptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %incdec.ptr, i8** @tptr, align 4
  br label %do.body

do.body:                                          ; preds = %for.end
  %69 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool63 = icmp ne i32 %dec, 0
  br i1 %tobool63, label %if.end72, label %if.then64

if.then64:                                        ; preds = %do.body
  br label %do.body65

do.body65:                                        ; preds = %if.then64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body65
  %70 = load i32, i32* @queue_front, align 4
  %71 = load i32, i32* @queue_rear, align 4
  %cmp66 = icmp ne i32 %70, %71
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load i32, i32* @queue_front, align 4
  %add68 = add nsw i32 %72, 1
  %rem = srem i32 %add68, 128
  store i32 %rem, i32* @queue_front, align 4
  %73 = load i32, i32* @queue_front, align 4
  %arrayidx69 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %73
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx69)
  %74 = bitcast %struct.__sigset_t* %oset to i8*
  %75 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %75, i32 128, i32 4, i1 false)
  %76 = load i32, i32* @queue_front, align 4
  %arrayidx70 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %76
  %77 = load i32, i32* %arrayidx70, align 4
  call void @zhandler(i32 %77)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp71, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end72

if.end72:                                         ; preds = %do.end, %do.body
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  ret void
}

; Function Attrs: noinline nounwind
define internal void @taddchr(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i8*, i8** @tptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** @tptr, align 4
  store i8 %conv, i8* %1, align 1
  %2 = load i8*, i8** @tptr, align 4
  %3 = load i8*, i8** @tlim, align 4
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @tbuf, align 4
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load i8*, i8** @tptr, align 4
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 -1
  store i8* %incdec.ptr3, i8** @tptr, align 4
  br label %if.end5

if.end:                                           ; preds = %if.then
  %6 = load i8*, i8** @tbuf, align 4
  %7 = load i32, i32* @tsiz, align 4
  %mul = mul nsw i32 %7, 2
  store i32 %mul, i32* @tsiz, align 4
  %call = call i8* @zrealloc(i8* %6, i32 %mul)
  store i8* %call, i8** @tbuf, align 4
  %8 = load i8*, i8** @tbuf, align 4
  %9 = load i32, i32* @tsiz, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 %9
  store i8* %add.ptr, i8** @tlim, align 4
  %10 = load i8*, i8** @tbuf, align 4
  %11 = load i32, i32* @tsiz, align 4
  %div = sdiv i32 %11, 2
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i32 %div
  store i8* %add.ptr4, i8** @tptr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @taddstr(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %sl = alloca i32, align 4
  %c = alloca i8, align 1
  %x = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %sl, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8*, i8** @tptr, align 4
  %2 = load i32, i32* %sl, align 4
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 %2
  %3 = load i8*, i8** @tlim, align 4
  %cmp = icmp uge i8* %add.ptr, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** @tptr, align 4
  %5 = load i8*, i8** @tbuf, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %x, align 4
  %6 = load i8*, i8** @tbuf, align 4
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %if.end16

if.end:                                           ; preds = %while.body
  %7 = load i8*, i8** @tbuf, align 4
  %8 = load i32, i32* @tsiz, align 4
  %mul = mul nsw i32 %8, 2
  store i32 %mul, i32* @tsiz, align 4
  %call1 = call i8* @zrealloc(i8* %7, i32 %mul)
  store i8* %call1, i8** @tbuf, align 4
  %9 = load i8*, i8** @tbuf, align 4
  %10 = load i32, i32* @tsiz, align 4
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i32 %10
  store i8* %add.ptr2, i8** @tlim, align 4
  %11 = load i8*, i8** @tbuf, align 4
  %12 = load i32, i32* %x, align 4
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i32 %12
  store i8* %add.ptr3, i8** @tptr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* @tnewlins, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.end
  %14 = load i8*, i8** @tptr, align 4
  %15 = load i8*, i8** %s.addr, align 4
  %16 = load i32, i32* %sl, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 %16, i32 1, i1 false)
  %17 = load i32, i32* %sl, align 4
  %18 = load i8*, i8** @tptr, align 4
  %add.ptr6 = getelementptr inbounds i8, i8* %18, i32 %17
  store i8* %add.ptr6, i8** @tptr, align 4
  br label %if.end16

if.else:                                          ; preds = %while.end
  br label %while.cond7

while.cond7:                                      ; preds = %cond.end, %if.else
  %19 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %c, align 1
  %tobool8 = icmp ne i8 %20, 0
  br i1 %tobool8, label %while.body9, label %while.end15

while.body9:                                      ; preds = %while.cond7
  %21 = load i8, i8* %c, align 1
  %conv = sext i8 %21 to i32
  %cmp10 = icmp eq i32 %conv, 10
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body9
  br label %cond.end

cond.false:                                       ; preds = %while.body9
  %22 = load i8, i8* %c, align 1
  %conv12 = sext i8 %22 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %conv12, %cond.false ]
  %conv13 = trunc i32 %cond to i8
  %23 = load i8*, i8** @tptr, align 4
  %incdec.ptr14 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr14, i8** @tptr, align 4
  store i8 %conv13, i8* %23, align 1
  br label %while.cond7

while.end15:                                      ; preds = %while.cond7
  br label %if.end16

if.end16:                                         ; preds = %if.then, %while.end15, %if.then5
  ret void
}

; Function Attrs: noinline nounwind
define internal void @taddpending(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 4
  %str2.addr = alloca i8*, align 4
  %len = alloca i32, align 4
  %oldlen = alloca i32, align 4
  store i8* %str1, i8** %str1.addr, align 4
  store i8* %str2, i8** %str2.addr, align 4
  %0 = load i8*, i8** %str1.addr, align 4
  %call = call i32 @strlen(i8* %0)
  %1 = load i8*, i8** %str2.addr, align 4
  %call1 = call i32 @strlen(i8* %1)
  %add = add i32 %call, %call1
  %add2 = add i32 %add, 1
  store i32 %add2, i32* %len, align 4
  %2 = load i8*, i8** @tpending, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @tpending, align 4
  %call3 = call i32 @strlen(i8* %3)
  store i32 %call3, i32* %oldlen, align 4
  %4 = load i8*, i8** @tpending, align 4
  %5 = load i32, i32* %len, align 4
  %6 = load i32, i32* %oldlen, align 4
  %add4 = add nsw i32 %5, %6
  %add5 = add nsw i32 %add4, 1
  %call6 = call i8* @zrealloc(i8* %4, i32 %add5)
  store i8* %call6, i8** @tpending, align 4
  %7 = load i8*, i8** @tpending, align 4
  %8 = load i32, i32* %oldlen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 %8
  %9 = load i8*, i8** %str1.addr, align 4
  %10 = load i8*, i8** %str2.addr, align 4
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* %9, i8* %10)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %len, align 4
  %call8 = call i8* @zalloc(i32 %11)
  store i8* %call8, i8** @tpending, align 4
  %12 = load i8*, i8** @tpending, align 4
  %13 = load i8*, i8** %str1.addr, align 4
  %14 = load i8*, i8** %str2.addr, align 4
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @strlen(i8*) #1

declare i32 @has_token(i8*) #1

declare i8* @quotestring(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal %struct.tstack* @tpush(i32 %code, i32 %pop) #0 {
entry:
  %code.addr = alloca i32, align 4
  %pop.addr = alloca i32, align 4
  %s = alloca %struct.tstack*, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %pop, i32* %pop.addr, align 4
  %0 = load %struct.tstack*, %struct.tstack** @tfree, align 4
  store %struct.tstack* %0, %struct.tstack** %s, align 4
  %tobool = icmp ne %struct.tstack* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.tstack*, %struct.tstack** %s, align 4
  %prev = getelementptr inbounds %struct.tstack, %struct.tstack* %1, i32 0, i32 0
  %2 = load %struct.tstack*, %struct.tstack** %prev, align 4
  store %struct.tstack* %2, %struct.tstack** @tfree, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i8* @zalloc(i32 24)
  %3 = bitcast i8* %call to %struct.tstack*
  store %struct.tstack* %3, %struct.tstack** %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.tstack*, %struct.tstack** @tstack, align 4
  %5 = load %struct.tstack*, %struct.tstack** %s, align 4
  %prev1 = getelementptr inbounds %struct.tstack, %struct.tstack* %5, i32 0, i32 0
  store %struct.tstack* %4, %struct.tstack** %prev1, align 4
  %6 = load %struct.tstack*, %struct.tstack** %s, align 4
  store %struct.tstack* %6, %struct.tstack** @tstack, align 4
  %7 = load i32, i32* %code.addr, align 4
  %8 = load %struct.tstack*, %struct.tstack** %s, align 4
  %code2 = getelementptr inbounds %struct.tstack, %struct.tstack* %8, i32 0, i32 1
  store i32 %7, i32* %code2, align 4
  %9 = load i32, i32* %pop.addr, align 4
  %10 = load %struct.tstack*, %struct.tstack** %s, align 4
  %pop3 = getelementptr inbounds %struct.tstack, %struct.tstack* %10, i32 0, i32 2
  store i32 %9, i32* %pop3, align 4
  %11 = load %struct.tstack*, %struct.tstack** %s, align 4
  ret %struct.tstack* %11
}

; Function Attrs: noinline nounwind
define internal void @taddnl(i32 %no_semicolon) #0 {
entry:
  %no_semicolon.addr = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  store i32 %no_semicolon, i32* %no_semicolon.addr, align 4
  %0 = load i32, i32* @tnewlins, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  call void @tdopending()
  call void @taddchr(i32 10)
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %if.then
  %1 = load i32, i32* %t0, align 4
  %2 = load i32, i32* @tindent, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @text_expand_tabs, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %for.body
  %4 = load i32, i32* @text_expand_tabs, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %t1, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %t1, align 4
  %6 = load i32, i32* @text_expand_tabs, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  call void @taddchr(i32 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %7 = load i32, i32* %t1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %t1, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  br label %if.end

if.else:                                          ; preds = %if.then2
  call void @taddchr(i32 9)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  br label %for.inc9

for.inc9:                                         ; preds = %if.end8
  %8 = load i32, i32* %t0, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, i32* %t0, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  br label %if.end17

if.else12:                                        ; preds = %entry
  %9 = load i32, i32* %no_semicolon.addr, align 4
  %tobool13 = icmp ne i32 %9, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  call void @taddstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end16

if.else15:                                        ; preds = %if.else12
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.end11
  ret void
}

declare %union.linkroot* @ecgetredirs(%struct.estate*) #1

; Function Attrs: noinline nounwind
define internal void @taddassign(i32 %code, %struct.estate* %state, i32 %typeset) #0 {
entry:
  %code.addr = alloca i32, align 4
  %state.addr = alloca %struct.estate*, align 4
  %typeset.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %typeset, i32* %typeset.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call = call i8* @ecgetstr(%struct.estate* %0, i32 0, i32* null)
  call void @taddstr(i8* %call)
  %1 = load i32, i32* %code.addr, align 4
  %shr = lshr i32 %1, 5
  %and = and i32 %shr, 2
  %shr1 = lshr i32 %and, 1
  %cmp = icmp eq i32 %shr1, 1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %typeset.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call3 = call i8* @ecgetstr(%struct.estate* %3, i32 0, i32* null)
  call void @taddchr(i32 32)
  br label %if.end12

if.end:                                           ; preds = %if.then
  call void @taddchr(i32 43)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  call void @taddchr(i32 61)
  %4 = load i32, i32* %code.addr, align 4
  %shr5 = lshr i32 %4, 5
  %and6 = and i32 %shr5, 1
  %cmp7 = icmp eq i32 %and6, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  call void @taddchr(i32 40)
  %5 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %6 = load i32, i32* %code.addr, align 4
  %shr9 = lshr i32 %6, 5
  %shr10 = lshr i32 %shr9, 2
  call void @taddlist(%struct.estate* %5, i32 %shr10)
  call void @taddstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end12

if.else:                                          ; preds = %if.end4
  %7 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call11 = call i8* @ecgetstr(%struct.estate* %7, i32 0, i32* null)
  call void @taddstr(i8* %call11)
  call void @taddchr(i32 32)
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.else, %if.then8
  ret void
}

; Function Attrs: noinline nounwind
define internal void @taddlist(%struct.estate* %state, i32 %num) #0 {
entry:
  %state.addr = alloca %struct.estate*, align 4
  %num.addr = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i32, i32* %num.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %num.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call = call i8* @ecgetstr(%struct.estate* %2, i32 0, i32* null)
  call void @taddstr(i8* %call)
  call void @taddchr(i32 32)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** @tptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 -1
  store i8* %incdec.ptr, i8** @tptr, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @taddassignlist(%struct.estate* %state, i32 %count) #0 {
entry:
  %state.addr = alloca %struct.estate*, align 4
  %count.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @taddchr(i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i32, i32* %count.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %count.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %2, i32 0, i32 1
  %3 = load i32*, i32** %pc, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %3, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %6 = load %struct.estate*, %struct.estate** %state.addr, align 4
  call void @taddassign(i32 %5, %struct.estate* %6, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal void @dec_tindent() #0 {
entry:
  %0 = load i32, i32* @tindent, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @tindent, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @tindent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @ecgetstr(%struct.estate*, i32, i32*) #1

; Function Attrs: noinline nounwind
define internal void @tdopending() #0 {
entry:
  %0 = load i8*, i8** @tpending, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @taddchr(i32 10)
  %1 = load i8*, i8** @tpending, align 4
  call void @taddstr(i8* %1)
  %2 = load i8*, i8** @tpending, align 4
  call void @zsfree(i8* %2)
  store i8* null, i8** @tpending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @zsfree(i8*) #1

declare i8* @zrealloc(i8*, i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
