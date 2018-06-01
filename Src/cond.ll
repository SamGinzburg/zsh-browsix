; ModuleID = 'cond.c'
source_filename = "cond.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct._IO_FILE = type opaque
%struct.__sigset_t = type { [32 x i32] }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.estate = type { %struct.eprog*, i32*, i8* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.mnumber = type { %union.anon, i32 }
%union.anon = type { double }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }

@tracingcond = common global i32 0, align 4
@xtrerr = external global %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@condstr = internal global [18 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)], align 4
@opts = external global [181 x i8], align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"zsh/pcre\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"zsh/regex\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-%s-match\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"C:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unknown condition: %s\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s not available for regex\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" -%c \00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"integer expression expected: %s\00", align 1
@queueing_enabled = external global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"bad pattern: %s\00", align 1
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"bad cond code\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"=~\00", align 1
@errflag = external global i32, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"/dev/fd/\00", align 1
@st = internal global %struct.stat zeroinitializer, align 8
@.str.32 = private unnamed_addr constant [19 x i8] c"no such option: %s\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c" %s %s %s\00", align 1

; Function Attrs: noinline nounwind
define i32 @evalcond(%struct.estate* %state, i8* %fromtest) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.estate*, align 4
  %fromtest.addr = alloca i8*, align 4
  %st = alloca %struct.stat*, align 4
  %left = alloca i8*, align 4
  %right = alloca i8*, align 4
  %overridename = alloca i8*, align 4
  %overridebuf = alloca [13 x i8], align 1
  %pcode = alloca i32*, align 4
  %code = alloca i32, align 4
  %ctype = alloca i32, align 4
  %htok = alloca i32, align 4
  %ret = alloca i32, align 4
  %modname = alloca i8*, align 4
  %cd = alloca %struct.conddef*, align 4
  %name = alloca i8*, align 4
  %errname = alloca i8*, align 4
  %strs = alloca i8**, align 4
  %l = alloca i32, align 4
  %sbuf = alloca [3 x i8*], align 4
  %s = alloca i8*, align 4
  %rt = alloca i8*, align 4
  %mn1 = alloca %struct.mnumber, align 8
  %mn2 = alloca %struct.mnumber, align 8
  %eptr = alloca i8*, align 4
  %err = alloca i8*, align 4
  %tmp = alloca %struct.mnumber, align 8
  %tmp264 = alloca %struct.mnumber, align 8
  %test = alloca i32, align 4
  %npat = alloca i32, align 4
  %pprog = alloca %struct.patprog*, align 4
  %opat = alloca i8*, align 4
  %save = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp472 = alloca %struct.__sigset_t, align 4
  %tmp474 = alloca %struct.__sigset_t, align 4
  %oset504 = alloca %struct.__sigset_t, align 4
  %tmp508 = alloca %struct.__sigset_t, align 4
  %tmp510 = alloca %struct.__sigset_t, align 4
  %mode = alloca i32, align 4
  %a = alloca i32, align 4
  %nsecs = alloca i32, align 4
  %d779 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i8* %fromtest, i8** %fromtest.addr, align 4
  store i32 0, i32* %htok, align 4
  br label %rec

rec:                                              ; preds = %if.end28, %if.end13, %entry
  store i8* null, i8** %overridename, align 4
  store i8* null, i8** %right, align 4
  store i8* null, i8** %left, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4
  store i32* %1, i32** %pcode, align 4
  %2 = load i32*, i32** %pcode, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %shr = lshr i32 %4, 5
  %and = and i32 %shr, 127
  store i32 %and, i32* %ctype, align 4
  %5 = load i32, i32* %ctype, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb18
    i32 17, label %sw.bb35
    i32 18, label %sw.bb41
    i32 19, label %sw.bb41
  ]

sw.bb:                                            ; preds = %rec
  %6 = load i32, i32* @tracingcond, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %8 = load i32, i32* %ctype, align 4
  %arrayidx = getelementptr inbounds [18 x i8*], [18 x i8*]* @condstr, i32 0, i32 %8
  %9 = load i8*, i8** %arrayidx, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %11 = load i8*, i8** %fromtest.addr, align 4
  %call1 = call i32 @evalcond(%struct.estate* %10, i8* %11)
  store i32 %call1, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i32, i32* %ret, align 4
  %cmp2 = icmp eq i32 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %14 = load i32, i32* %ret, align 4
  %tobool4 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %rec
  %16 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %17 = load i8*, i8** %fromtest.addr, align 4
  %call6 = call i32 @evalcond(%struct.estate* %16, i8* %17)
  store i32 %call6, i32* %ret, align 4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else14, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  %18 = load i32, i32* @tracingcond, align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %20 = load i32, i32* %ctype, align 4
  %arrayidx11 = getelementptr inbounds [18 x i8*], [18 x i8*]* @condstr, i32 0, i32 %20
  %21 = load i8*, i8** %arrayidx11, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %21)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then8
  br label %rec

if.else14:                                        ; preds = %sw.bb5
  %22 = load i32*, i32** %pcode, align 4
  %23 = load i32, i32* %code, align 4
  %shr15 = lshr i32 %23, 5
  %shr16 = lshr i32 %shr15, 7
  %add = add i32 %shr16, 1
  %add.ptr = getelementptr inbounds i32, i32* %22, i32 %add
  %24 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc17 = getelementptr inbounds %struct.estate, %struct.estate* %24, i32 0, i32 1
  store i32* %add.ptr, i32** %pc17, align 4
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %rec
  %26 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %27 = load i8*, i8** %fromtest.addr, align 4
  %call19 = call i32 @evalcond(%struct.estate* %26, i8* %27)
  store i32 %call19, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  %cmp20 = icmp eq i32 %28, 1
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %sw.bb18
  %29 = load i32, i32* %ret, align 4
  %cmp22 = icmp eq i32 %29, 3
  br i1 %cmp22, label %if.then23, label %if.else29

if.then23:                                        ; preds = %lor.lhs.false21, %sw.bb18
  %30 = load i32, i32* @tracingcond, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then23
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %32 = load i32, i32* %ctype, align 4
  %arrayidx26 = getelementptr inbounds [18 x i8*], [18 x i8*]* @condstr, i32 0, i32 %32
  %33 = load i8*, i8** %arrayidx26, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %33)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then23
  br label %rec

if.else29:                                        ; preds = %lor.lhs.false21
  %34 = load i32*, i32** %pcode, align 4
  %35 = load i32, i32* %code, align 4
  %shr30 = lshr i32 %35, 5
  %shr31 = lshr i32 %shr30, 7
  %add32 = add i32 %shr31, 1
  %add.ptr33 = getelementptr inbounds i32, i32* %34, i32 %add32
  %36 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc34 = getelementptr inbounds %struct.estate, %struct.estate* %36, i32 0, i32 1
  store i32* %add.ptr33, i32** %pc34, align 4
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

sw.bb35:                                          ; preds = %rec
  %38 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 154), align 1
  %conv = sext i8 %38 to i32
  %tobool36 = icmp ne i32 %conv, 0
  %cond = select i1 %tobool36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)
  store i8* %cond, i8** %modname, align 4
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %overridebuf, i32 0, i32 0
  store i8* %arraydecay, i8** %overridename, align 4
  %39 = load i8*, i8** %modname, align 4
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i32 4
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %add.ptr37)
  %40 = load i8*, i8** %modname, align 4
  %41 = load i8*, i8** %overridename, align 4
  %add.ptr39 = getelementptr inbounds i8, i8* %41, i32 1
  %call40 = call i32 @ensurefeature(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %add.ptr39)
  store i32 19, i32* %ctype, align 4
  br label %sw.bb41

sw.bb41:                                          ; preds = %rec, %rec, %sw.bb35
  %42 = load i8*, i8** %overridename, align 4
  store i8* %42, i8** %name, align 4
  %43 = load i32, i32* %code, align 4
  %shr42 = lshr i32 %43, 5
  %shr43 = lshr i32 %shr42, 7
  store i32 %shr43, i32* %l, align 4
  %44 = load i8*, i8** %name, align 4
  %cmp44 = icmp eq i8* %44, null
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %sw.bb41
  %45 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call47 = call i8* @ecgetstr(%struct.estate* %45, i32 0, i32* null)
  store i8* %call47, i8** %name, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %sw.bb41
  %46 = load i32, i32* %ctype, align 4
  %cmp49 = icmp eq i32 %46, 18
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.end48
  %47 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %48 = load i32, i32* %l, align 4
  %call52 = call i8** @ecgetarr(%struct.estate* %47, i32 %48, i32 1, i32* null)
  store i8** %call52, i8*** %strs, align 4
  br label %if.end61

if.else53:                                        ; preds = %if.end48
  %49 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call54 = call i8* @ecgetstr(%struct.estate* %49, i32 0, i32* null)
  %arrayidx55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %sbuf, i32 0, i32 0
  store i8* %call54, i8** %arrayidx55, align 4
  %50 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call56 = call i8* @ecgetstr(%struct.estate* %50, i32 0, i32* null)
  %arrayidx57 = getelementptr inbounds [3 x i8*], [3 x i8*]* %sbuf, i32 0, i32 1
  store i8* %call56, i8** %arrayidx57, align 4
  %arrayidx58 = getelementptr inbounds [3 x i8*], [3 x i8*]* %sbuf, i32 0, i32 2
  store i8* null, i8** %arrayidx58, align 4
  %arraydecay59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %sbuf, i32 0, i32 0
  %call60 = call i8** @arrdup(i8** %arraydecay59)
  store i8** %call60, i8*** %strs, align 4
  store i32 2, i32* %l, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else53, %if.then51
  %51 = load i8*, i8** %name, align 4
  %tobool62 = icmp ne i8* %51, null
  br i1 %tobool62, label %land.lhs.true, label %if.else74

land.lhs.true:                                    ; preds = %if.end61
  %52 = load i8*, i8** %name, align 4
  %arrayidx63 = getelementptr inbounds i8, i8* %52, i32 0
  %53 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %53 to i32
  %cmp65 = icmp eq i32 %conv64, 45
  br i1 %cmp65, label %if.then72, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true
  %54 = load i8*, i8** %name, align 4
  %arrayidx68 = getelementptr inbounds i8, i8* %54, i32 0
  %55 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %55 to i32
  %cmp70 = icmp eq i32 %conv69, -101
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %lor.lhs.false67, %land.lhs.true
  %56 = load i8*, i8** %name, align 4
  %call73 = call i8* @dupstring(i8* %56)
  store i8* %call73, i8** %errname, align 4
  call void @untokenize(i8* %call73)
  br label %if.end91

if.else74:                                        ; preds = %lor.lhs.false67, %if.end61
  %57 = load i8**, i8*** %strs, align 4
  %arrayidx75 = getelementptr inbounds i8*, i8** %57, i32 0
  %58 = load i8*, i8** %arrayidx75, align 4
  %tobool76 = icmp ne i8* %58, null
  br i1 %tobool76, label %land.lhs.true77, label %if.else89

land.lhs.true77:                                  ; preds = %if.else74
  %59 = load i8**, i8*** %strs, align 4
  %arrayidx78 = getelementptr inbounds i8*, i8** %59, i32 0
  %60 = load i8*, i8** %arrayidx78, align 4
  %61 = load i8, i8* %60, align 1
  %conv79 = sext i8 %61 to i32
  %cmp80 = icmp eq i32 %conv79, 45
  br i1 %cmp80, label %if.then87, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %land.lhs.true77
  %62 = load i8**, i8*** %strs, align 4
  %arrayidx83 = getelementptr inbounds i8*, i8** %62, i32 0
  %63 = load i8*, i8** %arrayidx83, align 4
  %64 = load i8, i8* %63, align 1
  %conv84 = sext i8 %64 to i32
  %cmp85 = icmp eq i32 %conv84, -101
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %lor.lhs.false82, %land.lhs.true77
  %65 = load i8**, i8*** %strs, align 4
  %arrayidx88 = getelementptr inbounds i8*, i8** %65, i32 0
  %66 = load i8*, i8** %arrayidx88, align 4
  store i8* %66, i8** %errname, align 4
  call void @untokenize(i8* %66)
  br label %if.end90

if.else89:                                        ; preds = %lor.lhs.false82, %if.else74
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8** %errname, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then87
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then72
  %67 = load i8*, i8** %name, align 4
  %tobool92 = icmp ne i8* %67, null
  br i1 %tobool92, label %land.lhs.true93, label %if.else133

land.lhs.true93:                                  ; preds = %if.end91
  %68 = load i8*, i8** %name, align 4
  %arrayidx94 = getelementptr inbounds i8, i8* %68, i32 0
  %69 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %69 to i32
  %cmp96 = icmp eq i32 %conv95, 45
  br i1 %cmp96, label %land.lhs.true103, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %land.lhs.true93
  %70 = load i8*, i8** %name, align 4
  %arrayidx99 = getelementptr inbounds i8, i8* %70, i32 0
  %71 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %71 to i32
  %cmp101 = icmp eq i32 %conv100, -101
  br i1 %cmp101, label %land.lhs.true103, label %if.else133

land.lhs.true103:                                 ; preds = %lor.lhs.false98, %land.lhs.true93
  %72 = load i32, i32* %ctype, align 4
  %cmp104 = icmp eq i32 %72, 19
  %conv105 = zext i1 %cmp104 to i32
  %73 = load i8*, i8** %name, align 4
  %add.ptr106 = getelementptr inbounds i8, i8* %73, i32 1
  %call107 = call %struct.conddef* @getconddef(i32 %conv105, i8* %add.ptr106, i32 1)
  store %struct.conddef* %call107, %struct.conddef** %cd, align 4
  %tobool108 = icmp ne %struct.conddef* %call107, null
  br i1 %tobool108, label %if.then109, label %if.else133

if.then109:                                       ; preds = %land.lhs.true103
  %74 = load i32, i32* %ctype, align 4
  %cmp110 = icmp eq i32 %74, 18
  br i1 %cmp110, label %land.lhs.true112, label %if.end123

land.lhs.true112:                                 ; preds = %if.then109
  %75 = load i32, i32* %l, align 4
  %76 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %min = getelementptr inbounds %struct.conddef, %struct.conddef* %76, i32 0, i32 4
  %77 = load i32, i32* %min, align 4
  %cmp113 = icmp slt i32 %75, %77
  br i1 %cmp113, label %if.then122, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %land.lhs.true112
  %78 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %max = getelementptr inbounds %struct.conddef, %struct.conddef* %78, i32 0, i32 5
  %79 = load i32, i32* %max, align 4
  %cmp116 = icmp sge i32 %79, 0
  br i1 %cmp116, label %land.lhs.true118, label %if.end123

land.lhs.true118:                                 ; preds = %lor.lhs.false115
  %80 = load i32, i32* %l, align 4
  %81 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %max119 = getelementptr inbounds %struct.conddef, %struct.conddef* %81, i32 0, i32 5
  %82 = load i32, i32* %max119, align 4
  %cmp120 = icmp sgt i32 %80, %82
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %land.lhs.true118, %land.lhs.true112
  %83 = load i8*, i8** %fromtest.addr, align 4
  %84 = load i8*, i8** %name, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %84)
  store i32 2, i32* %retval, align 4
  br label %return

if.end123:                                        ; preds = %land.lhs.true118, %lor.lhs.false115, %if.then109
  %85 = load i32, i32* @tracingcond, align 4
  %tobool124 = icmp ne i32 %85, 0
  br i1 %tobool124, label %if.then125, label %if.end128

if.then125:                                       ; preds = %if.end123
  %86 = load i8*, i8** %name, align 4
  %87 = load i8**, i8*** %strs, align 4
  %88 = load i32, i32* %ctype, align 4
  %cmp126 = icmp eq i32 %88, 19
  %conv127 = zext i1 %cmp126 to i32
  call void @tracemodcond(i8* %86, i8** %87, i32 %conv127)
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.end123
  %89 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %handler = getelementptr inbounds %struct.conddef, %struct.conddef* %89, i32 0, i32 3
  %90 = load i32 (i8**, i32)*, i32 (i8**, i32)** %handler, align 4
  %91 = load i8**, i8*** %strs, align 4
  %92 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %condid = getelementptr inbounds %struct.conddef, %struct.conddef* %92, i32 0, i32 6
  %93 = load i32, i32* %condid, align 4
  %call129 = call i32 %90(i8** %91, i32 %93)
  %tobool130 = icmp ne i32 %call129, 0
  %lnot131 = xor i1 %tobool130, true
  %lnot.ext132 = zext i1 %lnot131 to i32
  store i32 %lnot.ext132, i32* %retval, align 4
  br label %return

if.else133:                                       ; preds = %land.lhs.true103, %lor.lhs.false98, %if.end91
  %94 = load i8**, i8*** %strs, align 4
  %arrayidx134 = getelementptr inbounds i8*, i8** %94, i32 0
  %95 = load i8*, i8** %arrayidx134, align 4
  store i8* %95, i8** %s, align 4
  %96 = load i8*, i8** %overridename, align 4
  %tobool135 = icmp ne i8* %96, null
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.else133
  %97 = load i8*, i8** %fromtest.addr, align 4
  %98 = load i8*, i8** %overridename, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %98)
  store i32 2, i32* %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.else133
  %99 = load i8*, i8** %name, align 4
  %call138 = call i8* @dupstring(i8* %99)
  %100 = load i8**, i8*** %strs, align 4
  %arrayidx139 = getelementptr inbounds i8*, i8** %100, i32 0
  store i8* %call138, i8** %arrayidx139, align 4
  %101 = load i8*, i8** %s, align 4
  store i8* %101, i8** %name, align 4
  %102 = load i8*, i8** %name, align 4
  %tobool140 = icmp ne i8* %102, null
  br i1 %tobool140, label %land.lhs.true141, label %if.else180

land.lhs.true141:                                 ; preds = %if.end137
  %103 = load i8*, i8** %name, align 4
  %arrayidx142 = getelementptr inbounds i8, i8* %103, i32 0
  %104 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %104 to i32
  %cmp144 = icmp eq i32 %conv143, 45
  br i1 %cmp144, label %land.lhs.true151, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %land.lhs.true141
  %105 = load i8*, i8** %name, align 4
  %arrayidx147 = getelementptr inbounds i8, i8* %105, i32 0
  %106 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %106 to i32
  %cmp149 = icmp eq i32 %conv148, -101
  br i1 %cmp149, label %land.lhs.true151, label %if.else180

land.lhs.true151:                                 ; preds = %lor.lhs.false146, %land.lhs.true141
  %107 = load i8*, i8** %name, align 4
  %add.ptr152 = getelementptr inbounds i8, i8* %107, i32 1
  %call153 = call %struct.conddef* @getconddef(i32 0, i8* %add.ptr152, i32 1)
  store %struct.conddef* %call153, %struct.conddef** %cd, align 4
  %tobool154 = icmp ne %struct.conddef* %call153, null
  br i1 %tobool154, label %if.then155, label %if.else180

if.then155:                                       ; preds = %land.lhs.true151
  %108 = load i32, i32* %l, align 4
  %109 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %min156 = getelementptr inbounds %struct.conddef, %struct.conddef* %109, i32 0, i32 4
  %110 = load i32, i32* %min156, align 4
  %cmp157 = icmp slt i32 %108, %110
  br i1 %cmp157, label %if.then167, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %if.then155
  %111 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %max160 = getelementptr inbounds %struct.conddef, %struct.conddef* %111, i32 0, i32 5
  %112 = load i32, i32* %max160, align 4
  %cmp161 = icmp sge i32 %112, 0
  br i1 %cmp161, label %land.lhs.true163, label %if.end168

land.lhs.true163:                                 ; preds = %lor.lhs.false159
  %113 = load i32, i32* %l, align 4
  %114 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %max164 = getelementptr inbounds %struct.conddef, %struct.conddef* %114, i32 0, i32 5
  %115 = load i32, i32* %max164, align 4
  %cmp165 = icmp sgt i32 %113, %115
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %land.lhs.true163, %if.then155
  %116 = load i8*, i8** %fromtest.addr, align 4
  %117 = load i8*, i8** %errname, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %117)
  store i32 2, i32* %retval, align 4
  br label %return

if.end168:                                        ; preds = %land.lhs.true163, %lor.lhs.false159
  %118 = load i32, i32* @tracingcond, align 4
  %tobool169 = icmp ne i32 %118, 0
  br i1 %tobool169, label %if.then170, label %if.end173

if.then170:                                       ; preds = %if.end168
  %119 = load i8*, i8** %name, align 4
  %120 = load i8**, i8*** %strs, align 4
  %121 = load i32, i32* %ctype, align 4
  %cmp171 = icmp eq i32 %121, 19
  %conv172 = zext i1 %cmp171 to i32
  call void @tracemodcond(i8* %119, i8** %120, i32 %conv172)
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end168
  %122 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %handler174 = getelementptr inbounds %struct.conddef, %struct.conddef* %122, i32 0, i32 3
  %123 = load i32 (i8**, i32)*, i32 (i8**, i32)** %handler174, align 4
  %124 = load i8**, i8*** %strs, align 4
  %125 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %condid175 = getelementptr inbounds %struct.conddef, %struct.conddef* %125, i32 0, i32 6
  %126 = load i32, i32* %condid175, align 4
  %call176 = call i32 %123(i8** %124, i32 %126)
  %tobool177 = icmp ne i32 %call176, 0
  %lnot178 = xor i1 %tobool177, true
  %lnot.ext179 = zext i1 %lnot178 to i32
  store i32 %lnot.ext179, i32* %retval, align 4
  br label %return

if.else180:                                       ; preds = %land.lhs.true151, %lor.lhs.false146, %if.end137
  %127 = load i8*, i8** %fromtest.addr, align 4
  %128 = load i8*, i8** %errname, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %128)
  br label %if.end181

if.end181:                                        ; preds = %if.else180
  br label %if.end182

if.end182:                                        ; preds = %if.end181
  store i32 2, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %rec
  %129 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call183 = call i8* @ecgetstr(%struct.estate* %129, i32 2, i32* %htok)
  store i8* %call183, i8** %left, align 4
  %130 = load i32, i32* %htok, align 4
  %tobool184 = icmp ne i32 %130, 0
  br i1 %tobool184, label %if.then185, label %if.end189

if.then185:                                       ; preds = %sw.epilog
  %131 = load i8*, i8** %fromtest.addr, align 4
  %tobool186 = icmp ne i8* %131, null
  %lnot187 = xor i1 %tobool186, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  call void @cond_subst(i8** %left, i32 %lnot.ext188)
  %132 = load i8*, i8** %left, align 4
  call void @untokenize(i8* %132)
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %sw.epilog
  %133 = load i32, i32* %ctype, align 4
  %cmp190 = icmp sle i32 %133, 16
  br i1 %cmp190, label %land.lhs.true192, label %if.end209

land.lhs.true192:                                 ; preds = %if.end189
  %134 = load i32, i32* %ctype, align 4
  %cmp193 = icmp ne i32 %134, 3
  br i1 %cmp193, label %land.lhs.true195, label %if.end209

land.lhs.true195:                                 ; preds = %land.lhs.true192
  %135 = load i32, i32* %ctype, align 4
  %cmp196 = icmp ne i32 %135, 4
  br i1 %cmp196, label %land.lhs.true198, label %if.end209

land.lhs.true198:                                 ; preds = %land.lhs.true195
  %136 = load i32, i32* %ctype, align 4
  %cmp199 = icmp ne i32 %136, 5
  br i1 %cmp199, label %if.then201, label %if.end209

if.then201:                                       ; preds = %land.lhs.true198
  %137 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call202 = call i8* @ecgetstr(%struct.estate* %137, i32 2, i32* %htok)
  store i8* %call202, i8** %right, align 4
  %138 = load i32, i32* %htok, align 4
  %tobool203 = icmp ne i32 %138, 0
  br i1 %tobool203, label %if.then204, label %if.end208

if.then204:                                       ; preds = %if.then201
  %139 = load i8*, i8** %fromtest.addr, align 4
  %tobool205 = icmp ne i8* %139, null
  %lnot206 = xor i1 %tobool205, true
  %lnot.ext207 = zext i1 %lnot206 to i32
  call void @cond_subst(i8** %right, i32 %lnot.ext207)
  %140 = load i8*, i8** %right, align 4
  call void @untokenize(i8* %140)
  br label %if.end208

if.end208:                                        ; preds = %if.then204, %if.then201
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %land.lhs.true198, %land.lhs.true195, %land.lhs.true192, %if.end189
  %141 = load i32, i32* @tracingcond, align 4
  %tobool210 = icmp ne i32 %141, 0
  br i1 %tobool210, label %if.then211, label %if.end241

if.then211:                                       ; preds = %if.end209
  %142 = load i32, i32* %ctype, align 4
  %cmp212 = icmp slt i32 %142, 18
  br i1 %cmp212, label %if.then214, label %if.else237

if.then214:                                       ; preds = %if.then211
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call215 = call i32 @fputc(i32 32, %struct._IO_FILE* %143)
  %144 = load i8*, i8** %left, align 4
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call216 = call i8* @quotedzputs(i8* %144, %struct._IO_FILE* %145)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %147 = load i32, i32* %ctype, align 4
  %arrayidx217 = getelementptr inbounds [18 x i8*], [18 x i8*]* @condstr, i32 0, i32 %147
  %148 = load i8*, i8** %arrayidx217, align 4
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %148)
  %149 = load i32, i32* %ctype, align 4
  %cmp219 = icmp eq i32 %149, 3
  br i1 %cmp219, label %if.then227, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %if.then214
  %150 = load i32, i32* %ctype, align 4
  %cmp222 = icmp eq i32 %150, 4
  br i1 %cmp222, label %if.then227, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %lor.lhs.false221
  %151 = load i32, i32* %ctype, align 4
  %cmp225 = icmp eq i32 %151, 5
  br i1 %cmp225, label %if.then227, label %if.else234

if.then227:                                       ; preds = %lor.lhs.false224, %lor.lhs.false221, %if.then214
  %152 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog = getelementptr inbounds %struct.estate, %struct.estate* %152, i32 0, i32 0
  %153 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %154 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc228 = getelementptr inbounds %struct.estate, %struct.estate* %154, i32 0, i32 1
  %155 = load i32*, i32** %pc228, align 4
  %call229 = call i8* @ecrawstr(%struct.eprog* %153, i32* %155, i32* null)
  %call230 = call i8* @dupstring(i8* %call229)
  store i8* %call230, i8** %rt, align 4
  %156 = load i8*, i8** %fromtest.addr, align 4
  %tobool231 = icmp ne i8* %156, null
  %lnot232 = xor i1 %tobool231, true
  %lnot.ext233 = zext i1 %lnot232 to i32
  call void @cond_subst(i8** %rt, i32 %lnot.ext233)
  %157 = load i8*, i8** %rt, align 4
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  call void @quote_tokenized_output(i8* %157, %struct._IO_FILE* %158)
  br label %if.end236

if.else234:                                       ; preds = %lor.lhs.false224
  %159 = load i8*, i8** %right, align 4
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call235 = call i8* @quotedzputs(i8* %159, %struct._IO_FILE* %160)
  br label %if.end236

if.end236:                                        ; preds = %if.else234, %if.then227
  br label %if.end240

if.else237:                                       ; preds = %if.then211
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %162 = load i32, i32* %ctype, align 4
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %162)
  %163 = load i8*, i8** %left, align 4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call239 = call i8* @quotedzputs(i8* %163, %struct._IO_FILE* %164)
  br label %if.end240

if.end240:                                        ; preds = %if.else237, %if.end236
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.end209
  %165 = load i32, i32* %ctype, align 4
  %cmp242 = icmp sge i32 %165, 11
  br i1 %cmp242, label %land.lhs.true244, label %if.end430

land.lhs.true244:                                 ; preds = %if.end241
  %166 = load i32, i32* %ctype, align 4
  %cmp245 = icmp sle i32 %166, 16
  br i1 %cmp245, label %if.then247, label %if.end430

if.then247:                                       ; preds = %land.lhs.true244
  %167 = load i8*, i8** %fromtest.addr, align 4
  %tobool248 = icmp ne i8* %167, null
  br i1 %tobool248, label %if.then249, label %if.else263

if.then249:                                       ; preds = %if.then247
  %168 = load i8*, i8** %left, align 4
  %call250 = call i32 @zstrtol(i8* %168, i8** %eptr, i32 10)
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l251 = bitcast %union.anon* %u to i32*
  store i32 %call250, i32* %l251, align 8
  %169 = load i8*, i8** %eptr, align 4
  %170 = load i8, i8* %169, align 1
  %tobool252 = icmp ne i8 %170, 0
  br i1 %tobool252, label %if.else257, label %if.then253

if.then253:                                       ; preds = %if.then249
  %171 = load i8*, i8** %right, align 4
  %call254 = call i32 @zstrtol(i8* %171, i8** %eptr, i32 10)
  %u255 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l256 = bitcast %union.anon* %u255 to i32*
  store i32 %call254, i32* %l256, align 8
  %172 = load i8*, i8** %right, align 4
  store i8* %172, i8** %err, align 4
  br label %if.end258

if.else257:                                       ; preds = %if.then249
  %173 = load i8*, i8** %left, align 4
  store i8* %173, i8** %err, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.else257, %if.then253
  %174 = load i8*, i8** %eptr, align 4
  %175 = load i8, i8* %174, align 1
  %tobool259 = icmp ne i8 %175, 0
  br i1 %tobool259, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.end258
  %176 = load i8*, i8** %fromtest.addr, align 4
  %177 = load i8*, i8** %err, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* %177)
  store i32 2, i32* %retval, align 4
  br label %return

if.end261:                                        ; preds = %if.end258
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %type262 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  store i32 1, i32* %type262, align 8
  br label %if.end265

if.else263:                                       ; preds = %if.then247
  %178 = load i8*, i8** %left, align 4
  call void @matheval(%struct.mnumber* sret %tmp, i8* %178)
  %179 = bitcast %struct.mnumber* %mn1 to i8*
  %180 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %179, i8* %180, i32 16, i32 8, i1 false)
  %181 = load i8*, i8** %right, align 4
  call void @matheval(%struct.mnumber* sret %tmp264, i8* %181)
  %182 = bitcast %struct.mnumber* %mn2 to i8*
  %183 = bitcast %struct.mnumber* %tmp264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %182, i8* %183, i32 16, i32 8, i1 false)
  br label %if.end265

if.end265:                                        ; preds = %if.else263, %if.end261
  %type266 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %184 = load i32, i32* %type266, align 8
  %type267 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 1
  %185 = load i32, i32* %type267, align 8
  %or = or i32 %184, %185
  %and268 = and i32 %or, 3
  %cmp269 = icmp eq i32 %and268, 3
  br i1 %cmp269, label %if.then271, label %if.end293

if.then271:                                       ; preds = %if.end265
  %type272 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %186 = load i32, i32* %type272, align 8
  %and273 = and i32 %186, 1
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %if.then275, label %if.end281

if.then275:                                       ; preds = %if.then271
  %type276 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  store i32 2, i32* %type276, align 8
  %u277 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l278 = bitcast %union.anon* %u277 to i32*
  %187 = load i32, i32* %l278, align 8
  %conv279 = sitofp i32 %187 to double
  %u280 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %d = bitcast %union.anon* %u280 to double*
  store double %conv279, double* %d, align 8
  br label %if.end281

if.end281:                                        ; preds = %if.then275, %if.then271
  %type282 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 1
  %188 = load i32, i32* %type282, align 8
  %and283 = and i32 %188, 1
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %if.then285, label %if.end292

if.then285:                                       ; preds = %if.end281
  %type286 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 1
  store i32 2, i32* %type286, align 8
  %u287 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l288 = bitcast %union.anon* %u287 to i32*
  %189 = load i32, i32* %l288, align 8
  %conv289 = sitofp i32 %189 to double
  %u290 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %d291 = bitcast %union.anon* %u290 to double*
  store double %conv289, double* %d291, align 8
  br label %if.end292

if.end292:                                        ; preds = %if.then285, %if.end281
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %if.end265
  %190 = load i32, i32* %ctype, align 4
  switch i32 %190, label %sw.epilog429 [
    i32 11, label %sw.bb294
    i32 12, label %sw.bb314
    i32 13, label %sw.bb337
    i32 14, label %sw.bb360
    i32 15, label %sw.bb383
    i32 16, label %sw.bb406
  ]

sw.bb294:                                         ; preds = %if.end293
  %type295 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %191 = load i32, i32* %type295, align 8
  %and296 = and i32 %191, 2
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb294
  %u298 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %d299 = bitcast %union.anon* %u298 to double*
  %192 = load double, double* %d299, align 8
  %u300 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %d301 = bitcast %union.anon* %u300 to double*
  %193 = load double, double* %d301, align 8
  %cmp302 = fcmp oeq double %192, %193
  %conv303 = zext i1 %cmp302 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb294
  %u304 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l305 = bitcast %union.anon* %u304 to i32*
  %194 = load i32, i32* %l305, align 8
  %u306 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l307 = bitcast %union.anon* %u306 to i32*
  %195 = load i32, i32* %l307, align 8
  %cmp308 = icmp eq i32 %194, %195
  %conv309 = zext i1 %cmp308 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond310 = phi i32 [ %conv303, %cond.true ], [ %conv309, %cond.false ]
  %tobool311 = icmp ne i32 %cond310, 0
  %lnot312 = xor i1 %tobool311, true
  %lnot.ext313 = zext i1 %lnot312 to i32
  store i32 %lnot.ext313, i32* %retval, align 4
  br label %return

sw.bb314:                                         ; preds = %if.end293
  %type315 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %196 = load i32, i32* %type315, align 8
  %and316 = and i32 %196, 2
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %cond.true318, label %cond.false325

cond.true318:                                     ; preds = %sw.bb314
  %u319 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %d320 = bitcast %union.anon* %u319 to double*
  %197 = load double, double* %d320, align 8
  %u321 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %d322 = bitcast %union.anon* %u321 to double*
  %198 = load double, double* %d322, align 8
  %cmp323 = fcmp une double %197, %198
  %conv324 = zext i1 %cmp323 to i32
  br label %cond.end332

cond.false325:                                    ; preds = %sw.bb314
  %u326 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l327 = bitcast %union.anon* %u326 to i32*
  %199 = load i32, i32* %l327, align 8
  %u328 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l329 = bitcast %union.anon* %u328 to i32*
  %200 = load i32, i32* %l329, align 8
  %cmp330 = icmp ne i32 %199, %200
  %conv331 = zext i1 %cmp330 to i32
  br label %cond.end332

cond.end332:                                      ; preds = %cond.false325, %cond.true318
  %cond333 = phi i32 [ %conv324, %cond.true318 ], [ %conv331, %cond.false325 ]
  %tobool334 = icmp ne i32 %cond333, 0
  %lnot335 = xor i1 %tobool334, true
  %lnot.ext336 = zext i1 %lnot335 to i32
  store i32 %lnot.ext336, i32* %retval, align 4
  br label %return

sw.bb337:                                         ; preds = %if.end293
  %type338 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %201 = load i32, i32* %type338, align 8
  %and339 = and i32 %201, 2
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %cond.true341, label %cond.false348

cond.true341:                                     ; preds = %sw.bb337
  %u342 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %d343 = bitcast %union.anon* %u342 to double*
  %202 = load double, double* %d343, align 8
  %u344 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %d345 = bitcast %union.anon* %u344 to double*
  %203 = load double, double* %d345, align 8
  %cmp346 = fcmp olt double %202, %203
  %conv347 = zext i1 %cmp346 to i32
  br label %cond.end355

cond.false348:                                    ; preds = %sw.bb337
  %u349 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l350 = bitcast %union.anon* %u349 to i32*
  %204 = load i32, i32* %l350, align 8
  %u351 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l352 = bitcast %union.anon* %u351 to i32*
  %205 = load i32, i32* %l352, align 8
  %cmp353 = icmp slt i32 %204, %205
  %conv354 = zext i1 %cmp353 to i32
  br label %cond.end355

cond.end355:                                      ; preds = %cond.false348, %cond.true341
  %cond356 = phi i32 [ %conv347, %cond.true341 ], [ %conv354, %cond.false348 ]
  %tobool357 = icmp ne i32 %cond356, 0
  %lnot358 = xor i1 %tobool357, true
  %lnot.ext359 = zext i1 %lnot358 to i32
  store i32 %lnot.ext359, i32* %retval, align 4
  br label %return

sw.bb360:                                         ; preds = %if.end293
  %type361 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %206 = load i32, i32* %type361, align 8
  %and362 = and i32 %206, 2
  %tobool363 = icmp ne i32 %and362, 0
  br i1 %tobool363, label %cond.true364, label %cond.false371

cond.true364:                                     ; preds = %sw.bb360
  %u365 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %d366 = bitcast %union.anon* %u365 to double*
  %207 = load double, double* %d366, align 8
  %u367 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %d368 = bitcast %union.anon* %u367 to double*
  %208 = load double, double* %d368, align 8
  %cmp369 = fcmp ogt double %207, %208
  %conv370 = zext i1 %cmp369 to i32
  br label %cond.end378

cond.false371:                                    ; preds = %sw.bb360
  %u372 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l373 = bitcast %union.anon* %u372 to i32*
  %209 = load i32, i32* %l373, align 8
  %u374 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l375 = bitcast %union.anon* %u374 to i32*
  %210 = load i32, i32* %l375, align 8
  %cmp376 = icmp sgt i32 %209, %210
  %conv377 = zext i1 %cmp376 to i32
  br label %cond.end378

cond.end378:                                      ; preds = %cond.false371, %cond.true364
  %cond379 = phi i32 [ %conv370, %cond.true364 ], [ %conv377, %cond.false371 ]
  %tobool380 = icmp ne i32 %cond379, 0
  %lnot381 = xor i1 %tobool380, true
  %lnot.ext382 = zext i1 %lnot381 to i32
  store i32 %lnot.ext382, i32* %retval, align 4
  br label %return

sw.bb383:                                         ; preds = %if.end293
  %type384 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %211 = load i32, i32* %type384, align 8
  %and385 = and i32 %211, 2
  %tobool386 = icmp ne i32 %and385, 0
  br i1 %tobool386, label %cond.true387, label %cond.false394

cond.true387:                                     ; preds = %sw.bb383
  %u388 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %d389 = bitcast %union.anon* %u388 to double*
  %212 = load double, double* %d389, align 8
  %u390 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %d391 = bitcast %union.anon* %u390 to double*
  %213 = load double, double* %d391, align 8
  %cmp392 = fcmp ole double %212, %213
  %conv393 = zext i1 %cmp392 to i32
  br label %cond.end401

cond.false394:                                    ; preds = %sw.bb383
  %u395 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l396 = bitcast %union.anon* %u395 to i32*
  %214 = load i32, i32* %l396, align 8
  %u397 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l398 = bitcast %union.anon* %u397 to i32*
  %215 = load i32, i32* %l398, align 8
  %cmp399 = icmp sle i32 %214, %215
  %conv400 = zext i1 %cmp399 to i32
  br label %cond.end401

cond.end401:                                      ; preds = %cond.false394, %cond.true387
  %cond402 = phi i32 [ %conv393, %cond.true387 ], [ %conv400, %cond.false394 ]
  %tobool403 = icmp ne i32 %cond402, 0
  %lnot404 = xor i1 %tobool403, true
  %lnot.ext405 = zext i1 %lnot404 to i32
  store i32 %lnot.ext405, i32* %retval, align 4
  br label %return

sw.bb406:                                         ; preds = %if.end293
  %type407 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 1
  %216 = load i32, i32* %type407, align 8
  %and408 = and i32 %216, 2
  %tobool409 = icmp ne i32 %and408, 0
  br i1 %tobool409, label %cond.true410, label %cond.false417

cond.true410:                                     ; preds = %sw.bb406
  %u411 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %d412 = bitcast %union.anon* %u411 to double*
  %217 = load double, double* %d412, align 8
  %u413 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %d414 = bitcast %union.anon* %u413 to double*
  %218 = load double, double* %d414, align 8
  %cmp415 = fcmp oge double %217, %218
  %conv416 = zext i1 %cmp415 to i32
  br label %cond.end424

cond.false417:                                    ; preds = %sw.bb406
  %u418 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn1, i32 0, i32 0
  %l419 = bitcast %union.anon* %u418 to i32*
  %219 = load i32, i32* %l419, align 8
  %u420 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn2, i32 0, i32 0
  %l421 = bitcast %union.anon* %u420 to i32*
  %220 = load i32, i32* %l421, align 8
  %cmp422 = icmp sge i32 %219, %220
  %conv423 = zext i1 %cmp422 to i32
  br label %cond.end424

cond.end424:                                      ; preds = %cond.false417, %cond.true410
  %cond425 = phi i32 [ %conv416, %cond.true410 ], [ %conv423, %cond.false417 ]
  %tobool426 = icmp ne i32 %cond425, 0
  %lnot427 = xor i1 %tobool426, true
  %lnot.ext428 = zext i1 %lnot427 to i32
  store i32 %lnot.ext428, i32* %retval, align 4
  br label %return

sw.epilog429:                                     ; preds = %if.end293
  br label %if.end430

if.end430:                                        ; preds = %sw.epilog429, %land.lhs.true244, %if.end241
  %221 = load i32, i32* %ctype, align 4
  switch i32 %221, label %sw.default [
    i32 3, label %sw.bb431
    i32 4, label %sw.bb431
    i32 5, label %sw.bb431
    i32 6, label %sw.bb527
    i32 7, label %sw.bb533
    i32 101, label %sw.bb539
    i32 97, label %sw.bb539
    i32 98, label %sw.bb544
    i32 99, label %sw.bb551
    i32 100, label %sw.bb558
    i32 102, label %sw.bb565
    i32 103, label %sw.bb572
    i32 107, label %sw.bb578
    i32 110, label %sw.bb584
    i32 111, label %sw.bb589
    i32 112, label %sw.bb591
    i32 114, label %sw.bb598
    i32 115, label %sw.bb603
    i32 83, label %sw.bb616
    i32 117, label %sw.bb623
    i32 118, label %sw.bb629
    i32 119, label %sw.bb634
    i32 120, label %sw.bb639
    i32 122, label %sw.bb657
    i32 104, label %sw.bb664
    i32 76, label %sw.bb664
    i32 79, label %sw.bb671
    i32 71, label %sw.bb682
    i32 78, label %sw.bb693
    i32 116, label %sw.bb716
    i32 8, label %sw.bb722
    i32 9, label %sw.bb722
    i32 10, label %sw.bb777
  ]

sw.bb431:                                         ; preds = %if.end430, %if.end430, %if.end430
  %222 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc434 = getelementptr inbounds %struct.estate, %struct.estate* %222, i32 0, i32 1
  %223 = load i32*, i32** %pc434, align 4
  %arrayidx435 = getelementptr inbounds i32, i32* %223, i32 1
  %224 = load i32, i32* %arrayidx435, align 4
  store i32 %224, i32* %npat, align 4
  %225 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog437 = getelementptr inbounds %struct.estate, %struct.estate* %225, i32 0, i32 0
  %226 = load %struct.eprog*, %struct.eprog** %prog437, align 4
  %pats = getelementptr inbounds %struct.eprog, %struct.eprog* %226, i32 0, i32 4
  %227 = load %struct.patprog**, %struct.patprog*** %pats, align 4
  %228 = load i32, i32* %npat, align 4
  %arrayidx438 = getelementptr inbounds %struct.patprog*, %struct.patprog** %227, i32 %228
  %229 = load %struct.patprog*, %struct.patprog** %arrayidx438, align 4
  store %struct.patprog* %229, %struct.patprog** %pprog, align 4
  %230 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %230, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %231 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %cmp439 = icmp eq %struct.patprog* %231, inttoptr (i32 1 to %struct.patprog*)
  br i1 %cmp439, label %if.then444, label %lor.lhs.false441

lor.lhs.false441:                                 ; preds = %sw.bb431
  %232 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %cmp442 = icmp eq %struct.patprog* %232, inttoptr (i32 2 to %struct.patprog*)
  br i1 %cmp442, label %if.then444, label %if.end485

if.then444:                                       ; preds = %lor.lhs.false441, %sw.bb431
  %233 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog447 = getelementptr inbounds %struct.estate, %struct.estate* %233, i32 0, i32 0
  %234 = load %struct.eprog*, %struct.eprog** %prog447, align 4
  %235 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc448 = getelementptr inbounds %struct.estate, %struct.estate* %235, i32 0, i32 1
  %236 = load i32*, i32** %pc448, align 4
  %call449 = call i8* @ecrawstr(%struct.eprog* %234, i32* %236, i32* %htok)
  store i8* %call449, i8** %opat, align 4
  %call450 = call i8* @dupstring(i8* %call449)
  store i8* %call450, i8** %right, align 4
  call void @singsub(i8** %right)
  %237 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog451 = getelementptr inbounds %struct.estate, %struct.estate* %237, i32 0, i32 0
  %238 = load %struct.eprog*, %struct.eprog** %prog451, align 4
  %flags = getelementptr inbounds %struct.eprog, %struct.eprog* %238, i32 0, i32 0
  %239 = load i32, i32* %flags, align 4
  %and452 = and i32 %239, 2
  %tobool453 = icmp ne i32 %and452, 0
  br i1 %tobool453, label %land.end, label %land.lhs.true454

land.lhs.true454:                                 ; preds = %if.then444
  %240 = load i8*, i8** %opat, align 4
  %241 = load i8*, i8** %right, align 4
  %call455 = call i32 @strcmp(i8* %240, i8* %241)
  %tobool456 = icmp ne i32 %call455, 0
  br i1 %tobool456, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true454
  %242 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %cmp457 = icmp ne %struct.patprog* %242, inttoptr (i32 2 to %struct.patprog*)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true454, %if.then444
  %243 = phi i1 [ false, %land.lhs.true454 ], [ false, %if.then444 ], [ %cmp457, %land.rhs ]
  %land.ext = zext i1 %243 to i32
  store i32 %land.ext, i32* %save, align 4
  %244 = load i8*, i8** %right, align 4
  %245 = load i32, i32* %save, align 4
  %tobool459 = icmp ne i32 %245, 0
  %cond460 = select i1 %tobool459, i32 256, i32 64
  %call461 = call %struct.patprog* @patcompile(i8* %244, i32 %cond460, i8** null)
  store %struct.patprog* %call461, %struct.patprog** %pprog, align 4
  %tobool462 = icmp ne %struct.patprog* %call461, null
  br i1 %tobool462, label %if.else477, label %if.then463

if.then463:                                       ; preds = %land.end
  %246 = load i8*, i8** %fromtest.addr, align 4
  %247 = load i8*, i8** %right, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %246, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* %247)
  br label %do.body

do.body:                                          ; preds = %if.then463
  %248 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %248, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool464 = icmp ne i32 %dec, 0
  br i1 %tobool464, label %if.end475, label %if.then465

if.then465:                                       ; preds = %do.body
  br label %do.body466

do.body466:                                       ; preds = %if.then465
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body466
  %249 = load i32, i32* @queue_front, align 4
  %250 = load i32, i32* @queue_rear, align 4
  %cmp467 = icmp ne i32 %249, %250
  br i1 %cmp467, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %251 = load i32, i32* @queue_front, align 4
  %add470 = add nsw i32 %251, 1
  %rem = srem i32 %add470, 128
  store i32 %rem, i32* @queue_front, align 4
  %252 = load i32, i32* @queue_front, align 4
  %arrayidx471 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %252
  call void @signal_setmask(%struct.__sigset_t* sret %tmp472, %struct.__sigset_t* byval align 4 %arrayidx471)
  %253 = bitcast %struct.__sigset_t* %oset to i8*
  %254 = bitcast %struct.__sigset_t* %tmp472 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %253, i8* %254, i32 128, i32 4, i1 false)
  %255 = load i32, i32* @queue_front, align 4
  %arrayidx473 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %255
  %256 = load i32, i32* %arrayidx473, align 4
  call void @zhandler(i32 %256)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp474, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end475

if.end475:                                        ; preds = %do.end, %do.body
  br label %do.end476

do.end476:                                        ; preds = %if.end475
  store i32 2, i32* %retval, align 4
  br label %return

if.else477:                                       ; preds = %land.end
  %257 = load i32, i32* %save, align 4
  %tobool478 = icmp ne i32 %257, 0
  br i1 %tobool478, label %if.then479, label %if.end483

if.then479:                                       ; preds = %if.else477
  %258 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %259 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog480 = getelementptr inbounds %struct.estate, %struct.estate* %259, i32 0, i32 0
  %260 = load %struct.eprog*, %struct.eprog** %prog480, align 4
  %pats481 = getelementptr inbounds %struct.eprog, %struct.eprog* %260, i32 0, i32 4
  %261 = load %struct.patprog**, %struct.patprog*** %pats481, align 4
  %262 = load i32, i32* %npat, align 4
  %arrayidx482 = getelementptr inbounds %struct.patprog*, %struct.patprog** %261, i32 %262
  store %struct.patprog* %258, %struct.patprog** %arrayidx482, align 4
  br label %if.end483

if.end483:                                        ; preds = %if.then479, %if.else477
  br label %if.end484

if.end484:                                        ; preds = %if.end483
  br label %if.end485

if.end485:                                        ; preds = %if.end484, %lor.lhs.false441
  %263 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc486 = getelementptr inbounds %struct.estate, %struct.estate* %263, i32 0, i32 1
  %264 = load i32*, i32** %pc486, align 4
  %add.ptr487 = getelementptr inbounds i32, i32* %264, i32 2
  store i32* %add.ptr487, i32** %pc486, align 4
  %265 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool488 = icmp ne %struct.patprog* %265, null
  br i1 %tobool488, label %land.rhs489, label %land.end492

land.rhs489:                                      ; preds = %if.end485
  %266 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %267 = load i8*, i8** %left, align 4
  %call490 = call i32 @pattry(%struct.patprog* %266, i8* %267)
  %tobool491 = icmp ne i32 %call490, 0
  br label %land.end492

land.end492:                                      ; preds = %land.rhs489, %if.end485
  %268 = phi i1 [ false, %if.end485 ], [ %tobool491, %land.rhs489 ]
  %land.ext493 = zext i1 %268 to i32
  store i32 %land.ext493, i32* %test, align 4
  br label %do.body494

do.body494:                                       ; preds = %land.end492
  %269 = load i32, i32* @queueing_enabled, align 4
  %dec495 = add nsw i32 %269, -1
  store i32 %dec495, i32* @queueing_enabled, align 4
  %tobool496 = icmp ne i32 %dec495, 0
  br i1 %tobool496, label %if.end513, label %if.then497

if.then497:                                       ; preds = %do.body494
  br label %do.body498

do.body498:                                       ; preds = %if.then497
  br label %while.cond499

while.cond499:                                    ; preds = %while.body502, %do.body498
  %270 = load i32, i32* @queue_front, align 4
  %271 = load i32, i32* @queue_rear, align 4
  %cmp500 = icmp ne i32 %270, %271
  br i1 %cmp500, label %while.body502, label %while.end511

while.body502:                                    ; preds = %while.cond499
  %272 = load i32, i32* @queue_front, align 4
  %add505 = add nsw i32 %272, 1
  %rem506 = srem i32 %add505, 128
  store i32 %rem506, i32* @queue_front, align 4
  %273 = load i32, i32* @queue_front, align 4
  %arrayidx507 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %273
  call void @signal_setmask(%struct.__sigset_t* sret %tmp508, %struct.__sigset_t* byval align 4 %arrayidx507)
  %274 = bitcast %struct.__sigset_t* %oset504 to i8*
  %275 = bitcast %struct.__sigset_t* %tmp508 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %274, i8* %275, i32 128, i32 4, i1 false)
  %276 = load i32, i32* @queue_front, align 4
  %arrayidx509 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %276
  %277 = load i32, i32* %arrayidx509, align 4
  call void @zhandler(i32 %277)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp510, %struct.__sigset_t* byval align 4 %oset504)
  br label %while.cond499

while.end511:                                     ; preds = %while.cond499
  br label %do.end512

do.end512:                                        ; preds = %while.end511
  br label %if.end513

if.end513:                                        ; preds = %do.end512, %do.body494
  br label %do.end514

do.end514:                                        ; preds = %if.end513
  %278 = load i32, i32* %ctype, align 4
  %cmp515 = icmp eq i32 %278, 5
  br i1 %cmp515, label %cond.true517, label %cond.false521

cond.true517:                                     ; preds = %do.end514
  %279 = load i32, i32* %test, align 4
  %tobool518 = icmp ne i32 %279, 0
  %lnot519 = xor i1 %tobool518, true
  %lnot.ext520 = zext i1 %lnot519 to i32
  br label %cond.end522

cond.false521:                                    ; preds = %do.end514
  %280 = load i32, i32* %test, align 4
  br label %cond.end522

cond.end522:                                      ; preds = %cond.false521, %cond.true517
  %cond523 = phi i32 [ %lnot.ext520, %cond.true517 ], [ %280, %cond.false521 ]
  %tobool524 = icmp ne i32 %cond523, 0
  %lnot525 = xor i1 %tobool524, true
  %lnot.ext526 = zext i1 %lnot525 to i32
  store i32 %lnot.ext526, i32* %retval, align 4
  br label %return

sw.bb527:                                         ; preds = %if.end430
  %281 = load i8*, i8** %left, align 4
  %282 = load i8*, i8** %right, align 4
  %call528 = call i32 @strcmp(i8* %281, i8* %282)
  %cmp529 = icmp slt i32 %call528, 0
  %lnot531 = xor i1 %cmp529, true
  %lnot.ext532 = zext i1 %lnot531 to i32
  store i32 %lnot.ext532, i32* %retval, align 4
  br label %return

sw.bb533:                                         ; preds = %if.end430
  %283 = load i8*, i8** %left, align 4
  %284 = load i8*, i8** %right, align 4
  %call534 = call i32 @strcmp(i8* %283, i8* %284)
  %cmp535 = icmp sgt i32 %call534, 0
  %lnot537 = xor i1 %cmp535, true
  %lnot.ext538 = zext i1 %lnot537 to i32
  store i32 %lnot.ext538, i32* %retval, align 4
  br label %return

sw.bb539:                                         ; preds = %if.end430, %if.end430
  %285 = load i8*, i8** %left, align 4
  %call540 = call i32 @doaccess(i8* %285, i32 0)
  %tobool541 = icmp ne i32 %call540, 0
  %lnot542 = xor i1 %tobool541, true
  %lnot.ext543 = zext i1 %lnot542 to i32
  store i32 %lnot.ext543, i32* %retval, align 4
  br label %return

sw.bb544:                                         ; preds = %if.end430
  %286 = load i8*, i8** %left, align 4
  %call545 = call i32 @dostat(i8* %286)
  %and546 = and i32 %call545, 61440
  %cmp547 = icmp eq i32 %and546, 24576
  %lnot549 = xor i1 %cmp547, true
  %lnot.ext550 = zext i1 %lnot549 to i32
  store i32 %lnot.ext550, i32* %retval, align 4
  br label %return

sw.bb551:                                         ; preds = %if.end430
  %287 = load i8*, i8** %left, align 4
  %call552 = call i32 @dostat(i8* %287)
  %and553 = and i32 %call552, 61440
  %cmp554 = icmp eq i32 %and553, 8192
  %lnot556 = xor i1 %cmp554, true
  %lnot.ext557 = zext i1 %lnot556 to i32
  store i32 %lnot.ext557, i32* %retval, align 4
  br label %return

sw.bb558:                                         ; preds = %if.end430
  %288 = load i8*, i8** %left, align 4
  %call559 = call i32 @dostat(i8* %288)
  %and560 = and i32 %call559, 61440
  %cmp561 = icmp eq i32 %and560, 16384
  %lnot563 = xor i1 %cmp561, true
  %lnot.ext564 = zext i1 %lnot563 to i32
  store i32 %lnot.ext564, i32* %retval, align 4
  br label %return

sw.bb565:                                         ; preds = %if.end430
  %289 = load i8*, i8** %left, align 4
  %call566 = call i32 @dostat(i8* %289)
  %and567 = and i32 %call566, 61440
  %cmp568 = icmp eq i32 %and567, 32768
  %lnot570 = xor i1 %cmp568, true
  %lnot.ext571 = zext i1 %lnot570 to i32
  store i32 %lnot.ext571, i32* %retval, align 4
  br label %return

sw.bb572:                                         ; preds = %if.end430
  %290 = load i8*, i8** %left, align 4
  %call573 = call i32 @dostat(i8* %290)
  %and574 = and i32 %call573, 1024
  %tobool575 = icmp ne i32 %and574, 0
  %lnot576 = xor i1 %tobool575, true
  %lnot.ext577 = zext i1 %lnot576 to i32
  store i32 %lnot.ext577, i32* %retval, align 4
  br label %return

sw.bb578:                                         ; preds = %if.end430
  %291 = load i8*, i8** %left, align 4
  %call579 = call i32 @dostat(i8* %291)
  %and580 = and i32 %call579, 512
  %tobool581 = icmp ne i32 %and580, 0
  %lnot582 = xor i1 %tobool581, true
  %lnot.ext583 = zext i1 %lnot582 to i32
  store i32 %lnot.ext583, i32* %retval, align 4
  br label %return

sw.bb584:                                         ; preds = %if.end430
  %292 = load i8*, i8** %left, align 4
  %call585 = call i32 @strlen(i8* %292)
  %tobool586 = icmp ne i32 %call585, 0
  %lnot587 = xor i1 %tobool586, true
  %lnot.ext588 = zext i1 %lnot587 to i32
  store i32 %lnot.ext588, i32* %retval, align 4
  br label %return

sw.bb589:                                         ; preds = %if.end430
  %293 = load i8*, i8** %fromtest.addr, align 4
  %294 = load i8*, i8** %left, align 4
  %call590 = call i32 @optison(i8* %293, i8* %294)
  store i32 %call590, i32* %retval, align 4
  br label %return

sw.bb591:                                         ; preds = %if.end430
  %295 = load i8*, i8** %left, align 4
  %call592 = call i32 @dostat(i8* %295)
  %and593 = and i32 %call592, 61440
  %cmp594 = icmp eq i32 %and593, 4096
  %lnot596 = xor i1 %cmp594, true
  %lnot.ext597 = zext i1 %lnot596 to i32
  store i32 %lnot.ext597, i32* %retval, align 4
  br label %return

sw.bb598:                                         ; preds = %if.end430
  %296 = load i8*, i8** %left, align 4
  %call599 = call i32 @doaccess(i8* %296, i32 4)
  %tobool600 = icmp ne i32 %call599, 0
  %lnot601 = xor i1 %tobool600, true
  %lnot.ext602 = zext i1 %lnot601 to i32
  store i32 %lnot.ext602, i32* %retval, align 4
  br label %return

sw.bb603:                                         ; preds = %if.end430
  %297 = load i8*, i8** %left, align 4
  %call604 = call %struct.stat* @getstat(i8* %297)
  store %struct.stat* %call604, %struct.stat** %st, align 4
  %tobool605 = icmp ne %struct.stat* %call604, null
  br i1 %tobool605, label %land.rhs606, label %land.end612

land.rhs606:                                      ; preds = %sw.bb603
  %298 = load %struct.stat*, %struct.stat** %st, align 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %298, i32 0, i32 12
  %299 = load i32, i32* %st_size, align 8
  %tobool607 = icmp ne i32 %299, 0
  %lnot608 = xor i1 %tobool607, true
  %lnot610 = xor i1 %lnot608, true
  br label %land.end612

land.end612:                                      ; preds = %land.rhs606, %sw.bb603
  %300 = phi i1 [ false, %sw.bb603 ], [ %lnot610, %land.rhs606 ]
  %lnot614 = xor i1 %300, true
  %lnot.ext615 = zext i1 %lnot614 to i32
  store i32 %lnot.ext615, i32* %retval, align 4
  br label %return

sw.bb616:                                         ; preds = %if.end430
  %301 = load i8*, i8** %left, align 4
  %call617 = call i32 @dostat(i8* %301)
  %and618 = and i32 %call617, 61440
  %cmp619 = icmp eq i32 %and618, 49152
  %lnot621 = xor i1 %cmp619, true
  %lnot.ext622 = zext i1 %lnot621 to i32
  store i32 %lnot.ext622, i32* %retval, align 4
  br label %return

sw.bb623:                                         ; preds = %if.end430
  %302 = load i8*, i8** %left, align 4
  %call624 = call i32 @dostat(i8* %302)
  %and625 = and i32 %call624, 2048
  %tobool626 = icmp ne i32 %and625, 0
  %lnot627 = xor i1 %tobool626, true
  %lnot.ext628 = zext i1 %lnot627 to i32
  store i32 %lnot.ext628, i32* %retval, align 4
  br label %return

sw.bb629:                                         ; preds = %if.end430
  %303 = load i8*, i8** %left, align 4
  %call630 = call i32 @issetvar(i8* %303)
  %tobool631 = icmp ne i32 %call630, 0
  %lnot632 = xor i1 %tobool631, true
  %lnot.ext633 = zext i1 %lnot632 to i32
  store i32 %lnot.ext633, i32* %retval, align 4
  br label %return

sw.bb634:                                         ; preds = %if.end430
  %304 = load i8*, i8** %left, align 4
  %call635 = call i32 @doaccess(i8* %304, i32 2)
  %tobool636 = icmp ne i32 %call635, 0
  %lnot637 = xor i1 %tobool636, true
  %lnot.ext638 = zext i1 %lnot637 to i32
  store i32 %lnot.ext638, i32* %retval, align 4
  br label %return

sw.bb639:                                         ; preds = %if.end430
  %call640 = call i32 @privasserted()
  %tobool641 = icmp ne i32 %call640, 0
  br i1 %tobool641, label %if.then642, label %if.end652

if.then642:                                       ; preds = %sw.bb639
  %305 = load i8*, i8** %left, align 4
  %call644 = call i32 @dostat(i8* %305)
  store i32 %call644, i32* %mode, align 4
  %306 = load i32, i32* %mode, align 4
  %and645 = and i32 %306, 73
  %tobool646 = icmp ne i32 %and645, 0
  br i1 %tobool646, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then642
  %307 = load i32, i32* %mode, align 4
  %and647 = and i32 %307, 61440
  %cmp648 = icmp eq i32 %and647, 16384
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then642
  %308 = phi i1 [ true, %if.then642 ], [ %cmp648, %lor.rhs ]
  %lnot650 = xor i1 %308, true
  %lnot.ext651 = zext i1 %lnot650 to i32
  store i32 %lnot.ext651, i32* %retval, align 4
  br label %return

if.end652:                                        ; preds = %sw.bb639
  %309 = load i8*, i8** %left, align 4
  %call653 = call i32 @doaccess(i8* %309, i32 1)
  %tobool654 = icmp ne i32 %call653, 0
  %lnot655 = xor i1 %tobool654, true
  %lnot.ext656 = zext i1 %lnot655 to i32
  store i32 %lnot.ext656, i32* %retval, align 4
  br label %return

sw.bb657:                                         ; preds = %if.end430
  %310 = load i8*, i8** %left, align 4
  %call658 = call i32 @strlen(i8* %310)
  %tobool659 = icmp ne i32 %call658, 0
  %lnot660 = xor i1 %tobool659, true
  %lnot662 = xor i1 %lnot660, true
  %lnot.ext663 = zext i1 %lnot662 to i32
  store i32 %lnot.ext663, i32* %retval, align 4
  br label %return

sw.bb664:                                         ; preds = %if.end430, %if.end430
  %311 = load i8*, i8** %left, align 4
  %call665 = call i32 @dolstat(i8* %311)
  %and666 = and i32 %call665, 61440
  %cmp667 = icmp eq i32 %and666, 40960
  %lnot669 = xor i1 %cmp667, true
  %lnot.ext670 = zext i1 %lnot669 to i32
  store i32 %lnot.ext670, i32* %retval, align 4
  br label %return

sw.bb671:                                         ; preds = %if.end430
  %312 = load i8*, i8** %left, align 4
  %call672 = call %struct.stat* @getstat(i8* %312)
  store %struct.stat* %call672, %struct.stat** %st, align 4
  %tobool673 = icmp ne %struct.stat* %call672, null
  br i1 %tobool673, label %land.rhs674, label %land.end678

land.rhs674:                                      ; preds = %sw.bb671
  %313 = load %struct.stat*, %struct.stat** %st, align 4
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %313, i32 0, i32 7
  %314 = load i32, i32* %st_uid, align 4
  %call675 = call i32 @geteuid()
  %cmp676 = icmp eq i32 %314, %call675
  br label %land.end678

land.end678:                                      ; preds = %land.rhs674, %sw.bb671
  %315 = phi i1 [ false, %sw.bb671 ], [ %cmp676, %land.rhs674 ]
  %lnot680 = xor i1 %315, true
  %lnot.ext681 = zext i1 %lnot680 to i32
  store i32 %lnot.ext681, i32* %retval, align 4
  br label %return

sw.bb682:                                         ; preds = %if.end430
  %316 = load i8*, i8** %left, align 4
  %call683 = call %struct.stat* @getstat(i8* %316)
  store %struct.stat* %call683, %struct.stat** %st, align 4
  %tobool684 = icmp ne %struct.stat* %call683, null
  br i1 %tobool684, label %land.rhs685, label %land.end689

land.rhs685:                                      ; preds = %sw.bb682
  %317 = load %struct.stat*, %struct.stat** %st, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %317, i32 0, i32 8
  %318 = load i32, i32* %st_gid, align 8
  %call686 = call i32 @getegid()
  %cmp687 = icmp eq i32 %318, %call686
  br label %land.end689

land.end689:                                      ; preds = %land.rhs685, %sw.bb682
  %319 = phi i1 [ false, %sw.bb682 ], [ %cmp687, %land.rhs685 ]
  %lnot691 = xor i1 %319, true
  %lnot.ext692 = zext i1 %lnot691 to i32
  store i32 %lnot.ext692, i32* %retval, align 4
  br label %return

sw.bb693:                                         ; preds = %if.end430
  %320 = load i8*, i8** %left, align 4
  %call694 = call %struct.stat* @getstat(i8* %320)
  store %struct.stat* %call694, %struct.stat** %st, align 4
  %tobool695 = icmp ne %struct.stat* %call694, null
  br i1 %tobool695, label %if.end697, label %if.then696

if.then696:                                       ; preds = %sw.bb693
  store i32 1, i32* %retval, align 4
  br label %return

if.end697:                                        ; preds = %sw.bb693
  %321 = load %struct.stat*, %struct.stat** %st, align 4
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %321, i32 0, i32 18
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %322 = load i32, i32* %tv_sec, align 8
  %323 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %323, i32 0, i32 19
  %tv_sec698 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %324 = load i32, i32* %tv_sec698, align 8
  %cmp699 = icmp eq i32 %322, %324
  br i1 %cmp699, label %cond.true701, label %cond.false707

cond.true701:                                     ; preds = %if.end697
  %325 = load %struct.stat*, %struct.stat** %st, align 4
  %st_atim702 = getelementptr inbounds %struct.stat, %struct.stat* %325, i32 0, i32 18
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim702, i32 0, i32 1
  %326 = load i32, i32* %tv_nsec, align 4
  %327 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim703 = getelementptr inbounds %struct.stat, %struct.stat* %327, i32 0, i32 19
  %tv_nsec704 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim703, i32 0, i32 1
  %328 = load i32, i32* %tv_nsec704, align 4
  %cmp705 = icmp sgt i32 %326, %328
  %conv706 = zext i1 %cmp705 to i32
  br label %cond.end714

cond.false707:                                    ; preds = %if.end697
  %329 = load %struct.stat*, %struct.stat** %st, align 4
  %st_atim708 = getelementptr inbounds %struct.stat, %struct.stat* %329, i32 0, i32 18
  %tv_sec709 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim708, i32 0, i32 0
  %330 = load i32, i32* %tv_sec709, align 8
  %331 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim710 = getelementptr inbounds %struct.stat, %struct.stat* %331, i32 0, i32 19
  %tv_sec711 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim710, i32 0, i32 0
  %332 = load i32, i32* %tv_sec711, align 8
  %cmp712 = icmp sgt i32 %330, %332
  %conv713 = zext i1 %cmp712 to i32
  br label %cond.end714

cond.end714:                                      ; preds = %cond.false707, %cond.true701
  %cond715 = phi i32 [ %conv706, %cond.true701 ], [ %conv713, %cond.false707 ]
  store i32 %cond715, i32* %retval, align 4
  br label %return

sw.bb716:                                         ; preds = %if.end430
  %333 = load i8*, i8** %left, align 4
  %call717 = call i32 @mathevali(i8* %333)
  %call718 = call i32 @isatty(i32 %call717)
  %tobool719 = icmp ne i32 %call718, 0
  %lnot720 = xor i1 %tobool719, true
  %lnot.ext721 = zext i1 %lnot720 to i32
  store i32 %lnot.ext721, i32* %retval, align 4
  br label %return

sw.bb722:                                         ; preds = %if.end430, %if.end430
  %334 = load i8*, i8** %left, align 4
  %call725 = call %struct.stat* @getstat(i8* %334)
  store %struct.stat* %call725, %struct.stat** %st, align 4
  %tobool726 = icmp ne %struct.stat* %call725, null
  br i1 %tobool726, label %if.end728, label %if.then727

if.then727:                                       ; preds = %sw.bb722
  store i32 1, i32* %retval, align 4
  br label %return

if.end728:                                        ; preds = %sw.bb722
  %335 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim729 = getelementptr inbounds %struct.stat, %struct.stat* %335, i32 0, i32 19
  %tv_sec730 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim729, i32 0, i32 0
  %336 = load i32, i32* %tv_sec730, align 8
  store i32 %336, i32* %a, align 4
  %337 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim731 = getelementptr inbounds %struct.stat, %struct.stat* %337, i32 0, i32 19
  %tv_nsec732 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim731, i32 0, i32 1
  %338 = load i32, i32* %tv_nsec732, align 4
  store i32 %338, i32* %nsecs, align 4
  %339 = load i8*, i8** %right, align 4
  %call733 = call %struct.stat* @getstat(i8* %339)
  store %struct.stat* %call733, %struct.stat** %st, align 4
  %tobool734 = icmp ne %struct.stat* %call733, null
  br i1 %tobool734, label %if.end736, label %if.then735

if.then735:                                       ; preds = %if.end728
  store i32 1, i32* %retval, align 4
  br label %return

if.end736:                                        ; preds = %if.end728
  %340 = load i32, i32* %a, align 4
  %341 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim737 = getelementptr inbounds %struct.stat, %struct.stat* %341, i32 0, i32 19
  %tv_sec738 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim737, i32 0, i32 0
  %342 = load i32, i32* %tv_sec738, align 8
  %cmp739 = icmp eq i32 %340, %342
  br i1 %cmp739, label %if.then741, label %if.end759

if.then741:                                       ; preds = %if.end736
  %343 = load i32, i32* %ctype, align 4
  %cmp742 = icmp eq i32 %343, 8
  br i1 %cmp742, label %cond.true744, label %cond.false749

cond.true744:                                     ; preds = %if.then741
  %344 = load i32, i32* %nsecs, align 4
  %345 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim745 = getelementptr inbounds %struct.stat, %struct.stat* %345, i32 0, i32 19
  %tv_nsec746 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim745, i32 0, i32 1
  %346 = load i32, i32* %tv_nsec746, align 4
  %cmp747 = icmp sgt i32 %344, %346
  %conv748 = zext i1 %cmp747 to i32
  br label %cond.end754

cond.false749:                                    ; preds = %if.then741
  %347 = load i32, i32* %nsecs, align 4
  %348 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim750 = getelementptr inbounds %struct.stat, %struct.stat* %348, i32 0, i32 19
  %tv_nsec751 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim750, i32 0, i32 1
  %349 = load i32, i32* %tv_nsec751, align 4
  %cmp752 = icmp slt i32 %347, %349
  %conv753 = zext i1 %cmp752 to i32
  br label %cond.end754

cond.end754:                                      ; preds = %cond.false749, %cond.true744
  %cond755 = phi i32 [ %conv748, %cond.true744 ], [ %conv753, %cond.false749 ]
  %tobool756 = icmp ne i32 %cond755, 0
  %lnot757 = xor i1 %tobool756, true
  %lnot.ext758 = zext i1 %lnot757 to i32
  store i32 %lnot.ext758, i32* %retval, align 4
  br label %return

if.end759:                                        ; preds = %if.end736
  %350 = load i32, i32* %ctype, align 4
  %cmp760 = icmp eq i32 %350, 8
  br i1 %cmp760, label %cond.true762, label %cond.false767

cond.true762:                                     ; preds = %if.end759
  %351 = load i32, i32* %a, align 4
  %352 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim763 = getelementptr inbounds %struct.stat, %struct.stat* %352, i32 0, i32 19
  %tv_sec764 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim763, i32 0, i32 0
  %353 = load i32, i32* %tv_sec764, align 8
  %cmp765 = icmp sgt i32 %351, %353
  %conv766 = zext i1 %cmp765 to i32
  br label %cond.end772

cond.false767:                                    ; preds = %if.end759
  %354 = load i32, i32* %a, align 4
  %355 = load %struct.stat*, %struct.stat** %st, align 4
  %st_mtim768 = getelementptr inbounds %struct.stat, %struct.stat* %355, i32 0, i32 19
  %tv_sec769 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim768, i32 0, i32 0
  %356 = load i32, i32* %tv_sec769, align 8
  %cmp770 = icmp slt i32 %354, %356
  %conv771 = zext i1 %cmp770 to i32
  br label %cond.end772

cond.end772:                                      ; preds = %cond.false767, %cond.true762
  %cond773 = phi i32 [ %conv766, %cond.true762 ], [ %conv771, %cond.false767 ]
  %tobool774 = icmp ne i32 %cond773, 0
  %lnot775 = xor i1 %tobool774, true
  %lnot.ext776 = zext i1 %lnot775 to i32
  store i32 %lnot.ext776, i32* %retval, align 4
  br label %return

sw.bb777:                                         ; preds = %if.end430
  %357 = load i8*, i8** %left, align 4
  %call781 = call %struct.stat* @getstat(i8* %357)
  store %struct.stat* %call781, %struct.stat** %st, align 4
  %tobool782 = icmp ne %struct.stat* %call781, null
  br i1 %tobool782, label %if.end784, label %if.then783

if.then783:                                       ; preds = %sw.bb777
  store i32 1, i32* %retval, align 4
  br label %return

if.end784:                                        ; preds = %sw.bb777
  %358 = load %struct.stat*, %struct.stat** %st, align 4
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %358, i32 0, i32 0
  %359 = load i32, i32* %st_dev, align 8
  store i32 %359, i32* %d779, align 4
  %360 = load %struct.stat*, %struct.stat** %st, align 4
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %360, i32 0, i32 2
  %361 = load i32, i32* %st_ino, align 8
  store i32 %361, i32* %i, align 4
  %362 = load i8*, i8** %right, align 4
  %call785 = call %struct.stat* @getstat(i8* %362)
  store %struct.stat* %call785, %struct.stat** %st, align 4
  %tobool786 = icmp ne %struct.stat* %call785, null
  br i1 %tobool786, label %if.end788, label %if.then787

if.then787:                                       ; preds = %if.end784
  store i32 1, i32* %retval, align 4
  br label %return

if.end788:                                        ; preds = %if.end784
  %363 = load i32, i32* %d779, align 4
  %364 = load %struct.stat*, %struct.stat** %st, align 4
  %st_dev789 = getelementptr inbounds %struct.stat, %struct.stat* %364, i32 0, i32 0
  %365 = load i32, i32* %st_dev789, align 8
  %cmp790 = icmp eq i32 %363, %365
  br i1 %cmp790, label %land.rhs792, label %land.end796

land.rhs792:                                      ; preds = %if.end788
  %366 = load i32, i32* %i, align 4
  %367 = load %struct.stat*, %struct.stat** %st, align 4
  %st_ino793 = getelementptr inbounds %struct.stat, %struct.stat* %367, i32 0, i32 2
  %368 = load i32, i32* %st_ino793, align 8
  %cmp794 = icmp eq i32 %366, %368
  br label %land.end796

land.end796:                                      ; preds = %land.rhs792, %if.end788
  %369 = phi i1 [ false, %if.end788 ], [ %cmp794, %land.rhs792 ]
  %lnot798 = xor i1 %369, true
  %lnot.ext799 = zext i1 %lnot798 to i32
  store i32 %lnot.ext799, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end430
  %370 = load i8*, i8** %fromtest.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %370, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  store i32 2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %land.end796, %if.then787, %if.then783, %cond.end772, %cond.end754, %if.then735, %if.then727, %sw.bb716, %cond.end714, %if.then696, %land.end689, %land.end678, %sw.bb664, %sw.bb657, %if.end652, %lor.end, %sw.bb634, %sw.bb629, %sw.bb623, %sw.bb616, %land.end612, %sw.bb598, %sw.bb591, %sw.bb589, %sw.bb584, %sw.bb578, %sw.bb572, %sw.bb565, %sw.bb558, %sw.bb551, %sw.bb544, %sw.bb539, %sw.bb533, %sw.bb527, %cond.end522, %do.end476, %cond.end424, %cond.end401, %cond.end378, %cond.end355, %cond.end332, %cond.end, %if.then260, %if.end182, %if.end173, %if.then167, %if.then136, %if.end128, %if.then122, %if.else29, %if.else14, %if.else, %if.then3
  %371 = load i32, i32* %retval, align 4
  ret i32 %371
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @ensurefeature(i8*, i8*, i8*) #1

declare i8* @ecgetstr(%struct.estate*, i32, i32*) #1

declare i8** @ecgetarr(%struct.estate*, i32, i32, i32*) #1

declare i8** @arrdup(i8**) #1

declare void @untokenize(i8*) #1

declare i8* @dupstring(i8*) #1

declare %struct.conddef* @getconddef(i32, i8*, i32) #1

declare void @zwarnnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal void @tracemodcond(i8* %name, i8** %args, i32 %inf) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %inf.addr = alloca i32, align 4
  %aptr = alloca i8**, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store i32 %inf, i32* %inf.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %call = call i8** @arrdup(i8** %0)
  store i8** %call, i8*** %args.addr, align 4
  %1 = load i8**, i8*** %args.addr, align 4
  store i8** %1, i8*** %aptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8**, i8*** %aptr, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %aptr, align 4
  %5 = load i8*, i8** %4, align 4
  call void @untokenize(i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8**, i8*** %aptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %aptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %inf.addr, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %9 = load i8**, i8*** %args.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %9, i32 0
  %10 = load i8*, i8** %arrayidx, align 4
  %11 = load i8*, i8** %name.addr, align 4
  %12 = load i8**, i8*** %args.addr, align 4
  %arrayidx2 = getelementptr inbounds i8*, i8** %12, i32 1
  %13 = load i8*, i8** %arrayidx2, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* %10, i8* %11, i8* %13)
  br label %if.end

if.else:                                          ; preds = %for.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %15 = load i8*, i8** %name.addr, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %15)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %16 = load i8**, i8*** %args.addr, align 4
  %17 = load i8*, i8** %16, align 4
  %tobool5 = icmp ne i8* %17, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %19 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr6 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr6, i8*** %args.addr, align 4
  %20 = load i8*, i8** %19, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %20)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

declare void @zerrnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal void @cond_subst(i8** %strp, i32 %glob_ok) #0 {
entry:
  %strp.addr = alloca i8**, align 4
  %glob_ok.addr = alloca i32, align 4
  %args = alloca %union.linkroot*, align 4
  store i8** %strp, i8*** %strp.addr, align 4
  store i32 %glob_ok, i32* %glob_ok.addr, align 4
  %0 = load i32, i32* %glob_ok.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** %strp.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %3 = load i8**, i8*** %strp.addr, align 4
  %4 = load i8*, i8** %3, align 4
  %call = call i32 @strlen(i8* %4)
  %call1 = call i32 @checkglobqual(i8* %2, i32 %call, i32 1, i8** null)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call3 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call3, %union.linkroot** %args, align 4
  %5 = load %union.linkroot*, %union.linkroot** %args, align 4
  %6 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list = bitcast %union.linkroot* %6 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %7 = load %struct.linknode*, %struct.linknode** %last, align 4
  %8 = load i8**, i8*** %strp.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %call4 = call %struct.linknode* @insertlinknode(%union.linkroot* %5, %struct.linknode* %7, i8* %9)
  %10 = load %union.linkroot*, %union.linkroot** %args, align 4
  call void @prefork(%union.linkroot* %10, i32 0, i32* null)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load i32, i32* @errflag, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %while.cond
  %12 = load %union.linkroot*, %union.linkroot** %args, align 4
  %tobool7 = icmp ne %union.linkroot* %12, null
  br i1 %tobool7, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %13 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list9 = bitcast %union.linkroot* %13 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list9, i32 0, i32 0
  %14 = load %struct.linknode*, %struct.linknode** %first, align 4
  %cmp = icmp ne %struct.linknode* %14, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true8
  %15 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list10 = bitcast %union.linkroot* %15 to %struct.linklist*
  %first11 = getelementptr inbounds %struct.linklist, %struct.linklist* %list10, i32 0, i32 0
  %16 = load %struct.linknode*, %struct.linknode** %first11, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %16, i32 0, i32 2
  %17 = load i8*, i8** %dat, align 4
  %call12 = call i32 @has_token(i8* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8, %land.lhs.true6, %while.cond
  %18 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true6 ], [ false, %while.cond ], [ %tobool13, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load %union.linkroot*, %union.linkroot** %args, align 4
  %20 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list14 = bitcast %union.linkroot* %20 to %struct.linklist*
  %first15 = getelementptr inbounds %struct.linklist, %struct.linklist* %list14, i32 0, i32 0
  %21 = load %struct.linknode*, %struct.linknode** %first15, align 4
  call void @zglob(%union.linkroot* %19, %struct.linknode* %21, i32 0)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load %union.linkroot*, %union.linkroot** %args, align 4
  %call16 = call i8** @hlinklist2array(%union.linkroot* %22, i32 0)
  %call17 = call i8* @sepjoin(i8** %call16, i8* null, i32 1)
  %23 = load i8**, i8*** %strp.addr, align 4
  store i8* %call17, i8** %23, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %24 = load i8**, i8*** %strp.addr, align 4
  call void @singsub(i8** %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare i8* @quotedzputs(i8*, %struct._IO_FILE*) #1

declare i8* @ecrawstr(%struct.eprog*, i32*, i32*) #1

declare void @quote_tokenized_output(i8*, %struct._IO_FILE*) #1

declare i32 @zstrtol(i8*, i8**, i32) #1

declare void @matheval(%struct.mnumber* sret, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @singsub(i8**) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare void @zhandler(i32) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @doaccess(i8* %s, i32 %c) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %c.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i8* @unmeta(i8* %0)
  %1 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @access(i8* %call, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind
define internal i32 @dostat(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %statp = alloca %struct.stat*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call %struct.stat* @getstat(i8* %0)
  store %struct.stat* %call, %struct.stat** %statp, align 4
  %tobool = icmp ne %struct.stat* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.stat*, %struct.stat** %statp, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 6
  %2 = load i32, i32* %st_mode, align 8
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare i32 @strlen(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @optison(i8* %name, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %call1 = call i32 @optlookupc(i8 signext %2)
  store i32 %call1, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 4
  %call2 = call i32 @optlookup(i8* %3)
  store i32 %call2, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else7, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 132), align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then3
  store i32 1, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.then3
  %6 = load i8*, i8** %name.addr, align 4
  %7 = load i8*, i8** %s.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* %7)
  store i32 3, i32* %retval, align 4
  br label %return

if.else7:                                         ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else7
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 0, %9
  %arrayidx = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %sub
  %10 = load i8, i8* %arrayidx, align 1
  %tobool10 = icmp ne i8 %10, 0
  %lnot = xor i1 %tobool10, true
  %lnot11 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot11 to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.else12:                                        ; preds = %if.else7
  %11 = load i32, i32* %i, align 4
  %arrayidx13 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %11
  %12 = load i8, i8* %arrayidx13, align 1
  %tobool14 = icmp ne i8 %12, 0
  %lnot15 = xor i1 %tobool14, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  store i32 %lnot.ext16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else12, %if.then9, %if.else6, %if.then5
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind
define internal %struct.stat* @getstat(i8* %s) #0 {
entry:
  %retval = alloca %struct.stat*, align 4
  %s.addr = alloca i8*, align 4
  %us = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 8
  %call1 = call i32 @atoi(i8* %add.ptr)
  %call2 = call i32 @fstat(i32 %call1, %struct.stat* @st)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store %struct.stat* null, %struct.stat** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store %struct.stat* @st, %struct.stat** %retval, align 4
  br label %return

if.end5:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %call6 = call i8* @unmeta(i8* %2)
  store i8* %call6, i8** %us, align 4
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  store %struct.stat* null, %struct.stat** %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %3 = load i8*, i8** %us, align 4
  %call10 = call i32 @stat(i8* %3, %struct.stat* @st)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store %struct.stat* null, %struct.stat** %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  store %struct.stat* @st, %struct.stat** %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then8, %if.end, %if.then4
  %4 = load %struct.stat*, %struct.stat** %retval, align 4
  ret %struct.stat* %4
}

declare i32 @issetvar(i8*) #1

declare i32 @privasserted() #1

; Function Attrs: noinline nounwind
define internal i32 @dolstat(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i8* @unmeta(i8* %0)
  %call1 = call i32 @lstat(i8* %call, %struct.stat* @st)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @st, i32 0, i32 6), align 8
  store i32 %1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare i32 @geteuid() #1

declare i32 @getegid() #1

declare i32 @isatty(i32) #1

declare i32 @mathevali(i8*) #1

; Function Attrs: noinline nounwind
define i8* @cond_str(i8** %args, i32 %num, i32 %raw) #0 {
entry:
  %args.addr = alloca i8**, align 4
  %num.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  store i8** %args, i8*** %args.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %raw, i32* %raw.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i32, i32* %num.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %0, i32 %1
  %2 = load i8*, i8** %arrayidx, align 4
  store i8* %2, i8** %s, align 4
  %3 = load i8*, i8** %s, align 4
  %call = call i32 @has_token(i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @singsub(i8** %s)
  %4 = load i32, i32* %raw.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load i8*, i8** %s, align 4
  call void @untokenize(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %6 = load i8*, i8** %s, align 4
  ret i8* %6
}

declare i32 @has_token(i8*) #1

; Function Attrs: noinline nounwind
define i32 @cond_val(i8** %args, i32 %num) #0 {
entry:
  %args.addr = alloca i8**, align 4
  %num.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  store i8** %args, i8*** %args.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i32, i32* %num.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %0, i32 %1
  %2 = load i8*, i8** %arrayidx, align 4
  store i8* %2, i8** %s, align 4
  %3 = load i8*, i8** %s, align 4
  %call = call i32 @has_token(i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @singsub(i8** %s)
  %4 = load i8*, i8** %s, align 4
  call void @untokenize(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %s, align 4
  %call1 = call i32 @mathevali(i8* %5)
  ret i32 %call1
}

; Function Attrs: noinline nounwind
define i32 @cond_match(i8** %args, i32 %num, i8* %str) #0 {
entry:
  %args.addr = alloca i8**, align 4
  %num.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %s = alloca i8*, align 4
  store i8** %args, i8*** %args.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i32, i32* %num.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %0, i32 %1
  %2 = load i8*, i8** %arrayidx, align 4
  store i8* %2, i8** %s, align 4
  call void @singsub(i8** %s)
  %3 = load i8*, i8** %str.addr, align 4
  %4 = load i8*, i8** %s, align 4
  %call = call i32 @matchpat(i8* %3, i8* %4)
  ret i32 %call
}

declare i32 @matchpat(i8*, i8*) #1

declare i32 @checkglobqual(i8*, i32, i32, i8**) #1

declare %union.linkroot* @newlinklist() #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare void @prefork(%union.linkroot*, i32, i32*) #1

declare void @zglob(%union.linkroot*, %struct.linknode*, i32) #1

declare i8* @sepjoin(i8**, i8*, i32) #1

declare i8** @hlinklist2array(%union.linkroot*, i32) #1

declare i32 @access(i8*, i32) #1

declare i8* @unmeta(i8*) #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare i32 @fstat(i32, %struct.stat*) #1

declare i32 @atoi(i8*) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare i32 @lstat(i8*, %struct.stat*) #1

declare i32 @optlookupc(i8 signext) #1

declare i32 @optlookup(i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
