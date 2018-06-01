; ModuleID = 'prompt.c'
source_filename = "prompt.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.buf_vars = type { %struct.buf_vars*, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._IO_FILE = type opaque
%struct.highlight = type { i8*, i32, i32 }
%struct.colour_sequences = type { i8*, i8*, i8* }
%struct.job = type { i32, i32, i32, i8*, %struct.process*, %struct.process*, %union.linkroot*, i32, %struct.ttyinfo* }
%struct.process = type { %struct.process*, i32, [80 x i8], i32, %struct.rusage, %struct.timeval, %struct.timeval }
%struct.rusage = type { %struct.timeval, %struct.timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.timeval = type { i32, i32 }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.funcstack = type { %struct.funcstack*, i8*, i8*, i8*, i32, i32, i32 }
%struct.__sigset_t = type { [32 x i32] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.timezone = type { i32, i32 }
%struct.nameddir = type { %struct.hashnode, i8*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.__mbstate_t = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@termflags = external global i32, align 4
@opts = external global [181 x i8], align 1
@errflag = external global i32, align 4
@lastval = external global i32, align 4
@bv = internal global %struct.buf_vars* null, align 4
@tclen = external global [34 x i32], align 4
@tcstr = external global [34 x i8*], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ug\00", align 1
@txtattrmask = common global i32 0, align 4
@zterm_columns = external global i32, align 4
@cmdsp = common global i32 0, align 4
@cmdstack = common global i8* null, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@typtab = external global [256 x i16], align 2
@tccolours = external global i32, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"fg=\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bg=\00", align 1
@highlights = internal constant [5 x %struct.highlight] [%struct.highlight { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 31 }, %struct.highlight { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 1, i32 0 }, %struct.highlight { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 2, i32 0 }, %struct.highlight { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 4, i32 0 }, %struct.highlight zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\1B[3\00", align 1
@fg_bg_sequences = internal global [2 x %struct.colour_sequences] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\1B[4\00", align 1
@colseq_buf_allocs = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"zle_highlight\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"fg_start_code:\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"fg_default_code:\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"fg_end_code:\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"bg_start_code:\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"bg_default_code:\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"bg_end_code:\00", align 1
@colseq_buf = internal global i8* null, align 4
@pwd = external global i8*, align 4
@maxjob = external global i32, align 4
@jobtab = external global %struct.job*, align 4
@funcstack = external global %struct.funcstack*, align 4
@shlvl = external global i32, align 4
@shtimer = external global %struct.timeval, align 4
@psvar = external global i8**, align 4
@scriptname = external global i8*, align 4
@argzero = external global i8*, align 4
@curhist = external global i32, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@queueing_enabled = external global i32, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"%K:%M\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%K:%M:%S\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%a %f\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%y-%m-%d\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"%l:%M%p\00", align 1
@ttystrname = external global i8*, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@cmdnames = internal global [32 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0)], align 4
@intrap = external global i32, align 4
@trapisfunc = external global i32, align 4
@traplocallevel = external global i32, align 4
@locallevel = external global i32, align 4
@lineno = external global i32, align 4
@scriptfilename = external global i8*, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"cmdor\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"cmdand\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"errpipe\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"subsh\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"cursh\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"dquote\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"bquote\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"cmdsubst\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"mathsubst\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"elif-then\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"heredoc\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"heredocd\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"brace\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"braceparam\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@ansi_colours = internal global [10 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* null], align 4
@.str.63 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"standout\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"underline\00", align 1

; Function Attrs: noinline nounwind
define i8* @promptexpand(i8* %s, i32 %ns, i8* %rs, i8* %Rs, i32* %txtchangep) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %ns.addr = alloca i32, align 4
  %rs.addr = alloca i8*, align 4
  %Rs.addr = alloca i8*, align 4
  %txtchangep.addr = alloca i32*, align 4
  %new_vars = alloca %struct.buf_vars, align 4
  %olderr = alloca i32, align 4
  %oldval = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %ns, i32* %ns.addr, align 4
  store i8* %rs, i8** %rs.addr, align 4
  store i8* %Rs, i8** %Rs.addr, align 4
  store i32* %txtchangep, i32** %txtchangep.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @termflags, align 4
  %and = and i32 %1, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool2 = icmp ne i8 %2, 0
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %call4 = call i32 @init_term()
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 145), align 1
  %tobool6 = icmp ne i8 %3, 0
  br i1 %tobool6, label %if.then7, label %if.end21

if.then7:                                         ; preds = %if.end5
  %4 = load i32, i32* @errflag, align 4
  store i32 %4, i32* %olderr, align 4
  %5 = load i32, i32* @lastval, align 4
  store i32 %5, i32* %oldval, align 4
  %6 = load i8*, i8** %s.addr, align 4
  %call8 = call i8* @dupstring(i8* %6)
  store i8* %call8, i8** %s.addr, align 4
  %call9 = call i32 @parsestr(i8** %s.addr)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then7
  call void @singsub(i8** %s.addr)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then7
  %7 = load i8*, i8** %s.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, -95
  br i1 %cmp, label %land.lhs.true14, label %if.end19

land.lhs.true14:                                  ; preds = %if.end12
  %9 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %9, i32 1
  %10 = load i8, i8* %arrayidx, align 1
  %conv15 = sext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true14
  %11 = load i8*, i8** %s.addr, align 4
  store i8 0, i8* %11, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true14, %if.end12
  %12 = load i32, i32* %olderr, align 4
  %13 = load i32, i32* @errflag, align 4
  %and20 = and i32 %13, 2
  %or = or i32 %12, %and20
  store i32 %or, i32* @errflag, align 4
  %14 = load i32, i32* %oldval, align 4
  store i32 %14, i32* @lastval, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end5
  %15 = bitcast %struct.buf_vars* %new_vars to i8*
  call void @llvm.memset.p0i8.i32(i8* %15, i8 0, i32 48, i32 4, i1 false)
  %16 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %last = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 0
  store %struct.buf_vars* %16, %struct.buf_vars** %last, align 4
  store %struct.buf_vars* %new_vars, %struct.buf_vars** @bv, align 4
  %17 = load i8*, i8** %rs.addr, align 4
  %rstring = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 10
  store i8* %17, i8** %rstring, align 4
  %18 = load i8*, i8** %Rs.addr, align 4
  %Rstring = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 11
  store i8* %18, i8** %Rstring, align 4
  %19 = load i8*, i8** %s.addr, align 4
  %fm = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 6
  store i8* %19, i8** %fm, align 4
  %bufspc = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 2
  store i32 256, i32* %bufspc, align 4
  %bufspc22 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 2
  %20 = load i32, i32* %bufspc22, align 4
  %call23 = call i8* @zshcalloc(i32 %20)
  %buf = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 1
  store i8* %call23, i8** %buf, align 4
  %bufline = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 4
  store i8* %call23, i8** %bufline, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  store i8* %call23, i8** %bp, align 4
  %bp1 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 5
  store i8* null, i8** %bp1, align 4
  %truncwidth = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 7
  store i32 0, i32* %truncwidth, align 4
  %21 = load i32*, i32** %txtchangep.addr, align 4
  %call24 = call i32 @putpromptchar(i32 1, i32 0, i32* %21)
  call void @addbufspc(i32 2)
  %dontcount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 8
  %22 = load i32, i32* %dontcount, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %bp27 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %23 = load i8*, i8** %bp27, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %bp27, align 4
  store i8 -118, i8* %23, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21
  %bp29 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %24 = load i8*, i8** %bp29, align 4
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %ns.addr, align 4
  %tobool30 = icmp ne i32 %25, 0
  br i1 %tobool30, label %if.end62, label %if.then31

if.then31:                                        ; preds = %if.end28
  %buf32 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 1
  %26 = load i8*, i8** %buf32, align 4
  %bp33 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  store i8* %26, i8** %bp33, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end61, %if.then31
  %bp34 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %27 = load i8*, i8** %bp34, align 4
  %28 = load i8, i8* %27, align 1
  %tobool35 = icmp ne i8 %28, 0
  br i1 %tobool35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %bp36 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %29 = load i8*, i8** %bp36, align 4
  %30 = load i8, i8* %29, align 1
  %conv37 = sext i8 %30 to i32
  %cmp38 = icmp eq i32 %conv37, -125
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %for.body
  %bp41 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %31 = load i8*, i8** %bp41, align 4
  %add.ptr = getelementptr inbounds i8, i8* %31, i32 2
  store i8* %add.ptr, i8** %bp41, align 4
  br label %if.end61

if.else:                                          ; preds = %for.body
  %bp42 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %32 = load i8*, i8** %bp42, align 4
  %33 = load i8, i8* %32, align 1
  %conv43 = sext i8 %33 to i32
  %cmp44 = icmp eq i32 %conv43, -120
  br i1 %cmp44, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %bp46 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %34 = load i8*, i8** %bp46, align 4
  %35 = load i8, i8* %34, align 1
  %conv47 = sext i8 %35 to i32
  %cmp48 = icmp eq i32 %conv47, -118
  br i1 %cmp48, label %if.then55, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false
  %bp51 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %36 = load i8*, i8** %bp51, align 4
  %37 = load i8, i8* %36, align 1
  %conv52 = sext i8 %37 to i32
  %cmp53 = icmp eq i32 %conv52, -95
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %lor.lhs.false50, %lor.lhs.false, %if.else
  %bp56 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %38 = load i8*, i8** %bp56, align 4
  call void @chuck(i8* %38)
  br label %if.end60

if.else57:                                        ; preds = %lor.lhs.false50
  %bp58 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 3
  %39 = load i8*, i8** %bp58, align 4
  %incdec.ptr59 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr59, i8** %bp58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end62

if.end62:                                         ; preds = %for.end, %if.end28
  %last63 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 0
  %40 = load %struct.buf_vars*, %struct.buf_vars** %last63, align 4
  store %struct.buf_vars* %40, %struct.buf_vars** @bv, align 4
  %buf64 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %new_vars, i32 0, i32 1
  %41 = load i8*, i8** %buf64, align 4
  store i8* %41, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end62, %if.then
  %42 = load i8*, i8** %retval, align 4
  ret i8* %42
}

declare i8* @ztrdup(i8*) #1

declare i32 @init_term() #1

declare i8* @dupstring(i8*) #1

declare i32 @parsestr(i8**) #1

declare void @singsub(i8**) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i8* @zshcalloc(i32) #1

; Function Attrs: noinline nounwind
define internal i32 @putpromptchar(i32 %doprint, i32 %endchar, i32* %txtchangep) #0 {
entry:
  %retval = alloca i32, align 4
  %doprint.addr = alloca i32, align 4
  %endchar.addr = alloca i32, align 4
  %txtchangep.addr = alloca i32*, align 4
  %ss = alloca i8*, align 4
  %hostnam = alloca i8*, align 4
  %t0 = alloca i32, align 4
  %arg = alloca i32, align 4
  %test = alloca i32, align 4
  %sep = alloca i32, align 4
  %j = alloca i32, align 4
  %numjobs = alloca i32, align 4
  %len = alloca i32, align 4
  %tm = alloca %struct.tm*, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %tv = alloca %struct.timeval, align 4
  %timet = alloca i32, align 4
  %nd = alloca %struct.nameddir*, align 4
  %minus = alloca i32, align 4
  %tc = alloca i32, align 4
  %otruncwidth = alloca i32, align 4
  %fsptr = alloca %struct.funcstack*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp371 = alloca %struct.__sigset_t, align 4
  %oset394 = alloca %struct.__sigset_t, align 4
  %tmp398 = alloca %struct.__sigset_t, align 4
  %tmp400 = alloca %struct.__sigset_t, align 4
  %oset460 = alloca %struct.__sigset_t, align 4
  %tmp464 = alloca %struct.__sigset_t, align 4
  %tmp466 = alloca %struct.__sigset_t, align 4
  %tmfmt = alloca i8*, align 4
  %dd = alloca i8*, align 4
  %tmbuf = alloca i8*, align 4
  %depth = alloca i32, align 4
  %fsptr974 = alloca %struct.funcstack*, align 4
  %flineno = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %doprint, i32* %doprint.addr, align 4
  store i32 %endchar, i32* %endchar.addr, align 4
  store i32* %txtchangep, i32** %txtchangep.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc1103, %entry
  %0 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %0, i32 0, i32 6
  %1 = load i8*, i8** %fm, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %3, i32 0, i32 6
  %4 = load i8*, i8** %fm1, align 4
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %6 = load i32, i32* %endchar.addr, align 4
  %cmp = icmp ne i32 %conv2, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %for.body, label %for.end1106

for.body:                                         ; preds = %land.end
  store i32 0, i32* %arg, align 4
  %8 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm4 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %8, i32 0, i32 6
  %9 = load i8*, i8** %fm4, align 4
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 37
  br i1 %cmp6, label %land.lhs.true, label %if.else1055

land.lhs.true:                                    ; preds = %for.body
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 143), align 1
  %conv8 = sext i8 %11 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then, label %if.else1055

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %minus, align 4
  %12 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm10 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %12, i32 0, i32 6
  %13 = load i8*, i8** %fm10, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %fm10, align 4
  %14 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm11 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %14, i32 0, i32 6
  %15 = load i8*, i8** %fm11, align 4
  %16 = load i8, i8* %15, align 1
  %conv12 = sext i8 %16 to i32
  %cmp13 = icmp eq i32 %conv12, 45
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  store i32 1, i32* %minus, align 4
  %17 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm16 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %17, i32 0, i32 6
  %18 = load i8*, i8** %fm16, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr17, i8** %fm16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %19 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm18 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %19, i32 0, i32 6
  %20 = load i8*, i8** %fm18, align 4
  %21 = load i8, i8* %20, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv19 = sext i16 %22 to i32
  %and = and i32 %conv19, 1
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  %23 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm22 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %23, i32 0, i32 6
  %24 = load i8*, i8** %fm22, align 4
  %25 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm23 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %25, i32 0, i32 6
  %call = call i32 @zstrtol(i8* %24, i8** %fm23, i32 10)
  store i32 %call, i32* %arg, align 4
  %26 = load i32, i32* %minus, align 4
  %tobool24 = icmp ne i32 %26, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  %27 = load i32, i32* %arg, align 4
  %mul = mul nsw i32 %27, -1
  store i32 %mul, i32* %arg, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then21
  br label %if.end30

if.else:                                          ; preds = %if.end
  %28 = load i32, i32* %minus, align 4
  %tobool27 = icmp ne i32 %28, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else
  store i32 -1, i32* %arg, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end26
  %29 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm31 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %29, i32 0, i32 6
  %30 = load i8*, i8** %fm31, align 4
  %31 = load i8, i8* %30, align 1
  %conv32 = sext i8 %31 to i32
  %cmp33 = icmp eq i32 %conv32, 40
  br i1 %cmp33, label %if.then35, label %if.end238

if.then35:                                        ; preds = %if.end30
  %32 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm36 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %32, i32 0, i32 6
  %33 = load i8*, i8** %fm36, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr37, i8** %fm36, align 4
  %34 = load i8, i8* %incdec.ptr37, align 1
  %idxprom38 = zext i8 %34 to i32
  %arrayidx39 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom38
  %35 = load i16, i16* %arrayidx39, align 2
  %conv40 = sext i16 %35 to i32
  %and41 = and i32 %conv40, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.then35
  %36 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm44 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %36, i32 0, i32 6
  %37 = load i8*, i8** %fm44, align 4
  %38 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm45 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %38, i32 0, i32 6
  %call46 = call i32 @zstrtol(i8* %37, i8** %fm45, i32 10)
  store i32 %call46, i32* %arg, align 4
  br label %if.end53

if.else47:                                        ; preds = %if.then35
  %39 = load i32, i32* %arg, align 4
  %cmp48 = icmp slt i32 %39, 0
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else47
  %40 = load i32, i32* %arg, align 4
  %mul51 = mul nsw i32 %40, -1
  store i32 %mul51, i32* %arg, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.else47
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then43
  store i32 0, i32* %test, align 4
  %41 = load i8*, i8** @pwd, align 4
  store i8* %41, i8** %ss, align 4
  %42 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm54 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %42, i32 0, i32 6
  %43 = load i8*, i8** %fm54, align 4
  %44 = load i8, i8* %43, align 1
  %conv55 = sext i8 %44 to i32
  store i32 %conv55, i32* %tc, align 4
  switch i32 %conv55, label %sw.default [
    i32 99, label %sw.bb
    i32 46, label %sw.bb
    i32 126, label %sw.bb
    i32 47, label %sw.bb61
    i32 67, label %sw.bb61
    i32 116, label %sw.bb89
    i32 84, label %sw.bb89
    i32 100, label %sw.bb89
    i32 68, label %sw.bb89
    i32 119, label %sw.bb89
    i32 63, label %sw.bb107
    i32 35, label %sw.bb112
    i32 103, label %sw.bb118
    i32 106, label %sw.bb124
    i32 108, label %sw.bb148
    i32 101, label %sw.bb156
    i32 76, label %sw.bb164
    i32 83, label %sw.bb169
    i32 118, label %sw.bb176
    i32 86, label %sw.bb181
    i32 95, label %sw.bb197
    i32 33, label %sw.bb200
  ]

sw.bb:                                            ; preds = %if.end53, %if.end53, %if.end53
  %45 = load i8*, i8** %ss, align 4
  %call56 = call %struct.nameddir* @finddir(i8* %45)
  store %struct.nameddir* %call56, %struct.nameddir** %nd, align 4
  %tobool57 = icmp ne %struct.nameddir* %call56, null
  br i1 %tobool57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %sw.bb
  %46 = load i32, i32* %arg, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %arg, align 4
  %47 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %47, i32 0, i32 1
  %48 = load i8*, i8** %dir, align 4
  %call59 = call i32 @strlen(i8* %48)
  %49 = load i8*, i8** %ss, align 4
  %add.ptr = getelementptr inbounds i8, i8* %49, i32 %call59
  store i8* %add.ptr, i8** %ss, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %sw.bb
  br label %sw.bb61

sw.bb61:                                          ; preds = %if.end53, %if.end53, %if.end60
  %50 = load i8*, i8** %ss, align 4
  %51 = load i8, i8* %50, align 1
  %conv62 = sext i8 %51 to i32
  %tobool63 = icmp ne i32 %conv62, 0
  br i1 %tobool63, label %land.lhs.true64, label %if.end74

land.lhs.true64:                                  ; preds = %sw.bb61
  %52 = load i8*, i8** %ss, align 4
  %incdec.ptr65 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr65, i8** %ss, align 4
  %53 = load i8, i8* %52, align 1
  %conv66 = sext i8 %53 to i32
  %cmp67 = icmp eq i32 %conv66, 47
  br i1 %cmp67, label %land.lhs.true69, label %if.end74

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %54 = load i8*, i8** %ss, align 4
  %55 = load i8, i8* %54, align 1
  %conv70 = sext i8 %55 to i32
  %tobool71 = icmp ne i32 %conv70, 0
  br i1 %tobool71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %land.lhs.true69
  %56 = load i32, i32* %arg, align 4
  %dec73 = add nsw i32 %56, -1
  store i32 %dec73, i32* %arg, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %land.lhs.true69, %land.lhs.true64, %sw.bb61
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc, %if.end74
  %57 = load i8*, i8** %ss, align 4
  %58 = load i8, i8* %57, align 1
  %tobool76 = icmp ne i8 %58, 0
  br i1 %tobool76, label %for.body77, label %for.end

for.body77:                                       ; preds = %for.cond75
  %59 = load i8*, i8** %ss, align 4
  %60 = load i8, i8* %59, align 1
  %conv78 = sext i8 %60 to i32
  %cmp79 = icmp eq i32 %conv78, 47
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %for.body77
  %61 = load i32, i32* %arg, align 4
  %dec82 = add nsw i32 %61, -1
  store i32 %dec82, i32* %arg, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %for.body77
  br label %for.inc

for.inc:                                          ; preds = %if.end83
  %62 = load i8*, i8** %ss, align 4
  %incdec.ptr84 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr84, i8** %ss, align 4
  br label %for.cond75

for.end:                                          ; preds = %for.cond75
  %63 = load i32, i32* %arg, align 4
  %cmp85 = icmp sle i32 %63, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %for.end
  store i32 1, i32* %test, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %for.end
  br label %sw.epilog202

sw.bb89:                                          ; preds = %if.end53, %if.end53, %if.end53, %if.end53, %if.end53
  %call90 = call i32 @time(i32* null)
  store i32 %call90, i32* %timet, align 4
  %call91 = call %struct.tm* @localtime(i32* %timet)
  store %struct.tm* %call91, %struct.tm** %tm, align 4
  %64 = load i32, i32* %tc, align 4
  switch i32 %64, label %sw.epilog [
    i32 116, label %sw.bb92
    i32 84, label %sw.bb95
    i32 100, label %sw.bb98
    i32 68, label %sw.bb101
    i32 119, label %sw.bb104
  ]

sw.bb92:                                          ; preds = %sw.bb89
  %65 = load i32, i32* %arg, align 4
  %66 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 1
  %67 = load i32, i32* %tm_min, align 4
  %cmp93 = icmp eq i32 %65, %67
  %conv94 = zext i1 %cmp93 to i32
  store i32 %conv94, i32* %test, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %sw.bb89
  %68 = load i32, i32* %arg, align 4
  %69 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 2
  %70 = load i32, i32* %tm_hour, align 4
  %cmp96 = icmp eq i32 %68, %70
  %conv97 = zext i1 %cmp96 to i32
  store i32 %conv97, i32* %test, align 4
  br label %sw.epilog

sw.bb98:                                          ; preds = %sw.bb89
  %71 = load i32, i32* %arg, align 4
  %72 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 3
  %73 = load i32, i32* %tm_mday, align 4
  %cmp99 = icmp eq i32 %71, %73
  %conv100 = zext i1 %cmp99 to i32
  store i32 %conv100, i32* %test, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %sw.bb89
  %74 = load i32, i32* %arg, align 4
  %75 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 4
  %76 = load i32, i32* %tm_mon, align 4
  %cmp102 = icmp eq i32 %74, %76
  %conv103 = zext i1 %cmp102 to i32
  store i32 %conv103, i32* %test, align 4
  br label %sw.epilog

sw.bb104:                                         ; preds = %sw.bb89
  %77 = load i32, i32* %arg, align 4
  %78 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 6
  %79 = load i32, i32* %tm_wday, align 4
  %cmp105 = icmp eq i32 %77, %79
  %conv106 = zext i1 %cmp105 to i32
  store i32 %conv106, i32* %test, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb89, %sw.bb104, %sw.bb101, %sw.bb98, %sw.bb95, %sw.bb92
  br label %sw.epilog202

sw.bb107:                                         ; preds = %if.end53
  %80 = load i32, i32* @lastval, align 4
  %81 = load i32, i32* %arg, align 4
  %cmp108 = icmp eq i32 %80, %81
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %sw.bb107
  store i32 1, i32* %test, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %sw.bb107
  br label %sw.epilog202

sw.bb112:                                         ; preds = %if.end53
  %call113 = call i32 @geteuid()
  %82 = load i32, i32* %arg, align 4
  %cmp114 = icmp eq i32 %call113, %82
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %sw.bb112
  store i32 1, i32* %test, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %sw.bb112
  br label %sw.epilog202

sw.bb118:                                         ; preds = %if.end53
  %call119 = call i32 @getegid()
  %83 = load i32, i32* %arg, align 4
  %cmp120 = icmp eq i32 %call119, %83
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %sw.bb118
  store i32 1, i32* %test, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %sw.bb118
  br label %sw.epilog202

sw.bb124:                                         ; preds = %if.end53
  store i32 0, i32* %numjobs, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc141, %sw.bb124
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* @maxjob, align 4
  %cmp126 = icmp sle i32 %84, %85
  br i1 %cmp126, label %for.body128, label %for.end143

for.body128:                                      ; preds = %for.cond125
  %86 = load %struct.job*, %struct.job** @jobtab, align 4
  %87 = load i32, i32* %j, align 4
  %arrayidx129 = getelementptr inbounds %struct.job, %struct.job* %86, i32 %87
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx129, i32 0, i32 2
  %88 = load i32, i32* %stat, align 4
  %tobool130 = icmp ne i32 %88, 0
  br i1 %tobool130, label %land.lhs.true131, label %if.end140

land.lhs.true131:                                 ; preds = %for.body128
  %89 = load %struct.job*, %struct.job** @jobtab, align 4
  %90 = load i32, i32* %j, align 4
  %arrayidx132 = getelementptr inbounds %struct.job, %struct.job* %89, i32 %90
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx132, i32 0, i32 4
  %91 = load %struct.process*, %struct.process** %procs, align 4
  %tobool133 = icmp ne %struct.process* %91, null
  br i1 %tobool133, label %land.lhs.true134, label %if.end140

land.lhs.true134:                                 ; preds = %land.lhs.true131
  %92 = load %struct.job*, %struct.job** @jobtab, align 4
  %93 = load i32, i32* %j, align 4
  %arrayidx135 = getelementptr inbounds %struct.job, %struct.job* %92, i32 %93
  %stat136 = getelementptr inbounds %struct.job, %struct.job* %arrayidx135, i32 0, i32 2
  %94 = load i32, i32* %stat136, align 4
  %and137 = and i32 %94, 32
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %land.lhs.true134
  %95 = load i32, i32* %numjobs, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %numjobs, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %land.lhs.true134, %land.lhs.true131, %for.body128
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %96 = load i32, i32* %j, align 4
  %inc142 = add nsw i32 %96, 1
  store i32 %inc142, i32* %j, align 4
  br label %for.cond125

for.end143:                                       ; preds = %for.cond125
  %97 = load i32, i32* %numjobs, align 4
  %98 = load i32, i32* %arg, align 4
  %cmp144 = icmp sge i32 %97, %98
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %for.end143
  store i32 1, i32* %test, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %for.end143
  br label %sw.epilog202

sw.bb148:                                         ; preds = %if.end53
  %99 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %99, i32 0, i32 3
  %100 = load i8*, i8** %bp, align 4
  store i8 0, i8* %100, align 1
  %101 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufline = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %101, i32 0, i32 4
  %102 = load i8*, i8** %bufline, align 4
  call void @countprompt(i8* %102, i32* %t0, i32* null, i32 0)
  %103 = load i32, i32* %minus, align 4
  %tobool149 = icmp ne i32 %103, 0
  br i1 %tobool149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %sw.bb148
  %104 = load i32, i32* @zterm_columns, align 4
  %105 = load i32, i32* %t0, align 4
  %sub = sub nsw i32 %104, %105
  store i32 %sub, i32* %t0, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %sw.bb148
  %106 = load i32, i32* %t0, align 4
  %107 = load i32, i32* %arg, align 4
  %cmp152 = icmp sge i32 %106, %107
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end151
  store i32 1, i32* %test, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end151
  br label %sw.epilog202

sw.bb156:                                         ; preds = %if.end53
  %108 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %108, %struct.funcstack** %fsptr, align 4
  %109 = load i32, i32* %arg, align 4
  store i32 %109, i32* %test, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb156
  %110 = load %struct.funcstack*, %struct.funcstack** %fsptr, align 4
  %tobool157 = icmp ne %struct.funcstack* %110, null
  br i1 %tobool157, label %land.rhs158, label %land.end161

land.rhs158:                                      ; preds = %while.cond
  %111 = load i32, i32* %test, align 4
  %cmp159 = icmp sgt i32 %111, 0
  br label %land.end161

land.end161:                                      ; preds = %land.rhs158, %while.cond
  %112 = phi i1 [ false, %while.cond ], [ %cmp159, %land.rhs158 ]
  br i1 %112, label %while.body, label %while.end

while.body:                                       ; preds = %land.end161
  %113 = load i32, i32* %test, align 4
  %dec162 = add nsw i32 %113, -1
  store i32 %dec162, i32* %test, align 4
  %114 = load %struct.funcstack*, %struct.funcstack** %fsptr, align 4
  %prev = getelementptr inbounds %struct.funcstack, %struct.funcstack* %114, i32 0, i32 0
  %115 = load %struct.funcstack*, %struct.funcstack** %prev, align 4
  store %struct.funcstack* %115, %struct.funcstack** %fsptr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end161
  %116 = load i32, i32* %test, align 4
  %tobool163 = icmp ne i32 %116, 0
  %lnot = xor i1 %tobool163, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %test, align 4
  br label %sw.epilog202

sw.bb164:                                         ; preds = %if.end53
  %117 = load i32, i32* @shlvl, align 4
  %118 = load i32, i32* %arg, align 4
  %cmp165 = icmp sge i32 %117, %118
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %sw.bb164
  store i32 1, i32* %test, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %sw.bb164
  br label %sw.epilog202

sw.bb169:                                         ; preds = %if.end53
  %call170 = call i32 @time(i32* null)
  %119 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %sub171 = sub nsw i32 %call170, %119
  %120 = load i32, i32* %arg, align 4
  %cmp172 = icmp sge i32 %sub171, %120
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %sw.bb169
  store i32 1, i32* %test, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %sw.bb169
  br label %sw.epilog202

sw.bb176:                                         ; preds = %if.end53
  %121 = load i8**, i8*** @psvar, align 4
  %122 = load i32, i32* %arg, align 4
  %call177 = call signext i8 @arrlen_ge(i8** %121, i32 %122)
  %tobool178 = icmp ne i8 %call177, 0
  br i1 %tobool178, label %if.then179, label %if.end180

if.then179:                                       ; preds = %sw.bb176
  store i32 1, i32* %test, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %sw.bb176
  br label %sw.epilog202

sw.bb181:                                         ; preds = %if.end53
  %123 = load i8**, i8*** @psvar, align 4
  %tobool182 = icmp ne i8** %123, null
  br i1 %tobool182, label %land.lhs.true183, label %if.end196

land.lhs.true183:                                 ; preds = %sw.bb181
  %124 = load i8**, i8*** @psvar, align 4
  %125 = load i8*, i8** %124, align 4
  %tobool184 = icmp ne i8* %125, null
  br i1 %tobool184, label %land.lhs.true185, label %if.end196

land.lhs.true185:                                 ; preds = %land.lhs.true183
  %126 = load i8**, i8*** @psvar, align 4
  %127 = load i32, i32* %arg, align 4
  %call186 = call signext i8 @arrlen_ge(i8** %126, i32 %127)
  %conv187 = sext i8 %call186 to i32
  %tobool188 = icmp ne i32 %conv187, 0
  br i1 %tobool188, label %if.then189, label %if.end196

if.then189:                                       ; preds = %land.lhs.true185
  %128 = load i8**, i8*** @psvar, align 4
  %129 = load i32, i32* %arg, align 4
  %tobool190 = icmp ne i32 %129, 0
  br i1 %tobool190, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then189
  %130 = load i32, i32* %arg, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then189
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %130, %cond.true ], [ 1, %cond.false ]
  %sub191 = sub nsw i32 %cond, 1
  %arrayidx192 = getelementptr inbounds i8*, i8** %128, i32 %sub191
  %131 = load i8*, i8** %arrayidx192, align 4
  %132 = load i8, i8* %131, align 1
  %tobool193 = icmp ne i8 %132, 0
  br i1 %tobool193, label %if.then194, label %if.end195

if.then194:                                       ; preds = %cond.end
  store i32 1, i32* %test, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %cond.end
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %land.lhs.true185, %land.lhs.true183, %sw.bb181
  br label %sw.epilog202

sw.bb197:                                         ; preds = %if.end53
  %133 = load i32, i32* @cmdsp, align 4
  %134 = load i32, i32* %arg, align 4
  %cmp198 = icmp sge i32 %133, %134
  %conv199 = zext i1 %cmp198 to i32
  store i32 %conv199, i32* %test, align 4
  br label %sw.epilog202

sw.bb200:                                         ; preds = %if.end53
  %call201 = call i32 @privasserted()
  store i32 %call201, i32* %test, align 4
  br label %sw.epilog202

sw.default:                                       ; preds = %if.end53
  store i32 -1, i32* %test, align 4
  br label %sw.epilog202

sw.epilog202:                                     ; preds = %sw.default, %sw.bb200, %sw.bb197, %if.end196, %if.end180, %if.end175, %if.end168, %while.end, %if.end155, %if.end147, %if.end123, %if.end117, %if.end111, %sw.epilog, %if.end88
  %135 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm203 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %135, i32 0, i32 6
  %136 = load i8*, i8** %fm203, align 4
  %137 = load i8, i8* %136, align 1
  %tobool204 = icmp ne i8 %137, 0
  br i1 %tobool204, label %lor.lhs.false, label %if.then209

lor.lhs.false:                                    ; preds = %sw.epilog202
  %138 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm205 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %138, i32 0, i32 6
  %139 = load i8*, i8** %fm205, align 4
  %incdec.ptr206 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr206, i8** %fm205, align 4
  %140 = load i8, i8* %incdec.ptr206, align 1
  %conv207 = sext i8 %140 to i32
  store i32 %conv207, i32* %sep, align 4
  %tobool208 = icmp ne i32 %conv207, 0
  br i1 %tobool208, label %if.end210, label %if.then209

if.then209:                                       ; preds = %lor.lhs.false, %sw.epilog202
  store i32 0, i32* %retval, align 4
  br label %return

if.end210:                                        ; preds = %lor.lhs.false
  %141 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm211 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %141, i32 0, i32 6
  %142 = load i8*, i8** %fm211, align 4
  %incdec.ptr212 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr212, i8** %fm211, align 4
  %143 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %143, i32 0, i32 7
  %144 = load i32, i32* %truncwidth, align 4
  store i32 %144, i32* %otruncwidth, align 4
  %145 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth213 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %145, i32 0, i32 7
  store i32 0, i32* %truncwidth213, align 4
  %146 = load i32, i32* %test, align 4
  %cmp214 = icmp eq i32 %146, 1
  br i1 %cmp214, label %land.rhs216, label %land.end218

land.rhs216:                                      ; preds = %if.end210
  %147 = load i32, i32* %doprint.addr, align 4
  %tobool217 = icmp ne i32 %147, 0
  br label %land.end218

land.end218:                                      ; preds = %land.rhs216, %if.end210
  %148 = phi i1 [ false, %if.end210 ], [ %tobool217, %land.rhs216 ]
  %land.ext = zext i1 %148 to i32
  %149 = load i32, i32* %sep, align 4
  %150 = load i32*, i32** %txtchangep.addr, align 4
  %call219 = call i32 @putpromptchar(i32 %land.ext, i32 %149, i32* %150)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %lor.lhs.false221, label %if.then234

lor.lhs.false221:                                 ; preds = %land.end218
  %151 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm222 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %151, i32 0, i32 6
  %152 = load i8*, i8** %fm222, align 4
  %incdec.ptr223 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr223, i8** %fm222, align 4
  %153 = load i8, i8* %incdec.ptr223, align 1
  %tobool224 = icmp ne i8 %153, 0
  br i1 %tobool224, label %lor.lhs.false225, label %if.then234

lor.lhs.false225:                                 ; preds = %lor.lhs.false221
  %154 = load i32, i32* %test, align 4
  %cmp226 = icmp eq i32 %154, 0
  br i1 %cmp226, label %land.rhs228, label %land.end230

land.rhs228:                                      ; preds = %lor.lhs.false225
  %155 = load i32, i32* %doprint.addr, align 4
  %tobool229 = icmp ne i32 %155, 0
  br label %land.end230

land.end230:                                      ; preds = %land.rhs228, %lor.lhs.false225
  %156 = phi i1 [ false, %lor.lhs.false225 ], [ %tobool229, %land.rhs228 ]
  %land.ext231 = zext i1 %156 to i32
  %157 = load i32*, i32** %txtchangep.addr, align 4
  %call232 = call i32 @putpromptchar(i32 %land.ext231, i32 41, i32* %157)
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.end236, label %if.then234

if.then234:                                       ; preds = %land.end230, %lor.lhs.false221, %land.end218
  %158 = load i32, i32* %otruncwidth, align 4
  %159 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth235 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %159, i32 0, i32 7
  store i32 %158, i32* %truncwidth235, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end236:                                        ; preds = %land.end230
  %160 = load i32, i32* %otruncwidth, align 4
  %161 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth237 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %161, i32 0, i32 7
  store i32 %160, i32* %truncwidth237, align 4
  br label %for.inc1103

if.end238:                                        ; preds = %if.end30
  %162 = load i32, i32* %doprint.addr, align 4
  %tobool239 = icmp ne i32 %162, 0
  br i1 %tobool239, label %if.end297, label %if.then240

if.then240:                                       ; preds = %if.end238
  %163 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm241 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %163, i32 0, i32 6
  %164 = load i8*, i8** %fm241, align 4
  %165 = load i8, i8* %164, align 1
  %conv242 = sext i8 %165 to i32
  switch i32 %conv242, label %sw.default296 [
    i32 91, label %sw.bb243
    i32 60, label %sw.bb262
    i32 62, label %sw.bb271
    i32 68, label %sw.bb280
  ]

sw.bb243:                                         ; preds = %if.then240
  br label %while.cond244

while.cond244:                                    ; preds = %while.body252, %sw.bb243
  %166 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm245 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %166, i32 0, i32 6
  %167 = load i8*, i8** %fm245, align 4
  %incdec.ptr246 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr246, i8** %fm245, align 4
  %168 = load i8, i8* %incdec.ptr246, align 1
  %idxprom247 = zext i8 %168 to i32
  %arrayidx248 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom247
  %169 = load i16, i16* %arrayidx248, align 2
  %conv249 = sext i16 %169 to i32
  %and250 = and i32 %conv249, 1
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %while.body252, label %while.end253

while.body252:                                    ; preds = %while.cond244
  br label %while.cond244

while.end253:                                     ; preds = %while.cond244
  br label %while.cond254

while.cond254:                                    ; preds = %while.body260, %while.end253
  %170 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm255 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %170, i32 0, i32 6
  %171 = load i8*, i8** %fm255, align 4
  %incdec.ptr256 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %incdec.ptr256, i8** %fm255, align 4
  %172 = load i8, i8* %incdec.ptr256, align 1
  %conv257 = sext i8 %172 to i32
  %cmp258 = icmp ne i32 %conv257, 93
  br i1 %cmp258, label %while.body260, label %while.end261

while.body260:                                    ; preds = %while.cond254
  br label %while.cond254

while.end261:                                     ; preds = %while.cond254
  br label %for.inc1103

sw.bb262:                                         ; preds = %if.then240
  br label %while.cond263

while.cond263:                                    ; preds = %while.body269, %sw.bb262
  %173 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm264 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %173, i32 0, i32 6
  %174 = load i8*, i8** %fm264, align 4
  %incdec.ptr265 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr265, i8** %fm264, align 4
  %175 = load i8, i8* %incdec.ptr265, align 1
  %conv266 = sext i8 %175 to i32
  %cmp267 = icmp ne i32 %conv266, 60
  br i1 %cmp267, label %while.body269, label %while.end270

while.body269:                                    ; preds = %while.cond263
  br label %while.cond263

while.end270:                                     ; preds = %while.cond263
  br label %for.inc1103

sw.bb271:                                         ; preds = %if.then240
  br label %while.cond272

while.cond272:                                    ; preds = %while.body278, %sw.bb271
  %176 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm273 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %176, i32 0, i32 6
  %177 = load i8*, i8** %fm273, align 4
  %incdec.ptr274 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr274, i8** %fm273, align 4
  %178 = load i8, i8* %incdec.ptr274, align 1
  %conv275 = sext i8 %178 to i32
  %cmp276 = icmp ne i32 %conv275, 62
  br i1 %cmp276, label %while.body278, label %while.end279

while.body278:                                    ; preds = %while.cond272
  br label %while.cond272

while.end279:                                     ; preds = %while.cond272
  br label %for.inc1103

sw.bb280:                                         ; preds = %if.then240
  %179 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm281 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %179, i32 0, i32 6
  %180 = load i8*, i8** %fm281, align 4
  %arrayidx282 = getelementptr inbounds i8, i8* %180, i32 1
  %181 = load i8, i8* %arrayidx282, align 1
  %conv283 = sext i8 %181 to i32
  %cmp284 = icmp eq i32 %conv283, 123
  br i1 %cmp284, label %if.then286, label %if.end295

if.then286:                                       ; preds = %sw.bb280
  br label %while.cond287

while.cond287:                                    ; preds = %while.body293, %if.then286
  %182 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm288 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %182, i32 0, i32 6
  %183 = load i8*, i8** %fm288, align 4
  %incdec.ptr289 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr289, i8** %fm288, align 4
  %184 = load i8, i8* %incdec.ptr289, align 1
  %conv290 = sext i8 %184 to i32
  %cmp291 = icmp ne i32 %conv290, 125
  br i1 %cmp291, label %while.body293, label %while.end294

while.body293:                                    ; preds = %while.cond287
  br label %while.cond287

while.end294:                                     ; preds = %while.cond287
  br label %if.end295

if.end295:                                        ; preds = %while.end294, %sw.bb280
  br label %for.inc1103

sw.default296:                                    ; preds = %if.then240
  br label %for.inc1103

if.end297:                                        ; preds = %if.end238
  %185 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm298 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %185, i32 0, i32 6
  %186 = load i8*, i8** %fm298, align 4
  %187 = load i8, i8* %186, align 1
  %conv299 = sext i8 %187 to i32
  switch i32 %conv299, label %sw.epilog1054 [
    i32 126, label %sw.bb300
    i32 100, label %sw.bb301
    i32 47, label %sw.bb301
    i32 99, label %sw.bb302
    i32 46, label %sw.bb302
    i32 67, label %sw.bb308
    i32 78, label %sw.bb314
    i32 104, label %sw.bb320
    i32 33, label %sw.bb320
    i32 106, label %sw.bb326
    i32 77, label %sw.bb355
    i32 109, label %sw.bb375
    i32 83, label %sw.bb471
    i32 115, label %sw.bb479
    i32 66, label %sw.bb488
    i32 98, label %sw.bb497
    i32 85, label %sw.bb506
    i32 117, label %sw.bb515
    i32 70, label %sw.bb524
    i32 102, label %sw.bb544
    i32 75, label %sw.bb553
    i32 107, label %sw.bb573
    i32 91, label %sw.bb582
    i32 60, label %sw.bb601
    i32 62, label %sw.bb601
    i32 123, label %sw.bb621
    i32 71, label %sw.bb632
    i32 125, label %sw.bb647
    i32 116, label %sw.bb668
    i32 64, label %sw.bb668
    i32 84, label %sw.bb668
    i32 42, label %sw.bb668
    i32 119, label %sw.bb668
    i32 87, label %sw.bb668
    i32 68, label %sw.bb668
    i32 110, label %sw.bb781
    i32 108, label %sw.bb783
    i32 121, label %sw.bb796
    i32 76, label %sw.bb808
    i32 63, label %sw.bb815
    i32 37, label %sw.bb822
    i32 41, label %sw.bb822
    i32 35, label %sw.bb826
    i32 118, label %sw.bb833
    i32 69, label %sw.bb855
    i32 94, label %sw.bb856
    i32 95, label %sw.bb909
    i32 114, label %sw.bb961
    i32 82, label %sw.bb966
    i32 101, label %sw.bb971
    i32 73, label %sw.bb987
    i32 105, label %sw.bb1016
    i32 120, label %sw.bb1023
    i32 0, label %sw.bb1050
    i32 -125, label %sw.bb1051
  ]

sw.bb300:                                         ; preds = %if.end297
  %188 = load i8*, i8** @pwd, align 4
  %189 = load i32, i32* %arg, align 4
  call void @promptpath(i8* %188, i32 %189, i32 1)
  br label %sw.epilog1054

sw.bb301:                                         ; preds = %if.end297, %if.end297
  %190 = load i8*, i8** @pwd, align 4
  %191 = load i32, i32* %arg, align 4
  call void @promptpath(i8* %190, i32 %191, i32 0)
  br label %sw.epilog1054

sw.bb302:                                         ; preds = %if.end297, %if.end297
  %192 = load i8*, i8** @pwd, align 4
  %193 = load i32, i32* %arg, align 4
  %tobool303 = icmp ne i32 %193, 0
  br i1 %tobool303, label %cond.true304, label %cond.false305

cond.true304:                                     ; preds = %sw.bb302
  %194 = load i32, i32* %arg, align 4
  br label %cond.end306

cond.false305:                                    ; preds = %sw.bb302
  br label %cond.end306

cond.end306:                                      ; preds = %cond.false305, %cond.true304
  %cond307 = phi i32 [ %194, %cond.true304 ], [ 1, %cond.false305 ]
  call void @promptpath(i8* %192, i32 %cond307, i32 1)
  br label %sw.epilog1054

sw.bb308:                                         ; preds = %if.end297
  %195 = load i8*, i8** @pwd, align 4
  %196 = load i32, i32* %arg, align 4
  %tobool309 = icmp ne i32 %196, 0
  br i1 %tobool309, label %cond.true310, label %cond.false311

cond.true310:                                     ; preds = %sw.bb308
  %197 = load i32, i32* %arg, align 4
  br label %cond.end312

cond.false311:                                    ; preds = %sw.bb308
  br label %cond.end312

cond.end312:                                      ; preds = %cond.false311, %cond.true310
  %cond313 = phi i32 [ %197, %cond.true310 ], [ 1, %cond.false311 ]
  call void @promptpath(i8* %195, i32 %cond313, i32 0)
  br label %sw.epilog1054

sw.bb314:                                         ; preds = %if.end297
  %198 = load i8*, i8** @scriptname, align 4
  %tobool315 = icmp ne i8* %198, null
  br i1 %tobool315, label %cond.true316, label %cond.false317

cond.true316:                                     ; preds = %sw.bb314
  %199 = load i8*, i8** @scriptname, align 4
  br label %cond.end318

cond.false317:                                    ; preds = %sw.bb314
  %200 = load i8*, i8** @argzero, align 4
  br label %cond.end318

cond.end318:                                      ; preds = %cond.false317, %cond.true316
  %cond319 = phi i8* [ %199, %cond.true316 ], [ %200, %cond.false317 ]
  %201 = load i32, i32* %arg, align 4
  call void @promptpath(i8* %cond319, i32 %201, i32 0)
  br label %sw.epilog1054

sw.bb320:                                         ; preds = %if.end297, %if.end297
  call void @addbufspc(i32 12)
  %202 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp321 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %202, i32 0, i32 3
  %203 = load i8*, i8** %bp321, align 4
  %204 = load i32, i32* @curhist, align 4
  call void @convbase(i8* %203, i32 %204, i32 10)
  %205 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp322 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %205, i32 0, i32 3
  %206 = load i8*, i8** %bp322, align 4
  %call323 = call i32 @strlen(i8* %206)
  %207 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp324 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %207, i32 0, i32 3
  %208 = load i8*, i8** %bp324, align 4
  %add.ptr325 = getelementptr inbounds i8, i8* %208, i32 %call323
  store i8* %add.ptr325, i8** %bp324, align 4
  br label %sw.epilog1054

sw.bb326:                                         ; preds = %if.end297
  store i32 0, i32* %numjobs, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond327

for.cond327:                                      ; preds = %for.inc346, %sw.bb326
  %209 = load i32, i32* %j, align 4
  %210 = load i32, i32* @maxjob, align 4
  %cmp328 = icmp sle i32 %209, %210
  br i1 %cmp328, label %for.body330, label %for.end348

for.body330:                                      ; preds = %for.cond327
  %211 = load %struct.job*, %struct.job** @jobtab, align 4
  %212 = load i32, i32* %j, align 4
  %arrayidx331 = getelementptr inbounds %struct.job, %struct.job* %211, i32 %212
  %stat332 = getelementptr inbounds %struct.job, %struct.job* %arrayidx331, i32 0, i32 2
  %213 = load i32, i32* %stat332, align 4
  %tobool333 = icmp ne i32 %213, 0
  br i1 %tobool333, label %land.lhs.true334, label %if.end345

land.lhs.true334:                                 ; preds = %for.body330
  %214 = load %struct.job*, %struct.job** @jobtab, align 4
  %215 = load i32, i32* %j, align 4
  %arrayidx335 = getelementptr inbounds %struct.job, %struct.job* %214, i32 %215
  %procs336 = getelementptr inbounds %struct.job, %struct.job* %arrayidx335, i32 0, i32 4
  %216 = load %struct.process*, %struct.process** %procs336, align 4
  %tobool337 = icmp ne %struct.process* %216, null
  br i1 %tobool337, label %land.lhs.true338, label %if.end345

land.lhs.true338:                                 ; preds = %land.lhs.true334
  %217 = load %struct.job*, %struct.job** @jobtab, align 4
  %218 = load i32, i32* %j, align 4
  %arrayidx339 = getelementptr inbounds %struct.job, %struct.job* %217, i32 %218
  %stat340 = getelementptr inbounds %struct.job, %struct.job* %arrayidx339, i32 0, i32 2
  %219 = load i32, i32* %stat340, align 4
  %and341 = and i32 %219, 32
  %tobool342 = icmp ne i32 %and341, 0
  br i1 %tobool342, label %if.end345, label %if.then343

if.then343:                                       ; preds = %land.lhs.true338
  %220 = load i32, i32* %numjobs, align 4
  %inc344 = add nsw i32 %220, 1
  store i32 %inc344, i32* %numjobs, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.then343, %land.lhs.true338, %land.lhs.true334, %for.body330
  br label %for.inc346

for.inc346:                                       ; preds = %if.end345
  %221 = load i32, i32* %j, align 4
  %inc347 = add nsw i32 %221, 1
  store i32 %inc347, i32* %j, align 4
  br label %for.cond327

for.end348:                                       ; preds = %for.cond327
  call void @addbufspc(i32 12)
  %222 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp349 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %222, i32 0, i32 3
  %223 = load i8*, i8** %bp349, align 4
  %224 = load i32, i32* %numjobs, align 4
  %call350 = call i32 (i8*, i8*, ...) @sprintf(i8* %223, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %224)
  %225 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp351 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %225, i32 0, i32 3
  %226 = load i8*, i8** %bp351, align 4
  %call352 = call i32 @strlen(i8* %226)
  %227 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp353 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %227, i32 0, i32 3
  %228 = load i8*, i8** %bp353, align 4
  %add.ptr354 = getelementptr inbounds i8, i8* %228, i32 %call352
  store i8* %add.ptr354, i8** %bp353, align 4
  br label %sw.epilog1054

sw.bb355:                                         ; preds = %if.end297
  %229 = load i32, i32* @queueing_enabled, align 4
  %inc356 = add nsw i32 %229, 1
  store i32 %inc356, i32* @queueing_enabled, align 4
  %call357 = call i8* @getsparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call357, i8** %hostnam, align 4
  %tobool358 = icmp ne i8* %call357, null
  br i1 %tobool358, label %if.then359, label %if.end360

if.then359:                                       ; preds = %sw.bb355
  %230 = load i8*, i8** %hostnam, align 4
  call void @stradd(i8* %230)
  br label %if.end360

if.end360:                                        ; preds = %if.then359, %sw.bb355
  br label %do.body

do.body:                                          ; preds = %if.end360
  %231 = load i32, i32* @queueing_enabled, align 4
  %dec361 = add nsw i32 %231, -1
  store i32 %dec361, i32* @queueing_enabled, align 4
  %tobool362 = icmp ne i32 %dec361, 0
  br i1 %tobool362, label %if.end373, label %if.then363

if.then363:                                       ; preds = %do.body
  br label %do.body364

do.body364:                                       ; preds = %if.then363
  br label %while.cond365

while.cond365:                                    ; preds = %while.body368, %do.body364
  %232 = load i32, i32* @queue_front, align 4
  %233 = load i32, i32* @queue_rear, align 4
  %cmp366 = icmp ne i32 %232, %233
  br i1 %cmp366, label %while.body368, label %while.end372

while.body368:                                    ; preds = %while.cond365
  %234 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %234, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %235 = load i32, i32* @queue_front, align 4
  %arrayidx369 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %235
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx369)
  %236 = bitcast %struct.__sigset_t* %oset to i8*
  %237 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %236, i8* %237, i32 128, i32 4, i1 false)
  %238 = load i32, i32* @queue_front, align 4
  %arrayidx370 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %238
  %239 = load i32, i32* %arrayidx370, align 4
  call void @zhandler(i32 %239)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp371, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond365

while.end372:                                     ; preds = %while.cond365
  br label %do.end

do.end:                                           ; preds = %while.end372
  br label %if.end373

if.end373:                                        ; preds = %do.end, %do.body
  br label %do.end374

do.end374:                                        ; preds = %if.end373
  br label %sw.epilog1054

sw.bb375:                                         ; preds = %if.end297
  %240 = load i32, i32* %arg, align 4
  %tobool376 = icmp ne i32 %240, 0
  br i1 %tobool376, label %if.end379, label %if.then377

if.then377:                                       ; preds = %sw.bb375
  %241 = load i32, i32* %arg, align 4
  %inc378 = add nsw i32 %241, 1
  store i32 %inc378, i32* %arg, align 4
  br label %if.end379

if.end379:                                        ; preds = %if.then377, %sw.bb375
  %242 = load i32, i32* @queueing_enabled, align 4
  %inc380 = add nsw i32 %242, 1
  store i32 %inc380, i32* @queueing_enabled, align 4
  %call381 = call i8* @getsparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call381, i8** %hostnam, align 4
  %tobool382 = icmp ne i8* %call381, null
  br i1 %tobool382, label %if.end405, label %if.then383

if.then383:                                       ; preds = %if.end379
  br label %do.body384

do.body384:                                       ; preds = %if.then383
  %243 = load i32, i32* @queueing_enabled, align 4
  %dec385 = add nsw i32 %243, -1
  store i32 %dec385, i32* @queueing_enabled, align 4
  %tobool386 = icmp ne i32 %dec385, 0
  br i1 %tobool386, label %if.end403, label %if.then387

if.then387:                                       ; preds = %do.body384
  br label %do.body388

do.body388:                                       ; preds = %if.then387
  br label %while.cond389

while.cond389:                                    ; preds = %while.body392, %do.body388
  %244 = load i32, i32* @queue_front, align 4
  %245 = load i32, i32* @queue_rear, align 4
  %cmp390 = icmp ne i32 %244, %245
  br i1 %cmp390, label %while.body392, label %while.end401

while.body392:                                    ; preds = %while.cond389
  %246 = load i32, i32* @queue_front, align 4
  %add395 = add nsw i32 %246, 1
  %rem396 = srem i32 %add395, 128
  store i32 %rem396, i32* @queue_front, align 4
  %247 = load i32, i32* @queue_front, align 4
  %arrayidx397 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %247
  call void @signal_setmask(%struct.__sigset_t* sret %tmp398, %struct.__sigset_t* byval align 4 %arrayidx397)
  %248 = bitcast %struct.__sigset_t* %oset394 to i8*
  %249 = bitcast %struct.__sigset_t* %tmp398 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %248, i8* %249, i32 128, i32 4, i1 false)
  %250 = load i32, i32* @queue_front, align 4
  %arrayidx399 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %250
  %251 = load i32, i32* %arrayidx399, align 4
  call void @zhandler(i32 %251)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp400, %struct.__sigset_t* byval align 4 %oset394)
  br label %while.cond389

while.end401:                                     ; preds = %while.cond389
  br label %do.end402

do.end402:                                        ; preds = %while.end401
  br label %if.end403

if.end403:                                        ; preds = %do.end402, %do.body384
  br label %do.end404

do.end404:                                        ; preds = %if.end403
  br label %sw.epilog1054

if.end405:                                        ; preds = %if.end379
  %252 = load i32, i32* %arg, align 4
  %cmp406 = icmp slt i32 %252, 0
  br i1 %cmp406, label %if.then408, label %if.else427

if.then408:                                       ; preds = %if.end405
  %253 = load i8*, i8** %hostnam, align 4
  %254 = load i8*, i8** %hostnam, align 4
  %call409 = call i32 @strlen(i8* %254)
  %add.ptr410 = getelementptr inbounds i8, i8* %253, i32 %call409
  store i8* %add.ptr410, i8** %ss, align 4
  br label %for.cond411

for.cond411:                                      ; preds = %for.inc424, %if.then408
  %255 = load i8*, i8** %ss, align 4
  %256 = load i8*, i8** %hostnam, align 4
  %cmp412 = icmp ugt i8* %255, %256
  br i1 %cmp412, label %for.body414, label %for.end426

for.body414:                                      ; preds = %for.cond411
  %257 = load i8*, i8** %ss, align 4
  %arrayidx415 = getelementptr inbounds i8, i8* %257, i32 -1
  %258 = load i8, i8* %arrayidx415, align 1
  %conv416 = sext i8 %258 to i32
  %cmp417 = icmp eq i32 %conv416, 46
  br i1 %cmp417, label %land.lhs.true419, label %if.end423

land.lhs.true419:                                 ; preds = %for.body414
  %259 = load i32, i32* %arg, align 4
  %inc420 = add nsw i32 %259, 1
  store i32 %inc420, i32* %arg, align 4
  %tobool421 = icmp ne i32 %inc420, 0
  br i1 %tobool421, label %if.end423, label %if.then422

if.then422:                                       ; preds = %land.lhs.true419
  br label %for.end426

if.end423:                                        ; preds = %land.lhs.true419, %for.body414
  br label %for.inc424

for.inc424:                                       ; preds = %if.end423
  %260 = load i8*, i8** %ss, align 4
  %incdec.ptr425 = getelementptr inbounds i8, i8* %260, i32 -1
  store i8* %incdec.ptr425, i8** %ss, align 4
  br label %for.cond411

for.end426:                                       ; preds = %if.then422, %for.cond411
  %261 = load i8*, i8** %ss, align 4
  call void @stradd(i8* %261)
  br label %if.end449

if.else427:                                       ; preds = %if.end405
  %262 = load i8*, i8** %hostnam, align 4
  store i8* %262, i8** %ss, align 4
  br label %for.cond428

for.cond428:                                      ; preds = %for.inc439, %if.else427
  %263 = load i8*, i8** %ss, align 4
  %264 = load i8, i8* %263, align 1
  %tobool429 = icmp ne i8 %264, 0
  br i1 %tobool429, label %for.body430, label %for.end441

for.body430:                                      ; preds = %for.cond428
  %265 = load i8*, i8** %ss, align 4
  %266 = load i8, i8* %265, align 1
  %conv431 = sext i8 %266 to i32
  %cmp432 = icmp eq i32 %conv431, 46
  br i1 %cmp432, label %land.lhs.true434, label %if.end438

land.lhs.true434:                                 ; preds = %for.body430
  %267 = load i32, i32* %arg, align 4
  %dec435 = add nsw i32 %267, -1
  store i32 %dec435, i32* %arg, align 4
  %tobool436 = icmp ne i32 %dec435, 0
  br i1 %tobool436, label %if.end438, label %if.then437

if.then437:                                       ; preds = %land.lhs.true434
  br label %for.end441

if.end438:                                        ; preds = %land.lhs.true434, %for.body430
  br label %for.inc439

for.inc439:                                       ; preds = %if.end438
  %268 = load i8*, i8** %ss, align 4
  %incdec.ptr440 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %incdec.ptr440, i8** %ss, align 4
  br label %for.cond428

for.end441:                                       ; preds = %if.then437, %for.cond428
  %269 = load i8*, i8** %ss, align 4
  %270 = load i8, i8* %269, align 1
  %conv442 = sext i8 %270 to i32
  %tobool443 = icmp ne i32 %conv442, 0
  br i1 %tobool443, label %cond.true444, label %cond.false446

cond.true444:                                     ; preds = %for.end441
  %271 = load i8*, i8** %hostnam, align 4
  %272 = load i8*, i8** %ss, align 4
  %273 = load i8*, i8** %hostnam, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %272 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %273 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call445 = call i8* @dupstrpfx(i8* %271, i32 %sub.ptr.sub)
  br label %cond.end447

cond.false446:                                    ; preds = %for.end441
  %274 = load i8*, i8** %hostnam, align 4
  br label %cond.end447

cond.end447:                                      ; preds = %cond.false446, %cond.true444
  %cond448 = phi i8* [ %call445, %cond.true444 ], [ %274, %cond.false446 ]
  call void @stradd(i8* %cond448)
  br label %if.end449

if.end449:                                        ; preds = %cond.end447, %for.end426
  br label %do.body450

do.body450:                                       ; preds = %if.end449
  %275 = load i32, i32* @queueing_enabled, align 4
  %dec451 = add nsw i32 %275, -1
  store i32 %dec451, i32* @queueing_enabled, align 4
  %tobool452 = icmp ne i32 %dec451, 0
  br i1 %tobool452, label %if.end469, label %if.then453

if.then453:                                       ; preds = %do.body450
  br label %do.body454

do.body454:                                       ; preds = %if.then453
  br label %while.cond455

while.cond455:                                    ; preds = %while.body458, %do.body454
  %276 = load i32, i32* @queue_front, align 4
  %277 = load i32, i32* @queue_rear, align 4
  %cmp456 = icmp ne i32 %276, %277
  br i1 %cmp456, label %while.body458, label %while.end467

while.body458:                                    ; preds = %while.cond455
  %278 = load i32, i32* @queue_front, align 4
  %add461 = add nsw i32 %278, 1
  %rem462 = srem i32 %add461, 128
  store i32 %rem462, i32* @queue_front, align 4
  %279 = load i32, i32* @queue_front, align 4
  %arrayidx463 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %279
  call void @signal_setmask(%struct.__sigset_t* sret %tmp464, %struct.__sigset_t* byval align 4 %arrayidx463)
  %280 = bitcast %struct.__sigset_t* %oset460 to i8*
  %281 = bitcast %struct.__sigset_t* %tmp464 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %280, i8* %281, i32 128, i32 4, i1 false)
  %282 = load i32, i32* @queue_front, align 4
  %arrayidx465 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %282
  %283 = load i32, i32* %arrayidx465, align 4
  call void @zhandler(i32 %283)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp466, %struct.__sigset_t* byval align 4 %oset460)
  br label %while.cond455

while.end467:                                     ; preds = %while.cond455
  br label %do.end468

do.end468:                                        ; preds = %while.end467
  br label %if.end469

if.end469:                                        ; preds = %do.end468, %do.body450
  br label %do.end470

do.end470:                                        ; preds = %if.end469
  br label %sw.epilog1054

sw.bb471:                                         ; preds = %if.end297
  %284 = load i32*, i32** %txtchangep.addr, align 4
  %tobool472 = icmp ne i32* %284, null
  br i1 %tobool472, label %land.rhs473, label %land.end476

land.rhs473:                                      ; preds = %sw.bb471
  %285 = load i32*, i32** %txtchangep.addr, align 4
  %286 = load i32, i32* %285, align 4
  %and474 = and i32 %286, -65
  store i32 %and474, i32* %285, align 4
  %287 = load i32*, i32** %txtchangep.addr, align 4
  %288 = load i32, i32* %287, align 4
  %or = or i32 %288, 2
  store i32 %or, i32* %287, align 4
  %tobool475 = icmp ne i32 %or, 0
  br label %land.end476

land.end476:                                      ; preds = %land.rhs473, %sw.bb471
  %289 = phi i1 [ false, %sw.bb471 ], [ %tobool475, %land.rhs473 ]
  %land.ext477 = zext i1 %289 to i32
  %290 = load i32, i32* @txtattrmask, align 4
  %or478 = or i32 %290, 2
  store i32 %or478, i32* @txtattrmask, align 4
  call void @tsetcap(i32 19, i32 2)
  br label %sw.epilog1054

sw.bb479:                                         ; preds = %if.end297
  %291 = load i32*, i32** %txtchangep.addr, align 4
  %tobool480 = icmp ne i32* %291, null
  br i1 %tobool480, label %land.rhs481, label %land.end485

land.rhs481:                                      ; preds = %sw.bb479
  %292 = load i32*, i32** %txtchangep.addr, align 4
  %293 = load i32, i32* %292, align 4
  %and482 = and i32 %293, -3
  store i32 %and482, i32* %292, align 4
  %294 = load i32*, i32** %txtchangep.addr, align 4
  %295 = load i32, i32* %294, align 4
  %or483 = or i32 %295, 64
  store i32 %or483, i32* %294, align 4
  %tobool484 = icmp ne i32 %or483, 0
  br label %land.end485

land.end485:                                      ; preds = %land.rhs481, %sw.bb479
  %296 = phi i1 [ false, %sw.bb479 ], [ %tobool484, %land.rhs481 ]
  %land.ext486 = zext i1 %296 to i32
  %297 = load i32, i32* @txtattrmask, align 4
  %and487 = and i32 %297, -3
  store i32 %and487, i32* @txtattrmask, align 4
  call void @tsetcap(i32 22, i32 6)
  br label %sw.epilog1054

sw.bb488:                                         ; preds = %if.end297
  %298 = load i32*, i32** %txtchangep.addr, align 4
  %tobool489 = icmp ne i32* %298, null
  br i1 %tobool489, label %land.rhs490, label %land.end494

land.rhs490:                                      ; preds = %sw.bb488
  %299 = load i32*, i32** %txtchangep.addr, align 4
  %300 = load i32, i32* %299, align 4
  %and491 = and i32 %300, -33
  store i32 %and491, i32* %299, align 4
  %301 = load i32*, i32** %txtchangep.addr, align 4
  %302 = load i32, i32* %301, align 4
  %or492 = or i32 %302, 1
  store i32 %or492, i32* %301, align 4
  %tobool493 = icmp ne i32 %or492, 0
  br label %land.end494

land.end494:                                      ; preds = %land.rhs490, %sw.bb488
  %303 = phi i1 [ false, %sw.bb488 ], [ %tobool493, %land.rhs490 ]
  %land.ext495 = zext i1 %303 to i32
  %304 = load i32, i32* @txtattrmask, align 4
  %or496 = or i32 %304, 1
  store i32 %or496, i32* @txtattrmask, align 4
  call void @tsetcap(i32 18, i32 6)
  br label %sw.epilog1054

sw.bb497:                                         ; preds = %if.end297
  %305 = load i32*, i32** %txtchangep.addr, align 4
  %tobool498 = icmp ne i32* %305, null
  br i1 %tobool498, label %land.rhs499, label %land.end503

land.rhs499:                                      ; preds = %sw.bb497
  %306 = load i32*, i32** %txtchangep.addr, align 4
  %307 = load i32, i32* %306, align 4
  %and500 = and i32 %307, -2
  store i32 %and500, i32* %306, align 4
  %308 = load i32*, i32** %txtchangep.addr, align 4
  %309 = load i32, i32* %308, align 4
  %or501 = or i32 %309, 32
  store i32 %or501, i32* %308, align 4
  %tobool502 = icmp ne i32 %or501, 0
  br label %land.end503

land.end503:                                      ; preds = %land.rhs499, %sw.bb497
  %310 = phi i1 [ false, %sw.bb497 ], [ %tobool502, %land.rhs499 ]
  %land.ext504 = zext i1 %310 to i32
  %311 = load i32, i32* @txtattrmask, align 4
  %and505 = and i32 %311, -2
  store i32 %and505, i32* @txtattrmask, align 4
  call void @tsetcap(i32 21, i32 6)
  br label %sw.epilog1054

sw.bb506:                                         ; preds = %if.end297
  %312 = load i32*, i32** %txtchangep.addr, align 4
  %tobool507 = icmp ne i32* %312, null
  br i1 %tobool507, label %land.rhs508, label %land.end512

land.rhs508:                                      ; preds = %sw.bb506
  %313 = load i32*, i32** %txtchangep.addr, align 4
  %314 = load i32, i32* %313, align 4
  %and509 = and i32 %314, -129
  store i32 %and509, i32* %313, align 4
  %315 = load i32*, i32** %txtchangep.addr, align 4
  %316 = load i32, i32* %315, align 4
  %or510 = or i32 %316, 4
  store i32 %or510, i32* %315, align 4
  %tobool511 = icmp ne i32 %or510, 0
  br label %land.end512

land.end512:                                      ; preds = %land.rhs508, %sw.bb506
  %317 = phi i1 [ false, %sw.bb506 ], [ %tobool511, %land.rhs508 ]
  %land.ext513 = zext i1 %317 to i32
  %318 = load i32, i32* @txtattrmask, align 4
  %or514 = or i32 %318, 4
  store i32 %or514, i32* @txtattrmask, align 4
  call void @tsetcap(i32 20, i32 2)
  br label %sw.epilog1054

sw.bb515:                                         ; preds = %if.end297
  %319 = load i32*, i32** %txtchangep.addr, align 4
  %tobool516 = icmp ne i32* %319, null
  br i1 %tobool516, label %land.rhs517, label %land.end521

land.rhs517:                                      ; preds = %sw.bb515
  %320 = load i32*, i32** %txtchangep.addr, align 4
  %321 = load i32, i32* %320, align 4
  %and518 = and i32 %321, -5
  store i32 %and518, i32* %320, align 4
  %322 = load i32*, i32** %txtchangep.addr, align 4
  %323 = load i32, i32* %322, align 4
  %or519 = or i32 %323, 128
  store i32 %or519, i32* %322, align 4
  %tobool520 = icmp ne i32 %or519, 0
  br label %land.end521

land.end521:                                      ; preds = %land.rhs517, %sw.bb515
  %324 = phi i1 [ false, %sw.bb515 ], [ %tobool520, %land.rhs517 ]
  %land.ext522 = zext i1 %324 to i32
  %325 = load i32, i32* @txtattrmask, align 4
  %and523 = and i32 %325, -5
  store i32 %and523, i32* @txtattrmask, align 4
  call void @tsetcap(i32 23, i32 6)
  br label %sw.epilog1054

sw.bb524:                                         ; preds = %if.end297
  %326 = load i32, i32* %arg, align 4
  %call525 = call i32 @parsecolorchar(i32 %326, i32 1)
  store i32 %call525, i32* %arg, align 4
  %327 = load i32, i32* %arg, align 4
  %cmp526 = icmp sge i32 %327, 0
  br i1 %cmp526, label %land.lhs.true528, label %if.end543

land.lhs.true528:                                 ; preds = %sw.bb524
  %328 = load i32, i32* %arg, align 4
  %and529 = and i32 %328, 256
  %tobool530 = icmp ne i32 %and529, 0
  br i1 %tobool530, label %if.end543, label %if.then531

if.then531:                                       ; preds = %land.lhs.true528
  %329 = load i32*, i32** %txtchangep.addr, align 4
  %tobool532 = icmp ne i32* %329, null
  br i1 %tobool532, label %land.rhs533, label %land.end538

land.rhs533:                                      ; preds = %if.then531
  %330 = load i32*, i32** %txtchangep.addr, align 4
  %331 = load i32, i32* %330, align 4
  %and534 = and i32 %331, -1044737
  store i32 %and534, i32* %330, align 4
  %332 = load i32, i32* %arg, align 4
  %and535 = and i32 %332, 269479944
  %333 = load i32*, i32** %txtchangep.addr, align 4
  %334 = load i32, i32* %333, align 4
  %or536 = or i32 %334, %and535
  store i32 %or536, i32* %333, align 4
  %tobool537 = icmp ne i32 %or536, 0
  br label %land.end538

land.end538:                                      ; preds = %land.rhs533, %if.then531
  %335 = phi i1 [ false, %if.then531 ], [ %tobool537, %land.rhs533 ]
  %land.ext539 = zext i1 %335 to i32
  %336 = load i32, i32* @txtattrmask, align 4
  %and540 = and i32 %336, -1044481
  store i32 %and540, i32* @txtattrmask, align 4
  %337 = load i32, i32* %arg, align 4
  %and541 = and i32 %337, 269479944
  %338 = load i32, i32* @txtattrmask, align 4
  %or542 = or i32 %338, %and541
  store i32 %or542, i32* @txtattrmask, align 4
  %339 = load i32, i32* %arg, align 4
  call void @set_colour_attribute(i32 %339, i32 0, i32 2)
  br label %sw.epilog1054

if.end543:                                        ; preds = %land.lhs.true528, %sw.bb524
  br label %sw.bb544

sw.bb544:                                         ; preds = %if.end297, %if.end543
  %340 = load i32*, i32** %txtchangep.addr, align 4
  %tobool545 = icmp ne i32* %340, null
  br i1 %tobool545, label %land.rhs546, label %land.end550

land.rhs546:                                      ; preds = %sw.bb544
  %341 = load i32*, i32** %txtchangep.addr, align 4
  %342 = load i32, i32* %341, align 4
  %and547 = and i32 %342, -269479945
  store i32 %and547, i32* %341, align 4
  %343 = load i32*, i32** %txtchangep.addr, align 4
  %344 = load i32, i32* %343, align 4
  %or548 = or i32 %344, 256
  store i32 %or548, i32* %343, align 4
  %tobool549 = icmp ne i32 %or548, 0
  br label %land.end550

land.end550:                                      ; preds = %land.rhs546, %sw.bb544
  %345 = phi i1 [ false, %sw.bb544 ], [ %tobool549, %land.rhs546 ]
  %land.ext551 = zext i1 %345 to i32
  %346 = load i32, i32* @txtattrmask, align 4
  %and552 = and i32 %346, -269479945
  store i32 %and552, i32* @txtattrmask, align 4
  call void @set_colour_attribute(i32 256, i32 0, i32 2)
  br label %sw.epilog1054

sw.bb553:                                         ; preds = %if.end297
  %347 = load i32, i32* %arg, align 4
  %call554 = call i32 @parsecolorchar(i32 %347, i32 0)
  store i32 %call554, i32* %arg, align 4
  %348 = load i32, i32* %arg, align 4
  %cmp555 = icmp sge i32 %348, 0
  br i1 %cmp555, label %land.lhs.true557, label %if.end572

land.lhs.true557:                                 ; preds = %sw.bb553
  %349 = load i32, i32* %arg, align 4
  %and558 = and i32 %349, 512
  %tobool559 = icmp ne i32 %and558, 0
  br i1 %tobool559, label %if.end572, label %if.then560

if.then560:                                       ; preds = %land.lhs.true557
  %350 = load i32*, i32** %txtchangep.addr, align 4
  %tobool561 = icmp ne i32* %350, null
  br i1 %tobool561, label %land.rhs562, label %land.end567

land.rhs562:                                      ; preds = %if.then560
  %351 = load i32*, i32** %txtchangep.addr, align 4
  %352 = load i32, i32* %351, align 4
  %and563 = and i32 %352, -267387393
  store i32 %and563, i32* %351, align 4
  %353 = load i32, i32* %arg, align 4
  %and564 = and i32 %353, 804257808
  %354 = load i32*, i32** %txtchangep.addr, align 4
  %355 = load i32, i32* %354, align 4
  %or565 = or i32 %355, %and564
  store i32 %or565, i32* %354, align 4
  %tobool566 = icmp ne i32 %or565, 0
  br label %land.end567

land.end567:                                      ; preds = %land.rhs562, %if.then560
  %356 = phi i1 [ false, %if.then560 ], [ %tobool566, %land.rhs562 ]
  %land.ext568 = zext i1 %356 to i32
  %357 = load i32, i32* @txtattrmask, align 4
  %and569 = and i32 %357, -267386881
  store i32 %and569, i32* @txtattrmask, align 4
  %358 = load i32, i32* %arg, align 4
  %and570 = and i32 %358, 804257808
  %359 = load i32, i32* @txtattrmask, align 4
  %or571 = or i32 %359, %and570
  store i32 %or571, i32* @txtattrmask, align 4
  %360 = load i32, i32* %arg, align 4
  call void @set_colour_attribute(i32 %360, i32 1, i32 2)
  br label %sw.epilog1054

if.end572:                                        ; preds = %land.lhs.true557, %sw.bb553
  br label %sw.bb573

sw.bb573:                                         ; preds = %if.end297, %if.end572
  %361 = load i32*, i32** %txtchangep.addr, align 4
  %tobool574 = icmp ne i32* %361, null
  br i1 %tobool574, label %land.rhs575, label %land.end579

land.rhs575:                                      ; preds = %sw.bb573
  %362 = load i32*, i32** %txtchangep.addr, align 4
  %363 = load i32, i32* %362, align 4
  %and576 = and i32 %363, -804257809
  store i32 %and576, i32* %362, align 4
  %364 = load i32*, i32** %txtchangep.addr, align 4
  %365 = load i32, i32* %364, align 4
  %or577 = or i32 %365, 512
  store i32 %or577, i32* %364, align 4
  %tobool578 = icmp ne i32 %or577, 0
  br label %land.end579

land.end579:                                      ; preds = %land.rhs575, %sw.bb573
  %366 = phi i1 [ false, %sw.bb573 ], [ %tobool578, %land.rhs575 ]
  %land.ext580 = zext i1 %366 to i32
  %367 = load i32, i32* @txtattrmask, align 4
  %and581 = and i32 %367, -804257809
  store i32 %and581, i32* @txtattrmask, align 4
  call void @set_colour_attribute(i32 512, i32 1, i32 2)
  br label %sw.epilog1054

sw.bb582:                                         ; preds = %if.end297
  %368 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm583 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %368, i32 0, i32 6
  %369 = load i8*, i8** %fm583, align 4
  %incdec.ptr584 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %incdec.ptr584, i8** %fm583, align 4
  %370 = load i8, i8* %incdec.ptr584, align 1
  %idxprom585 = zext i8 %370 to i32
  %arrayidx586 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom585
  %371 = load i16, i16* %arrayidx586, align 2
  %conv587 = sext i16 %371 to i32
  %and588 = and i32 %conv587, 1
  %tobool589 = icmp ne i32 %and588, 0
  br i1 %tobool589, label %if.then590, label %if.end594

if.then590:                                       ; preds = %sw.bb582
  %372 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm591 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %372, i32 0, i32 6
  %373 = load i8*, i8** %fm591, align 4
  %374 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm592 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %374, i32 0, i32 6
  %call593 = call i32 @zstrtol(i8* %373, i8** %fm592, i32 10)
  store i32 %call593, i32* %arg, align 4
  br label %if.end594

if.end594:                                        ; preds = %if.then590, %sw.bb582
  %375 = load i32, i32* %arg, align 4
  %376 = load i32, i32* %doprint.addr, align 4
  %377 = load i32, i32* %endchar.addr, align 4
  %378 = load i32*, i32** %txtchangep.addr, align 4
  %call595 = call i32 @prompttrunc(i32 %375, i32 93, i32 %376, i32 %377, i32* %378)
  %tobool596 = icmp ne i32 %call595, 0
  br i1 %tobool596, label %if.end600, label %if.then597

if.then597:                                       ; preds = %if.end594
  %379 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm598 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %379, i32 0, i32 6
  %380 = load i8*, i8** %fm598, align 4
  %381 = load i8, i8* %380, align 1
  %conv599 = sext i8 %381 to i32
  store i32 %conv599, i32* %retval, align 4
  br label %return

if.end600:                                        ; preds = %if.end594
  br label %sw.epilog1054

sw.bb601:                                         ; preds = %if.end297, %if.end297
  %382 = load i32, i32* %minus, align 4
  %tobool602 = icmp ne i32 %382, 0
  br i1 %tobool602, label %if.then603, label %if.end612

if.then603:                                       ; preds = %sw.bb601
  %383 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp604 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %383, i32 0, i32 3
  %384 = load i8*, i8** %bp604, align 4
  store i8 0, i8* %384, align 1
  %385 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufline605 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %385, i32 0, i32 4
  %386 = load i8*, i8** %bufline605, align 4
  call void @countprompt(i8* %386, i32* %t0, i32* null, i32 0)
  %387 = load i32, i32* @zterm_columns, align 4
  %388 = load i32, i32* %t0, align 4
  %sub606 = sub nsw i32 %387, %388
  %389 = load i32, i32* %arg, align 4
  %add607 = add nsw i32 %sub606, %389
  store i32 %add607, i32* %arg, align 4
  %390 = load i32, i32* %arg, align 4
  %cmp608 = icmp sle i32 %390, 0
  br i1 %cmp608, label %if.then610, label %if.end611

if.then610:                                       ; preds = %if.then603
  store i32 1, i32* %arg, align 4
  br label %if.end611

if.end611:                                        ; preds = %if.then610, %if.then603
  br label %if.end612

if.end612:                                        ; preds = %if.end611, %sw.bb601
  %391 = load i32, i32* %arg, align 4
  %392 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm613 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %392, i32 0, i32 6
  %393 = load i8*, i8** %fm613, align 4
  %394 = load i8, i8* %393, align 1
  %conv614 = sext i8 %394 to i32
  %395 = load i32, i32* %doprint.addr, align 4
  %396 = load i32, i32* %endchar.addr, align 4
  %397 = load i32*, i32** %txtchangep.addr, align 4
  %call615 = call i32 @prompttrunc(i32 %391, i32 %conv614, i32 %395, i32 %396, i32* %397)
  %tobool616 = icmp ne i32 %call615, 0
  br i1 %tobool616, label %if.end620, label %if.then617

if.then617:                                       ; preds = %if.end612
  %398 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm618 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %398, i32 0, i32 6
  %399 = load i8*, i8** %fm618, align 4
  %400 = load i8, i8* %399, align 1
  %conv619 = sext i8 %400 to i32
  store i32 %conv619, i32* %retval, align 4
  br label %return

if.end620:                                        ; preds = %if.end612
  br label %sw.epilog1054

sw.bb621:                                         ; preds = %if.end297
  %401 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %401, i32 0, i32 8
  %402 = load i32, i32* %dontcount, align 4
  %inc622 = add nsw i32 %402, 1
  store i32 %inc622, i32* %dontcount, align 4
  %tobool623 = icmp ne i32 %402, 0
  br i1 %tobool623, label %if.end627, label %if.then624

if.then624:                                       ; preds = %sw.bb621
  call void @addbufspc(i32 1)
  %403 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp625 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %403, i32 0, i32 3
  %404 = load i8*, i8** %bp625, align 4
  %incdec.ptr626 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %incdec.ptr626, i8** %bp625, align 4
  store i8 -120, i8* %404, align 1
  br label %if.end627

if.end627:                                        ; preds = %if.then624, %sw.bb621
  %405 = load i32, i32* %arg, align 4
  %cmp628 = icmp sle i32 %405, 0
  br i1 %cmp628, label %if.then630, label %if.end631

if.then630:                                       ; preds = %if.end627
  br label %sw.epilog1054

if.end631:                                        ; preds = %if.end627
  br label %sw.bb632

sw.bb632:                                         ; preds = %if.end297, %if.end631
  %406 = load i32, i32* %arg, align 4
  %cmp633 = icmp sgt i32 %406, 0
  br i1 %cmp633, label %if.then635, label %if.else643

if.then635:                                       ; preds = %sw.bb632
  %407 = load i32, i32* %arg, align 4
  call void @addbufspc(i32 %407)
  br label %while.cond636

while.cond636:                                    ; preds = %while.body639, %if.then635
  %408 = load i32, i32* %arg, align 4
  %dec637 = add nsw i32 %408, -1
  store i32 %dec637, i32* %arg, align 4
  %tobool638 = icmp ne i32 %408, 0
  br i1 %tobool638, label %while.body639, label %while.end642

while.body639:                                    ; preds = %while.cond636
  %409 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp640 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %409, i32 0, i32 3
  %410 = load i8*, i8** %bp640, align 4
  %incdec.ptr641 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %incdec.ptr641, i8** %bp640, align 4
  store i8 -95, i8* %410, align 1
  br label %while.cond636

while.end642:                                     ; preds = %while.cond636
  br label %if.end646

if.else643:                                       ; preds = %sw.bb632
  call void @addbufspc(i32 1)
  %411 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp644 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %411, i32 0, i32 3
  %412 = load i8*, i8** %bp644, align 4
  %incdec.ptr645 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %incdec.ptr645, i8** %bp644, align 4
  store i8 -95, i8* %412, align 1
  br label %if.end646

if.end646:                                        ; preds = %if.else643, %while.end642
  br label %sw.epilog1054

sw.bb647:                                         ; preds = %if.end297
  %413 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %trunccount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %413, i32 0, i32 9
  %414 = load i32, i32* %trunccount, align 4
  %tobool648 = icmp ne i32 %414, 0
  br i1 %tobool648, label %land.lhs.true649, label %if.end657

land.lhs.true649:                                 ; preds = %sw.bb647
  %415 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %trunccount650 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %415, i32 0, i32 9
  %416 = load i32, i32* %trunccount650, align 4
  %417 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount651 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %417, i32 0, i32 8
  %418 = load i32, i32* %dontcount651, align 4
  %cmp652 = icmp sge i32 %416, %418
  br i1 %cmp652, label %if.then654, label %if.end657

if.then654:                                       ; preds = %land.lhs.true649
  %419 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm655 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %419, i32 0, i32 6
  %420 = load i8*, i8** %fm655, align 4
  %421 = load i8, i8* %420, align 1
  %conv656 = sext i8 %421 to i32
  store i32 %conv656, i32* %retval, align 4
  br label %return

if.end657:                                        ; preds = %land.lhs.true649, %sw.bb647
  %422 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount658 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %422, i32 0, i32 8
  %423 = load i32, i32* %dontcount658, align 4
  %tobool659 = icmp ne i32 %423, 0
  br i1 %tobool659, label %land.lhs.true660, label %if.end667

land.lhs.true660:                                 ; preds = %if.end657
  %424 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount661 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %424, i32 0, i32 8
  %425 = load i32, i32* %dontcount661, align 4
  %dec662 = add nsw i32 %425, -1
  store i32 %dec662, i32* %dontcount661, align 4
  %tobool663 = icmp ne i32 %dec662, 0
  br i1 %tobool663, label %if.end667, label %if.then664

if.then664:                                       ; preds = %land.lhs.true660
  call void @addbufspc(i32 1)
  %426 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp665 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %426, i32 0, i32 3
  %427 = load i8*, i8** %bp665, align 4
  %incdec.ptr666 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %incdec.ptr666, i8** %bp665, align 4
  store i8 -118, i8* %427, align 1
  br label %if.end667

if.end667:                                        ; preds = %if.then664, %land.lhs.true660, %if.end657
  br label %sw.epilog1054

sw.bb668:                                         ; preds = %if.end297, %if.end297, %if.end297, %if.end297, %if.end297, %if.end297, %if.end297
  store i8* null, i8** %tmbuf, align 4
  %428 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm672 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %428, i32 0, i32 6
  %429 = load i8*, i8** %fm672, align 4
  %430 = load i8, i8* %429, align 1
  %conv673 = sext i8 %430 to i32
  switch i32 %conv673, label %sw.default751 [
    i32 84, label %sw.bb674
    i32 42, label %sw.bb675
    i32 119, label %sw.bb676
    i32 87, label %sw.bb677
    i32 68, label %sw.bb678
  ]

sw.bb674:                                         ; preds = %sw.bb668
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %tmfmt, align 4
  br label %sw.epilog752

sw.bb675:                                         ; preds = %sw.bb668
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** %tmfmt, align 4
  br label %sw.epilog752

sw.bb676:                                         ; preds = %sw.bb668
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8** %tmfmt, align 4
  br label %sw.epilog752

sw.bb677:                                         ; preds = %sw.bb668
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8** %tmfmt, align 4
  br label %sw.epilog752

sw.bb678:                                         ; preds = %sw.bb668
  %431 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm679 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %431, i32 0, i32 6
  %432 = load i8*, i8** %fm679, align 4
  %arrayidx680 = getelementptr inbounds i8, i8* %432, i32 1
  %433 = load i8, i8* %arrayidx680, align 1
  %conv681 = sext i8 %433 to i32
  %cmp682 = icmp eq i32 %conv681, 123
  br i1 %cmp682, label %if.then684, label %if.else749

if.then684:                                       ; preds = %sw.bb678
  %434 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm685 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %434, i32 0, i32 6
  %435 = load i8*, i8** %fm685, align 4
  %add.ptr686 = getelementptr inbounds i8, i8* %435, i32 2
  store i8* %add.ptr686, i8** %ss, align 4
  br label %for.cond687

for.cond687:                                      ; preds = %for.inc707, %if.then684
  %436 = load i8*, i8** %ss, align 4
  %437 = load i8, i8* %436, align 1
  %conv688 = sext i8 %437 to i32
  %tobool689 = icmp ne i32 %conv688, 0
  br i1 %tobool689, label %land.rhs690, label %land.end694

land.rhs690:                                      ; preds = %for.cond687
  %438 = load i8*, i8** %ss, align 4
  %439 = load i8, i8* %438, align 1
  %conv691 = sext i8 %439 to i32
  %cmp692 = icmp ne i32 %conv691, 125
  br label %land.end694

land.end694:                                      ; preds = %land.rhs690, %for.cond687
  %440 = phi i1 [ false, %for.cond687 ], [ %cmp692, %land.rhs690 ]
  br i1 %440, label %for.body696, label %for.end709

for.body696:                                      ; preds = %land.end694
  %441 = load i8*, i8** %ss, align 4
  %442 = load i8, i8* %441, align 1
  %conv697 = sext i8 %442 to i32
  %cmp698 = icmp eq i32 %conv697, 92
  br i1 %cmp698, label %land.lhs.true700, label %if.end706

land.lhs.true700:                                 ; preds = %for.body696
  %443 = load i8*, i8** %ss, align 4
  %arrayidx701 = getelementptr inbounds i8, i8* %443, i32 1
  %444 = load i8, i8* %arrayidx701, align 1
  %conv702 = sext i8 %444 to i32
  %tobool703 = icmp ne i32 %conv702, 0
  br i1 %tobool703, label %if.then704, label %if.end706

if.then704:                                       ; preds = %land.lhs.true700
  %445 = load i8*, i8** %ss, align 4
  %incdec.ptr705 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %incdec.ptr705, i8** %ss, align 4
  br label %if.end706

if.end706:                                        ; preds = %if.then704, %land.lhs.true700, %for.body696
  br label %for.inc707

for.inc707:                                       ; preds = %if.end706
  %446 = load i8*, i8** %ss, align 4
  %incdec.ptr708 = getelementptr inbounds i8, i8* %446, i32 1
  store i8* %incdec.ptr708, i8** %ss, align 4
  br label %for.cond687

for.end709:                                       ; preds = %land.end694
  %447 = load i8*, i8** %ss, align 4
  %448 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm710 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %448, i32 0, i32 6
  %449 = load i8*, i8** %fm710, align 4
  %sub.ptr.lhs.cast711 = ptrtoint i8* %447 to i32
  %sub.ptr.rhs.cast712 = ptrtoint i8* %449 to i32
  %sub.ptr.sub713 = sub i32 %sub.ptr.lhs.cast711, %sub.ptr.rhs.cast712
  %call714 = call i8* @zalloc(i32 %sub.ptr.sub713)
  store i8* %call714, i8** %tmbuf, align 4
  store i8* %call714, i8** %tmfmt, align 4
  store i8* %call714, i8** %dd, align 4
  %450 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm715 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %450, i32 0, i32 6
  %451 = load i8*, i8** %fm715, align 4
  %add.ptr716 = getelementptr inbounds i8, i8* %451, i32 2
  store i8* %add.ptr716, i8** %ss, align 4
  br label %for.cond717

for.cond717:                                      ; preds = %for.inc738, %for.end709
  %452 = load i8*, i8** %ss, align 4
  %453 = load i8, i8* %452, align 1
  %conv718 = sext i8 %453 to i32
  %tobool719 = icmp ne i32 %conv718, 0
  br i1 %tobool719, label %land.rhs720, label %land.end724

land.rhs720:                                      ; preds = %for.cond717
  %454 = load i8*, i8** %ss, align 4
  %455 = load i8, i8* %454, align 1
  %conv721 = sext i8 %455 to i32
  %cmp722 = icmp ne i32 %conv721, 125
  br label %land.end724

land.end724:                                      ; preds = %land.rhs720, %for.cond717
  %456 = phi i1 [ false, %for.cond717 ], [ %cmp722, %land.rhs720 ]
  br i1 %456, label %for.body726, label %for.end740

for.body726:                                      ; preds = %land.end724
  %457 = load i8*, i8** %ss, align 4
  %458 = load i8, i8* %457, align 1
  %conv727 = sext i8 %458 to i32
  %cmp728 = icmp eq i32 %conv727, 92
  br i1 %cmp728, label %land.lhs.true730, label %if.end736

land.lhs.true730:                                 ; preds = %for.body726
  %459 = load i8*, i8** %ss, align 4
  %arrayidx731 = getelementptr inbounds i8, i8* %459, i32 1
  %460 = load i8, i8* %arrayidx731, align 1
  %conv732 = sext i8 %460 to i32
  %tobool733 = icmp ne i32 %conv732, 0
  br i1 %tobool733, label %if.then734, label %if.end736

if.then734:                                       ; preds = %land.lhs.true730
  %461 = load i8*, i8** %ss, align 4
  %incdec.ptr735 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %incdec.ptr735, i8** %ss, align 4
  br label %if.end736

if.end736:                                        ; preds = %if.then734, %land.lhs.true730, %for.body726
  %462 = load i8*, i8** %ss, align 4
  %463 = load i8, i8* %462, align 1
  %464 = load i8*, i8** %dd, align 4
  %incdec.ptr737 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %incdec.ptr737, i8** %dd, align 4
  store i8 %463, i8* %464, align 1
  br label %for.inc738

for.inc738:                                       ; preds = %if.end736
  %465 = load i8*, i8** %ss, align 4
  %incdec.ptr739 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %incdec.ptr739, i8** %ss, align 4
  br label %for.cond717

for.end740:                                       ; preds = %land.end724
  %466 = load i8*, i8** %dd, align 4
  store i8 0, i8* %466, align 1
  %467 = load i8*, i8** %ss, align 4
  %468 = load i8*, i8** %ss, align 4
  %469 = load i8, i8* %468, align 1
  %tobool741 = icmp ne i8 %469, 0
  %lnot742 = xor i1 %tobool741, true
  %lnot.ext743 = zext i1 %lnot742 to i32
  %idx.neg = sub i32 0, %lnot.ext743
  %add.ptr744 = getelementptr inbounds i8, i8* %467, i32 %idx.neg
  %470 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm745 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %470, i32 0, i32 6
  store i8* %add.ptr744, i8** %fm745, align 4
  %471 = load i8*, i8** %tmfmt, align 4
  %472 = load i8, i8* %471, align 1
  %tobool746 = icmp ne i8 %472, 0
  br i1 %tobool746, label %if.end748, label %if.then747

if.then747:                                       ; preds = %for.end740
  %473 = load i8*, i8** %tmbuf, align 4
  call void @free(i8* %473)
  br label %for.inc1103

if.end748:                                        ; preds = %for.end740
  br label %if.end750

if.else749:                                       ; preds = %sw.bb678
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8** %tmfmt, align 4
  br label %if.end750

if.end750:                                        ; preds = %if.else749, %if.end748
  br label %sw.epilog752

sw.default751:                                    ; preds = %sw.bb668
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8** %tmfmt, align 4
  br label %sw.epilog752

sw.epilog752:                                     ; preds = %sw.default751, %if.end750, %sw.bb677, %sw.bb676, %sw.bb675, %sw.bb674
  %474 = bitcast %struct.timezone* %dummy_tz to i8*
  %call753 = call i32 @gettimeofday(%struct.timeval* %tv, i8* %474)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %call754 = call %struct.tm* @localtime(i32* %tv_sec)
  store %struct.tm* %call754, %struct.tm** %tm, align 4
  store i32 0, i32* %j, align 4
  %475 = load i8*, i8** %tmfmt, align 4
  %call755 = call i32 @strlen(i8* %475)
  %mul756 = mul i32 %call755, 8
  store i32 %mul756, i32* %t0, align 4
  br label %for.cond757

for.cond757:                                      ; preds = %for.inc767, %sw.epilog752
  %476 = load i32, i32* %j, align 4
  %cmp758 = icmp slt i32 %476, 3
  br i1 %cmp758, label %for.body760, label %for.end770

for.body760:                                      ; preds = %for.cond757
  %477 = load i32, i32* %t0, align 4
  call void @addbufspc(i32 %477)
  %478 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp761 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %478, i32 0, i32 3
  %479 = load i8*, i8** %bp761, align 4
  %480 = load i32, i32* %t0, align 4
  %481 = load i8*, i8** %tmfmt, align 4
  %482 = load %struct.tm*, %struct.tm** %tm, align 4
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %483 = load i32, i32* %tv_usec, align 4
  %call762 = call i32 @ztrftime(i8* %479, i32 %480, i8* %481, %struct.tm* %482, i32 %483)
  store i32 %call762, i32* %len, align 4
  %cmp763 = icmp sge i32 %call762, 0
  br i1 %cmp763, label %if.then765, label %if.end766

if.then765:                                       ; preds = %for.body760
  br label %for.end770

if.end766:                                        ; preds = %for.body760
  br label %for.inc767

for.inc767:                                       ; preds = %if.end766
  %484 = load i32, i32* %j, align 4
  %inc768 = add nsw i32 %484, 1
  store i32 %inc768, i32* %j, align 4
  %485 = load i32, i32* %t0, align 4
  %mul769 = mul nsw i32 %485, 2
  store i32 %mul769, i32* %t0, align 4
  br label %for.cond757

for.end770:                                       ; preds = %if.then765, %for.cond757
  %486 = load i32, i32* %len, align 4
  %cmp771 = icmp sge i32 %486, 0
  br i1 %cmp771, label %if.then773, label %if.end776

if.then773:                                       ; preds = %for.end770
  %487 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp774 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %487, i32 0, i32 3
  %488 = load i8*, i8** %bp774, align 4
  %489 = load i32, i32* %len, align 4
  %call775 = call i8* @metafy(i8* %488, i32 %489, i32 5)
  br label %if.end776

if.end776:                                        ; preds = %if.then773, %for.end770
  %490 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp777 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %490, i32 0, i32 3
  %491 = load i8*, i8** %bp777, align 4
  %call778 = call i32 @strlen(i8* %491)
  %492 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp779 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %492, i32 0, i32 3
  %493 = load i8*, i8** %bp779, align 4
  %add.ptr780 = getelementptr inbounds i8, i8* %493, i32 %call778
  store i8* %add.ptr780, i8** %bp779, align 4
  %494 = load i8*, i8** %tmbuf, align 4
  call void @zsfree(i8* %494)
  br label %sw.epilog1054

sw.bb781:                                         ; preds = %if.end297
  %call782 = call i8* @get_username()
  call void @stradd(i8* %call782)
  br label %sw.epilog1054

sw.bb783:                                         ; preds = %if.end297
  %495 = load i8*, i8** @ttystrname, align 4
  %496 = load i8, i8* %495, align 1
  %tobool784 = icmp ne i8 %496, 0
  br i1 %tobool784, label %if.then785, label %if.else794

if.then785:                                       ; preds = %sw.bb783
  %497 = load i8*, i8** @ttystrname, align 4
  %call786 = call i32 @strncmp(i8* %497, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 8)
  %tobool787 = icmp ne i32 %call786, 0
  br i1 %tobool787, label %cond.true788, label %cond.false790

cond.true788:                                     ; preds = %if.then785
  %498 = load i8*, i8** @ttystrname, align 4
  %add.ptr789 = getelementptr inbounds i8, i8* %498, i32 5
  br label %cond.end792

cond.false790:                                    ; preds = %if.then785
  %499 = load i8*, i8** @ttystrname, align 4
  %add.ptr791 = getelementptr inbounds i8, i8* %499, i32 8
  br label %cond.end792

cond.end792:                                      ; preds = %cond.false790, %cond.true788
  %cond793 = phi i8* [ %add.ptr789, %cond.true788 ], [ %add.ptr791, %cond.false790 ]
  store i8* %cond793, i8** %ss, align 4
  %500 = load i8*, i8** %ss, align 4
  call void @stradd(i8* %500)
  br label %if.end795

if.else794:                                       ; preds = %sw.bb783
  call void @stradd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end795

if.end795:                                        ; preds = %if.else794, %cond.end792
  br label %sw.epilog1054

sw.bb796:                                         ; preds = %if.end297
  %501 = load i8*, i8** @ttystrname, align 4
  %502 = load i8, i8* %501, align 1
  %tobool797 = icmp ne i8 %502, 0
  br i1 %tobool797, label %if.then798, label %if.else806

if.then798:                                       ; preds = %sw.bb796
  %503 = load i8*, i8** @ttystrname, align 4
  %call799 = call i32 @strncmp(i8* %503, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 5)
  %tobool800 = icmp ne i32 %call799, 0
  br i1 %tobool800, label %cond.true801, label %cond.false802

cond.true801:                                     ; preds = %if.then798
  %504 = load i8*, i8** @ttystrname, align 4
  br label %cond.end804

cond.false802:                                    ; preds = %if.then798
  %505 = load i8*, i8** @ttystrname, align 4
  %add.ptr803 = getelementptr inbounds i8, i8* %505, i32 5
  br label %cond.end804

cond.end804:                                      ; preds = %cond.false802, %cond.true801
  %cond805 = phi i8* [ %504, %cond.true801 ], [ %add.ptr803, %cond.false802 ]
  store i8* %cond805, i8** %ss, align 4
  %506 = load i8*, i8** %ss, align 4
  call void @stradd(i8* %506)
  br label %if.end807

if.else806:                                       ; preds = %sw.bb796
  call void @stradd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end807

if.end807:                                        ; preds = %if.else806, %cond.end804
  br label %sw.epilog1054

sw.bb808:                                         ; preds = %if.end297
  call void @addbufspc(i32 12)
  %507 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp809 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %507, i32 0, i32 3
  %508 = load i8*, i8** %bp809, align 4
  %509 = load i32, i32* @shlvl, align 4
  %call810 = call i32 (i8*, i8*, ...) @sprintf(i8* %508, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %509)
  %510 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp811 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %510, i32 0, i32 3
  %511 = load i8*, i8** %bp811, align 4
  %call812 = call i32 @strlen(i8* %511)
  %512 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp813 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %512, i32 0, i32 3
  %513 = load i8*, i8** %bp813, align 4
  %add.ptr814 = getelementptr inbounds i8, i8* %513, i32 %call812
  store i8* %add.ptr814, i8** %bp813, align 4
  br label %sw.epilog1054

sw.bb815:                                         ; preds = %if.end297
  call void @addbufspc(i32 12)
  %514 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp816 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %514, i32 0, i32 3
  %515 = load i8*, i8** %bp816, align 4
  %516 = load i32, i32* @lastval, align 4
  %call817 = call i32 (i8*, i8*, ...) @sprintf(i8* %515, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %516)
  %517 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp818 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %517, i32 0, i32 3
  %518 = load i8*, i8** %bp818, align 4
  %call819 = call i32 @strlen(i8* %518)
  %519 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp820 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %519, i32 0, i32 3
  %520 = load i8*, i8** %bp820, align 4
  %add.ptr821 = getelementptr inbounds i8, i8* %520, i32 %call819
  store i8* %add.ptr821, i8** %bp820, align 4
  br label %sw.epilog1054

sw.bb822:                                         ; preds = %if.end297, %if.end297
  call void @addbufspc(i32 1)
  %521 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm823 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %521, i32 0, i32 6
  %522 = load i8*, i8** %fm823, align 4
  %523 = load i8, i8* %522, align 1
  %524 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp824 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %524, i32 0, i32 3
  %525 = load i8*, i8** %bp824, align 4
  %incdec.ptr825 = getelementptr inbounds i8, i8* %525, i32 1
  store i8* %incdec.ptr825, i8** %bp824, align 4
  store i8 %523, i8* %525, align 1
  br label %sw.epilog1054

sw.bb826:                                         ; preds = %if.end297
  call void @addbufspc(i32 1)
  %call827 = call i32 @privasserted()
  %tobool828 = icmp ne i32 %call827, 0
  %cond829 = select i1 %tobool828, i32 35, i32 37
  %conv830 = trunc i32 %cond829 to i8
  %526 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp831 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %526, i32 0, i32 3
  %527 = load i8*, i8** %bp831, align 4
  %incdec.ptr832 = getelementptr inbounds i8, i8* %527, i32 1
  store i8* %incdec.ptr832, i8** %bp831, align 4
  store i8 %conv830, i8* %527, align 1
  br label %sw.epilog1054

sw.bb833:                                         ; preds = %if.end297
  %528 = load i32, i32* %arg, align 4
  %tobool834 = icmp ne i32 %528, 0
  br i1 %tobool834, label %if.else836, label %if.then835

if.then835:                                       ; preds = %sw.bb833
  store i32 1, i32* %arg, align 4
  br label %if.end844

if.else836:                                       ; preds = %sw.bb833
  %529 = load i32, i32* %arg, align 4
  %cmp837 = icmp slt i32 %529, 0
  br i1 %cmp837, label %if.then839, label %if.end843

if.then839:                                       ; preds = %if.else836
  %530 = load i8**, i8*** @psvar, align 4
  %call840 = call i32 @arrlen(i8** %530)
  %add841 = add nsw i32 %call840, 1
  %531 = load i32, i32* %arg, align 4
  %add842 = add nsw i32 %531, %add841
  store i32 %add842, i32* %arg, align 4
  br label %if.end843

if.end843:                                        ; preds = %if.then839, %if.else836
  br label %if.end844

if.end844:                                        ; preds = %if.end843, %if.then835
  %532 = load i32, i32* %arg, align 4
  %cmp845 = icmp sgt i32 %532, 0
  br i1 %cmp845, label %land.lhs.true847, label %if.end854

land.lhs.true847:                                 ; preds = %if.end844
  %533 = load i8**, i8*** @psvar, align 4
  %534 = load i32, i32* %arg, align 4
  %call848 = call signext i8 @arrlen_ge(i8** %533, i32 %534)
  %conv849 = sext i8 %call848 to i32
  %tobool850 = icmp ne i32 %conv849, 0
  br i1 %tobool850, label %if.then851, label %if.end854

if.then851:                                       ; preds = %land.lhs.true847
  %535 = load i8**, i8*** @psvar, align 4
  %536 = load i32, i32* %arg, align 4
  %sub852 = sub nsw i32 %536, 1
  %arrayidx853 = getelementptr inbounds i8*, i8** %535, i32 %sub852
  %537 = load i8*, i8** %arrayidx853, align 4
  call void @stradd(i8* %537)
  br label %if.end854

if.end854:                                        ; preds = %if.then851, %land.lhs.true847, %if.end844
  br label %sw.epilog1054

sw.bb855:                                         ; preds = %if.end297
  call void @tsetcap(i32 14, i32 2)
  br label %sw.epilog1054

sw.bb856:                                         ; preds = %if.end297
  %538 = load i32, i32* @cmdsp, align 4
  %tobool857 = icmp ne i32 %538, 0
  br i1 %tobool857, label %if.then858, label %if.end908

if.then858:                                       ; preds = %sw.bb856
  %539 = load i32, i32* %arg, align 4
  %cmp859 = icmp sge i32 %539, 0
  br i1 %cmp859, label %if.then861, label %if.else885

if.then861:                                       ; preds = %if.then858
  %540 = load i32, i32* %arg, align 4
  %541 = load i32, i32* @cmdsp, align 4
  %cmp862 = icmp sgt i32 %540, %541
  br i1 %cmp862, label %if.then867, label %lor.lhs.false864

lor.lhs.false864:                                 ; preds = %if.then861
  %542 = load i32, i32* %arg, align 4
  %cmp865 = icmp eq i32 %542, 0
  br i1 %cmp865, label %if.then867, label %if.end868

if.then867:                                       ; preds = %lor.lhs.false864, %if.then861
  %543 = load i32, i32* @cmdsp, align 4
  store i32 %543, i32* %arg, align 4
  br label %if.end868

if.end868:                                        ; preds = %if.then867, %lor.lhs.false864
  %544 = load i32, i32* @cmdsp, align 4
  %sub869 = sub nsw i32 %544, 1
  store i32 %sub869, i32* %t0, align 4
  br label %for.cond870

for.cond870:                                      ; preds = %for.inc882, %if.end868
  %545 = load i32, i32* %arg, align 4
  %dec871 = add nsw i32 %545, -1
  store i32 %dec871, i32* %arg, align 4
  %tobool872 = icmp ne i32 %545, 0
  br i1 %tobool872, label %for.body873, label %for.end884

for.body873:                                      ; preds = %for.cond870
  %546 = load i8*, i8** @cmdstack, align 4
  %547 = load i32, i32* %t0, align 4
  %arrayidx874 = getelementptr inbounds i8, i8* %546, i32 %547
  %548 = load i8, i8* %arrayidx874, align 1
  %idxprom875 = zext i8 %548 to i32
  %arrayidx876 = getelementptr inbounds [32 x i8*], [32 x i8*]* @cmdnames, i32 0, i32 %idxprom875
  %549 = load i8*, i8** %arrayidx876, align 4
  call void @stradd(i8* %549)
  %550 = load i32, i32* %arg, align 4
  %tobool877 = icmp ne i32 %550, 0
  br i1 %tobool877, label %if.then878, label %if.end881

if.then878:                                       ; preds = %for.body873
  call void @addbufspc(i32 1)
  %551 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp879 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %551, i32 0, i32 3
  %552 = load i8*, i8** %bp879, align 4
  %incdec.ptr880 = getelementptr inbounds i8, i8* %552, i32 1
  store i8* %incdec.ptr880, i8** %bp879, align 4
  store i8 32, i8* %552, align 1
  br label %if.end881

if.end881:                                        ; preds = %if.then878, %for.body873
  br label %for.inc882

for.inc882:                                       ; preds = %if.end881
  %553 = load i32, i32* %t0, align 4
  %dec883 = add nsw i32 %553, -1
  store i32 %dec883, i32* %t0, align 4
  br label %for.cond870

for.end884:                                       ; preds = %for.cond870
  br label %if.end907

if.else885:                                       ; preds = %if.then858
  %554 = load i32, i32* %arg, align 4
  %sub886 = sub nsw i32 0, %554
  store i32 %sub886, i32* %arg, align 4
  %555 = load i32, i32* %arg, align 4
  %556 = load i32, i32* @cmdsp, align 4
  %cmp887 = icmp sgt i32 %555, %556
  br i1 %cmp887, label %if.then889, label %if.end890

if.then889:                                       ; preds = %if.else885
  %557 = load i32, i32* @cmdsp, align 4
  store i32 %557, i32* %arg, align 4
  br label %if.end890

if.end890:                                        ; preds = %if.then889, %if.else885
  %558 = load i32, i32* %arg, align 4
  %sub891 = sub nsw i32 %558, 1
  store i32 %sub891, i32* %t0, align 4
  br label %for.cond892

for.cond892:                                      ; preds = %for.inc904, %if.end890
  %559 = load i32, i32* %arg, align 4
  %dec893 = add nsw i32 %559, -1
  store i32 %dec893, i32* %arg, align 4
  %tobool894 = icmp ne i32 %559, 0
  br i1 %tobool894, label %for.body895, label %for.end906

for.body895:                                      ; preds = %for.cond892
  %560 = load i8*, i8** @cmdstack, align 4
  %561 = load i32, i32* %t0, align 4
  %arrayidx896 = getelementptr inbounds i8, i8* %560, i32 %561
  %562 = load i8, i8* %arrayidx896, align 1
  %idxprom897 = zext i8 %562 to i32
  %arrayidx898 = getelementptr inbounds [32 x i8*], [32 x i8*]* @cmdnames, i32 0, i32 %idxprom897
  %563 = load i8*, i8** %arrayidx898, align 4
  call void @stradd(i8* %563)
  %564 = load i32, i32* %arg, align 4
  %tobool899 = icmp ne i32 %564, 0
  br i1 %tobool899, label %if.then900, label %if.end903

if.then900:                                       ; preds = %for.body895
  call void @addbufspc(i32 1)
  %565 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp901 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %565, i32 0, i32 3
  %566 = load i8*, i8** %bp901, align 4
  %incdec.ptr902 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %incdec.ptr902, i8** %bp901, align 4
  store i8 32, i8* %566, align 1
  br label %if.end903

if.end903:                                        ; preds = %if.then900, %for.body895
  br label %for.inc904

for.inc904:                                       ; preds = %if.end903
  %567 = load i32, i32* %t0, align 4
  %dec905 = add nsw i32 %567, -1
  store i32 %dec905, i32* %t0, align 4
  br label %for.cond892

for.end906:                                       ; preds = %for.cond892
  br label %if.end907

if.end907:                                        ; preds = %for.end906, %for.end884
  br label %if.end908

if.end908:                                        ; preds = %if.end907, %sw.bb856
  br label %sw.epilog1054

sw.bb909:                                         ; preds = %if.end297
  %568 = load i32, i32* @cmdsp, align 4
  %tobool910 = icmp ne i32 %568, 0
  br i1 %tobool910, label %if.then911, label %if.end960

if.then911:                                       ; preds = %sw.bb909
  %569 = load i32, i32* %arg, align 4
  %cmp912 = icmp sge i32 %569, 0
  br i1 %cmp912, label %if.then914, label %if.else938

if.then914:                                       ; preds = %if.then911
  %570 = load i32, i32* %arg, align 4
  %571 = load i32, i32* @cmdsp, align 4
  %cmp915 = icmp sgt i32 %570, %571
  br i1 %cmp915, label %if.then920, label %lor.lhs.false917

lor.lhs.false917:                                 ; preds = %if.then914
  %572 = load i32, i32* %arg, align 4
  %cmp918 = icmp eq i32 %572, 0
  br i1 %cmp918, label %if.then920, label %if.end921

if.then920:                                       ; preds = %lor.lhs.false917, %if.then914
  %573 = load i32, i32* @cmdsp, align 4
  store i32 %573, i32* %arg, align 4
  br label %if.end921

if.end921:                                        ; preds = %if.then920, %lor.lhs.false917
  %574 = load i32, i32* @cmdsp, align 4
  %575 = load i32, i32* %arg, align 4
  %sub922 = sub nsw i32 %574, %575
  store i32 %sub922, i32* %t0, align 4
  br label %for.cond923

for.cond923:                                      ; preds = %for.inc935, %if.end921
  %576 = load i32, i32* %arg, align 4
  %dec924 = add nsw i32 %576, -1
  store i32 %dec924, i32* %arg, align 4
  %tobool925 = icmp ne i32 %576, 0
  br i1 %tobool925, label %for.body926, label %for.end937

for.body926:                                      ; preds = %for.cond923
  %577 = load i8*, i8** @cmdstack, align 4
  %578 = load i32, i32* %t0, align 4
  %arrayidx927 = getelementptr inbounds i8, i8* %577, i32 %578
  %579 = load i8, i8* %arrayidx927, align 1
  %idxprom928 = zext i8 %579 to i32
  %arrayidx929 = getelementptr inbounds [32 x i8*], [32 x i8*]* @cmdnames, i32 0, i32 %idxprom928
  %580 = load i8*, i8** %arrayidx929, align 4
  call void @stradd(i8* %580)
  %581 = load i32, i32* %arg, align 4
  %tobool930 = icmp ne i32 %581, 0
  br i1 %tobool930, label %if.then931, label %if.end934

if.then931:                                       ; preds = %for.body926
  call void @addbufspc(i32 1)
  %582 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp932 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %582, i32 0, i32 3
  %583 = load i8*, i8** %bp932, align 4
  %incdec.ptr933 = getelementptr inbounds i8, i8* %583, i32 1
  store i8* %incdec.ptr933, i8** %bp932, align 4
  store i8 32, i8* %583, align 1
  br label %if.end934

if.end934:                                        ; preds = %if.then931, %for.body926
  br label %for.inc935

for.inc935:                                       ; preds = %if.end934
  %584 = load i32, i32* %t0, align 4
  %inc936 = add nsw i32 %584, 1
  store i32 %inc936, i32* %t0, align 4
  br label %for.cond923

for.end937:                                       ; preds = %for.cond923
  br label %if.end959

if.else938:                                       ; preds = %if.then911
  %585 = load i32, i32* %arg, align 4
  %sub939 = sub nsw i32 0, %585
  store i32 %sub939, i32* %arg, align 4
  %586 = load i32, i32* %arg, align 4
  %587 = load i32, i32* @cmdsp, align 4
  %cmp940 = icmp sgt i32 %586, %587
  br i1 %cmp940, label %if.then942, label %if.end943

if.then942:                                       ; preds = %if.else938
  %588 = load i32, i32* @cmdsp, align 4
  store i32 %588, i32* %arg, align 4
  br label %if.end943

if.end943:                                        ; preds = %if.then942, %if.else938
  store i32 0, i32* %t0, align 4
  br label %for.cond944

for.cond944:                                      ; preds = %for.inc956, %if.end943
  %589 = load i32, i32* %arg, align 4
  %dec945 = add nsw i32 %589, -1
  store i32 %dec945, i32* %arg, align 4
  %tobool946 = icmp ne i32 %589, 0
  br i1 %tobool946, label %for.body947, label %for.end958

for.body947:                                      ; preds = %for.cond944
  %590 = load i8*, i8** @cmdstack, align 4
  %591 = load i32, i32* %t0, align 4
  %arrayidx948 = getelementptr inbounds i8, i8* %590, i32 %591
  %592 = load i8, i8* %arrayidx948, align 1
  %idxprom949 = zext i8 %592 to i32
  %arrayidx950 = getelementptr inbounds [32 x i8*], [32 x i8*]* @cmdnames, i32 0, i32 %idxprom949
  %593 = load i8*, i8** %arrayidx950, align 4
  call void @stradd(i8* %593)
  %594 = load i32, i32* %arg, align 4
  %tobool951 = icmp ne i32 %594, 0
  br i1 %tobool951, label %if.then952, label %if.end955

if.then952:                                       ; preds = %for.body947
  call void @addbufspc(i32 1)
  %595 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp953 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %595, i32 0, i32 3
  %596 = load i8*, i8** %bp953, align 4
  %incdec.ptr954 = getelementptr inbounds i8, i8* %596, i32 1
  store i8* %incdec.ptr954, i8** %bp953, align 4
  store i8 32, i8* %596, align 1
  br label %if.end955

if.end955:                                        ; preds = %if.then952, %for.body947
  br label %for.inc956

for.inc956:                                       ; preds = %if.end955
  %597 = load i32, i32* %t0, align 4
  %inc957 = add nsw i32 %597, 1
  store i32 %inc957, i32* %t0, align 4
  br label %for.cond944

for.end958:                                       ; preds = %for.cond944
  br label %if.end959

if.end959:                                        ; preds = %for.end958, %for.end937
  br label %if.end960

if.end960:                                        ; preds = %if.end959, %sw.bb909
  br label %sw.epilog1054

sw.bb961:                                         ; preds = %if.end297
  %598 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %rstring = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %598, i32 0, i32 10
  %599 = load i8*, i8** %rstring, align 4
  %tobool962 = icmp ne i8* %599, null
  br i1 %tobool962, label %if.then963, label %if.end965

if.then963:                                       ; preds = %sw.bb961
  %600 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %rstring964 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %600, i32 0, i32 10
  %601 = load i8*, i8** %rstring964, align 4
  call void @stradd(i8* %601)
  br label %if.end965

if.end965:                                        ; preds = %if.then963, %sw.bb961
  br label %sw.epilog1054

sw.bb966:                                         ; preds = %if.end297
  %602 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %Rstring = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %602, i32 0, i32 11
  %603 = load i8*, i8** %Rstring, align 4
  %tobool967 = icmp ne i8* %603, null
  br i1 %tobool967, label %if.then968, label %if.end970

if.then968:                                       ; preds = %sw.bb966
  %604 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %Rstring969 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %604, i32 0, i32 11
  %605 = load i8*, i8** %Rstring969, align 4
  call void @stradd(i8* %605)
  br label %if.end970

if.end970:                                        ; preds = %if.then968, %sw.bb966
  br label %sw.epilog1054

sw.bb971:                                         ; preds = %if.end297
  store i32 0, i32* %depth, align 4
  %606 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %606, %struct.funcstack** %fsptr974, align 4
  br label %while.cond975

while.cond975:                                    ; preds = %while.body977, %sw.bb971
  %607 = load %struct.funcstack*, %struct.funcstack** %fsptr974, align 4
  %tobool976 = icmp ne %struct.funcstack* %607, null
  br i1 %tobool976, label %while.body977, label %while.end980

while.body977:                                    ; preds = %while.cond975
  %608 = load i32, i32* %depth, align 4
  %inc978 = add nsw i32 %608, 1
  store i32 %inc978, i32* %depth, align 4
  %609 = load %struct.funcstack*, %struct.funcstack** %fsptr974, align 4
  %prev979 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %609, i32 0, i32 0
  %610 = load %struct.funcstack*, %struct.funcstack** %prev979, align 4
  store %struct.funcstack* %610, %struct.funcstack** %fsptr974, align 4
  br label %while.cond975

while.end980:                                     ; preds = %while.cond975
  call void @addbufspc(i32 12)
  %611 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp981 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %611, i32 0, i32 3
  %612 = load i8*, i8** %bp981, align 4
  %613 = load i32, i32* %depth, align 4
  %call982 = call i32 (i8*, i8*, ...) @sprintf(i8* %612, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %613)
  %614 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp983 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %614, i32 0, i32 3
  %615 = load i8*, i8** %bp983, align 4
  %call984 = call i32 @strlen(i8* %615)
  %616 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp985 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %616, i32 0, i32 3
  %617 = load i8*, i8** %bp985, align 4
  %add.ptr986 = getelementptr inbounds i8, i8* %617, i32 %call984
  store i8* %add.ptr986, i8** %bp985, align 4
  br label %sw.epilog1054

sw.bb987:                                         ; preds = %if.end297
  %618 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tobool988 = icmp ne %struct.funcstack* %618, null
  br i1 %tobool988, label %land.lhs.true989, label %if.end1015

land.lhs.true989:                                 ; preds = %sw.bb987
  %619 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tp = getelementptr inbounds %struct.funcstack, %struct.funcstack* %619, i32 0, i32 6
  %620 = load i32, i32* %tp, align 4
  %cmp990 = icmp ne i32 %620, 0
  br i1 %cmp990, label %land.lhs.true992, label %if.end1015

land.lhs.true992:                                 ; preds = %land.lhs.true989
  %621 = load i32, i32* @intrap, align 4
  %tobool993 = icmp ne i32 %621, 0
  br i1 %tobool993, label %land.lhs.true994, label %if.then999

land.lhs.true994:                                 ; preds = %land.lhs.true992
  %622 = load i32, i32* @trapisfunc, align 4
  %tobool995 = icmp ne i32 %622, 0
  br i1 %tobool995, label %if.then999, label %land.lhs.true996

land.lhs.true996:                                 ; preds = %land.lhs.true994
  %623 = load i32, i32* @traplocallevel, align 4
  %624 = load i32, i32* @locallevel, align 4
  %cmp997 = icmp eq i32 %623, %624
  br i1 %cmp997, label %if.end1015, label %if.then999

if.then999:                                       ; preds = %land.lhs.true996, %land.lhs.true994, %land.lhs.true992
  %625 = load i32, i32* @lineno, align 4
  %626 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %flineno1001 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %626, i32 0, i32 4
  %627 = load i32, i32* %flineno1001, align 4
  %add1002 = add nsw i32 %625, %627
  store i32 %add1002, i32* %flineno, align 4
  %628 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tp1003 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %628, i32 0, i32 6
  %629 = load i32, i32* %tp1003, align 4
  %cmp1004 = icmp eq i32 %629, 2
  br i1 %cmp1004, label %if.then1006, label %if.end1008

if.then1006:                                      ; preds = %if.then999
  %630 = load i32, i32* @lineno, align 4
  %dec1007 = add nsw i32 %630, -1
  store i32 %dec1007, i32* @lineno, align 4
  br label %if.end1008

if.end1008:                                       ; preds = %if.then1006, %if.then999
  call void @addbufspc(i32 12)
  %631 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1009 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %631, i32 0, i32 3
  %632 = load i8*, i8** %bp1009, align 4
  %633 = load i32, i32* %flineno, align 4
  %call1010 = call i32 (i8*, i8*, ...) @sprintf(i8* %632, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %633)
  %634 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1011 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %634, i32 0, i32 3
  %635 = load i8*, i8** %bp1011, align 4
  %call1012 = call i32 @strlen(i8* %635)
  %636 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1013 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %636, i32 0, i32 3
  %637 = load i8*, i8** %bp1013, align 4
  %add.ptr1014 = getelementptr inbounds i8, i8* %637, i32 %call1012
  store i8* %add.ptr1014, i8** %bp1013, align 4
  br label %sw.epilog1054

if.end1015:                                       ; preds = %land.lhs.true996, %land.lhs.true989, %sw.bb987
  br label %sw.bb1016

sw.bb1016:                                        ; preds = %if.end297, %if.end1015
  call void @addbufspc(i32 12)
  %638 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1017 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %638, i32 0, i32 3
  %639 = load i8*, i8** %bp1017, align 4
  %640 = load i32, i32* @lineno, align 4
  %call1018 = call i32 (i8*, i8*, ...) @sprintf(i8* %639, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %640)
  %641 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1019 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %641, i32 0, i32 3
  %642 = load i8*, i8** %bp1019, align 4
  %call1020 = call i32 @strlen(i8* %642)
  %643 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1021 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %643, i32 0, i32 3
  %644 = load i8*, i8** %bp1021, align 4
  %add.ptr1022 = getelementptr inbounds i8, i8* %644, i32 %call1020
  store i8* %add.ptr1022, i8** %bp1021, align 4
  br label %sw.epilog1054

sw.bb1023:                                        ; preds = %if.end297
  %645 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tobool1024 = icmp ne %struct.funcstack* %645, null
  br i1 %tobool1024, label %land.lhs.true1025, label %if.else1043

land.lhs.true1025:                                ; preds = %sw.bb1023
  %646 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tp1026 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %646, i32 0, i32 6
  %647 = load i32, i32* %tp1026, align 4
  %cmp1027 = icmp ne i32 %647, 0
  br i1 %cmp1027, label %land.lhs.true1029, label %if.else1043

land.lhs.true1029:                                ; preds = %land.lhs.true1025
  %648 = load i32, i32* @intrap, align 4
  %tobool1030 = icmp ne i32 %648, 0
  br i1 %tobool1030, label %land.lhs.true1031, label %if.then1036

land.lhs.true1031:                                ; preds = %land.lhs.true1029
  %649 = load i32, i32* @trapisfunc, align 4
  %tobool1032 = icmp ne i32 %649, 0
  br i1 %tobool1032, label %if.then1036, label %land.lhs.true1033

land.lhs.true1033:                                ; preds = %land.lhs.true1031
  %650 = load i32, i32* @traplocallevel, align 4
  %651 = load i32, i32* @locallevel, align 4
  %cmp1034 = icmp eq i32 %650, %651
  br i1 %cmp1034, label %if.else1043, label %if.then1036

if.then1036:                                      ; preds = %land.lhs.true1033, %land.lhs.true1031, %land.lhs.true1029
  %652 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %filename = getelementptr inbounds %struct.funcstack, %struct.funcstack* %652, i32 0, i32 2
  %653 = load i8*, i8** %filename, align 4
  %tobool1037 = icmp ne i8* %653, null
  br i1 %tobool1037, label %cond.true1038, label %cond.false1040

cond.true1038:                                    ; preds = %if.then1036
  %654 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %filename1039 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %654, i32 0, i32 2
  %655 = load i8*, i8** %filename1039, align 4
  br label %cond.end1041

cond.false1040:                                   ; preds = %if.then1036
  br label %cond.end1041

cond.end1041:                                     ; preds = %cond.false1040, %cond.true1038
  %cond1042 = phi i8* [ %655, %cond.true1038 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), %cond.false1040 ]
  %656 = load i32, i32* %arg, align 4
  call void @promptpath(i8* %cond1042, i32 %656, i32 0)
  br label %if.end1049

if.else1043:                                      ; preds = %land.lhs.true1033, %land.lhs.true1025, %sw.bb1023
  %657 = load i8*, i8** @scriptfilename, align 4
  %tobool1044 = icmp ne i8* %657, null
  br i1 %tobool1044, label %cond.true1045, label %cond.false1046

cond.true1045:                                    ; preds = %if.else1043
  %658 = load i8*, i8** @scriptfilename, align 4
  br label %cond.end1047

cond.false1046:                                   ; preds = %if.else1043
  %659 = load i8*, i8** @argzero, align 4
  br label %cond.end1047

cond.end1047:                                     ; preds = %cond.false1046, %cond.true1045
  %cond1048 = phi i8* [ %658, %cond.true1045 ], [ %659, %cond.false1046 ]
  %660 = load i32, i32* %arg, align 4
  call void @promptpath(i8* %cond1048, i32 %660, i32 0)
  br label %if.end1049

if.end1049:                                       ; preds = %cond.end1047, %cond.end1041
  br label %sw.epilog1054

sw.bb1050:                                        ; preds = %if.end297
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb1051:                                        ; preds = %if.end297
  %661 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1052 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %661, i32 0, i32 6
  %662 = load i8*, i8** %fm1052, align 4
  %incdec.ptr1053 = getelementptr inbounds i8, i8* %662, i32 1
  store i8* %incdec.ptr1053, i8** %fm1052, align 4
  br label %sw.epilog1054

sw.epilog1054:                                    ; preds = %if.end297, %sw.bb1051, %if.end1049, %sw.bb1016, %if.end1008, %while.end980, %if.end970, %if.end965, %if.end960, %if.end908, %sw.bb855, %if.end854, %sw.bb826, %sw.bb822, %sw.bb815, %sw.bb808, %if.end807, %if.end795, %sw.bb781, %if.end776, %if.end667, %if.end646, %if.then630, %if.end620, %if.end600, %land.end579, %land.end567, %land.end550, %land.end538, %land.end521, %land.end512, %land.end503, %land.end494, %land.end485, %land.end476, %do.end470, %do.end404, %do.end374, %for.end348, %sw.bb320, %cond.end318, %cond.end312, %cond.end306, %sw.bb301, %sw.bb300
  br label %if.end1102

if.else1055:                                      ; preds = %land.lhs.true, %for.body
  %663 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1056 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %663, i32 0, i32 6
  %664 = load i8*, i8** %fm1056, align 4
  %665 = load i8, i8* %664, align 1
  %conv1057 = sext i8 %665 to i32
  %cmp1058 = icmp eq i32 %conv1057, 33
  br i1 %cmp1058, label %land.lhs.true1060, label %if.else1082

land.lhs.true1060:                                ; preds = %if.else1055
  %666 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 141), align 1
  %conv1061 = sext i8 %666 to i32
  %tobool1062 = icmp ne i32 %conv1061, 0
  br i1 %tobool1062, label %if.then1063, label %if.else1082

if.then1063:                                      ; preds = %land.lhs.true1060
  %667 = load i32, i32* %doprint.addr, align 4
  %tobool1064 = icmp ne i32 %667, 0
  br i1 %tobool1064, label %if.then1065, label %if.end1081

if.then1065:                                      ; preds = %if.then1063
  %668 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1066 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %668, i32 0, i32 6
  %669 = load i8*, i8** %fm1066, align 4
  %arrayidx1067 = getelementptr inbounds i8, i8* %669, i32 1
  %670 = load i8, i8* %arrayidx1067, align 1
  %conv1068 = sext i8 %670 to i32
  %cmp1069 = icmp eq i32 %conv1068, 33
  br i1 %cmp1069, label %if.then1071, label %if.else1074

if.then1071:                                      ; preds = %if.then1065
  %671 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1072 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %671, i32 0, i32 6
  %672 = load i8*, i8** %fm1072, align 4
  %incdec.ptr1073 = getelementptr inbounds i8, i8* %672, i32 1
  store i8* %incdec.ptr1073, i8** %fm1072, align 4
  call void @addbufspc(i32 1)
  call void @pputc(i8 signext 33)
  br label %if.end1080

if.else1074:                                      ; preds = %if.then1065
  call void @addbufspc(i32 12)
  %673 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1075 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %673, i32 0, i32 3
  %674 = load i8*, i8** %bp1075, align 4
  %675 = load i32, i32* @curhist, align 4
  call void @convbase(i8* %674, i32 %675, i32 10)
  %676 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1076 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %676, i32 0, i32 3
  %677 = load i8*, i8** %bp1076, align 4
  %call1077 = call i32 @strlen(i8* %677)
  %678 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1078 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %678, i32 0, i32 3
  %679 = load i8*, i8** %bp1078, align 4
  %add.ptr1079 = getelementptr inbounds i8, i8* %679, i32 %call1077
  store i8* %add.ptr1079, i8** %bp1078, align 4
  br label %if.end1080

if.end1080:                                       ; preds = %if.else1074, %if.then1071
  br label %if.end1081

if.end1081:                                       ; preds = %if.end1080, %if.then1063
  br label %if.end1101

if.else1082:                                      ; preds = %land.lhs.true1060, %if.else1055
  %680 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1084 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %680, i32 0, i32 6
  %681 = load i8*, i8** %fm1084, align 4
  %682 = load i8, i8* %681, align 1
  %conv1085 = sext i8 %682 to i32
  %cmp1086 = icmp eq i32 %conv1085, -125
  br i1 %cmp1086, label %cond.true1088, label %cond.false1092

cond.true1088:                                    ; preds = %if.else1082
  %683 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1089 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %683, i32 0, i32 6
  %684 = load i8*, i8** %fm1089, align 4
  %incdec.ptr1090 = getelementptr inbounds i8, i8* %684, i32 1
  store i8* %incdec.ptr1090, i8** %fm1089, align 4
  %685 = load i8, i8* %incdec.ptr1090, align 1
  %conv1091 = sext i8 %685 to i32
  %xor = xor i32 %conv1091, 32
  br label %cond.end1095

cond.false1092:                                   ; preds = %if.else1082
  %686 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1093 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %686, i32 0, i32 6
  %687 = load i8*, i8** %fm1093, align 4
  %688 = load i8, i8* %687, align 1
  %conv1094 = sext i8 %688 to i32
  br label %cond.end1095

cond.end1095:                                     ; preds = %cond.false1092, %cond.true1088
  %cond1096 = phi i32 [ %xor, %cond.true1088 ], [ %conv1094, %cond.false1092 ]
  %conv1097 = trunc i32 %cond1096 to i8
  store i8 %conv1097, i8* %c, align 1
  %689 = load i32, i32* %doprint.addr, align 4
  %tobool1098 = icmp ne i32 %689, 0
  br i1 %tobool1098, label %if.then1099, label %if.end1100

if.then1099:                                      ; preds = %cond.end1095
  call void @addbufspc(i32 1)
  %690 = load i8, i8* %c, align 1
  call void @pputc(i8 signext %690)
  br label %if.end1100

if.end1100:                                       ; preds = %if.then1099, %cond.end1095
  br label %if.end1101

if.end1101:                                       ; preds = %if.end1100, %if.end1081
  br label %if.end1102

if.end1102:                                       ; preds = %if.end1101, %sw.epilog1054
  br label %for.inc1103

for.inc1103:                                      ; preds = %if.end1102, %if.then747, %sw.default296, %if.end295, %while.end279, %while.end270, %while.end261, %if.end236
  %691 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1104 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %691, i32 0, i32 6
  %692 = load i8*, i8** %fm1104, align 4
  %incdec.ptr1105 = getelementptr inbounds i8, i8* %692, i32 1
  store i8* %incdec.ptr1105, i8** %fm1104, align 4
  br label %for.cond

for.end1106:                                      ; preds = %land.end
  %693 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm1107 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %693, i32 0, i32 6
  %694 = load i8*, i8** %fm1107, align 4
  %695 = load i8, i8* %694, align 1
  %conv1108 = sext i8 %695 to i32
  store i32 %conv1108, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end1106, %sw.bb1050, %if.then654, %if.then617, %if.then597, %if.then234, %if.then209
  %696 = load i32, i32* %retval, align 4
  ret i32 %696
}

; Function Attrs: noinline nounwind
define internal void @addbufspc(i32 %need) #0 {
entry:
  %need.addr = alloca i32, align 4
  %bo = alloca i32, align 4
  %bo1 = alloca i32, align 4
  %bufline_off = alloca i32, align 4
  store i32 %need, i32* %need.addr, align 4
  %0 = load i32, i32* %need.addr, align 4
  %mul = mul nsw i32 %0, 2
  store i32 %mul, i32* %need.addr, align 4
  %1 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %1, i32 0, i32 3
  %2 = load i8*, i8** %bp, align 4
  %3 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %3, i32 0, i32 1
  %4 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = load i32, i32* %need.addr, align 4
  %add = add nsw i32 %sub.ptr.sub, %5
  %6 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufspc = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %6, i32 0, i32 2
  %7 = load i32, i32* %bufspc, align 4
  %cmp = icmp sgt i32 %add, %7
  br i1 %cmp, label %if.then, label %if.end47

if.then:                                          ; preds = %entry
  %8 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp1 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %8, i32 0, i32 3
  %9 = load i8*, i8** %bp1, align 4
  %10 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf2 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %10, i32 0, i32 1
  %11 = load i8*, i8** %buf2, align 4
  %sub.ptr.lhs.cast3 = ptrtoint i8* %9 to i32
  %sub.ptr.rhs.cast4 = ptrtoint i8* %11 to i32
  %sub.ptr.sub5 = sub i32 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  store i32 %sub.ptr.sub5, i32* %bo, align 4
  %12 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp16 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %12, i32 0, i32 5
  %13 = load i8*, i8** %bp16, align 4
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp17 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %14, i32 0, i32 5
  %15 = load i8*, i8** %bp17, align 4
  %16 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf8 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %16, i32 0, i32 1
  %17 = load i8*, i8** %buf8, align 4
  %sub.ptr.lhs.cast9 = ptrtoint i8* %15 to i32
  %sub.ptr.rhs.cast10 = ptrtoint i8* %17 to i32
  %sub.ptr.sub11 = sub i32 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub.ptr.sub11, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %bo1, align 4
  %18 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufline = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %18, i32 0, i32 4
  %19 = load i8*, i8** %bufline, align 4
  %tobool12 = icmp ne i8* %19, null
  br i1 %tobool12, label %cond.true13, label %cond.false19

cond.true13:                                      ; preds = %cond.end
  %20 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufline14 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %20, i32 0, i32 4
  %21 = load i8*, i8** %bufline14, align 4
  %22 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf15 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %22, i32 0, i32 1
  %23 = load i8*, i8** %buf15, align 4
  %sub.ptr.lhs.cast16 = ptrtoint i8* %21 to i32
  %sub.ptr.rhs.cast17 = ptrtoint i8* %23 to i32
  %sub.ptr.sub18 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true13
  %cond21 = phi i32 [ %sub.ptr.sub18, %cond.true13 ], [ -1, %cond.false19 ]
  store i32 %cond21, i32* %bufline_off, align 4
  %24 = load i32, i32* %need.addr, align 4
  %and = and i32 %24, 255
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %cond.end20
  %25 = load i32, i32* %need.addr, align 4
  %or = or i32 %25, 255
  %add24 = add nsw i32 %or, 1
  store i32 %add24, i32* %need.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %cond.end20
  %26 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf25 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %26, i32 0, i32 1
  %27 = load i8*, i8** %buf25, align 4
  %28 = load i32, i32* %need.addr, align 4
  %29 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufspc26 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %29, i32 0, i32 2
  %30 = load i32, i32* %bufspc26, align 4
  %add27 = add nsw i32 %30, %28
  store i32 %add27, i32* %bufspc26, align 4
  %call = call i8* @realloc(i8* %27, i32 %add27)
  %31 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf28 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %31, i32 0, i32 1
  store i8* %call, i8** %buf28, align 4
  %32 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf29 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %32, i32 0, i32 1
  %33 = load i8*, i8** %buf29, align 4
  %34 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufspc30 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %34, i32 0, i32 2
  %35 = load i32, i32* %bufspc30, align 4
  %add.ptr = getelementptr inbounds i8, i8* %33, i32 %35
  %36 = load i32, i32* %need.addr, align 4
  %idx.neg = sub i32 0, %36
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr, i32 %idx.neg
  %37 = load i32, i32* %need.addr, align 4
  call void @llvm.memset.p0i8.i32(i8* %add.ptr31, i8 0, i32 %37, i32 1, i1 false)
  %38 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf32 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %38, i32 0, i32 1
  %39 = load i8*, i8** %buf32, align 4
  %40 = load i32, i32* %bo, align 4
  %add.ptr33 = getelementptr inbounds i8, i8* %39, i32 %40
  %41 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp34 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %41, i32 0, i32 3
  store i8* %add.ptr33, i8** %bp34, align 4
  %42 = load i32, i32* %bo1, align 4
  %cmp35 = icmp ne i32 %42, -1
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end
  %43 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf37 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %43, i32 0, i32 1
  %44 = load i8*, i8** %buf37, align 4
  %45 = load i32, i32* %bo1, align 4
  %add.ptr38 = getelementptr inbounds i8, i8* %44, i32 %45
  %46 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp139 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %46, i32 0, i32 5
  store i8* %add.ptr38, i8** %bp139, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end
  %47 = load i32, i32* %bufline_off, align 4
  %cmp41 = icmp ne i32 %47, -1
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end40
  %48 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf43 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %48, i32 0, i32 1
  %49 = load i8*, i8** %buf43, align 4
  %50 = load i32, i32* %bufline_off, align 4
  %add.ptr44 = getelementptr inbounds i8, i8* %49, i32 %50
  %51 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufline45 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %51, i32 0, i32 4
  store i8* %add.ptr44, i8** %bufline45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %entry
  ret void
}

declare void @chuck(i8*) #1

; Function Attrs: noinline nounwind
define void @stradd(i8* %d) #0 {
entry:
  %d.addr = alloca i8*, align 4
  %ums = alloca i8*, align 4
  %ups = alloca i8*, align 4
  %upslen = alloca i32, align 4
  %eol = alloca i32, align 4
  %mbs = alloca %struct.__mbstate_t, align 4
  %cc = alloca i32, align 4
  %pc = alloca i8*, align 4
  %cnt = alloca i32, align 4
  store i8* %d, i8** %d.addr, align 4
  store i32 0, i32* %eol, align 4
  %0 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 8, i32 4, i1 false)
  %1 = load i8*, i8** %d.addr, align 4
  %call = call i8* @ztrdup(i8* %1)
  store i8* %call, i8** %ums, align 4
  %2 = load i8*, i8** %ums, align 4
  %call1 = call i8* @unmetafy(i8* %2, i32* %upslen)
  store i8* %call1, i8** %ups, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %3 = load i32, i32* %upslen, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end12

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %eol, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i8*, i8** %ups, align 4
  %6 = load i32, i32* %upslen, align 4
  %call2 = call i32 @mbrtowc(i32* %cc, i8* %5, i32 %6, %struct.__mbstate_t* %mbs)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, i32* %cnt, align 4
  %7 = load i32, i32* %cnt, align 4
  switch i32 %7, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb3
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 1, i32* %eol, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %cond.end, %sw.bb
  %8 = load i8*, i8** %ups, align 4
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %call4 = call i8* @nicechar(i32 %conv)
  store i8* %call4, i8** %pc, align 4
  store i32 1, i32* %cnt, align 4
  %10 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %10, i8 0, i32 8, i32 4, i1 false)
  br label %sw.epilog

sw.bb5:                                           ; preds = %cond.end
  store i32 1, i32* %cnt, align 4
  br label %sw.default

sw.default:                                       ; preds = %cond.end, %sw.bb5
  call void @mb_charinit()
  %11 = load i32, i32* %cc, align 4
  %call6 = call i8* @wcs_nicechar(i32 %11, i32* null, i8** null)
  store i8* %call6, i8** %pc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3
  %12 = load i8*, i8** %pc, align 4
  %call7 = call i32 @strlen(i8* %12)
  call void @addbufspc(i32 %call7)
  %13 = load i32, i32* %cnt, align 4
  %14 = load i32, i32* %upslen, align 4
  %sub = sub i32 %14, %13
  store i32 %sub, i32* %upslen, align 4
  %15 = load i32, i32* %cnt, align 4
  %16 = load i8*, i8** %ups, align 4
  %add.ptr = getelementptr inbounds i8, i8* %16, i32 %15
  store i8* %add.ptr, i8** %ups, align 4
  br label %while.cond8

while.cond8:                                      ; preds = %while.body10, %sw.epilog
  %17 = load i8*, i8** %pc, align 4
  %18 = load i8, i8* %17, align 1
  %tobool9 = icmp ne i8 %18, 0
  br i1 %tobool9, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond8
  %19 = load i8*, i8** %pc, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %pc, align 4
  %20 = load i8, i8* %19, align 1
  %21 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %21, i32 0, i32 3
  %22 = load i8*, i8** %bp, align 4
  %incdec.ptr11 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr11, i8** %bp, align 4
  store i8 %20, i8* %22, align 1
  br label %while.cond8

while.end:                                        ; preds = %while.cond8
  br label %while.cond

while.end12:                                      ; preds = %while.cond
  %23 = load i8*, i8** %ums, align 4
  call void @free(i8* %23)
  ret void
}

declare i8* @unmetafy(i8*, i32*) #1

declare i32 @mbrtowc(i32*, i8*, i32, %struct.__mbstate_t*) #1

declare i8* @nicechar(i32) #1

declare void @mb_charinit() #1

declare i8* @wcs_nicechar(i32, i32*, i8**) #1

declare i32 @strlen(i8*) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind
define void @tsetcap(i32 %cap, i32 %flags) #0 {
entry:
  %cap.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %glitch = alloca i32, align 4
  store i32 %cap, i32* %cap.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %cap.addr, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @tclen, i32 0, i32 %0
  %1 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 167), align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end63, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* @termflags, align 4
  %and = and i32 %3, 7
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end63, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %4 = load i32, i32* %flags.addr, align 4
  %and4 = and i32 %4, 3
  switch i32 %and4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.then
  %5 = load i32, i32* %cap.addr, align 4
  %arrayidx5 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %5
  %6 = load i8*, i8** %arrayidx5, align 4
  %call = call i32 @tputs(i8* %6, i32 1, i32 (i32)* @putraw)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  br label %sw.default

sw.default:                                       ; preds = %if.then, %sw.bb6
  %7 = load i32, i32* %cap.addr, align 4
  %arrayidx7 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %7
  %8 = load i8*, i8** %arrayidx7, align 4
  %call8 = call i32 @tputs(i8* %8, i32 1, i32 (i32)* @putshout)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  %9 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %9, i32 0, i32 8
  %10 = load i32, i32* %dontcount, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %sw.bb9
  call void @addbufspc(i32 1)
  %11 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %11, i32 0, i32 3
  %12 = load i8*, i8** %bp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %bp, align 4
  store i8 -120, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then11, %sw.bb9
  %13 = load i32, i32* %cap.addr, align 4
  %arrayidx12 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %13
  %14 = load i8*, i8** %arrayidx12, align 4
  %call13 = call i32 @tputs(i8* %14, i32 1, i32 (i32)* @putstr)
  %15 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount14 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %15, i32 0, i32 8
  %16 = load i32, i32* %dontcount14, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.end35, label %if.then16

if.then16:                                        ; preds = %if.end
  store i32 0, i32* %glitch, align 4
  %17 = load i32, i32* %cap.addr, align 4
  %cmp = icmp eq i32 %17, 19
  br i1 %cmp, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then16
  %18 = load i32, i32* %cap.addr, align 4
  %cmp17 = icmp eq i32 %18, 22
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %lor.lhs.false, %if.then16
  %call19 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store i32 %call19, i32* %glitch, align 4
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false
  %19 = load i32, i32* %cap.addr, align 4
  %cmp20 = icmp eq i32 %19, 20
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.else
  %20 = load i32, i32* %cap.addr, align 4
  %cmp22 = icmp eq i32 %20, 23
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %lor.lhs.false21, %if.else
  %call24 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call24, i32* %glitch, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then18
  %21 = load i32, i32* %glitch, align 4
  %cmp27 = icmp slt i32 %21, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  store i32 0, i32* %glitch, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  %22 = load i32, i32* %glitch, align 4
  %add = add nsw i32 %22, 1
  call void @addbufspc(i32 %add)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end29
  %23 = load i32, i32* %glitch, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %glitch, align 4
  %tobool30 = icmp ne i32 %23, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp31 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %24, i32 0, i32 3
  %25 = load i8*, i8** %bp31, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr32, i8** %bp31, align 4
  store i8 -95, i8* %25, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp33 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %26, i32 0, i32 3
  %27 = load i8*, i8** %bp33, align 4
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %bp33, align 4
  store i8 -118, i8* %27, align 1
  br label %if.end35

if.end35:                                         ; preds = %while.end, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end35, %sw.default, %sw.bb
  %28 = load i32, i32* %flags.addr, align 4
  %and36 = and i32 %28, 4
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end62

if.then38:                                        ; preds = %sw.epilog
  %29 = load i32, i32* %flags.addr, align 4
  %and39 = and i32 %29, -5
  store i32 %and39, i32* %flags.addr, align 4
  %30 = load i32, i32* @txtattrmask, align 4
  %and40 = and i32 %30, 1
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %land.lhs.true42, label %if.end45

land.lhs.true42:                                  ; preds = %if.then38
  %31 = load i32, i32* %cap.addr, align 4
  %cmp43 = icmp ne i32 %31, 18
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %land.lhs.true42
  %32 = load i32, i32* %flags.addr, align 4
  call void @tsetcap(i32 18, i32 %32)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.lhs.true42, %if.then38
  %33 = load i32, i32* @txtattrmask, align 4
  %and46 = and i32 %33, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  %34 = load i32, i32* %flags.addr, align 4
  call void @tsetcap(i32 19, i32 %34)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  %35 = load i32, i32* @txtattrmask, align 4
  %and50 = and i32 %35, 4
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  %36 = load i32, i32* %flags.addr, align 4
  call void @tsetcap(i32 20, i32 %36)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %37 = load i32, i32* @txtattrmask, align 4
  %and54 = and i32 %37, 8
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  %38 = load i32, i32* @txtattrmask, align 4
  call void @set_colour_attribute(i32 %38, i32 0, i32 2)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  %39 = load i32, i32* @txtattrmask, align 4
  %and58 = and i32 %39, 16
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  %40 = load i32, i32* @txtattrmask, align 4
  call void @set_colour_attribute(i32 %40, i32 1, i32 2)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %sw.epilog
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

declare i32 @tputs(i8*, i32, i32 (i32)*) #1

declare i32 @putraw(i32) #1

declare i32 @putshout(i32) #1

; Function Attrs: noinline nounwind
define i32 @putstr(i32 %d) #0 {
entry:
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  call void @addbufspc(i32 1)
  %0 = load i32, i32* %d.addr, align 4
  %conv = trunc i32 %0 to i8
  call void @pputc(i8 signext %conv)
  ret i32 0
}

declare i32 @tgetnum(i8*) #1

; Function Attrs: noinline nounwind
define void @set_colour_attribute(i32 %atr, i32 %fg_bg, i32 %flags) #0 {
entry:
  %atr.addr = alloca i32, align 4
  %fg_bg.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %do_free = alloca i32, align 4
  %is_prompt = alloca i32, align 4
  %colour = alloca i32, align 4
  %tc = alloca i32, align 4
  %def = alloca i32, align 4
  %use_termcap = alloca i32, align 4
  store i32 %atr, i32* %atr.addr, align 4
  store i32 %fg_bg, i32* %fg_bg.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %is_prompt, align 4
  %1 = load i32, i32* %fg_bg.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %atr.addr, align 4
  %and1 = and i32 %2, 1044480
  %shr = ashr i32 %and1, 12
  store i32 %shr, i32* %colour, align 4
  store i32 32, i32* %tc, align 4
  %3 = load i32, i32* %atr.addr, align 4
  %and2 = and i32 %3, 256
  store i32 %and2, i32* %def, align 4
  %4 = load i32, i32* %atr.addr, align 4
  %and3 = and i32 %4, 268435456
  store i32 %and3, i32* %use_termcap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %atr.addr, align 4
  %and4 = and i32 %5, 267386880
  %shr5 = ashr i32 %and4, 20
  store i32 %shr5, i32* %colour, align 4
  store i32 33, i32* %tc, align 4
  %6 = load i32, i32* %atr.addr, align 4
  %and6 = and i32 %6, 512
  store i32 %and6, i32* %def, align 4
  %7 = load i32, i32* %atr.addr, align 4
  %and7 = and i32 %7, 536870912
  store i32 %and7, i32* %use_termcap, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %def, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %colour, align 4
  %cmp9 = icmp sgt i32 %9, 7
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, i32* %use_termcap, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then11, label %if.end40

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load i32, i32* %tc, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @tclen, i32 0, i32 %11
  %12 = load i32, i32* %arrayidx, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %land.lhs.true13, label %if.end36

land.lhs.true13:                                  ; preds = %if.then11
  %13 = load i32, i32* @tccolours, align 4
  %cmp14 = icmp slt i32 %13, 0
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true13
  %14 = load i32, i32* %colour, align 4
  %15 = load i32, i32* @tccolours, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %if.then17, label %if.end36

if.then17:                                        ; preds = %lor.lhs.false15, %land.lhs.true13
  %16 = load i32, i32* %is_prompt, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %if.then19, label %if.else31

if.then19:                                        ; preds = %if.then17
  %17 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %17, i32 0, i32 8
  %18 = load i32, i32* %dontcount, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.then19
  call void @addbufspc(i32 1)
  %19 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %19, i32 0, i32 3
  %20 = load i8*, i8** %bp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %bp, align 4
  store i8 -120, i8* %20, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then19
  %21 = load i32, i32* %tc, align 4
  %arrayidx23 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %21
  %22 = load i8*, i8** %arrayidx23, align 4
  %23 = load i32, i32* %colour, align 4
  %24 = load i32, i32* %colour, align 4
  %call = call i8* @tgoto(i8* %22, i32 %23, i32 %24)
  %call24 = call i32 @tputs(i8* %call, i32 1, i32 (i32)* @putstr)
  %25 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount25 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %25, i32 0, i32 8
  %26 = load i32, i32* %dontcount25, align 4
  %tobool26 = icmp ne i32 %26, 0
  br i1 %tobool26, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @addbufspc(i32 1)
  %27 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp28 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %27, i32 0, i32 3
  %28 = load i8*, i8** %bp28, align 4
  %incdec.ptr29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr29, i8** %bp28, align 4
  store i8 -118, i8* %28, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end22
  br label %if.end35

if.else31:                                        ; preds = %if.then17
  %29 = load i32, i32* %tc, align 4
  %arrayidx32 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %29
  %30 = load i8*, i8** %arrayidx32, align 4
  %31 = load i32, i32* %colour, align 4
  %32 = load i32, i32* %colour, align 4
  %call33 = call i8* @tgoto(i8* %30, i32 %31, i32 %32)
  %call34 = call i32 @tputs(i8* %call33, i32 1, i32 (i32)* @putshout)
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.end30
  br label %if.end80

if.end36:                                         ; preds = %lor.lhs.false15, %if.then11
  %33 = load i32, i32* %colour, align 4
  %cmp37 = icmp sgt i32 %33, 7
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  br label %if.end80

if.end39:                                         ; preds = %if.end36
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %lor.lhs.false, %if.end
  %34 = load i8*, i8** @colseq_buf, align 4
  %cmp41 = icmp eq i8* %34, null
  %conv = zext i1 %cmp41 to i32
  store i32 %conv, i32* %do_free, align 4
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @allocate_colour_buffer()
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40
  %35 = load i8*, i8** @colseq_buf, align 4
  %36 = load i32, i32* %fg_bg.addr, align 4
  %arrayidx44 = getelementptr inbounds [2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 %36
  %start = getelementptr inbounds %struct.colour_sequences, %struct.colour_sequences* %arrayidx44, i32 0, i32 0
  %37 = load i8*, i8** %start, align 4
  %call45 = call i8* @strcpy(i8* %35, i8* %37)
  %38 = load i8*, i8** @colseq_buf, align 4
  %39 = load i8*, i8** @colseq_buf, align 4
  %call46 = call i32 @strlen(i8* %39)
  %add.ptr = getelementptr inbounds i8, i8* %38, i32 %call46
  store i8* %add.ptr, i8** %ptr, align 4
  %40 = load i32, i32* %def, align 4
  %tobool47 = icmp ne i32 %40, 0
  br i1 %tobool47, label %if.then48, label %if.else54

if.then48:                                        ; preds = %if.end43
  %41 = load i8*, i8** %ptr, align 4
  %42 = load i32, i32* %fg_bg.addr, align 4
  %arrayidx49 = getelementptr inbounds [2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 %42
  %def50 = getelementptr inbounds %struct.colour_sequences, %struct.colour_sequences* %arrayidx49, i32 0, i32 2
  %43 = load i8*, i8** %def50, align 4
  %call51 = call i8* @strcpy(i8* %41, i8* %43)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then48
  %44 = load i8*, i8** %ptr, align 4
  %45 = load i8, i8* %44, align 1
  %tobool52 = icmp ne i8 %45, 0
  br i1 %tobool52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %ptr, align 4
  %incdec.ptr53 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr53, i8** %ptr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end57

if.else54:                                        ; preds = %if.end43
  %47 = load i32, i32* %colour, align 4
  %add = add nsw i32 %47, 48
  %conv55 = trunc i32 %add to i8
  %48 = load i8*, i8** %ptr, align 4
  %incdec.ptr56 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr56, i8** %ptr, align 4
  store i8 %conv55, i8* %48, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %while.end
  %49 = load i8*, i8** %ptr, align 4
  %50 = load i32, i32* %fg_bg.addr, align 4
  %arrayidx58 = getelementptr inbounds [2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 %50
  %end = getelementptr inbounds %struct.colour_sequences, %struct.colour_sequences* %arrayidx58, i32 0, i32 1
  %51 = load i8*, i8** %end, align 4
  %call59 = call i8* @strcpy(i8* %49, i8* %51)
  %52 = load i32, i32* %is_prompt, align 4
  %tobool60 = icmp ne i32 %52, 0
  br i1 %tobool60, label %if.then61, label %if.else75

if.then61:                                        ; preds = %if.end57
  %53 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount62 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %53, i32 0, i32 8
  %54 = load i32, i32* %dontcount62, align 4
  %tobool63 = icmp ne i32 %54, 0
  br i1 %tobool63, label %if.end67, label %if.then64

if.then64:                                        ; preds = %if.then61
  call void @addbufspc(i32 1)
  %55 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp65 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %55, i32 0, i32 3
  %56 = load i8*, i8** %bp65, align 4
  %incdec.ptr66 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr66, i8** %bp65, align 4
  store i8 -120, i8* %56, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.then61
  %57 = load i8*, i8** @colseq_buf, align 4
  %call68 = call i32 @tputs(i8* %57, i32 1, i32 (i32)* @putstr)
  %58 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount69 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %58, i32 0, i32 8
  %59 = load i32, i32* %dontcount69, align 4
  %tobool70 = icmp ne i32 %59, 0
  br i1 %tobool70, label %if.end74, label %if.then71

if.then71:                                        ; preds = %if.end67
  call void @addbufspc(i32 1)
  %60 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp72 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %60, i32 0, i32 3
  %61 = load i8*, i8** %bp72, align 4
  %incdec.ptr73 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr73, i8** %bp72, align 4
  store i8 -118, i8* %61, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end67
  br label %if.end77

if.else75:                                        ; preds = %if.end57
  %62 = load i8*, i8** @colseq_buf, align 4
  %call76 = call i32 @tputs(i8* %62, i32 1, i32 (i32)* @putshout)
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.end74
  %63 = load i32, i32* %do_free, align 4
  %tobool78 = icmp ne i32 %63, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end77
  call void @free_colour_buffer()
  br label %if.end80

if.end80:                                         ; preds = %if.end35, %if.then38, %if.then79, %if.end77
  ret void
}

; Function Attrs: noinline nounwind
define internal void @pputc(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %and = and i32 %conv, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %2, i32 0, i32 3
  %3 = load i8*, i8** %bp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %bp, align 4
  store i8 -125, i8* %3, align 1
  %4 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %4 to i32
  %xor = xor i32 %conv1, 32
  %conv2 = trunc i32 %xor to i8
  store i8 %conv2, i8* %c.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %c.addr, align 1
  %6 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp3 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %6, i32 0, i32 3
  %7 = load i8*, i8** %bp3, align 4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %bp3, align 4
  store i8 %5, i8* %7, align 1
  %8 = load i8, i8* %c.addr, align 1
  %conv5 = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv5, 10
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %9, i32 0, i32 8
  %10 = load i32, i32* %dontcount, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %11 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp9 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %11, i32 0, i32 3
  %12 = load i8*, i8** %bp9, align 4
  %13 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bufline = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %13, i32 0, i32 4
  store i8* %12, i8** %bufline, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define void @countprompt(i8* %str, i32* %wp, i32* %hp, i32 %overf) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %wp.addr = alloca i32*, align 4
  %hp.addr = alloca i32*, align 4
  %overf.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %s = alloca i32, align 4
  %wcw = alloca i32, align 4
  %multi = alloca i32, align 4
  %inchar = alloca i8, align 1
  %mbs = alloca %struct.__mbstate_t, align 4
  %wc = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32* %wp, i32** %wp.addr, align 4
  store i32* %hp, i32** %hp.addr, align 4
  store i32 %overf, i32* %overf.addr, align 4
  store i32 0, i32* %w, align 4
  store i32 1, i32* %h, align 4
  store i32 1, i32* %s, align 4
  store i32 0, i32* %multi, align 4
  %0 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 8, i32 4, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %str.addr, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %w, align 4
  %4 = load i32, i32* @zterm_columns, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %overf.addr, align 4
  %cmp1 = icmp sge i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %w, align 4
  %6 = load i32, i32* %h, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %7 = load i8*, i8** %str.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, -120
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %s, align 4
  br label %if.end55

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %str.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, -118
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 1, i32* %s, align 4
  br label %if.end54

if.else9:                                         ; preds = %if.else
  %11 = load i8*, i8** %str.addr, align 4
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, -95
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else9
  %13 = load i32, i32* %w, align 4
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, i32* %w, align 4
  br label %if.end53

if.else15:                                        ; preds = %if.else9
  %14 = load i32, i32* %s, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then17, label %if.end52

if.then17:                                        ; preds = %if.else15
  %15 = load i8*, i8** %str.addr, align 4
  %16 = load i8, i8* %15, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, -125
  br i1 %cmp19, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.then17
  %17 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  %18 = load i8, i8* %incdec.ptr, align 1
  %conv22 = sext i8 %18 to i32
  %xor = xor i32 %conv22, 32
  %conv23 = trunc i32 %xor to i8
  store i8 %conv23, i8* %inchar, align 1
  br label %if.end40

if.else24:                                        ; preds = %if.then17
  %19 = load i32, i32* %multi, align 4
  %tobool25 = icmp ne i32 %19, 0
  br i1 %tobool25, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.else24
  %20 = load i8*, i8** %str.addr, align 4
  %21 = load i8, i8* %20, align 1
  %conv27 = sext i8 %21 to i32
  %cmp28 = icmp eq i32 %conv27, 9
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.then26
  %22 = load i32, i32* %w, align 4
  %or = or i32 %22, 7
  %add = add nsw i32 %or, 1
  store i32 %add, i32* %w, align 4
  br label %for.inc

if.else31:                                        ; preds = %if.then26
  %23 = load i8*, i8** %str.addr, align 4
  %24 = load i8, i8* %23, align 1
  %conv32 = sext i8 %24 to i32
  %cmp33 = icmp eq i32 %conv32, 10
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.else31
  store i32 0, i32* %w, align 4
  %25 = load i32, i32* %h, align 4
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, i32* %h, align 4
  br label %for.inc

if.end37:                                         ; preds = %if.else31
  br label %if.end38

if.end38:                                         ; preds = %if.end37
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.else24
  %26 = load i8*, i8** %str.addr, align 4
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %inchar, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then21
  %call = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* %mbs)
  switch i32 %call, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb41
    i32 0, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end40
  store i32 1, i32* %multi, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end40
  %28 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %28, i8 0, i32 8, i32 4, i1 false)
  store i32 0, i32* %multi, align 4
  %29 = load i32, i32* %w, align 4
  %inc42 = add nsw i32 %29, 1
  store i32 %inc42, i32* %w, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end40
  store i32 0, i32* %multi, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end40
  %30 = load i32, i32* %wc, align 4
  %call44 = call i32 @wcwidth(i32 %30)
  store i32 %call44, i32* %wcw, align 4
  %31 = load i32, i32* %wcw, align 4
  %cmp45 = icmp sge i32 %31, 0
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %sw.default
  %32 = load i32, i32* %wcw, align 4
  %33 = load i32, i32* %w, align 4
  %add48 = add nsw i32 %33, %32
  store i32 %add48, i32* %w, align 4
  br label %if.end51

if.else49:                                        ; preds = %sw.default
  %34 = load i32, i32* %w, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, i32* %w, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  store i32 0, i32* %multi, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end51, %sw.bb43, %sw.bb41, %sw.bb
  br label %if.end52

if.end52:                                         ; preds = %sw.epilog, %if.else15
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then13
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then8
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then4
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %if.then35, %if.then30
  %35 = load i8*, i8** %str.addr, align 4
  %incdec.ptr56 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr56, i8** %str.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %w, align 4
  %37 = load i32, i32* @zterm_columns, align 4
  %cmp57 = icmp sge i32 %36, %37
  br i1 %cmp57, label %land.lhs.true59, label %if.end69

land.lhs.true59:                                  ; preds = %for.end
  %38 = load i32, i32* %overf.addr, align 4
  %cmp60 = icmp sge i32 %38, 0
  br i1 %cmp60, label %if.then62, label %if.end69

if.then62:                                        ; preds = %land.lhs.true59
  %39 = load i32, i32* %overf.addr, align 4
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %lor.lhs.false, label %if.then66

lor.lhs.false:                                    ; preds = %if.then62
  %40 = load i32, i32* %w, align 4
  %41 = load i32, i32* @zterm_columns, align 4
  %cmp64 = icmp sgt i32 %40, %41
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %lor.lhs.false, %if.then62
  store i32 0, i32* %w, align 4
  %42 = load i32, i32* %h, align 4
  %inc67 = add nsw i32 %42, 1
  store i32 %inc67, i32* %h, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %lor.lhs.false
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %land.lhs.true59, %for.end
  %43 = load i32*, i32** %wp.addr, align 4
  %tobool70 = icmp ne i32* %43, null
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end69
  %44 = load i32, i32* %w, align 4
  %45 = load i32*, i32** %wp.addr, align 4
  store i32 %44, i32* %45, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69
  %46 = load i32*, i32** %hp.addr, align 4
  %tobool73 = icmp ne i32* %46, null
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end72
  %47 = load i32, i32* %h, align 4
  %48 = load i32*, i32** %hp.addr, align 4
  store i32 %47, i32* %48, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end72
  ret void
}

declare i32 @wcwidth(i32) #1

; Function Attrs: noinline nounwind
define void @cmdpush(i32 %cmdtok) #0 {
entry:
  %cmdtok.addr = alloca i32, align 4
  store i32 %cmdtok, i32* %cmdtok.addr, align 4
  %0 = load i32, i32* @cmdsp, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @cmdsp, align 4
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %cmdtok.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i8*, i8** @cmdstack, align 4
  %4 = load i32, i32* @cmdsp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @cmdsp, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 %4
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @cmdpop() #0 {
entry:
  %0 = load i32, i32* @cmdsp, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @cmdsp, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @cmdsp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define i32 @match_colour(i8** %teststrp, i32 %is_fg, i32 %colour) #0 {
entry:
  %retval = alloca i32, align 4
  %teststrp.addr = alloca i8**, align 4
  %is_fg.addr = alloca i32, align 4
  %colour.addr = alloca i32, align 4
  %shft = alloca i32, align 4
  %on = alloca i32, align 4
  %named = alloca i32, align 4
  %tc = alloca i32, align 4
  store i8** %teststrp, i8*** %teststrp.addr, align 4
  store i32 %is_fg, i32* %is_fg.addr, align 4
  store i32 %colour, i32* %colour.addr, align 4
  store i32 0, i32* %named, align 4
  %0 = load i8**, i8*** %teststrp.addr, align 4
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %teststrp.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, 64
  store i32 %and, i32* %named, align 4
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load i8**, i8*** %teststrp.addr, align 4
  %call = call i32 @match_named_colour(i8** %5)
  store i32 %call, i32* %colour.addr, align 4
  %6 = load i32, i32* %colour.addr, align 4
  %cmp = icmp eq i32 %6, 8
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %7 = load i32, i32* %is_fg.addr, align 4
  %tobool5 = icmp ne i32 %7, 0
  %cond = select i1 %tobool5, i32 256, i32 512
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end7

if.else:                                          ; preds = %if.then
  %8 = load i8**, i8*** %teststrp.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %10 = load i8**, i8*** %teststrp.addr, align 4
  %call6 = call i32 @zstrtol(i8* %9, i8** %10, i32 10)
  store i32 %call6, i32* %colour.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %11 = load i32, i32* %colour.addr, align 4
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i32, i32* %colour.addr, align 4
  %cmp11 = icmp sge i32 %12, 256
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %if.end8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %13 = load i32, i32* %is_fg.addr, align 4
  %tobool15 = icmp ne i32 %13, 0
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  store i32 12, i32* %shft, align 4
  store i32 8, i32* %on, align 4
  store i32 32, i32* %tc, align 4
  br label %if.end18

if.else17:                                        ; preds = %if.end14
  store i32 20, i32* %shft, align 4
  store i32 16, i32* %on, align 4
  store i32 33, i32* %tc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %14 = load i32, i32* %named, align 4
  %tobool19 = icmp ne i32 %14, 0
  br i1 %tobool19, label %if.end37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %15 = load i32, i32* %tc, align 4
  %arrayidx20 = getelementptr inbounds [34 x i32], [34 x i32]* @tclen, i32 0, i32 %15
  %16 = load i32, i32* %arrayidx20, align 4
  %tobool21 = icmp ne i32 %16, 0
  br i1 %tobool21, label %if.then22, label %if.end37

if.then22:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* @tccolours, align 4
  %cmp23 = icmp sge i32 %17, 0
  br i1 %cmp23, label %land.lhs.true25, label %if.else33

land.lhs.true25:                                  ; preds = %if.then22
  %18 = load i32, i32* %colour.addr, align 4
  %19 = load i32, i32* @tccolours, align 4
  %cmp26 = icmp sge i32 %18, %19
  br i1 %cmp26, label %if.then28, label %if.else33

if.then28:                                        ; preds = %land.lhs.true25
  %20 = load i32, i32* %colour.addr, align 4
  %cmp29 = icmp sgt i32 %20, 7
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i32 -1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  br label %if.end36

if.else33:                                        ; preds = %land.lhs.true25, %if.then22
  %21 = load i32, i32* %is_fg.addr, align 4
  %tobool34 = icmp ne i32 %21, 0
  %cond35 = select i1 %tobool34, i32 268435456, i32 536870912
  %22 = load i32, i32* %on, align 4
  %or = or i32 %22, %cond35
  store i32 %or, i32* %on, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.end32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true, %if.end18
  %23 = load i32, i32* %on, align 4
  %24 = load i32, i32* %colour.addr, align 4
  %25 = load i32, i32* %shft, align 4
  %shl = shl i32 %24, %25
  %or38 = or i32 %23, %shl
  store i32 %or38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then31, %if.then13, %if.then4
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind
define internal i32 @match_named_colour(i8** %teststrp) #0 {
entry:
  %retval = alloca i32, align 4
  %teststrp.addr = alloca i8**, align 4
  %teststr = alloca i8*, align 4
  %end = alloca i8*, align 4
  %cptr = alloca i8**, align 4
  %len = alloca i32, align 4
  store i8** %teststrp, i8*** %teststrp.addr, align 4
  %0 = load i8**, i8*** %teststrp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %teststr, align 4
  %2 = load i8*, i8** %teststr, align 4
  store i8* %2, i8** %end, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %end, align 4
  %4 = load i8, i8* %3, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %and = and i32 %conv, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %end, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %end, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %end, align 4
  %8 = load i8*, i8** %teststr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %len, align 4
  %9 = load i8*, i8** %end, align 4
  %10 = load i8**, i8*** %teststrp.addr, align 4
  store i8* %9, i8** %10, align 4
  store i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @ansi_colours, i32 0, i32 0), i8*** %cptr, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %11 = load i8**, i8*** %cptr, align 4
  %12 = load i8*, i8** %11, align 4
  %tobool2 = icmp ne i8* %12, null
  br i1 %tobool2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %13 = load i8*, i8** %teststr, align 4
  %14 = load i8**, i8*** %cptr, align 4
  %15 = load i8*, i8** %14, align 4
  %16 = load i32, i32* %len, align 4
  %call = call i32 @strncmp(i8* %13, i8* %15, i32 %16)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body3
  %17 = load i8**, i8*** %cptr, align 4
  %sub.ptr.lhs.cast5 = ptrtoint i8** %17 to i32
  %sub.ptr.sub6 = sub i32 %sub.ptr.lhs.cast5, ptrtoint ([10 x i8*]* @ansi_colours to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub6, 4
  store i32 %sub.ptr.div, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %18 = load i8**, i8*** %cptr, align 4
  %incdec.ptr8 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr8, i8*** %cptr, align 4
  br label %for.cond1

for.end9:                                         ; preds = %for.cond1
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end9, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare i32 @zstrtol(i8*, i8**, i32) #1

; Function Attrs: noinline nounwind
define void @match_highlight(i8* %teststr, i32* %on_var) #0 {
entry:
  %teststr.addr = alloca i8*, align 4
  %on_var.addr = alloca i32*, align 4
  %found = alloca i32, align 4
  %hl = alloca %struct.highlight*, align 4
  %is_fg = alloca i32, align 4
  %atr = alloca i32, align 4
  %val = alloca i8*, align 4
  store i8* %teststr, i8** %teststr.addr, align 4
  store i32* %on_var, i32** %on_var.addr, align 4
  store i32 1, i32* %found, align 4
  %0 = load i32*, i32** %on_var.addr, align 4
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %teststr.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i32 0, i32* %found, align 4
  %5 = load i8*, i8** %teststr.addr, align 4
  %call = call i32 @strpfx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i8*, i8** %teststr.addr, align 4
  %call3 = call i32 @strpfx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else19

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %7 = load i8*, i8** %teststr.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv5, 102
  %conv6 = zext i1 %cmp to i32
  store i32 %conv6, i32* %is_fg, align 4
  %9 = load i8*, i8** %teststr.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 3
  store i8* %add.ptr, i8** %teststr.addr, align 4
  %10 = load i32, i32* %is_fg, align 4
  %call7 = call i32 @match_colour(i8** %teststr.addr, i32 %10, i32 0)
  store i32 %call7, i32* %atr, align 4
  %11 = load i8*, i8** %teststr.addr, align 4
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 44
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  %13 = load i8*, i8** %teststr.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %teststr.addr, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then
  %14 = load i8*, i8** %teststr.addr, align 4
  %15 = load i8, i8* %14, align 1
  %tobool12 = icmp ne i8 %15, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then11
  store i32 1, i32* %found, align 4
  %16 = load i32, i32* %atr, align 4
  %cmp15 = icmp sge i32 %16, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %17 = load i32, i32* %atr, align 4
  %18 = load i32*, i32** %on_var.addr, align 4
  %19 = load i32, i32* %18, align 4
  %or = or i32 %19, %17
  store i32 %or, i32* %18, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  br label %if.end41

if.else19:                                        ; preds = %lor.lhs.false
  store %struct.highlight* getelementptr inbounds ([5 x %struct.highlight], [5 x %struct.highlight]* @highlights, i32 0, i32 0), %struct.highlight** %hl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else19
  %20 = load %struct.highlight*, %struct.highlight** %hl, align 4
  %name = getelementptr inbounds %struct.highlight, %struct.highlight* %20, i32 0, i32 0
  %21 = load i8*, i8** %name, align 4
  %tobool20 = icmp ne i8* %21, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.highlight*, %struct.highlight** %hl, align 4
  %name21 = getelementptr inbounds %struct.highlight, %struct.highlight* %22, i32 0, i32 0
  %23 = load i8*, i8** %name21, align 4
  %24 = load i8*, i8** %teststr.addr, align 4
  %call22 = call i32 @strpfx(i8* %23, i8* %24)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end39

if.then24:                                        ; preds = %for.body
  %25 = load i8*, i8** %teststr.addr, align 4
  %26 = load %struct.highlight*, %struct.highlight** %hl, align 4
  %name25 = getelementptr inbounds %struct.highlight, %struct.highlight* %26, i32 0, i32 0
  %27 = load i8*, i8** %name25, align 4
  %call26 = call i32 @strlen(i8* %27)
  %add.ptr27 = getelementptr inbounds i8, i8* %25, i32 %call26
  store i8* %add.ptr27, i8** %val, align 4
  %28 = load i8*, i8** %val, align 4
  %29 = load i8, i8* %28, align 1
  %conv28 = sext i8 %29 to i32
  %cmp29 = icmp eq i32 %conv28, 44
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then24
  %30 = load i8*, i8** %val, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %val, align 4
  br label %if.end37

if.else33:                                        ; preds = %if.then24
  %31 = load i8*, i8** %val, align 4
  %32 = load i8, i8* %31, align 1
  %tobool34 = icmp ne i8 %32, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else33
  br label %for.end

if.end36:                                         ; preds = %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then31
  %33 = load %struct.highlight*, %struct.highlight** %hl, align 4
  %mask_on = getelementptr inbounds %struct.highlight, %struct.highlight* %33, i32 0, i32 1
  %34 = load i32, i32* %mask_on, align 4
  %35 = load i32*, i32** %on_var.addr, align 4
  %36 = load i32, i32* %35, align 4
  %or38 = or i32 %36, %34
  store i32 %or38, i32* %35, align 4
  %37 = load %struct.highlight*, %struct.highlight** %hl, align 4
  %mask_off = getelementptr inbounds %struct.highlight, %struct.highlight* %37, i32 0, i32 2
  %38 = load i32, i32* %mask_off, align 4
  %neg = xor i32 %38, -1
  %39 = load i32*, i32** %on_var.addr, align 4
  %40 = load i32, i32* %39, align 4
  %and = and i32 %40, %neg
  store i32 %and, i32* %39, align 4
  %41 = load i8*, i8** %val, align 4
  store i8* %41, i8** %teststr.addr, align 4
  store i32 1, i32* %found, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %42 = load %struct.highlight*, %struct.highlight** %hl, align 4
  %incdec.ptr40 = getelementptr inbounds %struct.highlight, %struct.highlight* %42, i32 1
  store %struct.highlight* %incdec.ptr40, %struct.highlight** %hl, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then35, %for.cond
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.end18
  br label %while.cond

while.end:                                        ; preds = %if.then13, %land.end
  ret void
}

declare i32 @strpfx(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @output_highlight(i32 %atr, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %atr.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %hp = alloca %struct.highlight*, align 4
  %atrlen = alloca i32, align 4
  %len = alloca i32, align 4
  %ptr = alloca i8*, align 4
  store i32 %atr, i32* %atr.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 0, i32* %atrlen, align 4
  %0 = load i8*, i8** %buf.addr, align 4
  store i8* %0, i8** %ptr, align 4
  %1 = load i32, i32* %atr.addr, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %atr.addr, align 4
  %and1 = and i32 %2, 1044480
  %shr = ashr i32 %and1, 12
  %3 = load i32, i32* %atr.addr, align 4
  %and2 = and i32 %3, 268435456
  %4 = load i8*, i8** %ptr, align 4
  %call = call i32 @output_colour(i32 %shr, i32 0, i32 %and2, i8* %4)
  store i32 %call, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %6 = load i32, i32* %atrlen, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %atrlen, align 4
  %7 = load i8*, i8** %buf.addr, align 4
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %8 = load i32, i32* %len, align 4
  %9 = load i8*, i8** %ptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 %8
  store i8* %add.ptr, i8** %ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %10 = load i32, i32* %atr.addr, align 4
  %and6 = and i32 %10, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end25

if.then8:                                         ; preds = %if.end5
  %11 = load i32, i32* %atrlen, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then8
  %12 = load i32, i32* %atrlen, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %atrlen, align 4
  %13 = load i8*, i8** %buf.addr, align 4
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then10
  %14 = load i8*, i8** %ptr, align 4
  %call13 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %15 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then8
  %16 = load i32, i32* %atr.addr, align 4
  %and16 = and i32 %16, 267386880
  %shr17 = ashr i32 %and16, 20
  %17 = load i32, i32* %atr.addr, align 4
  %and18 = and i32 %17, 536870912
  %18 = load i8*, i8** %ptr, align 4
  %call19 = call i32 @output_colour(i32 %shr17, i32 1, i32 %and18, i8* %18)
  store i32 %call19, i32* %len, align 4
  %19 = load i32, i32* %len, align 4
  %20 = load i32, i32* %atrlen, align 4
  %add20 = add nsw i32 %20, %19
  store i32 %add20, i32* %atrlen, align 4
  %21 = load i8*, i8** %buf.addr, align 4
  %tobool21 = icmp ne i8* %21, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end15
  %22 = load i32, i32* %len, align 4
  %23 = load i8*, i8** %ptr, align 4
  %add.ptr23 = getelementptr inbounds i8, i8* %23, i32 %22
  store i8* %add.ptr23, i8** %ptr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end5
  store %struct.highlight* getelementptr inbounds ([5 x %struct.highlight], [5 x %struct.highlight]* @highlights, i32 0, i32 0), %struct.highlight** %hp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %24 = load %struct.highlight*, %struct.highlight** %hp, align 4
  %name = getelementptr inbounds %struct.highlight, %struct.highlight* %24, i32 0, i32 0
  %25 = load i8*, i8** %name, align 4
  %tobool26 = icmp ne i8* %25, null
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.highlight*, %struct.highlight** %hp, align 4
  %mask_on = getelementptr inbounds %struct.highlight, %struct.highlight* %26, i32 0, i32 1
  %27 = load i32, i32* %mask_on, align 4
  %28 = load i32, i32* %atr.addr, align 4
  %and27 = and i32 %27, %28
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end48

if.then29:                                        ; preds = %for.body
  %29 = load i32, i32* %atrlen, align 4
  %tobool30 = icmp ne i32 %29, 0
  br i1 %tobool30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.then29
  %30 = load i32, i32* %atrlen, align 4
  %inc32 = add nsw i32 %30, 1
  store i32 %inc32, i32* %atrlen, align 4
  %31 = load i8*, i8** %buf.addr, align 4
  %tobool33 = icmp ne i8* %31, null
  br i1 %tobool33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.then31
  %32 = load i8*, i8** %ptr, align 4
  %call35 = call i8* @strcpy(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %33 = load i8*, i8** %ptr, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr36, i8** %ptr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then29
  %34 = load %struct.highlight*, %struct.highlight** %hp, align 4
  %name39 = getelementptr inbounds %struct.highlight, %struct.highlight* %34, i32 0, i32 0
  %35 = load i8*, i8** %name39, align 4
  %call40 = call i32 @strlen(i8* %35)
  store i32 %call40, i32* %len, align 4
  %36 = load i32, i32* %len, align 4
  %37 = load i32, i32* %atrlen, align 4
  %add41 = add nsw i32 %37, %36
  store i32 %add41, i32* %atrlen, align 4
  %38 = load i8*, i8** %buf.addr, align 4
  %tobool42 = icmp ne i8* %38, null
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end38
  %39 = load i8*, i8** %ptr, align 4
  %40 = load %struct.highlight*, %struct.highlight** %hp, align 4
  %name44 = getelementptr inbounds %struct.highlight, %struct.highlight* %40, i32 0, i32 0
  %41 = load i8*, i8** %name44, align 4
  %call45 = call i8* @strcpy(i8* %39, i8* %41)
  %42 = load i32, i32* %len, align 4
  %43 = load i8*, i8** %ptr, align 4
  %add.ptr46 = getelementptr inbounds i8, i8* %43, i32 %42
  store i8* %add.ptr46, i8** %ptr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end38
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %44 = load %struct.highlight*, %struct.highlight** %hp, align 4
  %incdec.ptr49 = getelementptr inbounds %struct.highlight, %struct.highlight* %44, i32 1
  store %struct.highlight* %incdec.ptr49, %struct.highlight** %hp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %atrlen, align 4
  %cmp = icmp eq i32 %45, 0
  br i1 %cmp, label %if.then50, label %if.end55

if.then50:                                        ; preds = %for.end
  %46 = load i8*, i8** %buf.addr, align 4
  %tobool51 = icmp ne i8* %46, null
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then50
  %47 = load i8*, i8** %ptr, align 4
  %call53 = call i8* @strcpy(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.then50
  store i32 4, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %for.end
  %48 = load i32, i32* %atrlen, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.end54
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind
define internal i32 @output_colour(i32 %colour, i32 %fg_bg, i32 %use_tc, i8* %buf) #0 {
entry:
  %colour.addr = alloca i32, align 4
  %fg_bg.addr = alloca i32, align 4
  %use_tc.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %atrlen = alloca i32, align 4
  %len = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %digbuf = alloca [12 x i8], align 1
  store i32 %colour, i32* %colour.addr, align 4
  store i32 %fg_bg, i32* %fg_bg.addr, align 4
  store i32 %use_tc, i32* %use_tc.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 3, i32* %atrlen, align 4
  %0 = load i8*, i8** %buf.addr, align 4
  store i8* %0, i8** %ptr, align 4
  %1 = load i8*, i8** %buf.addr, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ptr, align 4
  %3 = load i32, i32* %fg_bg.addr, align 4
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)
  %call = call i8* @strcpy(i8* %2, i8* %cond)
  %4 = load i8*, i8** %ptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 3
  store i8* %add.ptr, i8** %ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %use_tc.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %colour.addr, align 4
  %cmp2 = icmp sgt i32 %6, 7
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %digbuf, i32 0, i32 0
  %7 = load i32, i32* %colour.addr, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %7)
  %arraydecay5 = getelementptr inbounds [12 x i8], [12 x i8]* %digbuf, i32 0, i32 0
  %call6 = call i32 @strlen(i8* %arraydecay5)
  store i32 %call6, i32* %len, align 4
  %8 = load i32, i32* %len, align 4
  %9 = load i32, i32* %atrlen, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %atrlen, align 4
  %10 = load i8*, i8** %buf.addr, align 4
  %tobool7 = icmp ne i8* %10, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then3
  %11 = load i8*, i8** %ptr, align 4
  %arraydecay9 = getelementptr inbounds [12 x i8], [12 x i8]* %digbuf, i32 0, i32 0
  %call10 = call i8* @strcpy(i8* %11, i8* %arraydecay9)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then3
  br label %if.end19

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i32, i32* %colour.addr, align 4
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @ansi_colours, i32 0, i32 %12
  %13 = load i8*, i8** %arrayidx, align 4
  %call12 = call i32 @strlen(i8* %13)
  store i32 %call12, i32* %len, align 4
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* %atrlen, align 4
  %add13 = add nsw i32 %15, %14
  store i32 %add13, i32* %atrlen, align 4
  %16 = load i8*, i8** %buf.addr, align 4
  %tobool14 = icmp ne i8* %16, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.else
  %17 = load i8*, i8** %ptr, align 4
  %18 = load i32, i32* %colour.addr, align 4
  %arrayidx16 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ansi_colours, i32 0, i32 %18
  %19 = load i8*, i8** %arrayidx16, align 4
  %call17 = call i8* @strcpy(i8* %17, i8* %19)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %20 = load i32, i32* %atrlen, align 4
  ret i32 %20
}

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind
define void @set_default_colour_sequences() #0 {
entry:
  %call = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 0), align 4
  %call1 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call1, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 1), align 4
  %call2 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call2, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 2), align 4
  %call3 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call3, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 0), align 4
  %call4 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call4, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 1), align 4
  %call5 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call5, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 2), align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @allocate_colour_buffer() #0 {
entry:
  %atrs = alloca i8**, align 4
  %lenfg = alloca i32, align 4
  %lenbg = alloca i32, align 4
  %len = alloca i32, align 4
  %0 = load i32, i32* @colseq_buf_allocs, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @colseq_buf_allocs, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8** @getaparam(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  store i8** %call, i8*** %atrs, align 4
  %1 = load i8**, i8*** %atrs, align 4
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %if.then2, label %if.end37

if.then2:                                         ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i8**, i8*** %atrs, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %atrs, align 4
  %5 = load i8*, i8** %4, align 4
  %call4 = call i32 @strpfx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %6 = load i8**, i8*** %atrs, align 4
  %7 = load i8*, i8** %6, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 14
  call void @set_colour_code(i8* %add.ptr, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 0))
  br label %if.end36

if.else:                                          ; preds = %for.body
  %8 = load i8**, i8*** %atrs, align 4
  %9 = load i8*, i8** %8, align 4
  %call7 = call i32 @strpfx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %10 = load i8**, i8*** %atrs, align 4
  %11 = load i8*, i8** %10, align 4
  %add.ptr10 = getelementptr inbounds i8, i8* %11, i32 16
  call void @set_colour_code(i8* %add.ptr10, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 2))
  br label %if.end35

if.else11:                                        ; preds = %if.else
  %12 = load i8**, i8*** %atrs, align 4
  %13 = load i8*, i8** %12, align 4
  %call12 = call i32 @strpfx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else11
  %14 = load i8**, i8*** %atrs, align 4
  %15 = load i8*, i8** %14, align 4
  %add.ptr15 = getelementptr inbounds i8, i8* %15, i32 12
  call void @set_colour_code(i8* %add.ptr15, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 1))
  br label %if.end34

if.else16:                                        ; preds = %if.else11
  %16 = load i8**, i8*** %atrs, align 4
  %17 = load i8*, i8** %16, align 4
  %call17 = call i32 @strpfx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %17)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else16
  %18 = load i8**, i8*** %atrs, align 4
  %19 = load i8*, i8** %18, align 4
  %add.ptr20 = getelementptr inbounds i8, i8* %19, i32 14
  call void @set_colour_code(i8* %add.ptr20, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 0))
  br label %if.end33

if.else21:                                        ; preds = %if.else16
  %20 = load i8**, i8*** %atrs, align 4
  %21 = load i8*, i8** %20, align 4
  %call22 = call i32 @strpfx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else21
  %22 = load i8**, i8*** %atrs, align 4
  %23 = load i8*, i8** %22, align 4
  %add.ptr25 = getelementptr inbounds i8, i8* %23, i32 16
  call void @set_colour_code(i8* %add.ptr25, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 2))
  br label %if.end32

if.else26:                                        ; preds = %if.else21
  %24 = load i8**, i8*** %atrs, align 4
  %25 = load i8*, i8** %24, align 4
  %call27 = call i32 @strpfx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* %25)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.else26
  %26 = load i8**, i8*** %atrs, align 4
  %27 = load i8*, i8** %26, align 4
  %add.ptr30 = getelementptr inbounds i8, i8* %27, i32 12
  call void @set_colour_code(i8* %add.ptr30, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 1))
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.else26
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then19
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then14
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then9
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %28 = load i8**, i8*** %atrs, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %incdec.ptr, i8*** %atrs, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end
  %29 = load i8*, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 2), align 4
  %call38 = call i32 @strlen(i8* %29)
  store i32 %call38, i32* %lenfg, align 4
  %30 = load i32, i32* %lenfg, align 4
  %cmp = icmp slt i32 %30, 1
  br i1 %cmp, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  store i32 1, i32* %lenfg, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37
  %31 = load i8*, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 0), align 4
  %call41 = call i32 @strlen(i8* %31)
  %32 = load i8*, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 0, i32 1), align 4
  %call42 = call i32 @strlen(i8* %32)
  %add = add i32 %call41, %call42
  %33 = load i32, i32* %lenfg, align 4
  %add43 = add i32 %33, %add
  store i32 %add43, i32* %lenfg, align 4
  %34 = load i8*, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 2), align 4
  %call44 = call i32 @strlen(i8* %34)
  store i32 %call44, i32* %lenbg, align 4
  %35 = load i32, i32* %lenbg, align 4
  %cmp45 = icmp slt i32 %35, 1
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end40
  store i32 1, i32* %lenbg, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end40
  %36 = load i8*, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 0), align 4
  %call48 = call i32 @strlen(i8* %36)
  %37 = load i8*, i8** getelementptr inbounds ([2 x %struct.colour_sequences], [2 x %struct.colour_sequences]* @fg_bg_sequences, i32 0, i32 1, i32 1), align 4
  %call49 = call i32 @strlen(i8* %37)
  %add50 = add i32 %call48, %call49
  %38 = load i32, i32* %lenbg, align 4
  %add51 = add i32 %38, %add50
  store i32 %add51, i32* %lenbg, align 4
  %39 = load i32, i32* %lenfg, align 4
  %40 = load i32, i32* %lenbg, align 4
  %cmp52 = icmp sgt i32 %39, %40
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end47
  %41 = load i32, i32* %lenfg, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end47
  %42 = load i32, i32* %lenbg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %41, %cond.true ], [ %42, %cond.false ]
  store i32 %cond, i32* %len, align 4
  %43 = load i32, i32* %len, align 4
  %add53 = add nsw i32 %43, 1
  %call54 = call i8* @zalloc(i32 %add53)
  store i8* %call54, i8** @colseq_buf, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

declare i8** @getaparam(i8*) #1

; Function Attrs: noinline nounwind
define internal void @set_colour_code(i8* %str, i8** %var) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %var.addr = alloca i8**, align 4
  %keyseq = alloca i8*, align 4
  %len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i8** %var, i8*** %var.addr, align 4
  %0 = load i8**, i8*** %var.addr, align 4
  %1 = load i8*, i8** %0, align 4
  call void @zsfree(i8* %1)
  %2 = load i8*, i8** %str.addr, align 4
  %call = call i8* @getkeystring(i8* %2, i32* %len, i32 7, i32* null)
  store i8* %call, i8** %keyseq, align 4
  %3 = load i8*, i8** %keyseq, align 4
  %4 = load i32, i32* %len, align 4
  %call1 = call i8* @metafy(i8* %3, i32 %4, i32 3)
  %5 = load i8**, i8*** %var.addr, align 4
  store i8* %call1, i8** %5, align 4
  ret void
}

declare i8* @zalloc(i32) #1

; Function Attrs: noinline nounwind
define void @free_colour_buffer() #0 {
entry:
  %0 = load i32, i32* @colseq_buf_allocs, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @colseq_buf_allocs, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @colseq_buf, align 4
  call void @free(i8* %1)
  store i8* null, i8** @colseq_buf, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @tgoto(i8*, i32, i32) #1

declare %struct.nameddir* @finddir(i8*) #1

declare i32 @time(i32*) #1

declare %struct.tm* @localtime(i32*) #1

declare i32 @geteuid() #1

declare i32 @getegid() #1

declare signext i8 @arrlen_ge(i8**, i32) #1

declare i32 @privasserted() #1

; Function Attrs: noinline nounwind
define internal void @promptpath(i8* %p, i32 %npath, i32 %tilde) #0 {
entry:
  %p.addr = alloca i8*, align 4
  %npath.addr = alloca i32, align 4
  %tilde.addr = alloca i32, align 4
  %modp = alloca i8*, align 4
  %nd = alloca %struct.nameddir*, align 4
  %sptr = alloca i8*, align 4
  %cbu = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 4
  store i32 %npath, i32* %npath.addr, align 4
  store i32 %tilde, i32* %tilde.addr, align 4
  %0 = load i8*, i8** %p.addr, align 4
  store i8* %0, i8** %modp, align 4
  %1 = load i32, i32* %tilde.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 4
  %call = call %struct.nameddir* @finddir(i8* %2)
  store %struct.nameddir* %call, %struct.nameddir** %nd, align 4
  %tobool1 = icmp ne %struct.nameddir* %call, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %5 = load i8*, i8** %p.addr, align 4
  %6 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %6, i32 0, i32 1
  %7 = load i8*, i8** %dir, align 4
  %call2 = call i32 @strlen(i8* %7)
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 %call2
  %call3 = call i8* @tricat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* %4, i8* %add.ptr)
  store i8* %call3, i8** %modp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load i32, i32* %npath.addr, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then5, label %if.else44

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %npath.addr, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then5
  %10 = load i8*, i8** %modp, align 4
  %11 = load i8*, i8** %modp, align 4
  %call7 = call i32 @strlen(i8* %11)
  %add.ptr8 = getelementptr inbounds i8, i8* %10, i32 %call7
  store i8* %add.ptr8, i8** %sptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %12 = load i8*, i8** %sptr, align 4
  %13 = load i8*, i8** %modp, align 4
  %cmp9 = icmp ugt i8* %12, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %sptr, align 4
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp10 = icmp eq i32 %conv, 47
  br i1 %cmp10, label %land.lhs.true12, label %if.end15

land.lhs.true12:                                  ; preds = %for.body
  %16 = load i32, i32* %npath.addr, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %npath.addr, align 4
  %tobool13 = icmp ne i32 %dec, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %17 = load i8*, i8** %sptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 4
  br label %for.end

if.end15:                                         ; preds = %land.lhs.true12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %18 = load i8*, i8** %sptr, align 4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr16, i8** %sptr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then14, %for.cond
  %19 = load i8*, i8** %sptr, align 4
  %20 = load i8, i8* %19, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 47
  br i1 %cmp18, label %land.lhs.true20, label %if.end28

land.lhs.true20:                                  ; preds = %for.end
  %21 = load i8*, i8** %sptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8, i8* %arrayidx, align 1
  %conv21 = sext i8 %22 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %land.lhs.true23, label %if.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %23 = load i8*, i8** %sptr, align 4
  %24 = load i8*, i8** %modp, align 4
  %cmp24 = icmp ne i8* %23, %24
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %land.lhs.true23
  %25 = load i8*, i8** %sptr, align 4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr27, i8** %sptr, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true23, %land.lhs.true20, %for.end
  %26 = load i8*, i8** %sptr, align 4
  call void @stradd(i8* %26)
  br label %if.end43

if.else:                                          ; preds = %if.then5
  %27 = load i8*, i8** %modp, align 4
  %add.ptr29 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %add.ptr29, i8** %sptr, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc40, %if.else
  %28 = load i8*, i8** %sptr, align 4
  %29 = load i8, i8* %28, align 1
  %tobool31 = icmp ne i8 %29, 0
  br i1 %tobool31, label %for.body32, label %for.end42

for.body32:                                       ; preds = %for.cond30
  %30 = load i8*, i8** %sptr, align 4
  %31 = load i8, i8* %30, align 1
  %conv33 = sext i8 %31 to i32
  %cmp34 = icmp eq i32 %conv33, 47
  br i1 %cmp34, label %land.lhs.true36, label %if.end39

land.lhs.true36:                                  ; preds = %for.body32
  %32 = load i32, i32* %npath.addr, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %npath.addr, align 4
  %tobool37 = icmp ne i32 %inc, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %land.lhs.true36
  br label %for.end42

if.end39:                                         ; preds = %land.lhs.true36, %for.body32
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %33 = load i8*, i8** %sptr, align 4
  %incdec.ptr41 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr41, i8** %sptr, align 4
  br label %for.cond30

for.end42:                                        ; preds = %if.then38, %for.cond30
  %34 = load i8*, i8** %sptr, align 4
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %cbu, align 1
  %36 = load i8*, i8** %sptr, align 4
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %modp, align 4
  call void @stradd(i8* %37)
  %38 = load i8, i8* %cbu, align 1
  %39 = load i8*, i8** %sptr, align 4
  store i8 %38, i8* %39, align 1
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %if.end28
  br label %if.end45

if.else44:                                        ; preds = %if.end
  %40 = load i8*, i8** %modp, align 4
  call void @stradd(i8* %40)
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.end43
  %41 = load i8*, i8** %p.addr, align 4
  %42 = load i8*, i8** %modp, align 4
  %cmp46 = icmp ne i8* %41, %42
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  %43 = load i8*, i8** %modp, align 4
  call void @zsfree(i8* %43)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  ret void
}

declare void @convbase(i8*, i32, i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @getsparam(i8*) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

declare i8* @dupstrpfx(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @parsecolorchar(i32 %arg, i32 %is_fg) #0 {
entry:
  %arg.addr = alloca i32, align 4
  %is_fg.addr = alloca i32, align 4
  %ep = alloca i8*, align 4
  %oc = alloca i8, align 1
  %col = alloca i8*, align 4
  %coll = alloca i8*, align 4
  store i32 %arg, i32* %arg.addr, align 4
  store i32 %is_fg, i32* %is_fg.addr, align 4
  %0 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %0, i32 0, i32 6
  %1 = load i8*, i8** %fm, align 4
  %arrayidx = getelementptr inbounds i8, i8* %1, i32 1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 123
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %3 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm2 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %3, i32 0, i32 6
  %4 = load i8*, i8** %fm2, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 2
  store i8* %add.ptr, i8** %fm2, align 4
  %5 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm3 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %5, i32 0, i32 6
  %6 = load i8*, i8** %fm3, align 4
  %call = call i8* @strchr(i8* %6, i32 125)
  store i8* %call, i8** %ep, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %7 = load i8*, i8** %ep, align 4
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %oc, align 1
  %9 = load i8*, i8** %ep, align 4
  store i8 0, i8* %9, align 1
  %10 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm5 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %10, i32 0, i32 6
  %11 = load i8*, i8** %fm5, align 4
  %call6 = call i8* @promptexpand(i8* %11, i32 0, i8* null, i8* null, i32* null)
  store i8* %call6, i8** %col, align 4
  store i8* %call6, i8** %coll, align 4
  %12 = load i8, i8* %oc, align 1
  %13 = load i8*, i8** %ep, align 4
  store i8 %12, i8* %13, align 1
  %14 = load i32, i32* %is_fg.addr, align 4
  %call7 = call i32 @match_colour(i8** %coll, i32 %14, i32 0)
  store i32 %call7, i32* %arg.addr, align 4
  %15 = load i8*, i8** %col, align 4
  call void @free(i8* %15)
  %16 = load i8*, i8** %ep, align 4
  %17 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm8 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %17, i32 0, i32 6
  store i8* %16, i8** %fm8, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then
  %18 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm9 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %18, i32 0, i32 6
  %19 = load i32, i32* %is_fg.addr, align 4
  %call10 = call i32 @match_colour(i8** %fm9, i32 %19, i32 0)
  store i32 %call10, i32* %arg.addr, align 4
  %20 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm11 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %20, i32 0, i32 6
  %21 = load i8*, i8** %fm11, align 4
  %22 = load i8, i8* %21, align 1
  %conv12 = sext i8 %22 to i32
  %cmp13 = icmp ne i32 %conv12, 125
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %23 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm16 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %23, i32 0, i32 6
  %24 = load i8*, i8** %fm16, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %incdec.ptr, i8** %fm16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then4
  br label %if.end20

if.else18:                                        ; preds = %entry
  %25 = load i32, i32* %arg.addr, align 4
  %call19 = call i32 @match_colour(i8** null, i32 1, i32 %25)
  store i32 %call19, i32* %arg.addr, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.end17
  %26 = load i32, i32* %arg.addr, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind
define internal i32 @prompttrunc(i32 %arg, i32 %truncchar, i32 %doprint, i32 %endchar, i32* %txtchangep) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32, align 4
  %truncchar.addr = alloca i32, align 4
  %doprint.addr = alloca i32, align 4
  %endchar.addr = alloca i32, align 4
  %txtchangep.addr = alloca i32*, align 4
  %ch = alloca i8, align 1
  %ptr = alloca i8*, align 4
  %truncstr = alloca i8*, align 4
  %truncatleft = alloca i32, align 4
  %w = alloca i32, align 4
  %t = alloca i8*, align 4
  %fullen = alloca i32, align 4
  %twidth = alloca i32, align 4
  %maxwidth = alloca i32, align 4
  %ntrunc = alloca i32, align 4
  %fulltextptr = alloca i8*, align 4
  %fulltext = alloca i8*, align 4
  %remw = alloca i32, align 4
  %mbs = alloca %struct.__mbstate_t, align 4
  %inchar = alloca i8, align 1
  %cc = alloca i32, align 4
  %wcw = alloca i32, align 4
  %skiptext = alloca i8*, align 4
  %mbs167 = alloca %struct.__mbstate_t, align 4
  %inchar200 = alloca i8, align 1
  %cc201 = alloca i32, align 4
  %wcw202 = alloca i32, align 4
  store i32 %arg, i32* %arg.addr, align 4
  store i32 %truncchar, i32* %truncchar.addr, align 4
  store i32 %doprint, i32* %doprint.addr, align 4
  store i32 %endchar, i32* %endchar.addr, align 4
  store i32* %txtchangep, i32** %txtchangep.addr, align 4
  %0 = load i32, i32* %arg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else301

if.then:                                          ; preds = %entry
  %1 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %1, i32 0, i32 6
  %2 = load i8*, i8** %fm, align 4
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %ch, align 1
  %4 = load i8, i8* %ch, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 60
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* %truncatleft, align 4
  %5 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %5, i32 0, i32 3
  %6 = load i8*, i8** %bp, align 4
  %7 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %7, i32 0, i32 1
  %8 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %w, align 4
  %9 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %9, i32 0, i32 7
  %10 = load i32, i32* %truncwidth, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then3
  %11 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm4 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %11, i32 0, i32 6
  %12 = load i8*, i8** %fm4, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %fm4, align 4
  %13 = load i8, i8* %incdec.ptr, align 1
  %conv5 = sext i8 %13 to i32
  %cmp6 = icmp ne i32 %conv5, 37
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm8 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %14, i32 0, i32 6
  %15 = load i8*, i8** %fm8, align 4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr9, i8** %fm8, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %16 = load i32, i32* %arg.addr, align 4
  %17 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth10 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %17, i32 0, i32 7
  store i32 %16, i32* %truncwidth10, align 4
  %18 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm11 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %18, i32 0, i32 6
  %19 = load i8*, i8** %fm11, align 4
  %20 = load i8, i8* %19, align 1
  %conv12 = sext i8 %20 to i32
  %cmp13 = icmp ne i32 %conv12, 93
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  %21 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm16 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %21, i32 0, i32 6
  %22 = load i8*, i8** %fm16, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %fm16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end
  br label %while.cond19

while.cond19:                                     ; preds = %if.end38, %if.end18
  %23 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm20 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %23, i32 0, i32 6
  %24 = load i8*, i8** %fm20, align 4
  %25 = load i8, i8* %24, align 1
  %conv21 = sext i8 %25 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond19
  %26 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm23 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %26, i32 0, i32 6
  %27 = load i8*, i8** %fm23, align 4
  %28 = load i8, i8* %27, align 1
  %conv24 = sext i8 %28 to i32
  %29 = load i32, i32* %truncchar.addr, align 4
  %cmp25 = icmp ne i32 %conv24, %29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond19
  %30 = phi i1 [ false, %while.cond19 ], [ %cmp25, %land.rhs ]
  br i1 %30, label %while.body27, label %while.end43

while.body27:                                     ; preds = %land.end
  %31 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm28 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %31, i32 0, i32 6
  %32 = load i8*, i8** %fm28, align 4
  %33 = load i8, i8* %32, align 1
  %conv29 = sext i8 %33 to i32
  %cmp30 = icmp eq i32 %conv29, 92
  br i1 %cmp30, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %while.body27
  %34 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm32 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %34, i32 0, i32 6
  %35 = load i8*, i8** %fm32, align 4
  %arrayidx = getelementptr inbounds i8, i8* %35, i32 1
  %36 = load i8, i8* %arrayidx, align 1
  %conv33 = sext i8 %36 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %land.lhs.true
  %37 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm36 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %37, i32 0, i32 6
  %38 = load i8*, i8** %fm36, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr37, i8** %fm36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true, %while.body27
  call void @addbufspc(i32 1)
  %39 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm39 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %39, i32 0, i32 6
  %40 = load i8*, i8** %fm39, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr40, i8** %fm39, align 4
  %41 = load i8, i8* %40, align 1
  %42 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp41 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %42, i32 0, i32 3
  %43 = load i8*, i8** %bp41, align 4
  %incdec.ptr42 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr42, i8** %bp41, align 4
  store i8 %41, i8* %43, align 1
  br label %while.cond19

while.end43:                                      ; preds = %land.end
  %44 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm44 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %44, i32 0, i32 6
  %45 = load i8*, i8** %fm44, align 4
  %46 = load i8, i8* %45, align 1
  %tobool45 = icmp ne i8 %46, 0
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %while.end43
  store i32 0, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %while.end43
  %47 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp48 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %47, i32 0, i32 3
  %48 = load i8*, i8** %bp48, align 4
  %49 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf49 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %49, i32 0, i32 1
  %50 = load i8*, i8** %buf49, align 4
  %sub.ptr.lhs.cast50 = ptrtoint i8* %48 to i32
  %sub.ptr.rhs.cast51 = ptrtoint i8* %50 to i32
  %sub.ptr.sub52 = sub i32 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %51 = load i32, i32* %w, align 4
  %cmp53 = icmp eq i32 %sub.ptr.sub52, %51
  br i1 %cmp53, label %land.lhs.true55, label %if.end61

land.lhs.true55:                                  ; preds = %if.end47
  %52 = load i32, i32* %truncchar.addr, align 4
  %cmp56 = icmp eq i32 %52, 93
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %land.lhs.true55
  call void @addbufspc(i32 1)
  %53 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp59 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %53, i32 0, i32 3
  %54 = load i8*, i8** %bp59, align 4
  %incdec.ptr60 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr60, i8** %bp59, align 4
  store i8 60, i8* %54, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %land.lhs.true55, %if.end47
  %55 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf62 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %55, i32 0, i32 1
  %56 = load i8*, i8** %buf62, align 4
  %57 = load i32, i32* %w, align 4
  %add.ptr = getelementptr inbounds i8, i8* %56, i32 %57
  store i8* %add.ptr, i8** %ptr, align 4
  %58 = load i8*, i8** %ptr, align 4
  %59 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp63 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %59, i32 0, i32 3
  %60 = load i8*, i8** %bp63, align 4
  %61 = load i8*, i8** %ptr, align 4
  %sub.ptr.lhs.cast64 = ptrtoint i8* %60 to i32
  %sub.ptr.rhs.cast65 = ptrtoint i8* %61 to i32
  %sub.ptr.sub66 = sub i32 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %call = call i8* @ztrduppfx(i8* %58, i32 %sub.ptr.sub66)
  store i8* %call, i8** %truncstr, align 4
  %62 = load i8*, i8** %ptr, align 4
  %63 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp67 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %63, i32 0, i32 3
  store i8* %62, i8** %bp67, align 4
  %64 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp68 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %64, i32 0, i32 3
  %65 = load i8*, i8** %bp68, align 4
  %66 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf69 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %66, i32 0, i32 1
  %67 = load i8*, i8** %buf69, align 4
  %sub.ptr.lhs.cast70 = ptrtoint i8* %65 to i32
  %sub.ptr.rhs.cast71 = ptrtoint i8* %67 to i32
  %sub.ptr.sub72 = sub i32 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  store i32 %sub.ptr.sub72, i32* %w, align 4
  %68 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm73 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %68, i32 0, i32 6
  %69 = load i8*, i8** %fm73, align 4
  %incdec.ptr74 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr74, i8** %fm73, align 4
  %70 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %dontcount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %70, i32 0, i32 8
  %71 = load i32, i32* %dontcount, align 4
  %72 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %trunccount = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %72, i32 0, i32 9
  store i32 %71, i32* %trunccount, align 4
  %73 = load i32, i32* %doprint.addr, align 4
  %74 = load i32, i32* %endchar.addr, align 4
  %75 = load i32*, i32** %txtchangep.addr, align 4
  %call75 = call i32 @putpromptchar(i32 %73, i32 %74, i32* %75)
  %76 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %trunccount76 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %76, i32 0, i32 9
  store i32 0, i32* %trunccount76, align 4
  %77 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %buf77 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %77, i32 0, i32 1
  %78 = load i8*, i8** %buf77, align 4
  %79 = load i32, i32* %w, align 4
  %add.ptr78 = getelementptr inbounds i8, i8* %78, i32 %79
  store i8* %add.ptr78, i8** %ptr, align 4
  %80 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp79 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %80, i32 0, i32 3
  %81 = load i8*, i8** %bp79, align 4
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %ptr, align 4
  call void @countprompt(i8* %82, i32* %w, i32* null, i32 -1)
  %83 = load i32, i32* %w, align 4
  %84 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth80 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %84, i32 0, i32 7
  %85 = load i32, i32* %truncwidth80, align 4
  %cmp81 = icmp sgt i32 %83, %85
  br i1 %cmp81, label %if.then83, label %if.end281

if.then83:                                        ; preds = %if.end61
  %86 = load i8*, i8** %truncstr, align 4
  store i8* %86, i8** %t, align 4
  %87 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp84 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %87, i32 0, i32 3
  %88 = load i8*, i8** %bp84, align 4
  %89 = load i8*, i8** %ptr, align 4
  %sub.ptr.lhs.cast85 = ptrtoint i8* %88 to i32
  %sub.ptr.rhs.cast86 = ptrtoint i8* %89 to i32
  %sub.ptr.sub87 = sub i32 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  store i32 %sub.ptr.sub87, i32* %fullen, align 4
  %90 = load i8*, i8** %t, align 4
  %call88 = call i32 @strlen(i8* %90)
  store i32 %call88, i32* %ntrunc, align 4
  %91 = load i8*, i8** %t, align 4
  %call89 = call i32 @mb_metastrlenend(i8* %91, i32 1, i8* null)
  store i32 %call89, i32* %twidth, align 4
  %92 = load i32, i32* %twidth, align 4
  %93 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth90 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %93, i32 0, i32 7
  %94 = load i32, i32* %truncwidth90, align 4
  %cmp91 = icmp slt i32 %92, %94
  br i1 %cmp91, label %if.then93, label %if.else271

if.then93:                                        ; preds = %if.then83
  %95 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth94 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %95, i32 0, i32 7
  %96 = load i32, i32* %truncwidth94, align 4
  %97 = load i32, i32* %twidth, align 4
  %sub = sub nsw i32 %96, %97
  store i32 %sub, i32* %maxwidth, align 4
  %98 = load i32, i32* %ntrunc, align 4
  %add = add nsw i32 %98, 1
  call void @addbufspc(i32 %add)
  %99 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp95 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %99, i32 0, i32 3
  %100 = load i8*, i8** %bp95, align 4
  %101 = load i32, i32* %fullen, align 4
  %idx.neg = sub i32 0, %101
  %add.ptr96 = getelementptr inbounds i8, i8* %100, i32 %idx.neg
  store i8* %add.ptr96, i8** %ptr, align 4
  %102 = load i32, i32* %truncatleft, align 4
  %tobool97 = icmp ne i32 %102, 0
  br i1 %tobool97, label %if.then98, label %if.else166

if.then98:                                        ; preds = %if.then93
  %103 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %103, i8 0, i32 8, i32 4, i1 false)
  %104 = load i8*, i8** %ptr, align 4
  %105 = load i32, i32* %ntrunc, align 4
  %add.ptr99 = getelementptr inbounds i8, i8* %104, i32 %105
  store i8* %add.ptr99, i8** %fulltext, align 4
  store i8* %add.ptr99, i8** %fulltextptr, align 4
  %106 = load i8*, i8** %fulltext, align 4
  %107 = load i8*, i8** %ptr, align 4
  %108 = load i32, i32* %fullen, align 4
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %106, i8* %107, i32 %108, i32 1, i1 false)
  %109 = load i8*, i8** %fulltext, align 4
  %110 = load i32, i32* %fullen, align 4
  %arrayidx100 = getelementptr inbounds i8, i8* %109, i32 %110
  store i8 0, i8* %arrayidx100, align 1
  br label %while.cond101

while.cond101:                                    ; preds = %while.body103, %if.then98
  %111 = load i8*, i8** %t, align 4
  %112 = load i8, i8* %111, align 1
  %tobool102 = icmp ne i8 %112, 0
  br i1 %tobool102, label %while.body103, label %while.end106

while.body103:                                    ; preds = %while.cond101
  %113 = load i8*, i8** %t, align 4
  %incdec.ptr104 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr104, i8** %t, align 4
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %ptr, align 4
  %incdec.ptr105 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr105, i8** %ptr, align 4
  store i8 %114, i8* %115, align 1
  br label %while.cond101

while.end106:                                     ; preds = %while.cond101
  %116 = load i32, i32* %w, align 4
  store i32 %116, i32* %remw, align 4
  br label %while.cond107

while.cond107:                                    ; preds = %if.end157, %while.end106
  %117 = load i32, i32* %remw, align 4
  %118 = load i32, i32* %maxwidth, align 4
  %cmp108 = icmp sgt i32 %117, %118
  br i1 %cmp108, label %land.rhs110, label %land.end113

land.rhs110:                                      ; preds = %while.cond107
  %119 = load i8*, i8** %fulltextptr, align 4
  %120 = load i8, i8* %119, align 1
  %conv111 = sext i8 %120 to i32
  %tobool112 = icmp ne i32 %conv111, 0
  br label %land.end113

land.end113:                                      ; preds = %land.rhs110, %while.cond107
  %121 = phi i1 [ false, %while.cond107 ], [ %tobool112, %land.rhs110 ]
  br i1 %121, label %while.body114, label %while.end158

while.body114:                                    ; preds = %land.end113
  %122 = load i8*, i8** %fulltextptr, align 4
  %123 = load i8, i8* %122, align 1
  %conv115 = sext i8 %123 to i32
  %cmp116 = icmp eq i32 %conv115, -120
  br i1 %cmp116, label %if.then118, label %if.else

if.then118:                                       ; preds = %while.body114
  br label %for.cond

for.cond:                                         ; preds = %if.end134, %if.then118
  %124 = load i8*, i8** %fulltextptr, align 4
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %ptr, align 4
  %incdec.ptr119 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr119, i8** %ptr, align 4
  store i8 %125, i8* %126, align 1
  %127 = load i8*, i8** %fulltextptr, align 4
  %128 = load i8, i8* %127, align 1
  %conv120 = sext i8 %128 to i32
  %cmp121 = icmp eq i32 %conv120, 0
  br i1 %cmp121, label %if.then127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %129 = load i8*, i8** %fulltextptr, align 4
  %incdec.ptr123 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr123, i8** %fulltextptr, align 4
  %130 = load i8, i8* %129, align 1
  %conv124 = sext i8 %130 to i32
  %cmp125 = icmp eq i32 %conv124, -118
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end128:                                        ; preds = %lor.lhs.false
  %131 = load i8*, i8** %fulltextptr, align 4
  %arrayidx129 = getelementptr inbounds i8, i8* %131, i32 -1
  %132 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %132 to i32
  %cmp131 = icmp eq i32 %conv130, -95
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end128
  %133 = load i32, i32* %remw, align 4
  %dec = add nsw i32 %133, -1
  store i32 %dec, i32* %remw, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end128
  br label %for.cond

for.end:                                          ; preds = %if.then127
  br label %if.end157

if.else:                                          ; preds = %while.body114
  %134 = load i8*, i8** %fulltextptr, align 4
  %135 = load i8, i8* %134, align 1
  %conv135 = sext i8 %135 to i32
  %cmp136 = icmp eq i32 %conv135, -125
  br i1 %cmp136, label %if.then138, label %if.else142

if.then138:                                       ; preds = %if.else
  %136 = load i8*, i8** %fulltextptr, align 4
  %incdec.ptr139 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr139, i8** %fulltextptr, align 4
  %137 = load i8, i8* %incdec.ptr139, align 1
  %conv140 = sext i8 %137 to i32
  %xor = xor i32 %conv140, 32
  %conv141 = trunc i32 %xor to i8
  store i8 %conv141, i8* %inchar, align 1
  br label %if.end143

if.else142:                                       ; preds = %if.else
  %138 = load i8*, i8** %fulltextptr, align 4
  %139 = load i8, i8* %138, align 1
  store i8 %139, i8* %inchar, align 1
  br label %if.end143

if.end143:                                        ; preds = %if.else142, %if.then138
  %140 = load i8*, i8** %fulltextptr, align 4
  %incdec.ptr144 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr144, i8** %fulltextptr, align 4
  %call145 = call i32 @mbrtowc(i32* %cc, i8* %inchar, i32 1, %struct.__mbstate_t* %mbs)
  switch i32 %call145, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb146
    i32 0, label %sw.bb147
  ]

sw.bb:                                            ; preds = %if.end143
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end143
  %141 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %141, i8 0, i32 8, i32 4, i1 false)
  br label %sw.bb147

sw.bb147:                                         ; preds = %if.end143, %sw.bb146
  %142 = load i32, i32* %remw, align 4
  %dec148 = add nsw i32 %142, -1
  store i32 %dec148, i32* %remw, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end143
  %143 = load i32, i32* %cc, align 4
  %call149 = call i32 @wcwidth(i32 %143)
  store i32 %call149, i32* %wcw, align 4
  %144 = load i32, i32* %wcw, align 4
  %cmp150 = icmp sge i32 %144, 0
  br i1 %cmp150, label %if.then152, label %if.else154

if.then152:                                       ; preds = %sw.default
  %145 = load i32, i32* %wcw, align 4
  %146 = load i32, i32* %remw, align 4
  %sub153 = sub nsw i32 %146, %145
  store i32 %sub153, i32* %remw, align 4
  br label %if.end156

if.else154:                                       ; preds = %sw.default
  %147 = load i32, i32* %remw, align 4
  %dec155 = add nsw i32 %147, -1
  store i32 %dec155, i32* %remw, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.else154, %if.then152
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end156, %sw.bb147, %sw.bb
  br label %if.end157

if.end157:                                        ; preds = %sw.epilog, %for.end
  br label %while.cond107

while.end158:                                     ; preds = %land.end113
  br label %while.cond159

while.cond159:                                    ; preds = %while.body161, %while.end158
  %148 = load i8*, i8** %fulltextptr, align 4
  %149 = load i8, i8* %148, align 1
  %tobool160 = icmp ne i8 %149, 0
  br i1 %tobool160, label %while.body161, label %while.end164

while.body161:                                    ; preds = %while.cond159
  %150 = load i8*, i8** %fulltextptr, align 4
  %incdec.ptr162 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr162, i8** %fulltextptr, align 4
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %ptr, align 4
  %incdec.ptr163 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr163, i8** %ptr, align 4
  store i8 %151, i8* %152, align 1
  br label %while.cond159

while.end164:                                     ; preds = %while.cond159
  %153 = load i8*, i8** %ptr, align 4
  %154 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp165 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %154, i32 0, i32 3
  store i8* %153, i8** %bp165, align 4
  br label %if.end270

if.else166:                                       ; preds = %if.then93
  %155 = load i8*, i8** %ptr, align 4
  store i8* %155, i8** %skiptext, align 4
  %156 = bitcast %struct.__mbstate_t* %mbs167 to i8*
  call void @llvm.memset.p0i8.i32(i8* %156, i8 0, i32 8, i32 4, i1 false)
  br label %while.cond168

while.cond168:                                    ; preds = %if.end229, %if.else166
  %157 = load i32, i32* %maxwidth, align 4
  %cmp169 = icmp sgt i32 %157, 0
  br i1 %cmp169, label %land.rhs171, label %land.end174

land.rhs171:                                      ; preds = %while.cond168
  %158 = load i8*, i8** %skiptext, align 4
  %159 = load i8, i8* %158, align 1
  %conv172 = sext i8 %159 to i32
  %tobool173 = icmp ne i32 %conv172, 0
  br label %land.end174

land.end174:                                      ; preds = %land.rhs171, %while.cond168
  %160 = phi i1 [ false, %while.cond168 ], [ %tobool173, %land.rhs171 ]
  br i1 %160, label %while.body175, label %while.end230

while.body175:                                    ; preds = %land.end174
  %161 = load i8*, i8** %skiptext, align 4
  %162 = load i8, i8* %161, align 1
  %conv176 = sext i8 %162 to i32
  %cmp177 = icmp eq i32 %conv176, -120
  br i1 %cmp177, label %if.then179, label %if.else199

if.then179:                                       ; preds = %while.body175
  br label %for.cond180

for.cond180:                                      ; preds = %if.end197, %if.then179
  %163 = load i8*, i8** %skiptext, align 4
  %164 = load i8, i8* %163, align 1
  %conv181 = sext i8 %164 to i32
  %cmp182 = icmp eq i32 %conv181, 0
  br i1 %cmp182, label %if.then189, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %for.cond180
  %165 = load i8*, i8** %skiptext, align 4
  %incdec.ptr185 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %incdec.ptr185, i8** %skiptext, align 4
  %166 = load i8, i8* %165, align 1
  %conv186 = sext i8 %166 to i32
  %cmp187 = icmp eq i32 %conv186, -118
  br i1 %cmp187, label %if.then189, label %if.end190

if.then189:                                       ; preds = %lor.lhs.false184, %for.cond180
  br label %for.end198

if.end190:                                        ; preds = %lor.lhs.false184
  %167 = load i8*, i8** %skiptext, align 4
  %arrayidx191 = getelementptr inbounds i8, i8* %167, i32 -1
  %168 = load i8, i8* %arrayidx191, align 1
  %conv192 = sext i8 %168 to i32
  %cmp193 = icmp eq i32 %conv192, -95
  br i1 %cmp193, label %if.then195, label %if.end197

if.then195:                                       ; preds = %if.end190
  %169 = load i32, i32* %maxwidth, align 4
  %dec196 = add nsw i32 %169, -1
  store i32 %dec196, i32* %maxwidth, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %if.end190
  br label %for.cond180

for.end198:                                       ; preds = %if.then189
  br label %if.end229

if.else199:                                       ; preds = %while.body175
  %170 = load i8*, i8** %skiptext, align 4
  %171 = load i8, i8* %170, align 1
  %conv203 = sext i8 %171 to i32
  %cmp204 = icmp eq i32 %conv203, -125
  br i1 %cmp204, label %if.then206, label %if.else211

if.then206:                                       ; preds = %if.else199
  %172 = load i8*, i8** %skiptext, align 4
  %incdec.ptr207 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr207, i8** %skiptext, align 4
  %173 = load i8, i8* %incdec.ptr207, align 1
  %conv208 = sext i8 %173 to i32
  %xor209 = xor i32 %conv208, 32
  %conv210 = trunc i32 %xor209 to i8
  store i8 %conv210, i8* %inchar200, align 1
  br label %if.end212

if.else211:                                       ; preds = %if.else199
  %174 = load i8*, i8** %skiptext, align 4
  %175 = load i8, i8* %174, align 1
  store i8 %175, i8* %inchar200, align 1
  br label %if.end212

if.end212:                                        ; preds = %if.else211, %if.then206
  %176 = load i8*, i8** %skiptext, align 4
  %incdec.ptr213 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr213, i8** %skiptext, align 4
  %call214 = call i32 @mbrtowc(i32* %cc201, i8* %inchar200, i32 1, %struct.__mbstate_t* %mbs167)
  switch i32 %call214, label %sw.default219 [
    i32 -2, label %sw.bb215
    i32 -1, label %sw.bb216
    i32 0, label %sw.bb217
  ]

sw.bb215:                                         ; preds = %if.end212
  br label %sw.epilog228

sw.bb216:                                         ; preds = %if.end212
  %177 = bitcast %struct.__mbstate_t* %mbs167 to i8*
  call void @llvm.memset.p0i8.i32(i8* %177, i8 0, i32 8, i32 4, i1 false)
  br label %sw.bb217

sw.bb217:                                         ; preds = %if.end212, %sw.bb216
  %178 = load i32, i32* %maxwidth, align 4
  %dec218 = add nsw i32 %178, -1
  store i32 %dec218, i32* %maxwidth, align 4
  br label %sw.epilog228

sw.default219:                                    ; preds = %if.end212
  %179 = load i32, i32* %cc201, align 4
  %call220 = call i32 @wcwidth(i32 %179)
  store i32 %call220, i32* %wcw202, align 4
  %180 = load i32, i32* %wcw202, align 4
  %cmp221 = icmp sge i32 %180, 0
  br i1 %cmp221, label %if.then223, label %if.else225

if.then223:                                       ; preds = %sw.default219
  %181 = load i32, i32* %wcw202, align 4
  %182 = load i32, i32* %maxwidth, align 4
  %sub224 = sub nsw i32 %182, %181
  store i32 %sub224, i32* %maxwidth, align 4
  br label %if.end227

if.else225:                                       ; preds = %sw.default219
  %183 = load i32, i32* %maxwidth, align 4
  %dec226 = add nsw i32 %183, -1
  store i32 %dec226, i32* %maxwidth, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.else225, %if.then223
  br label %sw.epilog228

sw.epilog228:                                     ; preds = %if.end227, %sw.bb217, %sw.bb215
  br label %if.end229

if.end229:                                        ; preds = %sw.epilog228, %for.end198
  br label %while.cond168

while.end230:                                     ; preds = %land.end174
  %184 = load i8*, i8** %skiptext, align 4
  store i8* %184, i8** %ptr, align 4
  br label %while.cond231

while.cond231:                                    ; preds = %while.body233, %while.end230
  %185 = load i8*, i8** %t, align 4
  %186 = load i8, i8* %185, align 1
  %tobool232 = icmp ne i8 %186, 0
  br i1 %tobool232, label %while.body233, label %while.end236

while.body233:                                    ; preds = %while.cond231
  %187 = load i8*, i8** %t, align 4
  %incdec.ptr234 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr234, i8** %t, align 4
  %188 = load i8, i8* %187, align 1
  %189 = load i8*, i8** %ptr, align 4
  %incdec.ptr235 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr235, i8** %ptr, align 4
  store i8 %188, i8* %189, align 1
  br label %while.cond231

while.end236:                                     ; preds = %while.cond231
  %190 = load i8*, i8** %ptr, align 4
  %191 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp237 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %191, i32 0, i32 3
  store i8* %190, i8** %bp237, align 4
  %192 = load i8*, i8** %skiptext, align 4
  %193 = load i8, i8* %192, align 1
  %tobool238 = icmp ne i8 %193, 0
  br i1 %tobool238, label %if.then239, label %if.end269

if.then239:                                       ; preds = %while.end236
  %194 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp240 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %194, i32 0, i32 3
  %195 = load i8*, i8** %bp240, align 4
  %196 = load i8*, i8** %skiptext, align 4
  %197 = load i8*, i8** %skiptext, align 4
  %call241 = call i32 @strlen(i8* %197)
  %add242 = add i32 %call241, 1
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %195, i8* %196, i32 %add242, i32 1, i1 false)
  %198 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp243 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %198, i32 0, i32 3
  %199 = load i8*, i8** %bp243, align 4
  store i8* %199, i8** %skiptext, align 4
  br label %while.cond244

while.cond244:                                    ; preds = %if.end267, %if.then239
  %200 = load i8*, i8** %skiptext, align 4
  %201 = load i8, i8* %200, align 1
  %tobool245 = icmp ne i8 %201, 0
  br i1 %tobool245, label %while.body246, label %while.end268

while.body246:                                    ; preds = %while.cond244
  %202 = load i8*, i8** %skiptext, align 4
  %203 = load i8, i8* %202, align 1
  %conv247 = sext i8 %203 to i32
  %cmp248 = icmp eq i32 %conv247, -120
  br i1 %cmp248, label %if.then250, label %if.else265

if.then250:                                       ; preds = %while.body246
  br label %for.cond251

for.cond251:                                      ; preds = %if.end262, %if.then250
  %204 = load i8*, i8** %skiptext, align 4
  %205 = load i8, i8* %204, align 1
  %206 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp252 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %206, i32 0, i32 3
  %207 = load i8*, i8** %bp252, align 4
  %incdec.ptr253 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %incdec.ptr253, i8** %bp252, align 4
  store i8 %205, i8* %207, align 1
  %208 = load i8*, i8** %skiptext, align 4
  %209 = load i8, i8* %208, align 1
  %conv254 = sext i8 %209 to i32
  %cmp255 = icmp eq i32 %conv254, -118
  br i1 %cmp255, label %if.then261, label %lor.lhs.false257

lor.lhs.false257:                                 ; preds = %for.cond251
  %210 = load i8*, i8** %skiptext, align 4
  %211 = load i8, i8* %210, align 1
  %conv258 = sext i8 %211 to i32
  %cmp259 = icmp eq i32 %conv258, 0
  br i1 %cmp259, label %if.then261, label %if.end262

if.then261:                                       ; preds = %lor.lhs.false257, %for.cond251
  br label %for.end264

if.end262:                                        ; preds = %lor.lhs.false257
  %212 = load i8*, i8** %skiptext, align 4
  %incdec.ptr263 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr263, i8** %skiptext, align 4
  br label %for.cond251

for.end264:                                       ; preds = %if.then261
  br label %if.end267

if.else265:                                       ; preds = %while.body246
  %213 = load i8*, i8** %skiptext, align 4
  %incdec.ptr266 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr266, i8** %skiptext, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.else265, %for.end264
  br label %while.cond244

while.end268:                                     ; preds = %while.cond244
  br label %if.end269

if.end269:                                        ; preds = %while.end268, %while.end236
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %while.end164
  br label %if.end279

if.else271:                                       ; preds = %if.then83
  br label %while.cond272

while.cond272:                                    ; preds = %while.body274, %if.else271
  %214 = load i8*, i8** %t, align 4
  %215 = load i8, i8* %214, align 1
  %tobool273 = icmp ne i8 %215, 0
  br i1 %tobool273, label %while.body274, label %while.end277

while.body274:                                    ; preds = %while.cond272
  %216 = load i8*, i8** %t, align 4
  %incdec.ptr275 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr275, i8** %t, align 4
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** %ptr, align 4
  %incdec.ptr276 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr276, i8** %ptr, align 4
  store i8 %217, i8* %218, align 1
  br label %while.cond272

while.end277:                                     ; preds = %while.cond272
  %219 = load i8*, i8** %ptr, align 4
  %220 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp278 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %220, i32 0, i32 3
  store i8* %219, i8** %bp278, align 4
  br label %if.end279

if.end279:                                        ; preds = %while.end277, %if.end270
  %221 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %bp280 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %221, i32 0, i32 3
  %222 = load i8*, i8** %bp280, align 4
  store i8 0, i8* %222, align 1
  br label %if.end281

if.end281:                                        ; preds = %if.end279, %if.end61
  %223 = load i8*, i8** %truncstr, align 4
  call void @zsfree(i8* %223)
  %224 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth282 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %224, i32 0, i32 7
  store i32 0, i32* %truncwidth282, align 4
  %225 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm283 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %225, i32 0, i32 6
  %226 = load i8*, i8** %fm283, align 4
  %227 = load i8, i8* %226, align 1
  %tobool284 = icmp ne i8 %227, 0
  br i1 %tobool284, label %if.end286, label %if.then285

if.then285:                                       ; preds = %if.end281
  store i32 0, i32* %retval, align 4
  br label %return

if.end286:                                        ; preds = %if.end281
  %228 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm287 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %228, i32 0, i32 6
  %229 = load i8*, i8** %fm287, align 4
  %230 = load i8, i8* %229, align 1
  %conv288 = sext i8 %230 to i32
  %231 = load i32, i32* %endchar.addr, align 4
  %cmp289 = icmp ne i32 %conv288, %231
  br i1 %cmp289, label %if.then291, label %if.end298

if.then291:                                       ; preds = %if.end286
  %232 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm292 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %232, i32 0, i32 6
  %233 = load i8*, i8** %fm292, align 4
  %incdec.ptr293 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr293, i8** %fm292, align 4
  %234 = load i32, i32* %doprint.addr, align 4
  %235 = load i32, i32* %endchar.addr, align 4
  %236 = load i32*, i32** %txtchangep.addr, align 4
  %call294 = call i32 @putpromptchar(i32 %234, i32 %235, i32* %236)
  %tobool295 = icmp ne i32 %call294, 0
  br i1 %tobool295, label %if.end297, label %if.then296

if.then296:                                       ; preds = %if.then291
  store i32 0, i32* %retval, align 4
  br label %return

if.end297:                                        ; preds = %if.then291
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.end286
  %237 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm299 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %237, i32 0, i32 6
  %238 = load i8*, i8** %fm299, align 4
  %incdec.ptr300 = getelementptr inbounds i8, i8* %238, i32 -1
  store i8* %incdec.ptr300, i8** %fm299, align 4
  br label %if.end344

if.else301:                                       ; preds = %entry
  %239 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm302 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %239, i32 0, i32 6
  %240 = load i8*, i8** %fm302, align 4
  %241 = load i8, i8* %240, align 1
  %conv303 = sext i8 %241 to i32
  %242 = load i32, i32* %endchar.addr, align 4
  %cmp304 = icmp ne i32 %conv303, %242
  br i1 %cmp304, label %if.then306, label %if.end309

if.then306:                                       ; preds = %if.else301
  %243 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm307 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %243, i32 0, i32 6
  %244 = load i8*, i8** %fm307, align 4
  %incdec.ptr308 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr308, i8** %fm307, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then306, %if.else301
  br label %while.cond310

while.cond310:                                    ; preds = %if.end333, %if.end309
  %245 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm311 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %245, i32 0, i32 6
  %246 = load i8*, i8** %fm311, align 4
  %247 = load i8, i8* %246, align 1
  %conv312 = sext i8 %247 to i32
  %tobool313 = icmp ne i32 %conv312, 0
  br i1 %tobool313, label %land.rhs314, label %land.end319

land.rhs314:                                      ; preds = %while.cond310
  %248 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm315 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %248, i32 0, i32 6
  %249 = load i8*, i8** %fm315, align 4
  %250 = load i8, i8* %249, align 1
  %conv316 = sext i8 %250 to i32
  %251 = load i32, i32* %truncchar.addr, align 4
  %cmp317 = icmp ne i32 %conv316, %251
  br label %land.end319

land.end319:                                      ; preds = %land.rhs314, %while.cond310
  %252 = phi i1 [ false, %while.cond310 ], [ %cmp317, %land.rhs314 ]
  br i1 %252, label %while.body320, label %while.end336

while.body320:                                    ; preds = %land.end319
  %253 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm321 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %253, i32 0, i32 6
  %254 = load i8*, i8** %fm321, align 4
  %255 = load i8, i8* %254, align 1
  %conv322 = sext i8 %255 to i32
  %cmp323 = icmp eq i32 %conv322, 92
  br i1 %cmp323, label %land.lhs.true325, label %if.end333

land.lhs.true325:                                 ; preds = %while.body320
  %256 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm326 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %256, i32 0, i32 6
  %257 = load i8*, i8** %fm326, align 4
  %arrayidx327 = getelementptr inbounds i8, i8* %257, i32 1
  %258 = load i8, i8* %arrayidx327, align 1
  %conv328 = sext i8 %258 to i32
  %tobool329 = icmp ne i32 %conv328, 0
  br i1 %tobool329, label %if.then330, label %if.end333

if.then330:                                       ; preds = %land.lhs.true325
  %259 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm331 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %259, i32 0, i32 6
  %260 = load i8*, i8** %fm331, align 4
  %incdec.ptr332 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %incdec.ptr332, i8** %fm331, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then330, %land.lhs.true325, %while.body320
  %261 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm334 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %261, i32 0, i32 6
  %262 = load i8*, i8** %fm334, align 4
  %incdec.ptr335 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %incdec.ptr335, i8** %fm334, align 4
  br label %while.cond310

while.end336:                                     ; preds = %land.end319
  %263 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %truncwidth337 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %263, i32 0, i32 7
  %264 = load i32, i32* %truncwidth337, align 4
  %tobool338 = icmp ne i32 %264, 0
  br i1 %tobool338, label %if.then342, label %lor.lhs.false339

lor.lhs.false339:                                 ; preds = %while.end336
  %265 = load %struct.buf_vars*, %struct.buf_vars** @bv, align 4
  %fm340 = getelementptr inbounds %struct.buf_vars, %struct.buf_vars* %265, i32 0, i32 6
  %266 = load i8*, i8** %fm340, align 4
  %267 = load i8, i8* %266, align 1
  %tobool341 = icmp ne i8 %267, 0
  br i1 %tobool341, label %if.end343, label %if.then342

if.then342:                                       ; preds = %lor.lhs.false339, %while.end336
  store i32 0, i32* %retval, align 4
  br label %return

if.end343:                                        ; preds = %lor.lhs.false339
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.end298
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end344, %if.then342, %if.then296, %if.then285, %if.then46, %while.end
  %268 = load i32, i32* %retval, align 4
  ret i32 %268
}

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare i32 @ztrftime(i8*, i32, i8*, %struct.tm*, i32) #1

declare i8* @metafy(i8*, i32, i32) #1

declare void @zsfree(i8*) #1

declare i8* @get_username() #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare i32 @arrlen(i8**) #1

declare i8* @tricat(i8*, i8*, i8*) #1

declare i8* @strchr(i8*, i32) #1

declare i8* @ztrduppfx(i8*, i32) #1

declare i32 @mb_metastrlenend(i8*, i32, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

declare i8* @realloc(i8*, i32) #1

declare i8* @getkeystring(i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
