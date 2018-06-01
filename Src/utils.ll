; ModuleID = 'utils.c'
source_filename = "utils.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct._IO_FILE = type opaque
%struct.__mbstate_t = type { i32, i32 }
%struct.nameddir = type { %struct.hashnode, i8*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.__sigset_t = type { [32 x i32] }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.widechar_array = type { i32*, i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon = type { double }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.prepromptfn = type { void ()* }
%struct.timedfn = type { void ()*, i32 }
%struct.__dirstream = type opaque
%struct.fd_set = type { [32 x i32] }
%struct.timeval = type { i32, i32 }
%struct.dirent = type { i32, i32, i32, i32, i16, i8, [256 x i8] }
%struct.cmdnam = type { %struct.hashnode, %union.anon.1 }
%union.anon.1 = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.dirsav = type { i32, i32, i8*, i32, i32 }

@errflag = external global i32, align 4
@noerrs = external global i32, align 4
@opts = external global [181 x i8], align 1
@locallevel = external global i32, align 4
@lineno = external global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"%ld: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"interrupt\0A\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@shout = external global %struct._IO_FILE*, align 4
@nicechar_sel.buf = internal global [10 x i8] zeroinitializer, align 1
@typtab = common global [256 x i16] zeroinitializer, align 2
@mb_shiftstate = internal global %struct.__mbstate_t zeroinitializer, align 4
@wcs_nicechar_sel.buf = internal global i8* null, align 4
@wcs_nicechar_sel.bufalloc = internal global i32 0, align 4
@wcs_nicechar_sel.newalloc = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\5CU%.8x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\5Cu%.4x\00", align 1
@path = external global i8**, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@pwd = external global i8*, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@xbuf = internal global [8193 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"path expansion failed, using root directory\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@cached_uid = common global i32 0, align 4
@cached_username = common global i8* null, align 4
@finddir.homenode = internal global %struct.nameddir { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 0 }, i8* null, i32 0 }, align 4
@finddir.ffsz = internal global i32 0, align 4
@home = external global i8*, align 4
@finddir_full = internal global i8* null, align 4
@finddir_last = internal global %struct.nameddir* null, align 4
@finddir_best = internal global i32 0, align 4
@nameddirtab = external global %struct.hashtable*, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"zsh_directory_name\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"OLDPWD\00", align 1
@paramtab = external global %struct.hashtable*, align 4
@prepromptfns = internal global %union.linkroot* null, align 4
@timedfns = common global %union.linkroot* null, align 4
@sfcontext = external global i32, align 4
@stopmsg = external global i32, align 4
@incompfunc = common global i32 0, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"_functions\00", align 1
@preprompt.lastperiodic = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"PERIOD\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"MAILCHECK\00", align 1
@use_exit_printed = external global i32, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"PROMPT_EOL_MARK\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%B%S%#%s%b\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%*s\0D%*s\0D\00", align 1
@zterm_columns = external global i32, align 4
@hasxn = external global i32, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"precmd\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@watch = external global i8**, align 4
@lastwatch = common global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"LOGCHECK\00", align 1
@lastmailcheck = common global i32 0, align 4
@mailpath = external global i8**, align 4
@queueing_enabled = external global i32, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@xtrerr = global %struct._IO_FILE* null, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@prompt4 = external global i8*, align 4
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SHTTY = external global i32, align 4
@.str.29 = private unnamed_addr constant [15 x i8] c"bad tcgets: %e\00", align 1
@adjustwinsize.getwinsz = internal global i32 1, align 4
@shttyinfo = common global %struct.ttyinfo zeroinitializer, align 4
@zterm_lines = external global i32, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@zleactive = external global i32, align 4
@resetneeded = common global i32 0, align 4
@winchanged = common global i32 0, align 4
@fdtable = external global i8*, align 4
@fdtable_flocks = external global i32, align 4
@max_zsh_fd = external global i32, align 4
@coprocin = external global i32, align 4
@coprocout = external global i32, align 4
@.str.32 = private unnamed_addr constant [8 x i8] c".XXXXXX\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"TMPPREFIX\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"/tmp/zsh\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"invalid base (must be 2 to 36 inclusive): %d\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"number truncated after %d digits: %s\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"zsh: sure you want to delete more than %d files in \00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"zsh: sure you want to delete the only file in \00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"zsh: sure you want to delete all %d files in \00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"zsh: sure you want to delete all the files in \00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"? (waiting ten seconds)\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c" [yn]? \00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"read failed: %e\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"write failed: %e\00", align 1
@term = external global i8*, align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@mypgrp = external global i32, align 4
@.str.48 = private unnamed_addr constant [3 x i8] c"n\0A\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@histdone = external global i32, align 4
@.str.51 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@shfunctab = external global %struct.hashtable*, align 4
@builtintab = external global %struct.hashtable*, align 4
@cmdnamtab = external global %struct.hashtable*, align 4
@aliastab = external global %struct.hashtable*, align 4
@reswdtab = external global %struct.hashtable*, align 4
@best = internal global i8* null, align 4
@.str.52 = private unnamed_addr constant [15 x i8] c"CORRECT_IGNORE\00", align 1
@spckpat = internal global %struct.patprog* null, align 4
@.str.53 = private unnamed_addr constant [20 x i8] c"CORRECT_IGNORE_FILE\00", align 1
@spnamepat = internal global %struct.patprog* null, align 4
@guess = internal global i8* null, align 4
@d = internal global i32 0, align 4
@pathchecked = external global i8**, align 4
@cdpath = external global i8**, align 4
@ztokens = external global [0 x i8], align 1
@sprompt = external global i8*, align 4
@.str.54 = private unnamed_addr constant [5 x i8] c"nyae\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"OE^#_-0123456789\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%0*ld\00", align 1
@nulstring = external global [0 x i8], align 1
@ifs = external global i8*, align 4
@.str.57 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"ZBEEP\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@typtab_flags = internal global i32 0, align 4
@emulation = external global i32, align 4
@.str.60 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c" \09\0A\83 \00", align 1
@wordchars = external global i8*, align 4
@.str.62 = private unnamed_addr constant [24 x i8] c"*?_-.[]~=/&;!#$%^(){}<>\00", align 1
@wordchars_wide = internal global %struct.widechar_array zeroinitializer, align 4
@ifs_wide = internal global %struct.widechar_array zeroinitializer, align 4
@.str.63 = private unnamed_addr constant [26 x i8] c"#$^*()=|{}[]`<>?~;&\0A\09 \5C'\22\00", align 1
@bangchar = external global i8, align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"#^*()|[]<>?~\5C\00", align 1
@attachtty.ep = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [23 x i8] c"can't set tty pgrp: %e\00", align 1
@metafy.mbuf = internal global [8193 x i8] zeroinitializer, align 1
@unmeta.fn = internal global i8* null, align 4
@unmeta.sz = internal global i32 0, align 4
@.str.66 = private unnamed_addr constant [3 x i8] c"\5C'\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"$'\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"$'%s'\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"UCS-4BE\00", align 1
@.str.73 = private unnamed_addr constant [44 x i8] c"cannot do charset conversion (iconv failed)\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"character not in range\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"failed to chdir(/): %e\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"lost current directory, failed to cd to /: %e\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"lost current directory: %e: changed to `%s'\00", align 1
@scriptname = common global i8* null, align 4
@scriptfilename = common global i8* null, align 4
@argzero = external global i8*, align 4
@.str.78 = private unnamed_addr constant [4 x i8] c"zsh\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"empty MAILPATH component: %s\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"%e: %s\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"%s/%s?%s\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"You have new mail.\0A\00", align 1
@underscoreused = external global i32, align 4
@zunderscore = external global i8*, align 4
@.str.83 = private unnamed_addr constant [31 x i8] c"The mail in %s has been read.\0A\00", align 1
@tclines = external global i32, align 4
@termflags = external global i32, align 4
@tccolumns = external global i32, align 4
@fdtable_size = external global i32, align 4
@retflag = external global i32, align 4
@breaks = external global i32, align 4
@contflag = external global i32, align 4
@spdist.qwertykeymap = internal constant [155 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\091234567890-=\09\09qwertyuiop[]\09\09asdfghjkl;'\0A\09\09zxcvbnm,./\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\09!@#$%^&*()_+\09\09QWERTYUIOP{}\09\09ASDFGHJKL:\22\0A\09\09ZXCVBNM<>?\0A\0A\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00", align 1
@spdist.dvorakkeymap = internal constant [155 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\091234567890[]\09\09',.pyfgcrl/=\09\09aoeuidhtns-\0A\09\09;qjkxbmwvz\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\09!@#$%^&*(){}\09\09\22<>PYFGCRL?+\09\09AOEUIDHTNS_\0A\09\09:QJKXBMWVZ\0A\0A\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00", align 1
@spname.newname = internal global [4097 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind
define void @zerr(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 4
  %ap = alloca [4 x i32], align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  %0 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @noerrs, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end3

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @noerrs, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* @errflag, align 4
  %or = or i32 %3, 1
  store i32 %or, i32* @errflag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %return

if.end3:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* @errflag, align 4
  %or4 = or i32 %4, 1
  store i32 %or4, i32* @errflag, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay5 = bitcast i32* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay5)
  %5 = load i8*, i8** %fmt.addr, align 4
  %arraydecay6 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  call void @zwarning(i8* null, i8* %5, i32* %arraydecay6)
  %arraydecay7 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay78 = bitcast i32* %arraydecay7 to i8*
  call void @llvm.va_end(i8* %arraydecay78)
  br label %return

return:                                           ; preds = %if.end3, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: noinline nounwind
define internal void @zwarning(i8* %cmd, i8* %fmt, i32* %ap) #0 {
entry:
  %cmd.addr = alloca i8*, align 4
  %fmt.addr = alloca i8*, align 4
  %ap.addr = alloca i32*, align 4
  %prefix = alloca i8*, align 4
  store i8* %cmd, i8** %cmd.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  store i32* %ap, i32** %ap.addr, align 4
  %call = call i32 @isatty(i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* (i32, ...) @zleentry(i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i8*, i8** @scriptname, align 4
  %tobool2 = icmp ne i8* %0, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %1 = load i8*, i8** @scriptname, align 4
  br label %cond.end6

cond.false:                                       ; preds = %if.end
  %2 = load i8*, i8** @argzero, align 4
  %tobool3 = icmp ne i8* %2, null
  br i1 %tobool3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.false
  %3 = load i8*, i8** @argzero, align 4
  br label %cond.end

cond.false5:                                      ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false5, %cond.true4
  %cond = phi i8* [ %3, %cond.true4 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.false5 ]
  br label %cond.end6

cond.end6:                                        ; preds = %cond.end, %cond.true
  %cond7 = phi i8* [ %1, %cond.true ], [ %cond, %cond.end ]
  store i8* %cond7, i8** %prefix, align 4
  %4 = load i8*, i8** %cmd.addr, align 4
  %tobool8 = icmp ne i8* %4, null
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %cond.end6
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool10 = icmp ne i8 %5, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.then9
  %6 = load i32, i32* @locallevel, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false, %if.then9
  %7 = load i8*, i8** %prefix, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call13 = call i32 @mb_niceformat(i8* %7, %struct._IO_FILE* %8, i8** null, i32 0)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call14 = call i32 @fputc(i32 58, %struct._IO_FILE* %9)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %lor.lhs.false
  %10 = load i8*, i8** %cmd.addr, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call16 = call i32 @mb_niceformat(i8* %10, %struct._IO_FILE* %11, i8** null, i32 0)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call17 = call i32 @fputc(i32 58, %struct._IO_FILE* %12)
  br label %if.end26

if.else:                                          ; preds = %cond.end6
  %13 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv = sext i8 %13 to i32
  %tobool18 = icmp ne i32 %conv, 0
  br i1 %tobool18, label %land.lhs.true, label %cond.false21

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* @locallevel, align 4
  %tobool19 = icmp ne i32 %14, 0
  br i1 %tobool19, label %cond.false21, label %cond.true20

cond.true20:                                      ; preds = %land.lhs.true
  br label %cond.end22

cond.false21:                                     ; preds = %land.lhs.true, %if.else
  %15 = load i8*, i8** %prefix, align 4
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), %cond.true20 ], [ %15, %cond.false21 ]
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call24 = call i32 @mb_niceformat(i8* %cond23, %struct._IO_FILE* %16, i8** null, i32 0)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call25 = call i32 @fputc(i32 58, %struct._IO_FILE* %17)
  br label %if.end26

if.end26:                                         ; preds = %cond.end22, %if.end15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %19 = load i8*, i8** %fmt.addr, align 4
  %20 = load i32*, i32** %ap.addr, align 4
  call void @zerrmsg(%struct._IO_FILE* %18, i8* %19, i32* %20)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind
define void @zerrnam(i8* %cmd, i8* %fmt, ...) #0 {
entry:
  %cmd.addr = alloca i8*, align 4
  %fmt.addr = alloca i8*, align 4
  %ap = alloca [4 x i32], align 4
  store i8* %cmd, i8** %cmd.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  %0 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @noerrs, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @errflag, align 4
  %or = or i32 %2, 1
  store i32 %or, i32* @errflag, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay2 = bitcast i32* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %3 = load i8*, i8** %cmd.addr, align 4
  %4 = load i8*, i8** %fmt.addr, align 4
  %arraydecay3 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  call void @zwarning(i8* %3, i8* %4, i32* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast i32* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @zwarn(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 4
  %ap = alloca [4 x i32], align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  %0 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @noerrs, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay2 = bitcast i32* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %2 = load i8*, i8** %fmt.addr, align 4
  %arraydecay3 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  call void @zwarning(i8* null, i8* %2, i32* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast i32* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @zwarnnam(i8* %cmd, i8* %fmt, ...) #0 {
entry:
  %cmd.addr = alloca i8*, align 4
  %fmt.addr = alloca i8*, align 4
  %ap = alloca [4 x i32], align 4
  store i8* %cmd, i8** %cmd.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  %0 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @noerrs, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay2 = bitcast i32* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %2 = load i8*, i8** %cmd.addr, align 4
  %3 = load i8*, i8** %fmt.addr, align 4
  %arraydecay3 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  call void @zwarning(i8* %2, i8* %3, i32* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast i32* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @zerrmsg(%struct._IO_FILE* %file, i8* %fmt, i32* %ap) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 4
  %fmt.addr = alloca i8*, align 4
  %ap.addr = alloca i32*, align 4
  %str = alloca i8*, align 4
  %num = alloca i32, align 4
  %errmsg = alloca i8*, align 4
  %varet = alloca i8*, align 4
  %s = alloca i8*, align 4
  %varet11 = alloca i8*, align 4
  %varet12 = alloca i32, align 4
  %varet17 = alloca i32, align 4
  %varet22 = alloca i32, align 4
  %varet26 = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  store i32* %ap, i32** %ap.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @locallevel, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @lineno, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %4 = load i32, i32* @lineno, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %4)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call3 = call i32 @fputc(i32 32, %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %if.end
  %6 = load i8*, i8** %fmt.addr, align 4
  %7 = load i8, i8* %6, align 1
  %tobool4 = icmp ne i8 %7, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %fmt.addr, align 4
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then6, label %if.else44

if.then6:                                         ; preds = %while.body
  %10 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 4
  %11 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %fmt.addr, align 4
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  switch i32 %conv8, label %sw.epilog [
    i32 115, label %sw.bb
    i32 108, label %sw.bb10
    i32 100, label %sw.bb16
    i32 37, label %sw.bb19
    i32 99, label %sw.bb21
    i32 101, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.then6
  %13 = load i32*, i32** %ap.addr, align 4
  %14 = va_arg i32* %13, i8*
  store i8* %14, i8** %varet, align 4
  %15 = load i8*, i8** %varet, align 4
  store i8* %15, i8** %str, align 4
  %16 = load i8*, i8** %str, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call9 = call i32 @mb_niceformat(i8* %16, %struct._IO_FILE* %17, i8** null, i32 0)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then6
  %18 = load i32*, i32** %ap.addr, align 4
  %19 = va_arg i32* %18, i8*
  store i8* %19, i8** %varet11, align 4
  %20 = load i8*, i8** %varet11, align 4
  store i8* %20, i8** %str, align 4
  %21 = load i32*, i32** %ap.addr, align 4
  %22 = va_arg i32* %21, i32
  store i32 %22, i32* %varet12, align 4
  %23 = load i32, i32* %varet12, align 4
  store i32 %23, i32* %num, align 4
  %24 = load i8*, i8** %str, align 4
  %25 = load i32, i32* %num, align 4
  %call13 = call i32 @metalen(i8* %24, i32 %25)
  store i32 %call13, i32* %num, align 4
  %26 = load i32, i32* %num, align 4
  %add = add nsw i32 %26, 1
  %call14 = call i8* @zhalloc(i32 %add)
  store i8* %call14, i8** %s, align 4
  %27 = load i8*, i8** %s, align 4
  %28 = load i8*, i8** %str, align 4
  %29 = load i32, i32* %num, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 %29, i32 1, i1 false)
  %30 = load i8*, i8** %s, align 4
  %31 = load i32, i32* %num, align 4
  %arrayidx = getelementptr inbounds i8, i8* %30, i32 %31
  store i8 0, i8* %arrayidx, align 1
  %32 = load i8*, i8** %s, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call15 = call i32 @mb_niceformat(i8* %32, %struct._IO_FILE* %33, i8** null, i32 0)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then6
  %34 = load i32*, i32** %ap.addr, align 4
  %35 = va_arg i32* %34, i32
  store i32 %35, i32* %varet17, align 4
  %36 = load i32, i32* %varet17, align 4
  store i32 %36, i32* %num, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %38 = load i32, i32* %num, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %38)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then6
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call20 = call i32 @putc(i32 37, %struct._IO_FILE* %39)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then6
  %40 = load i32*, i32** %ap.addr, align 4
  %41 = va_arg i32* %40, i32
  store i32 %41, i32* %varet22, align 4
  %42 = load i32, i32* %varet22, align 4
  store i32 %42, i32* %num, align 4
  call void @mb_charinit()
  %43 = load i32, i32* %num, align 4
  %call23 = call i8* @wcs_nicechar(i32 %43, i32* null, i8** null)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call24 = call i32 @zputs(i8* %call23, %struct._IO_FILE* %44)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then6
  %45 = load i32*, i32** %ap.addr, align 4
  %46 = va_arg i32* %45, i32
  store i32 %46, i32* %varet26, align 4
  %47 = load i32, i32* %varet26, align 4
  store i32 %47, i32* %num, align 4
  %48 = load i32, i32* %num, align 4
  %cmp27 = icmp eq i32 %48, 4
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %sw.bb25
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %49)
  %50 = load i32, i32* @errflag, align 4
  %or = or i32 %50, 1
  store i32 %or, i32* @errflag, align 4
  br label %return

if.end31:                                         ; preds = %sw.bb25
  %51 = load i32, i32* %num, align 4
  %call32 = call i8* @strerror(i32 %51)
  store i8* %call32, i8** %errmsg, align 4
  %52 = load i32, i32* %num, align 4
  %cmp33 = icmp eq i32 %52, 5
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.end31
  %53 = load i8*, i8** %errmsg, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call36 = call i32 @fputs(i8* %53, %struct._IO_FILE* %54)
  br label %if.end43

if.else37:                                        ; preds = %if.end31
  %55 = load i8*, i8** %errmsg, align 4
  %arrayidx38 = getelementptr inbounds i8, i8* %55, i32 0
  %56 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %56 to i32
  %call40 = call i32 @tulower(i32 %conv39)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call41 = call i32 @fputc(i32 %call40, %struct._IO_FILE* %57)
  %58 = load i8*, i8** %errmsg, align 4
  %add.ptr = getelementptr inbounds i8, i8* %58, i32 1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call42 = call i32 @fputs(i8* %add.ptr, %struct._IO_FILE* %59)
  br label %if.end43

if.end43:                                         ; preds = %if.else37, %if.then35
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %if.end43, %sw.bb21, %sw.bb19, %sw.bb16, %sw.bb10, %sw.bb
  br label %if.end53

if.else44:                                        ; preds = %while.body
  %60 = load i8*, i8** %fmt.addr, align 4
  %61 = load i8, i8* %60, align 1
  %conv45 = sext i8 %61 to i32
  %cmp46 = icmp eq i32 %conv45, -125
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else44
  %62 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr48, i8** %fmt.addr, align 4
  %63 = load i8, i8* %incdec.ptr48, align 1
  %conv49 = sext i8 %63 to i32
  %xor = xor i32 %conv49, 32
  br label %cond.end

cond.false:                                       ; preds = %if.else44
  %64 = load i8*, i8** %fmt.addr, align 4
  %65 = load i8, i8* %64, align 1
  %conv50 = sext i8 %65 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv50, %cond.false ]
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call51 = call i32 @putc(i32 %cond, %struct._IO_FILE* %66)
  %67 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr52 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr52, i8** %fmt.addr, align 4
  br label %if.end53

if.end53:                                         ; preds = %cond.end, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call54 = call i32 @putc(i32 10, %struct._IO_FILE* %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 4
  %call55 = call i32 @fflush(%struct._IO_FILE* %69)
  br label %return

return:                                           ; preds = %while.end, %if.then29
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind
define i32 @mb_niceformat(i8* %s, %struct._IO_FILE* %stream, i8** %outstrp, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 4
  %outstrp.addr = alloca i8**, align 4
  %flags.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %newl = alloca i32, align 4
  %umlen = alloca i32, align 4
  %outalloc = alloca i32, align 4
  %outleft = alloca i32, align 4
  %eol = alloca i32, align 4
  %c = alloca i32, align 4
  %ums = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %fmt = alloca i8*, align 4
  %outstr = alloca i8*, align 4
  %outptr = alloca i8*, align 4
  %mbs = alloca %struct.__mbstate_t, align 4
  %cnt = alloca i32, align 4
  %outlen = alloca i32, align 4
  %outoffset = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 4
  store i8** %outstrp, i8*** %outstrp.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %l, align 4
  store i32 0, i32* %eol, align 4
  %0 = load i8**, i8*** %outstrp.addr, align 4
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %1)
  %mul = mul i32 5, %call
  store i32 %mul, i32* %outalloc, align 4
  store i32 %mul, i32* %outleft, align 4
  %2 = load i32, i32* %outalloc, align 4
  %call1 = call i8* @zalloc(i32 %2)
  store i8* %call1, i8** %outstr, align 4
  store i8* %call1, i8** %outptr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %outalloc, align 4
  store i32 0, i32* %outleft, align 4
  store i8* null, i8** %outstr, align 4
  store i8* null, i8** %outptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %s.addr, align 4
  %call2 = call i8* @ztrdup(i8* %3)
  store i8* %call2, i8** %ums, align 4
  %4 = load i8*, i8** %ums, align 4
  call void @untokenize(i8* %4)
  %5 = load i8*, i8** %ums, align 4
  %call3 = call i8* @unmetafy(i8* %5, i32* %umlen)
  store i8* %call3, i8** %ptr, align 4
  %6 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %6, i8 0, i32 8, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end44, %if.end
  %7 = load i32, i32* %umlen, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %eol, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i32, i32* %umlen, align 4
  %call5 = call i32 @mbrtowc(i32* %c, i8* %9, i32 %10, %struct.__mbstate_t* %mbs)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %cnt, align 4
  %11 = load i32, i32* %cnt, align 4
  switch i32 %11, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb6
    i32 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 1, i32* %eol, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %cond.end, %sw.bb
  %12 = load i8*, i8** %ptr, align 4
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %14 = load i32, i32* %flags.addr, align 4
  %and = and i32 %14, 2
  %call7 = call i8* @nicechar_sel(i32 %conv, i32 %and)
  store i8* %call7, i8** %fmt, align 4
  %15 = load i8*, i8** %fmt, align 4
  %call8 = call i32 @strlen(i8* %15)
  store i32 %call8, i32* %newl, align 4
  store i32 1, i32* %cnt, align 4
  %16 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %16, i8 0, i32 8, i32 4, i1 false)
  br label %sw.epilog

sw.bb9:                                           ; preds = %cond.end
  store i32 1, i32* %cnt, align 4
  br label %sw.default

sw.default:                                       ; preds = %cond.end, %sw.bb9
  %17 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %17, 39
  br i1 %cmp10, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %sw.default
  %18 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %18, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8** %fmt, align 4
  store i32 2, i32* %newl, align 4
  br label %if.end26

if.else15:                                        ; preds = %land.lhs.true, %sw.default
  %19 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %19, 92
  br i1 %cmp16, label %land.lhs.true18, label %if.else22

land.lhs.true18:                                  ; preds = %if.else15
  %20 = load i32, i32* %flags.addr, align 4
  %and19 = and i32 %20, 2
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %land.lhs.true18
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i8** %fmt, align 4
  store i32 2, i32* %newl, align 4
  br label %if.end25

if.else22:                                        ; preds = %land.lhs.true18, %if.else15
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %flags.addr, align 4
  %and23 = and i32 %22, 2
  %call24 = call i8* @wcs_nicechar_sel(i32 %21, i32* %newl, i8** null, i32 %and23)
  store i8* %call24, i8** %fmt, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end26, %sw.bb6
  %23 = load i32, i32* %cnt, align 4
  %24 = load i32, i32* %umlen, align 4
  %sub = sub i32 %24, %23
  store i32 %sub, i32* %umlen, align 4
  %25 = load i32, i32* %cnt, align 4
  %26 = load i8*, i8** %ptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %26, i32 %25
  store i8* %add.ptr, i8** %ptr, align 4
  %27 = load i32, i32* %newl, align 4
  %28 = load i32, i32* %l, align 4
  %add = add i32 %28, %27
  store i32 %add, i32* %l, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool27 = icmp ne %struct._IO_FILE* %29, null
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %sw.epilog
  %30 = load i8*, i8** %fmt, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call29 = call i32 @zputs(i8* %30, %struct._IO_FILE* %31)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %sw.epilog
  %32 = load i8*, i8** %outstr, align 4
  %tobool31 = icmp ne i8* %32, null
  br i1 %tobool31, label %if.then32, label %if.end44

if.then32:                                        ; preds = %if.end30
  %33 = load i8*, i8** %fmt, align 4
  %call33 = call i32 @strlen(i8* %33)
  store i32 %call33, i32* %outlen, align 4
  %34 = load i32, i32* %outlen, align 4
  %35 = load i32, i32* %outleft, align 4
  %cmp34 = icmp sge i32 %34, %35
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.then32
  %36 = load i8*, i8** %outptr, align 4
  %37 = load i8*, i8** %outstr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %outoffset, align 4
  %38 = load i32, i32* %outalloc, align 4
  %39 = load i32, i32* %outleft, align 4
  %add37 = add nsw i32 %39, %38
  store i32 %add37, i32* %outleft, align 4
  %40 = load i32, i32* %outalloc, align 4
  %mul38 = mul nsw i32 %40, 2
  store i32 %mul38, i32* %outalloc, align 4
  %41 = load i8*, i8** %outstr, align 4
  %42 = load i32, i32* %outalloc, align 4
  %call39 = call i8* @zrealloc(i8* %41, i32 %42)
  store i8* %call39, i8** %outstr, align 4
  %43 = load i8*, i8** %outstr, align 4
  %44 = load i32, i32* %outoffset, align 4
  %add.ptr40 = getelementptr inbounds i8, i8* %43, i32 %44
  store i8* %add.ptr40, i8** %outptr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.then32
  %45 = load i8*, i8** %outptr, align 4
  %46 = load i8*, i8** %fmt, align 4
  %47 = load i32, i32* %outlen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %46, i32 %47, i32 1, i1 false)
  %48 = load i32, i32* %outlen, align 4
  %49 = load i8*, i8** %outptr, align 4
  %add.ptr42 = getelementptr inbounds i8, i8* %49, i32 %48
  store i8* %add.ptr42, i8** %outptr, align 4
  %50 = load i32, i32* %outlen, align 4
  %51 = load i32, i32* %outleft, align 4
  %sub43 = sub nsw i32 %51, %50
  store i32 %sub43, i32* %outleft, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.end30
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i8*, i8** %ums, align 4
  call void @free(i8* %52)
  %53 = load i8**, i8*** %outstrp.addr, align 4
  %tobool45 = icmp ne i8** %53, null
  br i1 %tobool45, label %if.then46, label %if.end60

if.then46:                                        ; preds = %while.end
  %54 = load i8*, i8** %outptr, align 4
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %flags.addr, align 4
  %and47 = and i32 %55, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.then46
  %56 = load i8*, i8** %outstr, align 4
  %57 = load i8**, i8*** %outstrp.addr, align 4
  store i8* %56, i8** %57, align 4
  br label %if.end59

if.else50:                                        ; preds = %if.then46
  %58 = load i32, i32* %flags.addr, align 4
  %and51 = and i32 %58, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true53, label %cond.false55

cond.true53:                                      ; preds = %if.else50
  %59 = load i8*, i8** %outstr, align 4
  %call54 = call i8* @dupstring(i8* %59)
  br label %cond.end57

cond.false55:                                     ; preds = %if.else50
  %60 = load i8*, i8** %outstr, align 4
  %call56 = call i8* @ztrdup(i8* %60)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false55, %cond.true53
  %cond58 = phi i8* [ %call54, %cond.true53 ], [ %call56, %cond.false55 ]
  %61 = load i8**, i8*** %outstrp.addr, align 4
  store i8* %cond58, i8** %61, align 4
  %62 = load i8*, i8** %outstr, align 4
  call void @free(i8* %62)
  br label %if.end59

if.end59:                                         ; preds = %cond.end57, %if.then49
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %while.end
  %63 = load i32, i32* %l, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind
define i32 @metalen(i8* %s, i32 %len) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %mlen = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %mlen, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %mlen, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %mlen, align 4
  %5 = load i8*, i8** %s.addr, align 4
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %mlen, align 4
  ret i32 %6
}

declare i8* @zhalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

declare i32 @putc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind
define void @mb_charinit() #0 {
entry:
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @mb_shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define i32 @zputs(i8* %s, %struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 4
  %c = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.then5, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv2 = sext i8 %5 to i32
  %xor = xor i32 %conv2, 32
  store i32 %xor, i32* %c, align 4
  br label %if.end9

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i8, i8* %6, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv3 = sext i16 %8 to i32
  %and = and i32 %conv3, 16
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %9 = load i8*, i8** %s.addr, align 4
  %incdec.ptr6 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %s.addr, align 4
  br label %while.cond

if.else7:                                         ; preds = %if.else
  %10 = load i8*, i8** %s.addr, align 4
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  store i32 %conv8, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %12 = load i8*, i8** %s.addr, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %s.addr, align 4
  %13 = load i32, i32* %c, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call = call i32 @fputc(i32 %13, %struct._IO_FILE* %14)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then13
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind
define i8* @wcs_nicechar(i32 %c, i32* %widthp, i8** %swidep) #0 {
entry:
  %c.addr = alloca i32, align 4
  %widthp.addr = alloca i32*, align 4
  %swidep.addr = alloca i8**, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32* %widthp, i32** %widthp.addr, align 4
  store i8** %swidep, i8*** %swidep.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i32*, i32** %widthp.addr, align 4
  %2 = load i8**, i8*** %swidep.addr, align 4
  %call = call i8* @wcs_nicechar_sel(i32 %0, i32* %1, i8** %2, i32 0)
  ret i8* %call
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i8* @strerror(i32) #2

; Function Attrs: noinline nounwind
define i32 @tulower(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %c.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isupper(i32 %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @tolower(i32 %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind
define i32 @putraw(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @putc(i32 %0, %struct._IO_FILE* %1)
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @putshout(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call = call i32 @putc(i32 %0, %struct._IO_FILE* %1)
  ret i32 0
}

; Function Attrs: noinline nounwind
define i8* @nicechar_sel(i32 %c, i32 %quotable) #0 {
entry:
  %c.addr = alloca i32, align 4
  %quotable.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %quotable, i32* %quotable.addr, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @nicechar_sel.buf, i32 0, i32 0), i8** %s, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %c.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isprint(i32 %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %and1 = and i32 %2, 128
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 138), align 1
  %tobool4 = icmp ne i8 %3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  br label %done

if.end6:                                          ; preds = %if.then3
  %4 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  store i8 92, i8* %4, align 1
  %5 = load i8*, i8** %s, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr7, i8** %s, align 4
  store i8 77, i8* %5, align 1
  %6 = load i8*, i8** %s, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr8, i8** %s, align 4
  store i8 45, i8* %6, align 1
  %7 = load i32, i32* %c.addr, align 4
  %and9 = and i32 %7, 127
  store i32 %and9, i32* %c.addr, align 4
  %8 = load i32, i32* %c.addr, align 4
  %call10 = call i32 @isprint(i32 %8) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  br label %done

if.end13:                                         ; preds = %if.end6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %9 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %9, 127
  br i1 %cmp, label %if.then15, label %if.else23

if.then15:                                        ; preds = %if.end14
  %10 = load i32, i32* %quotable.addr, align 4
  %tobool16 = icmp ne i32 %10, 0
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  %11 = load i8*, i8** %s, align 4
  %incdec.ptr18 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr18, i8** %s, align 4
  store i8 92, i8* %11, align 1
  %12 = load i8*, i8** %s, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr19, i8** %s, align 4
  store i8 67, i8* %12, align 1
  %13 = load i8*, i8** %s, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr20, i8** %s, align 4
  store i8 45, i8* %13, align 1
  br label %if.end22

if.else:                                          ; preds = %if.then15
  %14 = load i8*, i8** %s, align 4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr21, i8** %s, align 4
  store i8 94, i8* %14, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17
  store i32 63, i32* %c.addr, align 4
  br label %if.end45

if.else23:                                        ; preds = %if.end14
  %15 = load i32, i32* %c.addr, align 4
  %cmp24 = icmp eq i32 %15, 10
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else23
  %16 = load i8*, i8** %s, align 4
  %incdec.ptr26 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr26, i8** %s, align 4
  store i8 92, i8* %16, align 1
  store i32 110, i32* %c.addr, align 4
  br label %if.end44

if.else27:                                        ; preds = %if.else23
  %17 = load i32, i32* %c.addr, align 4
  %cmp28 = icmp eq i32 %17, 9
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else27
  %18 = load i8*, i8** %s, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr30, i8** %s, align 4
  store i8 92, i8* %18, align 1
  store i32 116, i32* %c.addr, align 4
  br label %if.end43

if.else31:                                        ; preds = %if.else27
  %19 = load i32, i32* %c.addr, align 4
  %cmp32 = icmp slt i32 %19, 32
  br i1 %cmp32, label %if.then33, label %if.end42

if.then33:                                        ; preds = %if.else31
  %20 = load i32, i32* %quotable.addr, align 4
  %tobool34 = icmp ne i32 %20, 0
  br i1 %tobool34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.then33
  %21 = load i8*, i8** %s, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr36, i8** %s, align 4
  store i8 92, i8* %21, align 1
  %22 = load i8*, i8** %s, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr37, i8** %s, align 4
  store i8 67, i8* %22, align 1
  %23 = load i8*, i8** %s, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr38, i8** %s, align 4
  store i8 45, i8* %23, align 1
  br label %if.end41

if.else39:                                        ; preds = %if.then33
  %24 = load i8*, i8** %s, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr40, i8** %s, align 4
  store i8 94, i8* %24, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then35
  %25 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %25, 64
  store i32 %add, i32* %c.addr, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.else31
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then29
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then25
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end22
  br label %done

done:                                             ; preds = %if.end45, %if.then12, %if.then5, %if.then
  %26 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %26 to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %27 = load i16, i16* %arrayidx, align 2
  %conv46 = sext i16 %27 to i32
  %and47 = and i32 %conv46, 4096
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.else53

if.then49:                                        ; preds = %done
  %28 = load i8*, i8** %s, align 4
  %incdec.ptr50 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr50, i8** %s, align 4
  store i8 -125, i8* %28, align 1
  %29 = load i32, i32* %c.addr, align 4
  %xor = xor i32 %29, 32
  %conv51 = trunc i32 %xor to i8
  %30 = load i8*, i8** %s, align 4
  %incdec.ptr52 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr52, i8** %s, align 4
  store i8 %conv51, i8* %30, align 1
  br label %if.end56

if.else53:                                        ; preds = %done
  %31 = load i32, i32* %c.addr, align 4
  %conv54 = trunc i32 %31 to i8
  %32 = load i8*, i8** %s, align 4
  %incdec.ptr55 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr55, i8** %s, align 4
  store i8 %conv54, i8* %32, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then49
  %33 = load i8*, i8** %s, align 4
  store i8 0, i8* %33, align 1
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @nicechar_sel.buf, i32 0, i32 0)
}

; Function Attrs: nounwind readonly
declare i32 @isprint(i32) #4

; Function Attrs: noinline nounwind
define i8* @nicechar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i8* @nicechar_sel(i32 %0, i32 0)
  ret i8* %call
}

; Function Attrs: noinline nounwind
define i32 @is_nicechar(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %c.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @isprint(i32 %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %and1 = and i32 %2, 128
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 138), align 1
  %tobool4 = icmp ne i8 %3, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %4, 127
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %5 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp eq i32 %5, 10
  br i1 %cmp6, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp eq i32 %6, 9
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false7
  %7 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp slt i32 %7, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false7, %lor.lhs.false, %if.end5
  %8 = phi i1 [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false ], [ true, %if.end5 ], [ %cmp9, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: noinline nounwind
define i8* @wcs_nicechar_sel(i32 %c, i32* %widthp, i8** %swidep, i32 %quotable) #0 {
entry:
  %retval = alloca i8*, align 4
  %c.addr = alloca i32, align 4
  %widthp.addr = alloca i32*, align 4
  %swidep.addr = alloca i8**, align 4
  %quotable.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  %mbptr = alloca i8*, align 4
  %ret = alloca i32, align 4
  %mbstr = alloca i8*, align 4
  %wcw = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32* %widthp, i32** %widthp.addr, align 4
  store i8** %swidep, i8*** %swidep.addr, align 4
  store i32 %quotable, i32* %quotable.addr, align 4
  store i32 0, i32* %ret, align 4
  %call = call i32 @__ctype_get_mb_cur_max()
  %mul = mul i32 1, %call
  %call1 = call i8* @zhalloc(i32 %mul)
  store i8* %call1, i8** %mbstr, align 4
  %call2 = call i32 @__ctype_get_mb_cur_max()
  %mul3 = mul i32 2, %call2
  %add = add i32 12, %mul3
  store i32 %add, i32* @wcs_nicechar_sel.newalloc, align 4
  %0 = load i32, i32* @wcs_nicechar_sel.bufalloc, align 4
  %1 = load i32, i32* @wcs_nicechar_sel.newalloc, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @wcs_nicechar_sel.newalloc, align 4
  store i32 %2, i32* @wcs_nicechar_sel.bufalloc, align 4
  %3 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %4 = load i32, i32* @wcs_nicechar_sel.bufalloc, align 4
  %call4 = call i8* @zrealloc(i8* %3, i32 %4)
  store i8* %call4, i8** @wcs_nicechar_sel.buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  store i8* %5, i8** %s, align 4
  %6 = load i32, i32* %c.addr, align 4
  %call5 = call i32 @iswprint(i32 %6)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end45, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp slt i32 %7, 128
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 138), align 1
  %tobool7 = icmp ne i8 %8, 0
  br i1 %tobool7, label %if.end45, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp eq i32 %9, 127
  br i1 %cmp9, label %if.then10, label %if.else17

if.then10:                                        ; preds = %if.then8
  %10 = load i32, i32* %quotable.addr, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %11 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  store i8 92, i8* %11, align 1
  %12 = load i8*, i8** %s, align 4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr13, i8** %s, align 4
  store i8 67, i8* %12, align 1
  %13 = load i8*, i8** %s, align 4
  %incdec.ptr14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr14, i8** %s, align 4
  store i8 45, i8* %13, align 1
  br label %if.end16

if.else:                                          ; preds = %if.then10
  %14 = load i8*, i8** %s, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr15, i8** %s, align 4
  store i8 94, i8* %14, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  store i32 63, i32* %c.addr, align 4
  br label %if.end44

if.else17:                                        ; preds = %if.then8
  %15 = load i32, i32* %c.addr, align 4
  %cmp18 = icmp eq i32 %15, 10
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else17
  %16 = load i8*, i8** %s, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr20, i8** %s, align 4
  store i8 92, i8* %16, align 1
  store i32 110, i32* %c.addr, align 4
  br label %if.end43

if.else21:                                        ; preds = %if.else17
  %17 = load i32, i32* %c.addr, align 4
  %cmp22 = icmp eq i32 %17, 9
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else21
  %18 = load i8*, i8** %s, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr24, i8** %s, align 4
  store i8 92, i8* %18, align 1
  store i32 116, i32* %c.addr, align 4
  br label %if.end42

if.else25:                                        ; preds = %if.else21
  %19 = load i32, i32* %c.addr, align 4
  %cmp26 = icmp slt i32 %19, 32
  br i1 %cmp26, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else25
  %20 = load i32, i32* %quotable.addr, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.then29, label %if.else33

if.then29:                                        ; preds = %if.then27
  %21 = load i8*, i8** %s, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr30, i8** %s, align 4
  store i8 92, i8* %21, align 1
  %22 = load i8*, i8** %s, align 4
  %incdec.ptr31 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr31, i8** %s, align 4
  store i8 67, i8* %22, align 1
  %23 = load i8*, i8** %s, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr32, i8** %s, align 4
  store i8 45, i8* %23, align 1
  br label %if.end35

if.else33:                                        ; preds = %if.then27
  %24 = load i8*, i8** %s, align 4
  %incdec.ptr34 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr34, i8** %s, align 4
  store i8 94, i8* %24, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then29
  %25 = load i32, i32* %c.addr, align 4
  %add36 = add nsw i32 %25, 64
  store i32 %add36, i32* %c.addr, align 4
  br label %if.end41

if.else37:                                        ; preds = %if.else25
  %26 = load i32, i32* %c.addr, align 4
  %cmp38 = icmp sge i32 %26, 128
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.else37
  store i32 -1, i32* %ret, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.else37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then23
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then19
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end16
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %lor.lhs.false, %if.end
  %27 = load i32, i32* %ret, align 4
  %cmp46 = icmp ne i32 %27, -1
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end45
  %28 = load i8*, i8** %mbstr, align 4
  %29 = load i32, i32* %c.addr, align 4
  %call48 = call i32 @wcrtomb(i8* %28, i32 %29, %struct.__mbstate_t* @mb_shiftstate)
  store i32 %call48, i32* %ret, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  %30 = load i32, i32* %ret, align 4
  %cmp50 = icmp eq i32 %30, -1
  br i1 %cmp50, label %if.then51, label %if.end83

if.then51:                                        ; preds = %if.end49
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @mb_shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  %31 = load i32, i32* %c.addr, align 4
  %cmp52 = icmp sge i32 %31, 65536
  br i1 %cmp52, label %if.then53, label %if.else58

if.then53:                                        ; preds = %if.then51
  %32 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %33 = load i32, i32* %c.addr, align 4
  %call54 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %33)
  %34 = load i32*, i32** %widthp.addr, align 4
  %tobool55 = icmp ne i32* %34, null
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then53
  %35 = load i32*, i32** %widthp.addr, align 4
  store i32 10, i32* %35, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53
  br label %if.end77

if.else58:                                        ; preds = %if.then51
  %36 = load i32, i32* %c.addr, align 4
  %cmp59 = icmp sge i32 %36, 256
  br i1 %cmp59, label %if.then60, label %if.else65

if.then60:                                        ; preds = %if.else58
  %37 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %38 = load i32, i32* %c.addr, align 4
  %call61 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %38)
  %39 = load i32*, i32** %widthp.addr, align 4
  %tobool62 = icmp ne i32* %39, null
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then60
  %40 = load i32*, i32** %widthp.addr, align 4
  store i32 6, i32* %40, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.then60
  br label %if.end76

if.else65:                                        ; preds = %if.else58
  %41 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %42 = load i32, i32* %c.addr, align 4
  %call66 = call i8* @nicechar(i32 %42)
  %call67 = call i8* @strcpy(i8* %41, i8* %call66)
  %43 = load i32*, i32** %widthp.addr, align 4
  %tobool68 = icmp ne i32* %43, null
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.else65
  %44 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %call70 = call i32 @ztrlen(i8* %44)
  %45 = load i32*, i32** %widthp.addr, align 4
  store i32 %call70, i32* %45, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.else65
  %46 = load i8**, i8*** %swidep.addr, align 4
  %tobool72 = icmp ne i8** %46, null
  br i1 %tobool72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end71
  %47 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %48 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %call74 = call i32 @strlen(i8* %48)
  %add.ptr = getelementptr inbounds i8, i8* %47, i32 %call74
  %49 = load i8**, i8*** %swidep.addr, align 4
  store i8* %add.ptr, i8** %49, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71
  %50 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  store i8* %50, i8** %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end64
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end57
  %51 = load i8**, i8*** %swidep.addr, align 4
  %tobool78 = icmp ne i8** %51, null
  br i1 %tobool78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end77
  %52 = load i32*, i32** %widthp.addr, align 4
  %tobool80 = icmp ne i32* %52, null
  br i1 %tobool80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then79
  %53 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %54 = load i32*, i32** %widthp.addr, align 4
  %55 = load i32, i32* %54, align 4
  %add.ptr81 = getelementptr inbounds i8, i8* %53, i32 %55
  br label %cond.end

cond.false:                                       ; preds = %if.then79
  %56 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr81, %cond.true ], [ %56, %cond.false ]
  %57 = load i8**, i8*** %swidep.addr, align 4
  store i8* %cond, i8** %57, align 4
  br label %if.end82

if.end82:                                         ; preds = %cond.end, %if.end77
  %58 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  store i8* %58, i8** %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.end49
  %59 = load i32*, i32** %widthp.addr, align 4
  %tobool84 = icmp ne i32* %59, null
  br i1 %tobool84, label %if.then85, label %if.end92

if.then85:                                        ; preds = %if.end83
  %60 = load i32, i32* %c.addr, align 4
  %call86 = call i32 @wcwidth(i32 %60)
  store i32 %call86, i32* %wcw, align 4
  %61 = load i8*, i8** %s, align 4
  %62 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %61 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %62 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %63 = load i32*, i32** %widthp.addr, align 4
  store i32 %sub.ptr.sub, i32* %63, align 4
  %64 = load i32, i32* %wcw, align 4
  %cmp87 = icmp sge i32 %64, 0
  br i1 %cmp87, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.then85
  %65 = load i32, i32* %wcw, align 4
  %66 = load i32*, i32** %widthp.addr, align 4
  %67 = load i32, i32* %66, align 4
  %add89 = add i32 %67, %65
  store i32 %add89, i32* %66, align 4
  br label %if.end91

if.else90:                                        ; preds = %if.then85
  %68 = load i32*, i32** %widthp.addr, align 4
  %69 = load i32, i32* %68, align 4
  %inc = add i32 %69, 1
  store i32 %inc, i32* %68, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else90, %if.then88
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end83
  %70 = load i8**, i8*** %swidep.addr, align 4
  %tobool93 = icmp ne i8** %70, null
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end92
  %71 = load i8*, i8** %s, align 4
  %72 = load i8**, i8*** %swidep.addr, align 4
  store i8* %71, i8** %72, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end92
  %73 = load i8*, i8** %mbstr, align 4
  store i8* %73, i8** %mbptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end95
  %74 = load i32, i32* %ret, align 4
  %tobool96 = icmp ne i32 %74, 0
  br i1 %tobool96, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i8*, i8** %mbptr, align 4
  %76 = load i8, i8* %75, align 1
  %idxprom = zext i8 %76 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %77 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %77 to i32
  %and = and i32 %conv, 4096
  %tobool97 = icmp ne i32 %and, 0
  br i1 %tobool97, label %if.then98, label %if.else102

if.then98:                                        ; preds = %for.body
  %78 = load i8*, i8** %s, align 4
  %incdec.ptr99 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr99, i8** %s, align 4
  store i8 -125, i8* %78, align 1
  %79 = load i8*, i8** %mbptr, align 4
  %80 = load i8, i8* %79, align 1
  %conv100 = sext i8 %80 to i32
  %xor = xor i32 %conv100, 32
  %conv101 = trunc i32 %xor to i8
  %81 = load i8*, i8** %s, align 4
  store i8 %conv101, i8* %81, align 1
  br label %if.end103

if.else102:                                       ; preds = %for.body
  %82 = load i8*, i8** %mbptr, align 4
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %s, align 4
  store i8 %83, i8* %84, align 1
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then98
  br label %for.inc

for.inc:                                          ; preds = %if.end103
  %85 = load i8*, i8** %s, align 4
  %incdec.ptr104 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr104, i8** %s, align 4
  %86 = load i8*, i8** %mbptr, align 4
  %incdec.ptr105 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr105, i8** %mbptr, align 4
  %87 = load i32, i32* %ret, align 4
  %dec = add nsw i32 %87, -1
  store i32 %dec, i32* %ret, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %88 = load i8*, i8** %s, align 4
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** @wcs_nicechar_sel.buf, align 4
  store i8* %89, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end82, %if.end75
  %90 = load i8*, i8** %retval, align 4
  ret i8* %90
}

declare i32 @__ctype_get_mb_cur_max() #2

declare i8* @zrealloc(i8*, i32) #2

declare i32 @iswprint(i32) #2

declare i32 @wcrtomb(i8*, i32, %struct.__mbstate_t*) #2

declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind
define i32 @ztrlen(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %l = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %s.addr, align 4
  %incdec.ptr2 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr2, i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %l, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %l, align 4
  ret i32 %6
}

declare i32 @strlen(i8*) #2

declare i32 @wcwidth(i32) #2

; Function Attrs: noinline nounwind
define i32 @is_wcs_nicechar(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @iswprint(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %1, 128
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 138), align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end14, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %3, 127
  br i1 %cmp2, label %if.then9, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.then
  %4 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp eq i32 %4, 10
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp eq i32 %5, 9
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp slt i32 %6, 32
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %7 = load i32, i32* %c.addr, align 4
  %cmp10 = icmp sge i32 %7, 128
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %8 = load i32, i32* %c.addr, align 4
  %cmp12 = icmp sge i32 %8, 256
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then11, %if.then9
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define i32 @zwcwidth(i32 %wc) #0 {
entry:
  %retval = alloca i32, align 4
  %wc.addr = alloca i32, align 4
  %wcw = alloca i32, align 4
  store i32 %wc, i32* %wc.addr, align 4
  %0 = load i32, i32* %wc.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %wc.addr, align 4
  %call = call i32 @wcwidth(i32 %2)
  store i32 %call, i32* %wcw, align 4
  %3 = load i32, i32* %wcw, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i32, i32* %wcw, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind
define i8* @pathprog(i8* %prog, i8** %namep) #0 {
entry:
  %retval = alloca i8*, align 4
  %prog.addr = alloca i8*, align 4
  %namep.addr = alloca i8**, align 4
  %pp = alloca i8**, align 4
  %ppmaxlen = alloca i8, align 1
  %buf = alloca i8*, align 4
  %funmeta = alloca i8*, align 4
  %st = alloca %struct.stat, align 8
  %len = alloca i32, align 4
  store i8* %prog, i8** %prog.addr, align 4
  store i8** %namep, i8*** %namep.addr, align 4
  store i8 0, i8* %ppmaxlen, align 1
  %0 = load i8**, i8*** @path, align 4
  store i8** %0, i8*** %pp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %pp, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %pp, align 4
  %4 = load i8*, i8** %3, align 4
  %call = call i32 @strlen(i8* %4)
  store i32 %call, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %6 = load i8, i8* %ppmaxlen, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp sgt i32 %5, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %len, align 4
  %conv2 = trunc i32 %7 to i8
  store i8 %conv2, i8* %ppmaxlen, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i8**, i8*** %pp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %pp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8, i8* %ppmaxlen, align 1
  %conv3 = sext i8 %9 to i32
  %10 = load i8*, i8** %prog.addr, align 4
  %call4 = call i32 @strlen(i8* %10)
  %add = add i32 %conv3, %call4
  %add5 = add i32 %add, 2
  %call6 = call i8* @zhalloc(i32 %add5)
  store i8* %call6, i8** %buf, align 4
  %11 = load i8**, i8*** @path, align 4
  store i8** %11, i8*** %pp, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc26, %for.end
  %12 = load i8**, i8*** %pp, align 4
  %13 = load i8*, i8** %12, align 4
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %for.body9, label %for.end28

for.body9:                                        ; preds = %for.cond7
  %14 = load i8*, i8** %buf, align 4
  %15 = load i8**, i8*** %pp, align 4
  %16 = load i8*, i8** %15, align 4
  %17 = load i8*, i8** %prog.addr, align 4
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %16, i8* %17)
  %18 = load i8*, i8** %buf, align 4
  %call11 = call i8* @unmeta(i8* %18)
  store i8* %call11, i8** %funmeta, align 4
  %19 = load i8*, i8** %funmeta, align 4
  %call12 = call i32 @access(i8* %19, i32 0)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.body9
  %20 = load i8*, i8** %funmeta, align 4
  %call15 = call i32 @stat(i8* %20, %struct.stat* %st)
  %cmp16 = icmp sge i32 %call15, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end25

land.lhs.true18:                                  ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %21 = load i32, i32* %st_mode, align 8
  %and = and i32 %21, 61440
  %cmp19 = icmp eq i32 %and, 16384
  br i1 %cmp19, label %if.end25, label %if.then21

if.then21:                                        ; preds = %land.lhs.true18
  %22 = load i8**, i8*** %namep.addr, align 4
  %tobool22 = icmp ne i8** %22, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  %23 = load i8*, i8** %buf, align 4
  %24 = load i8**, i8*** %namep.addr, align 4
  store i8* %23, i8** %24, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then21
  %25 = load i8*, i8** %funmeta, align 4
  store i8* %25, i8** %retval, align 4
  br label %return

if.end25:                                         ; preds = %land.lhs.true18, %land.lhs.true, %for.body9
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %26 = load i8**, i8*** %pp, align 4
  %incdec.ptr27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr27, i8*** %pp, align 4
  br label %for.cond7

for.end28:                                        ; preds = %for.cond7
  store i8* null, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end28, %if.end24
  %27 = load i8*, i8** %retval, align 4
  ret i8* %27
}

; Function Attrs: noinline nounwind
define i8* @unmeta(i8* %file_name) #0 {
entry:
  %retval = alloca i8*, align 4
  %file_name.addr = alloca i8*, align 4
  %p = alloca i8*, align 4
  %t = alloca i8*, align 4
  %newsz = alloca i32, align 4
  %meta = alloca i32, align 4
  store i8* %file_name, i8** %file_name.addr, align 4
  %0 = load i8*, i8** %file_name.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %meta, align 4
  %1 = load i8*, i8** %file_name.addr, align 4
  store i8* %1, i8** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %t, align 4
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %t, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  store i32 1, i32* %meta, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %6 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %meta, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.end11, label %if.then6

if.then6:                                         ; preds = %for.end
  %8 = load i32, i32* @unmeta.sz, align 4
  %cmp7 = icmp sgt i32 %8, 16384
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  %9 = load i8*, i8** @unmeta.fn, align 4
  %10 = load i32, i32* @unmeta.sz, align 4
  call void @zfree(i8* %9, i32 %10)
  store i8* null, i8** @unmeta.fn, align 4
  store i32 0, i32* @unmeta.sz, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6
  %11 = load i8*, i8** %file_name.addr, align 4
  store i8* %11, i8** %retval, align 4
  br label %return

if.end11:                                         ; preds = %for.end
  %12 = load i8*, i8** %t, align 4
  %13 = load i8*, i8** %file_name.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i32 %sub.ptr.sub, 1
  store i32 %add, i32* %newsz, align 4
  %14 = load i8*, i8** @unmeta.fn, align 4
  %tobool12 = icmp ne i8* %14, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.end11
  %15 = load i32, i32* %newsz, align 4
  %16 = load i32, i32* @unmeta.sz, align 4
  %cmp13 = icmp sgt i32 %15, %16
  br i1 %cmp13, label %if.then20, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %17 = load i32, i32* @unmeta.sz, align 4
  %cmp16 = icmp sgt i32 %17, 16384
  br i1 %cmp16, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %lor.lhs.false15
  %18 = load i32, i32* %newsz, align 4
  %cmp18 = icmp sle i32 %18, 16384
  br i1 %cmp18, label %if.then20, label %if.end27

if.then20:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end11
  %19 = load i8*, i8** @unmeta.fn, align 4
  %tobool21 = icmp ne i8* %19, null
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  %20 = load i8*, i8** @unmeta.fn, align 4
  %21 = load i32, i32* @unmeta.sz, align 4
  call void @zfree(i8* %20, i32 %21)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  %22 = load i32, i32* %newsz, align 4
  store i32 %22, i32* @unmeta.sz, align 4
  %23 = load i32, i32* @unmeta.sz, align 4
  %call = call i8* @zalloc(i32 %23)
  store i8* %call, i8** @unmeta.fn, align 4
  %24 = load i8*, i8** @unmeta.fn, align 4
  %tobool24 = icmp ne i8* %24, null
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  store i32 0, i32* @unmeta.sz, align 4
  store i8* null, i8** %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %land.lhs.true, %lor.lhs.false15
  %25 = load i8*, i8** %file_name.addr, align 4
  store i8* %25, i8** %t, align 4
  %26 = load i8*, i8** @unmeta.fn, align 4
  store i8* %26, i8** %p, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc43, %if.end27
  %27 = load i8*, i8** %t, align 4
  %28 = load i8, i8* %27, align 1
  %tobool29 = icmp ne i8 %28, 0
  br i1 %tobool29, label %for.body30, label %for.end45

for.body30:                                       ; preds = %for.cond28
  %29 = load i8*, i8** %t, align 4
  %incdec.ptr31 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr31, i8** %t, align 4
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %p, align 4
  store i8 %30, i8* %31, align 1
  %conv32 = sext i8 %30 to i32
  %cmp33 = icmp eq i32 %conv32, -125
  br i1 %cmp33, label %land.lhs.true35, label %if.end42

land.lhs.true35:                                  ; preds = %for.body30
  %32 = load i8*, i8** %t, align 4
  %33 = load i8, i8* %32, align 1
  %conv36 = sext i8 %33 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %land.lhs.true35
  %34 = load i8*, i8** %t, align 4
  %incdec.ptr39 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr39, i8** %t, align 4
  %35 = load i8, i8* %34, align 1
  %conv40 = sext i8 %35 to i32
  %xor = xor i32 %conv40, 32
  %conv41 = trunc i32 %xor to i8
  %36 = load i8*, i8** %p, align 4
  store i8 %conv41, i8* %36, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %land.lhs.true35, %for.body30
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %37 = load i8*, i8** %p, align 4
  %incdec.ptr44 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr44, i8** %p, align 4
  br label %for.cond28

for.end45:                                        ; preds = %for.cond28
  %38 = load i8*, i8** %p, align 4
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** @unmeta.fn, align 4
  store i8* %39, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end45, %if.then25, %if.end10, %if.then
  %40 = load i8*, i8** %retval, align 4
  ret i8* %40
}

declare i32 @access(i8*, i32) #2

declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind
define i8* @findpwd(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %t = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %call = call i8* @xsymlink(i8* %2, i32 0)
  store i8* %call, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @pwd, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i8*, i8** @pwd, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.false ]
  %6 = load i8*, i8** %s.addr, align 4
  %call3 = call i8* @tricat(i8* %cond, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %6)
  store i8* %call3, i8** %s.addr, align 4
  %7 = load i8*, i8** %s.addr, align 4
  %call4 = call i8* @xsymlink(i8* %7, i32 0)
  store i8* %call4, i8** %t, align 4
  %8 = load i8*, i8** %s.addr, align 4
  call void @zsfree(i8* %8)
  %9 = load i8*, i8** %t, align 4
  store i8* %9, i8** %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %10 = load i8*, i8** %retval, align 4
  ret i8* %10
}

; Function Attrs: noinline nounwind
define i8* @xsymlink(i8* %s, i32 %heap) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %heap.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  %2 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 1
  %call = call i32 @xsymlinks(i8* %add.ptr, i32 1)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end5
  %4 = load i32, i32* %heap.addr, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then6
  %call8 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  %call9 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ %call9, %cond.false ]
  store i8* %cond, i8** %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %5 = load i32, i32* %heap.addr, align 4
  %tobool11 = icmp ne i32 %5, 0
  br i1 %tobool11, label %cond.true12, label %cond.false14

cond.true12:                                      ; preds = %if.end10
  %call13 = call i8* @dupstring(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0))
  br label %cond.end16

cond.false14:                                     ; preds = %if.end10
  %call15 = call i8* @ztrdup(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0))
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false14, %cond.true12
  %cond17 = phi i8* [ %call13, %cond.true12 ], [ %call15, %cond.false14 ]
  store i8* %cond17, i8** %retval, align 4
  br label %return

return:                                           ; preds = %cond.end16, %cond.end, %if.then
  %6 = load i8*, i8** %retval, align 4
  ret i8* %6
}

declare i8* @tricat(i8*, i8*, i8*) #2

declare void @zsfree(i8*) #2

; Function Attrs: noinline nounwind
define i32 @ispwd(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %sbuf = alloca %struct.stat, align 8
  %tbuf = alloca %struct.stat, align 8
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %call = call i8* @unmeta(i8* %2)
  store i8* %call, i8** %s.addr, align 4
  %call2 = call i32 @stat(i8* %call, %struct.stat* %sbuf)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.end
  %call5 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct.stat* %tbuf)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end52

if.then8:                                         ; preds = %land.lhs.true
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 0
  %3 = load i32, i32* %st_dev, align 8
  %st_dev9 = getelementptr inbounds %struct.stat, %struct.stat* %tbuf, i32 0, i32 0
  %4 = load i32, i32* %st_dev9, align 8
  %cmp10 = icmp eq i32 %3, %4
  br i1 %cmp10, label %land.lhs.true12, label %if.end51

land.lhs.true12:                                  ; preds = %if.then8
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 2
  %5 = load i32, i32* %st_ino, align 8
  %st_ino13 = getelementptr inbounds %struct.stat, %struct.stat* %tbuf, i32 0, i32 2
  %6 = load i32, i32* %st_ino13, align 8
  %cmp14 = icmp eq i32 %5, %6
  br i1 %cmp14, label %if.then16, label %if.end51

if.then16:                                        ; preds = %land.lhs.true12
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then16
  %7 = load i8*, i8** %s.addr, align 4
  %8 = load i8, i8* %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %while.body, label %while.end49

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %9, i32 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv17 = sext i8 %10 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %land.lhs.true20, label %if.end41

land.lhs.true20:                                  ; preds = %while.body
  %11 = load i8*, i8** %s.addr, align 4
  %arrayidx21 = getelementptr inbounds i8, i8* %11, i32 1
  %12 = load i8, i8* %arrayidx21, align 1
  %tobool22 = icmp ne i8 %12, 0
  br i1 %tobool22, label %lor.lhs.false, label %if.then40

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %13 = load i8*, i8** %s.addr, align 4
  %arrayidx23 = getelementptr inbounds i8, i8* %13, i32 1
  %14 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %14 to i32
  %cmp25 = icmp eq i32 %conv24, 47
  br i1 %cmp25, label %if.then40, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %15 = load i8*, i8** %s.addr, align 4
  %arrayidx28 = getelementptr inbounds i8, i8* %15, i32 1
  %16 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %16 to i32
  %cmp30 = icmp eq i32 %conv29, 46
  br i1 %cmp30, label %land.lhs.true32, label %if.end41

land.lhs.true32:                                  ; preds = %lor.lhs.false27
  %17 = load i8*, i8** %s.addr, align 4
  %arrayidx33 = getelementptr inbounds i8, i8* %17, i32 2
  %18 = load i8, i8* %arrayidx33, align 1
  %tobool34 = icmp ne i8 %18, 0
  br i1 %tobool34, label %lor.lhs.false35, label %if.then40

lor.lhs.false35:                                  ; preds = %land.lhs.true32
  %19 = load i8*, i8** %s.addr, align 4
  %arrayidx36 = getelementptr inbounds i8, i8* %19, i32 2
  %20 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %20 to i32
  %cmp38 = icmp eq i32 %conv37, 47
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false35, %land.lhs.true32, %lor.lhs.false, %land.lhs.true20
  br label %while.end49

if.end41:                                         ; preds = %lor.lhs.false35, %lor.lhs.false27, %while.body
  br label %while.cond42

while.cond42:                                     ; preds = %while.body48, %if.end41
  %21 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %22 = load i8, i8* %21, align 1
  %conv43 = sext i8 %22 to i32
  %cmp44 = icmp ne i32 %conv43, 47
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond42
  %23 = load i8*, i8** %s.addr, align 4
  %24 = load i8, i8* %23, align 1
  %conv46 = sext i8 %24 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond42
  %25 = phi i1 [ false, %while.cond42 ], [ %tobool47, %land.rhs ]
  br i1 %25, label %while.body48, label %while.end

while.body48:                                     ; preds = %land.end
  br label %while.cond42

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end49:                                      ; preds = %if.then40, %while.cond
  %26 = load i8*, i8** %s.addr, align 4
  %27 = load i8, i8* %26, align 1
  %tobool50 = icmp ne i8 %27, 0
  %lnot = xor i1 %tobool50, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %land.lhs.true12, %if.then8
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %while.end49, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind
define internal i32 @xsymlinks(i8* %s, i32 %full) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %full.addr = alloca i32, align 4
  %pp = alloca i8**, align 4
  %opp = alloca i8**, align 4
  %xbuf2 = alloca [12289 x i8], align 1
  %xbuf3 = alloca [8193 x i8], align 1
  %t0 = alloca i32, align 4
  %ret = alloca i32, align 4
  %xbuflen = alloca i32, align 4
  %pplen = alloca i32, align 4
  %p = alloca i8*, align 4
  %len = alloca i32, align 4
  %newlen = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %full, i32* %full.addr, align 4
  store i32 0, i32* %ret, align 4
  %call = call i32 @strlen(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0))
  store i32 %call, i32* %xbuflen, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call1 = call i8** @slashsplit(i8* %0)
  store i8** %call1, i8*** %pp, align 4
  store i8** %call1, i8*** %opp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %xbuflen, align 4
  %cmp = icmp ult i32 %1, 8193
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = load i8**, i8*** %pp, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %ret, align 4
  %cmp2 = icmp sge i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i8**, i8*** %pp, align 4
  %7 = load i8*, i8** %6, align 4
  %call3 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load i8**, i8*** %pp, align 4
  %9 = load i8*, i8** %8, align 4
  %call5 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end18, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @strcmp(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then7
  br label %for.inc

if.end11:                                         ; preds = %if.then7
  %10 = load i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  %tobool12 = icmp ne i8 %10, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  br label %for.inc

if.end14:                                         ; preds = %if.end11
  %11 = load i32, i32* %xbuflen, align 4
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i32 %11
  store i8* %add.ptr, i8** %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end14
  %12 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %p, align 4
  %13 = load i8, i8* %incdec.ptr, align 1
  %conv = sext i8 %13 to i32
  %cmp15 = icmp ne i32 %conv, 47
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %xbuflen, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %xbuflen, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %p, align 4
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %xbuflen, align 4
  %dec17 = add i32 %16, -1
  store i32 %dec17, i32* %xbuflen, align 4
  br label %for.inc

if.end18:                                         ; preds = %if.end
  %17 = load i8**, i8*** %pp, align 4
  %18 = load i8*, i8** %17, align 4
  %call19 = call i32 @strlen(i8* %18)
  %add = add i32 %call19, 1
  store i32 %add, i32* %pplen, align 4
  %19 = load i32, i32* %xbuflen, align 4
  %20 = load i32, i32* %pplen, align 4
  %add20 = add i32 %19, %20
  %add21 = add i32 %add20, 1
  %cmp22 = icmp ugt i32 %add21, 12289
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i8 0, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  store i32 -1, i32* %ret, align 4
  br label %for.end

if.end25:                                         ; preds = %if.end18
  %arraydecay = getelementptr inbounds [12289 x i8], [12289 x i8]* %xbuf2, i32 0, i32 0
  %21 = load i32, i32* %xbuflen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i32 %21, i32 1, i1 false)
  %22 = load i32, i32* %xbuflen, align 4
  %arrayidx = getelementptr inbounds [12289 x i8], [12289 x i8]* %xbuf2, i32 0, i32 %22
  store i8 47, i8* %arrayidx, align 1
  %arraydecay26 = getelementptr inbounds [12289 x i8], [12289 x i8]* %xbuf2, i32 0, i32 0
  %23 = load i32, i32* %xbuflen, align 4
  %add.ptr27 = getelementptr inbounds i8, i8* %arraydecay26, i32 %23
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i32 1
  %24 = load i8**, i8*** %pp, align 4
  %25 = load i8*, i8** %24, align 4
  %26 = load i32, i32* %pplen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr28, i8* %25, i32 %26, i32 1, i1 false)
  %arraydecay29 = getelementptr inbounds [12289 x i8], [12289 x i8]* %xbuf2, i32 0, i32 0
  %call30 = call i8* @unmeta(i8* %arraydecay29)
  %arraydecay31 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %call32 = call i32 @readlink(i8* %call30, i8* %arraydecay31, i32 4096)
  store i32 %call32, i32* %t0, align 4
  %27 = load i32, i32* %t0, align 4
  %cmp33 = icmp eq i32 %27, -1
  br i1 %cmp33, label %if.then35, label %if.else43

if.then35:                                        ; preds = %if.end25
  %28 = load i32, i32* %pplen, align 4
  %29 = load i32, i32* %xbuflen, align 4
  %add36 = add i32 %29, %28
  store i32 %add36, i32* %xbuflen, align 4
  %cmp37 = icmp ult i32 %add36, 8193
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then35
  %call40 = call i8* @strcat(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %30 = load i8**, i8*** %pp, align 4
  %31 = load i8*, i8** %30, align 4
  %call41 = call i8* @strcat(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i8* %31)
  br label %if.end42

if.else:                                          ; preds = %if.then35
  store i8 0, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  store i32 -1, i32* %ret, align 4
  br label %for.end

if.end42:                                         ; preds = %if.then39
  br label %if.end116

if.else43:                                        ; preds = %if.end25
  store i32 1, i32* %ret, align 4
  %arraydecay44 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %32 = load i32, i32* %t0, align 4
  %call45 = call i8* @metafy(i8* %arraydecay44, i32 %32, i32 5)
  %33 = load i32, i32* %full.addr, align 4
  %tobool46 = icmp ne i32 %33, 0
  br i1 %tobool46, label %if.end90, label %if.then47

if.then47:                                        ; preds = %if.else43
  %34 = load i32, i32* %xbuflen, align 4
  store i32 %34, i32* %len, align 4
  %arraydecay48 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %35 = load i8, i8* %arraydecay48, align 1
  %conv49 = sext i8 %35 to i32
  %cmp50 = icmp eq i32 %conv49, 47
  br i1 %cmp50, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.then47
  %arraydecay53 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %call54 = call i8* @strcpy(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i8* %arraydecay53)
  br label %if.end71

if.else55:                                        ; preds = %if.then47
  %arraydecay56 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %call57 = call i32 @strlen(i8* %arraydecay56)
  %add58 = add i32 %call57, 1
  %36 = load i32, i32* %len, align 4
  %add59 = add i32 %36, %add58
  store i32 %add59, i32* %len, align 4
  %cmp60 = icmp ult i32 %add59, 8193
  br i1 %cmp60, label %if.then62, label %if.else69

if.then62:                                        ; preds = %if.else55
  %37 = load i32, i32* %xbuflen, align 4
  %add.ptr63 = getelementptr inbounds i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i32 %37
  %call64 = call i8* @strcpy(i8* %add.ptr63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %38 = load i32, i32* %xbuflen, align 4
  %add.ptr65 = getelementptr inbounds i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i32 %38
  %add.ptr66 = getelementptr inbounds i8, i8* %add.ptr65, i32 1
  %arraydecay67 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %call68 = call i8* @strcpy(i8* %add.ptr66, i8* %arraydecay67)
  br label %if.end70

if.else69:                                        ; preds = %if.else55
  store i8 0, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  store i32 -1, i32* %ret, align 4
  br label %for.end

if.end70:                                         ; preds = %if.then62
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then52
  br label %while.cond72

while.cond72:                                     ; preds = %if.end88, %if.end71
  %39 = load i8**, i8*** %pp, align 4
  %incdec.ptr73 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %incdec.ptr73, i8*** %pp, align 4
  %40 = load i8*, i8** %incdec.ptr73, align 4
  %tobool74 = icmp ne i8* %40, null
  br i1 %tobool74, label %while.body75, label %while.end89

while.body75:                                     ; preds = %while.cond72
  %41 = load i32, i32* %len, align 4
  %42 = load i8**, i8*** %pp, align 4
  %43 = load i8*, i8** %42, align 4
  %call76 = call i32 @strlen(i8* %43)
  %add77 = add i32 %41, %call76
  %add78 = add i32 %add77, 1
  store i32 %add78, i32* %newlen, align 4
  %44 = load i32, i32* %newlen, align 4
  %cmp79 = icmp ult i32 %44, 8193
  br i1 %cmp79, label %if.then81, label %if.else87

if.then81:                                        ; preds = %while.body75
  %45 = load i32, i32* %len, align 4
  %add.ptr82 = getelementptr inbounds i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i32 %45
  %call83 = call i8* @strcpy(i8* %add.ptr82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %46 = load i32, i32* %len, align 4
  %add.ptr84 = getelementptr inbounds i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i32 %46
  %add.ptr85 = getelementptr inbounds i8, i8* %add.ptr84, i32 1
  %47 = load i8**, i8*** %pp, align 4
  %48 = load i8*, i8** %47, align 4
  %call86 = call i8* @strcpy(i8* %add.ptr85, i8* %48)
  %49 = load i32, i32* %newlen, align 4
  store i32 %49, i32* %len, align 4
  br label %if.end88

if.else87:                                        ; preds = %while.body75
  store i8 1, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  store i32 -1, i32* %ret, align 4
  br label %while.end89

if.end88:                                         ; preds = %if.then81
  br label %while.cond72

while.end89:                                      ; preds = %if.else87, %while.cond72
  br label %for.end

if.end90:                                         ; preds = %if.else43
  %arraydecay91 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %50 = load i8, i8* %arraydecay91, align 1
  %conv92 = sext i8 %50 to i32
  %cmp93 = icmp eq i32 %conv92, 47
  br i1 %cmp93, label %if.then95, label %if.else106

if.then95:                                        ; preds = %if.end90
  %call96 = call i8* @strcpy(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %arraydecay97 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %add.ptr98 = getelementptr inbounds i8, i8* %arraydecay97, i32 1
  %call99 = call i32 @xsymlinks(i8* %add.ptr98, i32 1)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.then95
  store i32 -1, i32* %ret, align 4
  br label %if.end105

if.else103:                                       ; preds = %if.then95
  %call104 = call i32 @strlen(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0))
  store i32 %call104, i32* %xbuflen, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else103, %if.then102
  br label %if.end115

if.else106:                                       ; preds = %if.end90
  %arraydecay107 = getelementptr inbounds [8193 x i8], [8193 x i8]* %xbuf3, i32 0, i32 0
  %call108 = call i32 @xsymlinks(i8* %arraydecay107, i32 1)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.else106
  store i32 -1, i32* %ret, align 4
  br label %if.end114

if.else112:                                       ; preds = %if.else106
  %call113 = call i32 @strlen(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0))
  store i32 %call113, i32* %xbuflen, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.then111
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end105
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end42
  br label %for.inc

for.inc:                                          ; preds = %if.end116, %while.end, %if.then13, %if.then10, %if.then
  %51 = load i8**, i8*** %pp, align 4
  %incdec.ptr117 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %incdec.ptr117, i8*** %pp, align 4
  br label %for.cond

for.end:                                          ; preds = %while.end89, %if.else69, %if.else, %if.then24, %land.end
  %52 = load i8**, i8*** %opp, align 4
  call void @freearray(i8** %52)
  %53 = load i32, i32* %ret, align 4
  ret i32 %53
}

declare i8* @dupstring(i8*) #2

declare i8* @ztrdup(i8*) #2

; Function Attrs: noinline nounwind
define void @print_if_link(i8* %s, i32 %all) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %all.addr = alloca i32, align 4
  %start = alloca i8*, align 4
  %xbuflink = alloca [4097 x i8], align 1
  store i8* %s, i8** %s.addr, align 4
  store i32 %all, i32* %all.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  %2 = load i32, i32* %all.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then2, label %if.else16

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %add.ptr, i8** %start, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.then2
  %4 = load i8*, i8** %start, align 4
  %call = call i32 @xsymlinks(i8* %4, i32 0)
  %cmp3 = icmp sgt i32 %call, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.cond
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %5 = load i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  %conv7 = sext i8 %5 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  %cond = select i1 %tobool8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call9 = call i32 @zputs(i8* %cond, %struct._IO_FILE* %6)
  %7 = load i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  %tobool10 = icmp ne i8 %7, 0
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then5
  br label %for.end

if.end:                                           ; preds = %if.then5
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %xbuflink, i32 0, i32 0
  %call12 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0))
  %arraydecay13 = getelementptr inbounds [4097 x i8], [4097 x i8]* %xbuflink, i32 0, i32 0
  %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay13, i32 1
  store i8* %add.ptr14, i8** %start, align 4
  store i8 0, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  br label %if.end15

if.else:                                          ; preds = %for.cond
  br label %for.end

if.end15:                                         ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.then11
  br label %if.end28

if.else16:                                        ; preds = %if.then
  %8 = load i8*, i8** %s.addr, align 4
  %add.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  %call18 = call i32 @xsymlinks(i8* %add.ptr17, i32 1)
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.else16
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %9 = load i8, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), align 1
  %conv23 = sext i8 %9 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  %cond25 = select i1 %tobool24, i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @xbuf, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call26 = call i32 @zputs(i8* %cond25, %struct._IO_FILE* %10)
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.else16
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.end
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %entry
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind
define void @fprintdir(i8* %s, %struct._IO_FILE* %f) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %f.addr = alloca %struct._IO_FILE*, align 4
  %d = alloca %struct.nameddir*, align 4
  store i8* %s, i8** %s.addr, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call %struct.nameddir* @finddir(i8* %0)
  store %struct.nameddir* %call, %struct.nameddir** %d, align 4
  %1 = load %struct.nameddir*, %struct.nameddir** %d, align 4
  %tobool = icmp ne %struct.nameddir* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %call1 = call i8* @unmeta(i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 4
  %call2 = call i32 @fputs(i8* %call1, %struct._IO_FILE* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 4
  %call3 = call i32 @putc(i32 126, %struct._IO_FILE* %4)
  %5 = load %struct.nameddir*, %struct.nameddir** %d, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  %call4 = call i8* @unmeta(i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 4
  %call5 = call i32 @fputs(i8* %call4, %struct._IO_FILE* %7)
  %8 = load i8*, i8** %s.addr, align 4
  %9 = load %struct.nameddir*, %struct.nameddir** %d, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %9, i32 0, i32 1
  %10 = load i8*, i8** %dir, align 4
  %call6 = call i32 @strlen(i8* %10)
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 %call6
  %call7 = call i8* @unmeta(i8* %add.ptr)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 4
  %call8 = call i32 @fputs(i8* %call7, %struct._IO_FILE* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define %struct.nameddir* @finddir(i8* %s) #0 {
entry:
  %retval = alloca %struct.nameddir*, align 4
  %s.addr = alloca i8*, align 4
  %ares = alloca i8**, align 4
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @home, align 4
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i8*, i8** @home, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** getelementptr inbounds (%struct.nameddir, %struct.nameddir* @finddir.homenode, i32 0, i32 1), align 4
  %3 = load i8*, i8** @home, align 4
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  %4 = load i8*, i8** @home, align 4
  %call = call i32 @strlen(i8* %4)
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi i32 [ %call, %cond.true3 ], [ 0, %cond.false4 ]
  store i32 %cond6, i32* getelementptr inbounds (%struct.nameddir, %struct.nameddir* @finddir.homenode, i32 0, i32 2), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.nameddir, %struct.nameddir* @finddir.homenode, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end5
  store i32 0, i32* getelementptr inbounds (%struct.nameddir, %struct.nameddir* @finddir.homenode, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %cond.end5
  %6 = load i8*, i8** @finddir_full, align 4
  %tobool8 = icmp ne i8* %6, null
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  store i32 4097, i32* @finddir.ffsz, align 4
  %call10 = call i8* @zalloc(i32 4097)
  store i8* %call10, i8** @finddir_full, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %7 = load i8*, i8** @finddir_full, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 0
  store i8 0, i8* %arrayidx, align 1
  store %struct.nameddir* null, %struct.nameddir** @finddir_last, align 4
  store %struct.nameddir* null, %struct.nameddir** %retval, align 4
  br label %return

if.end12:                                         ; preds = %entry
  %8 = load i8*, i8** %s.addr, align 4
  %call13 = call i32 @strlen(i8* %8)
  %9 = load i32, i32* @finddir.ffsz, align 4
  %cmp14 = icmp sge i32 %call13, %9
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %10 = load i8*, i8** @finddir_full, align 4
  call void @free(i8* %10)
  %11 = load i8*, i8** %s.addr, align 4
  %call16 = call i32 @strlen(i8* %11)
  %mul = mul i32 %call16, 2
  store i32 %mul, i32* @finddir.ffsz, align 4
  %call17 = call i8* @zalloc(i32 %mul)
  store i8* %call17, i8** @finddir_full, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %12 = load i8*, i8** @finddir_full, align 4
  %13 = load i8*, i8** %s.addr, align 4
  %call19 = call i8* @strcpy(i8* %12, i8* %13)
  store i32 0, i32* @finddir_best, align 4
  store %struct.nameddir* null, %struct.nameddir** @finddir_last, align 4
  call void @finddir_scan(%struct.hashnode* getelementptr inbounds (%struct.nameddir, %struct.nameddir* @finddir.homenode, i32 0, i32 0), i32 0)
  %14 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %call20 = call i32 @scanhashtable(%struct.hashtable* %14, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @finddir_scan, i32 0)
  %15 = load i8*, i8** @finddir_full, align 4
  %call21 = call i8** @subst_string_by_hook(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* %15)
  store i8** %call21, i8*** %ares, align 4
  %16 = load i8**, i8*** %ares, align 4
  %tobool22 = icmp ne i8** %16, null
  br i1 %tobool22, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %if.end18
  %17 = load i8**, i8*** %ares, align 4
  %call23 = call signext i8 @arrlen_ge(i8** %17, i32 2)
  %conv = sext i8 %call23 to i32
  %tobool24 = icmp ne i32 %conv, 0
  br i1 %tobool24, label %land.lhs.true25, label %if.end39

land.lhs.true25:                                  ; preds = %land.lhs.true
  %18 = load i8**, i8*** %ares, align 4
  %arrayidx26 = getelementptr inbounds i8*, i8** %18, i32 1
  %19 = load i8*, i8** %arrayidx26, align 4
  %call27 = call i32 @zstrtol(i8* %19, i8** null, i32 10)
  store i32 %call27, i32* %len, align 4
  %20 = load i32, i32* @finddir_best, align 4
  %cmp28 = icmp sgt i32 %call27, %20
  br i1 %cmp28, label %if.then30, label %if.end39

if.then30:                                        ; preds = %land.lhs.true25
  %call31 = call i8* @hcalloc(i32 20)
  %21 = bitcast i8* %call31 to %struct.nameddir*
  store %struct.nameddir* %21, %struct.nameddir** @finddir_last, align 4
  %22 = load i8**, i8*** %ares, align 4
  %arrayidx32 = getelementptr inbounds i8*, i8** %22, i32 0
  %23 = load i8*, i8** %arrayidx32, align 4
  %call33 = call i8* @dupstring(i8* %23)
  %call34 = call i8* @zhtricat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* %call33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %24 = load %struct.nameddir*, %struct.nameddir** @finddir_last, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %24, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call34, i8** %nam, align 4
  %25 = load i8*, i8** @finddir_full, align 4
  %26 = load i32, i32* %len, align 4
  %call35 = call i8* @dupstrpfx(i8* %25, i32 %26)
  %27 = load %struct.nameddir*, %struct.nameddir** @finddir_last, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %27, i32 0, i32 1
  store i8* %call35, i8** %dir, align 4
  %28 = load i32, i32* %len, align 4
  %29 = load %struct.nameddir*, %struct.nameddir** @finddir_last, align 4
  %node36 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %29, i32 0, i32 0
  %nam37 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node36, i32 0, i32 1
  %30 = load i8*, i8** %nam37, align 4
  %call38 = call i32 @strlen(i8* %30)
  %sub = sub i32 %28, %call38
  %31 = load %struct.nameddir*, %struct.nameddir** @finddir_last, align 4
  %diff = getelementptr inbounds %struct.nameddir, %struct.nameddir* %31, i32 0, i32 2
  store i32 %sub, i32* %diff, align 4
  %32 = load i32, i32* %len, align 4
  store i32 %32, i32* @finddir_best, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %land.lhs.true25, %land.lhs.true, %if.end18
  %33 = load %struct.nameddir*, %struct.nameddir** @finddir_last, align 4
  store %struct.nameddir* %33, %struct.nameddir** %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.end11
  %34 = load %struct.nameddir*, %struct.nameddir** %retval, align 4
  ret %struct.nameddir* %34
}

; Function Attrs: noinline nounwind
define i8* @substnamedir(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %d = alloca %struct.nameddir*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call %struct.nameddir* @finddir(i8* %0)
  store %struct.nameddir* %call, %struct.nameddir** %d, align 4
  %1 = load %struct.nameddir*, %struct.nameddir** %d, align 4
  %tobool = icmp ne %struct.nameddir* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %call1 = call i8* @quotestring(i8* %2, i32 1)
  store i8* %call1, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.nameddir*, %struct.nameddir** %d, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %5 = load i8*, i8** %s.addr, align 4
  %6 = load %struct.nameddir*, %struct.nameddir** %d, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %6, i32 0, i32 1
  %7 = load i8*, i8** %dir, align 4
  %call2 = call i32 @strlen(i8* %7)
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 %call2
  %call3 = call i8* @quotestring(i8* %add.ptr, i32 1)
  %call4 = call i8* @zhtricat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* %4, i8* %call3)
  store i8* %call4, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval, align 4
  ret i8* %8
}

; Function Attrs: noinline nounwind
define i8* @quotestring(i8* %s, i32 %instring) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %instring.addr = alloca i32, align 4
  %u = alloca i8*, align 4
  %v = alloca i8*, align 4
  %alloclen = alloca i32, align 4
  %buf = alloca i8*, align 4
  %shownull = alloca i32, align 4
  %quotesub = alloca i32, align 4
  %slen = alloca i32, align 4
  %quotestart = alloca i8*, align 4
  %cc = alloca i32, align 4
  %uend = alloca i8*, align 4
  %dobackslash = alloca i32, align 4
  %c = alloca i8, align 1
  %c145 = alloca i8, align 1
  %beg = alloca i8, align 1
  %level = alloca i32, align 4
  %addq = alloca i8*, align 4
  %inmath = alloca i32, align 4
  %uc = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 4
  store i32 %instring, i32* %instring.addr, align 4
  store i32 0, i32* %shownull, align 4
  store i32 0, i32* %quotesub, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %slen, align 4
  %1 = load i32, i32* %instring.addr, align 4
  switch i32 %1, label %sw.default [
    i32 8, label %sw.bb
    i32 1, label %sw.bb1
    i32 7, label %sw.bb2
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %shownull, align 4
  store i32 1, i32* %instring.addr, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %2 = load i32, i32* %slen, align 4
  %mul = mul nsw i32 %2, 7
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %alloclen, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load i32, i32* %slen, align 4
  %mul3 = mul nsw i32 %3, 2
  %add4 = add nsw i32 %mul3, 1
  store i32 %add4, i32* %alloclen, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %4 = load i32, i32* %slen, align 4
  %mul6 = mul nsw i32 %4, 4
  %add7 = add nsw i32 %mul6, 3
  store i32 %add7, i32* %alloclen, align 4
  store i32 1, i32* %shownull, align 4
  store i32 1, i32* %quotesub, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %5 = load i32, i32* %slen, align 4
  %mul8 = mul nsw i32 %5, 4
  %add9 = add nsw i32 %mul8, 1
  store i32 %add9, i32* %alloclen, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb2, %sw.bb1
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %8 = load i32, i32* %shownull, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %alloclen, align 4
  %add11 = add nsw i32 %9, 2
  store i32 %add11, i32* %alloclen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.epilog
  %10 = load i32, i32* %alloclen, align 4
  %call12 = call i8* @zshcalloc(i32 %10)
  store i8* %call12, i8** %buf, align 4
  store i8* %call12, i8** %v, align 4
  store i8* %call12, i8** %quotestart, align 4
  %11 = load i8*, i8** %s.addr, align 4
  store i8* %11, i8** %u, align 4
  %12 = load i32, i32* %instring.addr, align 4
  %cmp = icmp eq i32 %12, 4
  br i1 %cmp, label %if.then13, label %if.else47

if.then13:                                        ; preds = %if.end
  %13 = load i8*, i8** %u, align 4
  %14 = load i8, i8* %13, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %15 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %15 to i32
  %and = and i32 %conv, 16384
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %16 = load i8*, i8** %u, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %u, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  call void @mb_charinit()
  br label %while.cond

while.cond:                                       ; preds = %if.end45, %if.end16
  %17 = load i8*, i8** %u, align 4
  %18 = load i8, i8* %17, align 1
  %tobool17 = icmp ne i8 %18, 0
  br i1 %tobool17, label %while.body, label %while.end46

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %u, align 4
  %20 = load i8*, i8** %u, align 4
  %call18 = call i32 @mb_metacharlenconv(i8* %20, i32* %cc)
  %add.ptr = getelementptr inbounds i8, i8* %19, i32 %call18
  store i8* %add.ptr, i8** %uend, align 4
  %21 = load i32, i32* %cc, align 4
  %cmp19 = icmp ne i32 %21, -1
  br i1 %cmp19, label %land.lhs.true21, label %if.else

land.lhs.true21:                                  ; preds = %while.body
  %22 = load i32, i32* %cc, align 4
  %call22 = call i32 @iswprint(i32 %22)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.else

if.then24:                                        ; preds = %land.lhs.true21
  %23 = load i32, i32* %cc, align 4
  switch i32 %23, label %sw.default27 [
    i32 92, label %sw.bb25
    i32 39, label %sw.bb25
  ]

sw.bb25:                                          ; preds = %if.then24, %if.then24
  %24 = load i8*, i8** %v, align 4
  %incdec.ptr26 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr26, i8** %v, align 4
  store i8 92, i8* %24, align 1
  br label %sw.epilog37

sw.default27:                                     ; preds = %if.then24
  %25 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 18), align 1
  %conv28 = sext i8 %25 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %land.lhs.true30, label %if.end36

land.lhs.true30:                                  ; preds = %sw.default27
  %26 = load i32, i32* %cc, align 4
  %27 = load i8, i8* @bangchar, align 1
  %conv31 = zext i8 %27 to i32
  %cmp32 = icmp eq i32 %26, %conv31
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true30
  %28 = load i8*, i8** %v, align 4
  %incdec.ptr35 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr35, i8** %v, align 4
  store i8 92, i8* %28, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true30, %sw.default27
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %if.end36, %sw.bb25
  br label %while.cond38

while.cond38:                                     ; preds = %while.body41, %sw.epilog37
  %29 = load i8*, i8** %u, align 4
  %30 = load i8*, i8** %uend, align 4
  %cmp39 = icmp ult i8* %29, %30
  br i1 %cmp39, label %while.body41, label %while.end

while.body41:                                     ; preds = %while.cond38
  %31 = load i8*, i8** %u, align 4
  %incdec.ptr42 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr42, i8** %u, align 4
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %v, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr43, i8** %v, align 4
  store i8 %32, i8* %33, align 1
  br label %while.cond38

while.end:                                        ; preds = %while.cond38
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true21, %while.body
  %34 = load i8*, i8** %v, align 4
  %35 = load i8*, i8** %u, align 4
  %36 = load i8*, i8** %uend, align 4
  %call44 = call i8* @addunprintable(i8* %34, i8* %35, i8* %36)
  store i8* %call44, i8** %v, align 4
  %37 = load i8*, i8** %uend, align 4
  store i8* %37, i8** %u, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %while.end
  br label %while.cond

while.end46:                                      ; preds = %while.cond
  br label %if.end446

if.else47:                                        ; preds = %if.end
  %38 = load i32, i32* %instring.addr, align 4
  %cmp48 = icmp eq i32 %38, 7
  br i1 %cmp48, label %if.then50, label %if.else65

if.then50:                                        ; preds = %if.else47
  br label %while.cond51

while.cond51:                                     ; preds = %if.end61, %if.then50
  %39 = load i8*, i8** %u, align 4
  %40 = load i8, i8* %39, align 1
  %tobool52 = icmp ne i8 %40, 0
  br i1 %tobool52, label %while.body53, label %while.end64

while.body53:                                     ; preds = %while.cond51
  %41 = load i8*, i8** %u, align 4
  %42 = load i8, i8* %41, align 1
  %idxprom54 = zext i8 %42 to i32
  %arrayidx55 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom54
  %43 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %43 to i32
  %and57 = and i32 %conv56, 32768
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %while.body53
  %44 = load i8*, i8** %v, align 4
  %incdec.ptr60 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr60, i8** %v, align 4
  store i8 92, i8* %44, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %while.body53
  %45 = load i8*, i8** %u, align 4
  %incdec.ptr62 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr62, i8** %u, align 4
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %v, align 4
  %incdec.ptr63 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr63, i8** %v, align 4
  store i8 %46, i8* %47, align 1
  br label %while.cond51

while.end64:                                      ; preds = %while.cond51
  br label %if.end445

if.else65:                                        ; preds = %if.else47
  %48 = load i32, i32* %shownull, align 4
  %tobool66 = icmp ne i32 %48, 0
  br i1 %tobool66, label %if.then67, label %if.end73

if.then67:                                        ; preds = %if.else65
  %49 = load i8*, i8** %u, align 4
  %50 = load i8, i8* %49, align 1
  %tobool68 = icmp ne i8 %50, 0
  br i1 %tobool68, label %if.end72, label %if.then69

if.then69:                                        ; preds = %if.then67
  %51 = load i8*, i8** %v, align 4
  %incdec.ptr70 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr70, i8** %v, align 4
  store i8 39, i8* %51, align 1
  %52 = load i8*, i8** %v, align 4
  %incdec.ptr71 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr71, i8** %v, align 4
  store i8 39, i8* %52, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then67
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.else65
  br label %while.cond74

while.cond74:                                     ; preds = %if.end443, %if.end410, %if.end354, %if.end316, %if.end191, %if.end101, %if.end73
  %53 = load i8*, i8** %u, align 4
  %54 = load i8, i8* %53, align 1
  %tobool75 = icmp ne i8 %54, 0
  br i1 %tobool75, label %while.body76, label %while.end444

while.body76:                                     ; preds = %while.cond74
  store i32 0, i32* %dobackslash, align 4
  %55 = load i8*, i8** %u, align 4
  %56 = load i8, i8* %55, align 1
  %conv77 = sext i8 %56 to i32
  %cmp78 = icmp eq i32 %conv77, -109
  br i1 %cmp78, label %if.then83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body76
  %57 = load i8*, i8** %u, align 4
  %58 = load i8, i8* %57, align 1
  %conv80 = sext i8 %58 to i32
  %cmp81 = icmp eq i32 %conv80, -103
  br i1 %cmp81, label %if.then83, label %if.else102

if.then83:                                        ; preds = %lor.lhs.false, %while.body76
  %59 = load i8*, i8** %u, align 4
  %incdec.ptr84 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr84, i8** %u, align 4
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %c, align 1
  %61 = load i8, i8* %c, align 1
  %62 = load i8*, i8** %v, align 4
  %incdec.ptr85 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr85, i8** %v, align 4
  store i8 %61, i8* %62, align 1
  br label %while.cond86

while.cond86:                                     ; preds = %while.body93, %if.then83
  %63 = load i8*, i8** %u, align 4
  %64 = load i8, i8* %63, align 1
  %conv87 = sext i8 %64 to i32
  %tobool88 = icmp ne i32 %conv87, 0
  br i1 %tobool88, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond86
  %65 = load i8*, i8** %u, align 4
  %66 = load i8, i8* %65, align 1
  %conv89 = sext i8 %66 to i32
  %67 = load i8, i8* %c, align 1
  %conv90 = sext i8 %67 to i32
  %cmp91 = icmp ne i32 %conv89, %conv90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond86
  %68 = phi i1 [ false, %while.cond86 ], [ %cmp91, %land.rhs ]
  br i1 %68, label %while.body93, label %while.end96

while.body93:                                     ; preds = %land.end
  %69 = load i8*, i8** %u, align 4
  %incdec.ptr94 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr94, i8** %u, align 4
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %v, align 4
  %incdec.ptr95 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr95, i8** %v, align 4
  store i8 %70, i8* %71, align 1
  br label %while.cond86

while.end96:                                      ; preds = %land.end
  %72 = load i8, i8* %c, align 1
  %73 = load i8*, i8** %v, align 4
  %incdec.ptr97 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr97, i8** %v, align 4
  store i8 %72, i8* %73, align 1
  %74 = load i8*, i8** %u, align 4
  %75 = load i8, i8* %74, align 1
  %tobool98 = icmp ne i8 %75, 0
  br i1 %tobool98, label %if.then99, label %if.end101

if.then99:                                        ; preds = %while.end96
  %76 = load i8*, i8** %u, align 4
  %incdec.ptr100 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr100, i8** %u, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %while.end96
  br label %while.cond74

if.else102:                                       ; preds = %lor.lhs.false
  %77 = load i8*, i8** %u, align 4
  %78 = load i8, i8* %77, align 1
  %conv103 = sext i8 %78 to i32
  %cmp104 = icmp eq i32 %conv103, -116
  br i1 %cmp104, label %land.lhs.true110, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %if.else102
  %79 = load i8*, i8** %u, align 4
  %80 = load i8, i8* %79, align 1
  %conv107 = sext i8 %80 to i32
  %cmp108 = icmp eq i32 %conv107, 36
  br i1 %cmp108, label %land.lhs.true110, label %if.else121

land.lhs.true110:                                 ; preds = %lor.lhs.false106, %if.else102
  %81 = load i8*, i8** %u, align 4
  %arrayidx111 = getelementptr inbounds i8, i8* %81, i32 1
  %82 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %82 to i32
  %cmp113 = icmp eq i32 %conv112, 39
  br i1 %cmp113, label %land.lhs.true115, label %if.else121

land.lhs.true115:                                 ; preds = %land.lhs.true110
  %83 = load i32, i32* %instring.addr, align 4
  %cmp116 = icmp eq i32 %83, 3
  br i1 %cmp116, label %if.then118, label %if.else121

if.then118:                                       ; preds = %land.lhs.true115
  %84 = load i8*, i8** %u, align 4
  %incdec.ptr119 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr119, i8** %u, align 4
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %v, align 4
  %incdec.ptr120 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr120, i8** %v, align 4
  store i8 %85, i8* %86, align 1
  br label %if.end361

if.else121:                                       ; preds = %land.lhs.true115, %land.lhs.true110, %lor.lhs.false106
  %87 = load i8*, i8** %u, align 4
  %88 = load i8, i8* %87, align 1
  %conv122 = sext i8 %88 to i32
  %cmp123 = icmp eq i32 %conv122, -123
  br i1 %cmp123, label %land.lhs.true129, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %if.else121
  %89 = load i8*, i8** %u, align 4
  %90 = load i8, i8* %89, align 1
  %conv126 = sext i8 %90 to i32
  %cmp127 = icmp eq i32 %conv126, -116
  br i1 %cmp127, label %land.lhs.true129, label %if.else192

land.lhs.true129:                                 ; preds = %lor.lhs.false125, %if.else121
  %91 = load i8*, i8** %u, align 4
  %arrayidx130 = getelementptr inbounds i8, i8* %91, i32 1
  %92 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %92 to i32
  %cmp132 = icmp eq i32 %conv131, -120
  br i1 %cmp132, label %if.then144, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %land.lhs.true129
  %93 = load i8*, i8** %u, align 4
  %arrayidx135 = getelementptr inbounds i8, i8* %93, i32 1
  %94 = load i8, i8* %arrayidx135, align 1
  %conv136 = sext i8 %94 to i32
  %cmp137 = icmp eq i32 %conv136, -111
  br i1 %cmp137, label %if.then144, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false134
  %95 = load i8*, i8** %u, align 4
  %arrayidx140 = getelementptr inbounds i8, i8* %95, i32 1
  %96 = load i8, i8* %arrayidx140, align 1
  %conv141 = sext i8 %96 to i32
  %cmp142 = icmp eq i32 %conv141, -113
  br i1 %cmp142, label %if.then144, label %if.else192

if.then144:                                       ; preds = %lor.lhs.false139, %lor.lhs.false134, %land.lhs.true129
  %97 = load i8*, i8** %u, align 4
  %arrayidx146 = getelementptr inbounds i8, i8* %97, i32 1
  %98 = load i8, i8* %arrayidx146, align 1
  %conv147 = sext i8 %98 to i32
  %cmp148 = icmp eq i32 %conv147, -120
  br i1 %cmp148, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then144
  br label %cond.end

cond.false:                                       ; preds = %if.then144
  %99 = load i8*, i8** %u, align 4
  %arrayidx150 = getelementptr inbounds i8, i8* %99, i32 1
  %100 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %100 to i32
  %cmp152 = icmp eq i32 %conv151, -113
  %cond = select i1 %cmp152, i32 -112, i32 -110
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond154 = phi i32 [ -118, %cond.true ], [ %cond, %cond.false ]
  %conv155 = trunc i32 %cond154 to i8
  store i8 %conv155, i8* %c145, align 1
  %101 = load i8*, i8** %u, align 4
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %beg, align 1
  store i32 0, i32* %level, align 4
  %103 = load i8*, i8** %u, align 4
  %incdec.ptr156 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr156, i8** %u, align 4
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %v, align 4
  %incdec.ptr157 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr157, i8** %v, align 4
  store i8 %104, i8* %105, align 1
  %106 = load i8*, i8** %u, align 4
  %incdec.ptr158 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr158, i8** %u, align 4
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %v, align 4
  %incdec.ptr159 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr159, i8** %v, align 4
  store i8 %107, i8* %108, align 1
  br label %while.cond160

while.cond160:                                    ; preds = %if.end183, %cond.end
  %109 = load i8*, i8** %u, align 4
  %110 = load i8, i8* %109, align 1
  %conv161 = sext i8 %110 to i32
  %tobool162 = icmp ne i32 %conv161, 0
  br i1 %tobool162, label %land.rhs163, label %land.end169

land.rhs163:                                      ; preds = %while.cond160
  %111 = load i8*, i8** %u, align 4
  %112 = load i8, i8* %111, align 1
  %conv164 = sext i8 %112 to i32
  %113 = load i8, i8* %c145, align 1
  %conv165 = sext i8 %113 to i32
  %cmp166 = icmp ne i32 %conv164, %conv165
  br i1 %cmp166, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs163
  %114 = load i32, i32* %level, align 4
  %tobool168 = icmp ne i32 %114, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs163
  %115 = phi i1 [ true, %land.rhs163 ], [ %tobool168, %lor.rhs ]
  br label %land.end169

land.end169:                                      ; preds = %lor.end, %while.cond160
  %116 = phi i1 [ false, %while.cond160 ], [ %115, %lor.end ]
  br i1 %116, label %while.body170, label %while.end186

while.body170:                                    ; preds = %land.end169
  %117 = load i8*, i8** %u, align 4
  %118 = load i8, i8* %117, align 1
  %conv171 = sext i8 %118 to i32
  %119 = load i8, i8* %beg, align 1
  %conv172 = sext i8 %119 to i32
  %cmp173 = icmp eq i32 %conv171, %conv172
  br i1 %cmp173, label %if.then175, label %if.else176

if.then175:                                       ; preds = %while.body170
  %120 = load i32, i32* %level, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %level, align 4
  br label %if.end183

if.else176:                                       ; preds = %while.body170
  %121 = load i8*, i8** %u, align 4
  %122 = load i8, i8* %121, align 1
  %conv177 = sext i8 %122 to i32
  %123 = load i8, i8* %c145, align 1
  %conv178 = sext i8 %123 to i32
  %cmp179 = icmp eq i32 %conv177, %conv178
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.else176
  %124 = load i32, i32* %level, align 4
  %dec = add nsw i32 %124, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.else176
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.then175
  %125 = load i8*, i8** %u, align 4
  %incdec.ptr184 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr184, i8** %u, align 4
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %v, align 4
  %incdec.ptr185 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr185, i8** %v, align 4
  store i8 %126, i8* %127, align 1
  br label %while.cond160

while.end186:                                     ; preds = %land.end169
  %128 = load i8*, i8** %u, align 4
  %129 = load i8, i8* %128, align 1
  %tobool187 = icmp ne i8 %129, 0
  br i1 %tobool187, label %if.then188, label %if.end191

if.then188:                                       ; preds = %while.end186
  %130 = load i8*, i8** %u, align 4
  %incdec.ptr189 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr189, i8** %u, align 4
  %131 = load i8, i8* %130, align 1
  %132 = load i8*, i8** %v, align 4
  %incdec.ptr190 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr190, i8** %v, align 4
  store i8 %131, i8* %132, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %while.end186
  br label %while.cond74

if.else192:                                       ; preds = %lor.lhs.false139, %lor.lhs.false125
  %133 = load i8*, i8** %u, align 4
  %134 = load i8, i8* %133, align 1
  %idxprom193 = zext i8 %134 to i32
  %arrayidx194 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom193
  %135 = load i16, i16* %arrayidx194, align 2
  %conv195 = sext i16 %135 to i32
  %and196 = and i32 %conv195, 2048
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %land.lhs.true198, label %if.end359

land.lhs.true198:                                 ; preds = %if.else192
  %136 = load i8*, i8** %u, align 4
  %137 = load i8, i8* %136, align 1
  %conv199 = sext i8 %137 to i32
  %cmp200 = icmp ne i32 %conv199, 61
  br i1 %cmp200, label %land.lhs.true202, label %lor.lhs.false206

land.lhs.true202:                                 ; preds = %land.lhs.true198
  %138 = load i8*, i8** %u, align 4
  %139 = load i8, i8* %138, align 1
  %conv203 = sext i8 %139 to i32
  %cmp204 = icmp ne i32 %conv203, 126
  br i1 %cmp204, label %land.lhs.true229, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %land.lhs.true202, %land.lhs.true198
  %140 = load i8*, i8** %u, align 4
  %141 = load i8*, i8** %s.addr, align 4
  %cmp207 = icmp eq i8* %140, %141
  br i1 %cmp207, label %land.lhs.true229, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %lor.lhs.false206
  %142 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 113), align 1
  %conv210 = sext i8 %142 to i32
  %tobool211 = icmp ne i32 %conv210, 0
  br i1 %tobool211, label %land.lhs.true212, label %lor.lhs.false222

land.lhs.true212:                                 ; preds = %lor.lhs.false209
  %143 = load i8*, i8** %u, align 4
  %arrayidx213 = getelementptr inbounds i8, i8* %143, i32 -1
  %144 = load i8, i8* %arrayidx213, align 1
  %conv214 = sext i8 %144 to i32
  %cmp215 = icmp eq i32 %conv214, 61
  br i1 %cmp215, label %land.lhs.true229, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %land.lhs.true212
  %145 = load i8*, i8** %u, align 4
  %arrayidx218 = getelementptr inbounds i8, i8* %145, i32 -1
  %146 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %146 to i32
  %cmp220 = icmp eq i32 %conv219, 58
  br i1 %cmp220, label %land.lhs.true229, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %lor.lhs.false217, %lor.lhs.false209
  %147 = load i8*, i8** %u, align 4
  %148 = load i8, i8* %147, align 1
  %conv223 = sext i8 %148 to i32
  %cmp224 = icmp eq i32 %conv223, 126
  br i1 %cmp224, label %land.lhs.true226, label %if.end359

land.lhs.true226:                                 ; preds = %lor.lhs.false222
  %149 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 54), align 1
  %conv227 = sext i8 %149 to i32
  %tobool228 = icmp ne i32 %conv227, 0
  br i1 %tobool228, label %land.lhs.true229, label %if.end359

land.lhs.true229:                                 ; preds = %land.lhs.true226, %lor.lhs.false217, %land.lhs.true212, %lor.lhs.false206, %land.lhs.true202
  %150 = load i32, i32* %instring.addr, align 4
  %cmp230 = icmp eq i32 %150, 1
  br i1 %cmp230, label %if.then272, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %land.lhs.true229
  %151 = load i32, i32* %instring.addr, align 4
  %cmp233 = icmp eq i32 %151, 6
  br i1 %cmp233, label %if.then272, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %lor.lhs.false232
  %152 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 18), align 1
  %conv236 = sext i8 %152 to i32
  %tobool237 = icmp ne i32 %conv236, 0
  br i1 %tobool237, label %land.lhs.true238, label %lor.lhs.false246

land.lhs.true238:                                 ; preds = %lor.lhs.false235
  %153 = load i8*, i8** %u, align 4
  %154 = load i8, i8* %153, align 1
  %conv239 = sext i8 %154 to i32
  %155 = load i8, i8* @bangchar, align 1
  %conv240 = sext i8 %155 to i32
  %cmp241 = icmp eq i32 %conv239, %conv240
  br i1 %cmp241, label %land.lhs.true243, label %lor.lhs.false246

land.lhs.true243:                                 ; preds = %land.lhs.true238
  %156 = load i32, i32* %instring.addr, align 4
  %cmp244 = icmp ne i32 %156, 2
  br i1 %cmp244, label %if.then272, label %lor.lhs.false246

lor.lhs.false246:                                 ; preds = %land.lhs.true243, %land.lhs.true238, %lor.lhs.false235
  %157 = load i32, i32* %instring.addr, align 4
  %cmp247 = icmp eq i32 %157, 3
  br i1 %cmp247, label %land.lhs.true249, label %lor.lhs.false265

land.lhs.true249:                                 ; preds = %lor.lhs.false246
  %158 = load i8*, i8** %u, align 4
  %159 = load i8, i8* %158, align 1
  %conv250 = sext i8 %159 to i32
  %cmp251 = icmp eq i32 %conv250, 36
  br i1 %cmp251, label %if.then272, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %land.lhs.true249
  %160 = load i8*, i8** %u, align 4
  %161 = load i8, i8* %160, align 1
  %conv254 = sext i8 %161 to i32
  %cmp255 = icmp eq i32 %conv254, 96
  br i1 %cmp255, label %if.then272, label %lor.lhs.false257

lor.lhs.false257:                                 ; preds = %lor.lhs.false253
  %162 = load i8*, i8** %u, align 4
  %163 = load i8, i8* %162, align 1
  %conv258 = sext i8 %163 to i32
  %cmp259 = icmp eq i32 %conv258, 34
  br i1 %cmp259, label %if.then272, label %lor.lhs.false261

lor.lhs.false261:                                 ; preds = %lor.lhs.false257
  %164 = load i8*, i8** %u, align 4
  %165 = load i8, i8* %164, align 1
  %conv262 = sext i8 %165 to i32
  %cmp263 = icmp eq i32 %conv262, 92
  br i1 %cmp263, label %if.then272, label %lor.lhs.false265

lor.lhs.false265:                                 ; preds = %lor.lhs.false261, %lor.lhs.false246
  %166 = load i32, i32* %instring.addr, align 4
  %cmp266 = icmp eq i32 %166, 2
  br i1 %cmp266, label %land.lhs.true268, label %if.end359

land.lhs.true268:                                 ; preds = %lor.lhs.false265
  %167 = load i8*, i8** %u, align 4
  %168 = load i8, i8* %167, align 1
  %conv269 = sext i8 %168 to i32
  %cmp270 = icmp eq i32 %conv269, 39
  br i1 %cmp270, label %if.then272, label %if.end359

if.then272:                                       ; preds = %land.lhs.true268, %lor.lhs.false261, %lor.lhs.false257, %lor.lhs.false253, %land.lhs.true249, %land.lhs.true243, %lor.lhs.false232, %land.lhs.true229
  %169 = load i32, i32* %instring.addr, align 4
  %cmp273 = icmp eq i32 %169, 6
  br i1 %cmp273, label %if.then275, label %if.else317

if.then275:                                       ; preds = %if.then272
  %170 = load i32, i32* %quotesub, align 4
  %cmp276 = icmp eq i32 %170, 1
  br i1 %cmp276, label %if.then278, label %if.else297

if.then278:                                       ; preds = %if.then275
  %171 = load i8*, i8** %u, align 4
  %172 = load i8, i8* %171, align 1
  %conv279 = sext i8 %172 to i32
  %cmp280 = icmp eq i32 %conv279, 39
  br i1 %cmp280, label %if.then282, label %if.else284

if.then282:                                       ; preds = %if.then278
  %173 = load i8*, i8** %v, align 4
  %incdec.ptr283 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr283, i8** %v, align 4
  store i8 92, i8* %173, align 1
  br label %if.end294

if.else284:                                       ; preds = %if.then278
  %174 = load i8*, i8** %v, align 4
  %175 = load i8*, i8** %quotestart, align 4
  %cmp285 = icmp ugt i8* %174, %175
  br i1 %cmp285, label %if.then287, label %if.end292

if.then287:                                       ; preds = %if.else284
  %176 = load i8*, i8** %v, align 4
  store i8* %176, i8** %addq, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then287
  %177 = load i8*, i8** %addq, align 4
  %178 = load i8*, i8** %quotestart, align 4
  %cmp288 = icmp ugt i8* %177, %178
  br i1 %cmp288, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %179 = load i8*, i8** %addq, align 4
  %arrayidx290 = getelementptr inbounds i8, i8* %179, i32 -1
  %180 = load i8, i8* %arrayidx290, align 1
  %181 = load i8*, i8** %addq, align 4
  store i8 %180, i8* %181, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %182 = load i8*, i8** %addq, align 4
  %incdec.ptr291 = getelementptr inbounds i8, i8* %182, i32 -1
  store i8* %incdec.ptr291, i8** %addq, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end292

if.end292:                                        ; preds = %for.end, %if.else284
  %183 = load i8*, i8** %quotestart, align 4
  store i8 39, i8* %183, align 1
  %184 = load i8*, i8** %v, align 4
  %incdec.ptr293 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr293, i8** %v, align 4
  store i32 2, i32* %quotesub, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.end292, %if.then282
  %185 = load i8*, i8** %u, align 4
  %incdec.ptr295 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr295, i8** %u, align 4
  %186 = load i8, i8* %185, align 1
  %187 = load i8*, i8** %v, align 4
  %incdec.ptr296 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr296, i8** %v, align 4
  store i8 %186, i8* %187, align 1
  %188 = load i8*, i8** %v, align 4
  store i8* %188, i8** %quotestart, align 4
  br label %if.end316

if.else297:                                       ; preds = %if.then275
  %189 = load i8*, i8** %u, align 4
  %190 = load i8, i8* %189, align 1
  %conv298 = sext i8 %190 to i32
  %cmp299 = icmp eq i32 %conv298, 39
  br i1 %cmp299, label %if.then301, label %if.else312

if.then301:                                       ; preds = %if.else297
  %191 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  %tobool302 = icmp ne i8 %191, 0
  br i1 %tobool302, label %if.else307, label %if.then303

if.then303:                                       ; preds = %if.then301
  %192 = load i8*, i8** %v, align 4
  %incdec.ptr304 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %incdec.ptr304, i8** %v, align 4
  store i8 39, i8* %192, align 1
  %193 = load i8*, i8** %v, align 4
  %incdec.ptr305 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr305, i8** %v, align 4
  store i8 92, i8* %193, align 1
  %194 = load i8*, i8** %v, align 4
  %incdec.ptr306 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %incdec.ptr306, i8** %v, align 4
  store i8 39, i8* %194, align 1
  store i32 1, i32* %quotesub, align 4
  %195 = load i8*, i8** %v, align 4
  store i8* %195, i8** %quotestart, align 4
  br label %if.end310

if.else307:                                       ; preds = %if.then301
  %196 = load i8*, i8** %v, align 4
  %incdec.ptr308 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr308, i8** %v, align 4
  store i8 39, i8* %196, align 1
  %197 = load i8*, i8** %v, align 4
  %incdec.ptr309 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr309, i8** %v, align 4
  store i8 39, i8* %197, align 1
  br label %if.end310

if.end310:                                        ; preds = %if.else307, %if.then303
  %198 = load i8*, i8** %u, align 4
  %incdec.ptr311 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr311, i8** %u, align 4
  br label %if.end315

if.else312:                                       ; preds = %if.else297
  %199 = load i8*, i8** %u, align 4
  %incdec.ptr313 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr313, i8** %u, align 4
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %v, align 4
  %incdec.ptr314 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr314, i8** %v, align 4
  store i8 %200, i8* %201, align 1
  br label %if.end315

if.end315:                                        ; preds = %if.else312, %if.end310
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end294
  br label %while.cond74

if.else317:                                       ; preds = %if.then272
  %202 = load i8*, i8** %u, align 4
  %203 = load i8, i8* %202, align 1
  %conv318 = sext i8 %203 to i32
  %cmp319 = icmp eq i32 %conv318, 10
  br i1 %cmp319, label %if.then328, label %lor.lhs.false321

lor.lhs.false321:                                 ; preds = %if.else317
  %204 = load i32, i32* %instring.addr, align 4
  %cmp322 = icmp eq i32 %204, 2
  br i1 %cmp322, label %land.lhs.true324, label %if.else356

land.lhs.true324:                                 ; preds = %lor.lhs.false321
  %205 = load i8*, i8** %u, align 4
  %206 = load i8, i8* %205, align 1
  %conv325 = sext i8 %206 to i32
  %cmp326 = icmp eq i32 %conv325, 39
  br i1 %cmp326, label %if.then328, label %if.else356

if.then328:                                       ; preds = %land.lhs.true324, %if.else317
  %207 = load i8*, i8** %u, align 4
  %208 = load i8, i8* %207, align 1
  %conv329 = sext i8 %208 to i32
  %cmp330 = icmp eq i32 %conv329, 10
  br i1 %cmp330, label %if.then332, label %if.else338

if.then332:                                       ; preds = %if.then328
  %209 = load i8*, i8** %v, align 4
  %incdec.ptr333 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %incdec.ptr333, i8** %v, align 4
  store i8 36, i8* %209, align 1
  %210 = load i8*, i8** %v, align 4
  %incdec.ptr334 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr334, i8** %v, align 4
  store i8 39, i8* %210, align 1
  %211 = load i8*, i8** %v, align 4
  %incdec.ptr335 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr335, i8** %v, align 4
  store i8 92, i8* %211, align 1
  %212 = load i8*, i8** %v, align 4
  %incdec.ptr336 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr336, i8** %v, align 4
  store i8 110, i8* %212, align 1
  %213 = load i8*, i8** %v, align 4
  %incdec.ptr337 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr337, i8** %v, align 4
  store i8 39, i8* %213, align 1
  br label %if.end354

if.else338:                                       ; preds = %if.then328
  %214 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  %tobool339 = icmp ne i8 %214, 0
  br i1 %tobool339, label %if.else350, label %if.then340

if.then340:                                       ; preds = %if.else338
  %215 = load i8*, i8** %v, align 4
  %incdec.ptr341 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %incdec.ptr341, i8** %v, align 4
  store i8 39, i8* %215, align 1
  %216 = load i8*, i8** %u, align 4
  %217 = load i8, i8* %216, align 1
  %conv342 = sext i8 %217 to i32
  %cmp343 = icmp eq i32 %conv342, 39
  br i1 %cmp343, label %if.then345, label %if.end347

if.then345:                                       ; preds = %if.then340
  %218 = load i8*, i8** %v, align 4
  %incdec.ptr346 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr346, i8** %v, align 4
  store i8 92, i8* %218, align 1
  br label %if.end347

if.end347:                                        ; preds = %if.then345, %if.then340
  %219 = load i8*, i8** %u, align 4
  %220 = load i8, i8* %219, align 1
  %221 = load i8*, i8** %v, align 4
  %incdec.ptr348 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr348, i8** %v, align 4
  store i8 %220, i8* %221, align 1
  %222 = load i8*, i8** %v, align 4
  %incdec.ptr349 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr349, i8** %v, align 4
  store i8 39, i8* %222, align 1
  br label %if.end353

if.else350:                                       ; preds = %if.else338
  %223 = load i8*, i8** %v, align 4
  %incdec.ptr351 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr351, i8** %v, align 4
  store i8 39, i8* %223, align 1
  %224 = load i8*, i8** %v, align 4
  %incdec.ptr352 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %incdec.ptr352, i8** %v, align 4
  store i8 39, i8* %224, align 1
  br label %if.end353

if.end353:                                        ; preds = %if.else350, %if.end347
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %if.then332
  %225 = load i8*, i8** %u, align 4
  %incdec.ptr355 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr355, i8** %u, align 4
  br label %while.cond74

if.else356:                                       ; preds = %land.lhs.true324, %lor.lhs.false321
  store i32 1, i32* %dobackslash, align 4
  br label %if.end357

if.end357:                                        ; preds = %if.else356
  br label %if.end358

if.end358:                                        ; preds = %if.end357
  br label %if.end359

if.end359:                                        ; preds = %if.end358, %land.lhs.true268, %lor.lhs.false265, %land.lhs.true226, %lor.lhs.false222, %if.else192
  br label %if.end360

if.end360:                                        ; preds = %if.end359
  br label %if.end361

if.end361:                                        ; preds = %if.end360, %if.then118
  br label %if.end362

if.end362:                                        ; preds = %if.end361
  %226 = load i8*, i8** %u, align 4
  %227 = load i8, i8* %226, align 1
  %idxprom363 = zext i8 %227 to i32
  %arrayidx364 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom363
  %228 = load i16, i16* %arrayidx364, align 2
  %conv365 = sext i16 %228 to i32
  %and366 = and i32 %conv365, 16
  %tobool367 = icmp ne i32 %and366, 0
  br i1 %tobool367, label %if.then371, label %lor.lhs.false368

lor.lhs.false368:                                 ; preds = %if.end362
  %229 = load i32, i32* %instring.addr, align 4
  %cmp369 = icmp ne i32 %229, 1
  br i1 %cmp369, label %if.then371, label %if.end411

if.then371:                                       ; preds = %lor.lhs.false368, %if.end362
  %230 = load i32, i32* %dobackslash, align 4
  %tobool372 = icmp ne i32 %230, 0
  br i1 %tobool372, label %if.then373, label %if.end375

if.then373:                                       ; preds = %if.then371
  %231 = load i8*, i8** %v, align 4
  %incdec.ptr374 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %incdec.ptr374, i8** %v, align 4
  store i8 92, i8* %231, align 1
  br label %if.end375

if.end375:                                        ; preds = %if.then373, %if.then371
  %232 = load i8*, i8** %u, align 4
  %233 = load i8, i8* %232, align 1
  %conv376 = sext i8 %233 to i32
  %cmp377 = icmp eq i32 %conv376, -119
  br i1 %cmp377, label %if.then379, label %if.else407

if.then379:                                       ; preds = %if.end375
  store i32 1, i32* %inmath, align 4
  %234 = load i8*, i8** %u, align 4
  %incdec.ptr380 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr380, i8** %u, align 4
  %235 = load i8, i8* %234, align 1
  %236 = load i8*, i8** %v, align 4
  %incdec.ptr381 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr381, i8** %v, align 4
  store i8 %235, i8* %236, align 1
  br label %for.cond382

for.cond382:                                      ; preds = %if.end405, %if.then379
  %237 = load i8*, i8** %u, align 4
  %238 = load i8, i8* %237, align 1
  store i8 %238, i8* %uc, align 1
  %239 = load i8*, i8** %u, align 4
  %incdec.ptr383 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr383, i8** %u, align 4
  %240 = load i8, i8* %239, align 1
  %241 = load i8*, i8** %v, align 4
  %incdec.ptr384 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr384, i8** %v, align 4
  store i8 %240, i8* %241, align 1
  %242 = load i8, i8* %uc, align 1
  %conv385 = sext i8 %242 to i32
  %cmp386 = icmp eq i32 %conv385, 0
  br i1 %cmp386, label %if.then388, label %if.else389

if.then388:                                       ; preds = %for.cond382
  br label %for.end406

if.else389:                                       ; preds = %for.cond382
  %243 = load i8, i8* %uc, align 1
  %conv390 = sext i8 %243 to i32
  %cmp391 = icmp eq i32 %conv390, -117
  br i1 %cmp391, label %land.lhs.true393, label %if.else397

land.lhs.true393:                                 ; preds = %if.else389
  %244 = load i32, i32* %inmath, align 4
  %dec394 = add nsw i32 %244, -1
  store i32 %dec394, i32* %inmath, align 4
  %tobool395 = icmp ne i32 %dec394, 0
  br i1 %tobool395, label %if.else397, label %if.then396

if.then396:                                       ; preds = %land.lhs.true393
  br label %for.end406

if.else397:                                       ; preds = %land.lhs.true393, %if.else389
  %245 = load i8, i8* %uc, align 1
  %conv398 = sext i8 %245 to i32
  %cmp399 = icmp eq i32 %conv398, -119
  br i1 %cmp399, label %if.then401, label %if.end403

if.then401:                                       ; preds = %if.else397
  %246 = load i32, i32* %inmath, align 4
  %inc402 = add nsw i32 %246, 1
  store i32 %inc402, i32* %inmath, align 4
  br label %if.end403

if.end403:                                        ; preds = %if.then401, %if.else397
  br label %if.end404

if.end404:                                        ; preds = %if.end403
  br label %if.end405

if.end405:                                        ; preds = %if.end404
  br label %for.cond382

for.end406:                                       ; preds = %if.then396, %if.then388
  br label %if.end410

if.else407:                                       ; preds = %if.end375
  %247 = load i8*, i8** %u, align 4
  %incdec.ptr408 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %incdec.ptr408, i8** %u, align 4
  %248 = load i8, i8* %247, align 1
  %249 = load i8*, i8** %v, align 4
  %incdec.ptr409 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr409, i8** %v, align 4
  store i8 %248, i8* %249, align 1
  br label %if.end410

if.end410:                                        ; preds = %if.else407, %for.end406
  br label %while.cond74

if.end411:                                        ; preds = %lor.lhs.false368
  %250 = load i8*, i8** %u, align 4
  %251 = load i8*, i8** %u, align 4
  %call412 = call i32 @mb_metacharlenconv(i8* %251, i32* %cc)
  %add.ptr413 = getelementptr inbounds i8, i8* %250, i32 %call412
  store i8* %add.ptr413, i8** %uend, align 4
  %252 = load i32, i32* %cc, align 4
  %cmp414 = icmp ne i32 %252, -1
  br i1 %cmp414, label %land.lhs.true416, label %if.else438

land.lhs.true416:                                 ; preds = %if.end411
  %253 = load i32, i32* %cc, align 4
  %call417 = call i32 @iswprint(i32 %253)
  %tobool418 = icmp ne i32 %call417, 0
  br i1 %tobool418, label %if.then419, label %if.else438

if.then419:                                       ; preds = %land.lhs.true416
  %254 = load i32, i32* %dobackslash, align 4
  %tobool420 = icmp ne i32 %254, 0
  br i1 %tobool420, label %if.then421, label %if.end423

if.then421:                                       ; preds = %if.then419
  %255 = load i8*, i8** %v, align 4
  %incdec.ptr422 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr422, i8** %v, align 4
  store i8 92, i8* %255, align 1
  br label %if.end423

if.end423:                                        ; preds = %if.then421, %if.then419
  br label %while.cond424

while.cond424:                                    ; preds = %if.end434, %if.end423
  %256 = load i8*, i8** %u, align 4
  %257 = load i8*, i8** %uend, align 4
  %cmp425 = icmp ult i8* %256, %257
  br i1 %cmp425, label %while.body427, label %while.end437

while.body427:                                    ; preds = %while.cond424
  %258 = load i8*, i8** %u, align 4
  %259 = load i8, i8* %258, align 1
  %conv428 = sext i8 %259 to i32
  %cmp429 = icmp eq i32 %conv428, -125
  br i1 %cmp429, label %if.then431, label %if.end434

if.then431:                                       ; preds = %while.body427
  %260 = load i8*, i8** %u, align 4
  %incdec.ptr432 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %incdec.ptr432, i8** %u, align 4
  %261 = load i8, i8* %260, align 1
  %262 = load i8*, i8** %v, align 4
  %incdec.ptr433 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %incdec.ptr433, i8** %v, align 4
  store i8 %261, i8* %262, align 1
  br label %if.end434

if.end434:                                        ; preds = %if.then431, %while.body427
  %263 = load i8*, i8** %u, align 4
  %incdec.ptr435 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr435, i8** %u, align 4
  %264 = load i8, i8* %263, align 1
  %265 = load i8*, i8** %v, align 4
  %incdec.ptr436 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %incdec.ptr436, i8** %v, align 4
  store i8 %264, i8* %265, align 1
  br label %while.cond424

while.end437:                                     ; preds = %while.cond424
  br label %if.end443

if.else438:                                       ; preds = %land.lhs.true416, %if.end411
  %266 = load i8*, i8** %v, align 4
  %incdec.ptr439 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr439, i8** %v, align 4
  store i8 36, i8* %266, align 1
  %267 = load i8*, i8** %v, align 4
  %incdec.ptr440 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr440, i8** %v, align 4
  store i8 39, i8* %267, align 1
  %268 = load i8*, i8** %v, align 4
  %269 = load i8*, i8** %u, align 4
  %270 = load i8*, i8** %uend, align 4
  %call441 = call i8* @addunprintable(i8* %268, i8* %269, i8* %270)
  store i8* %call441, i8** %v, align 4
  %271 = load i8*, i8** %v, align 4
  %incdec.ptr442 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr442, i8** %v, align 4
  store i8 39, i8* %271, align 1
  %272 = load i8*, i8** %uend, align 4
  store i8* %272, i8** %u, align 4
  br label %if.end443

if.end443:                                        ; preds = %if.else438, %while.end437
  br label %while.cond74

while.end444:                                     ; preds = %while.cond74
  br label %if.end445

if.end445:                                        ; preds = %while.end444, %while.end64
  br label %if.end446

if.end446:                                        ; preds = %if.end445, %while.end46
  %273 = load i32, i32* %quotesub, align 4
  %cmp447 = icmp eq i32 %273, 2
  br i1 %cmp447, label %if.then449, label %if.end451

if.then449:                                       ; preds = %if.end446
  %274 = load i8*, i8** %v, align 4
  %incdec.ptr450 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %incdec.ptr450, i8** %v, align 4
  store i8 39, i8* %274, align 1
  br label %if.end451

if.end451:                                        ; preds = %if.then449, %if.end446
  %275 = load i8*, i8** %v, align 4
  store i8 0, i8* %275, align 1
  %276 = load i8*, i8** %buf, align 4
  %call452 = call i8* @dupstring(i8* %276)
  store i8* %call452, i8** %v, align 4
  %277 = load i8*, i8** %buf, align 4
  %278 = load i32, i32* %alloclen, align 4
  call void @zfree(i8* %277, i32 %278)
  %279 = load i8*, i8** %v, align 4
  ret i8* %279
}

declare i8* @zhtricat(i8*, i8*, i8*) #2

; Function Attrs: noinline nounwind
define i8* @get_username() #0 {
entry:
  %pswd = alloca %struct.passwd*, align 4
  %current_uid = alloca i32, align 4
  %call = call i32 @getuid()
  store i32 %call, i32* %current_uid, align 4
  %0 = load i32, i32* %current_uid, align 4
  %1 = load i32, i32* @cached_uid, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %current_uid, align 4
  store i32 %2, i32* @cached_uid, align 4
  %3 = load i8*, i8** @cached_username, align 4
  call void @zsfree(i8* %3)
  %4 = load i32, i32* %current_uid, align 4
  %call1 = call %struct.passwd* @getpwuid(i32 %4)
  store %struct.passwd* %call1, %struct.passwd** %pswd, align 4
  %tobool = icmp ne %struct.passwd* %call1, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 0
  %6 = load i8*, i8** %pw_name, align 4
  %call3 = call i8* @ztrdup(i8* %6)
  store i8* %call3, i8** @cached_username, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %call4 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call4, i8** @cached_username, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load i8*, i8** @cached_username, align 4
  ret i8* %7
}

declare i32 @getuid() #2

declare %struct.passwd* @getpwuid(i32) #2

declare i8* @zalloc(i32) #2

declare void @free(i8*) #2

; Function Attrs: noinline nounwind
define internal void @finddir_scan(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.nameddir*
  store %struct.nameddir* %1, %struct.nameddir** %nd, align 4
  %2 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %diff = getelementptr inbounds %struct.nameddir, %struct.nameddir* %2, i32 0, i32 2
  %3 = load i32, i32* %diff, align 4
  %4 = load i32, i32* @finddir_best, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %5, i32 0, i32 1
  %6 = load i8*, i8** %dir, align 4
  %7 = load i8*, i8** @finddir_full, align 4
  %call = call i32 @dircmp(i8* %6, i8* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %8 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %8, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %9 = load i32, i32* %flags2, align 4
  %and = and i32 %9, 4
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true1
  %10 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  store %struct.nameddir* %10, %struct.nameddir** @finddir_last, align 4
  %11 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %diff4 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %11, i32 0, i32 2
  %12 = load i32, i32* %diff4, align 4
  store i32 %12, i32* @finddir_best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

declare i32 @scanhashtable(%struct.hashtable*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32) #2

; Function Attrs: noinline nounwind
define i8** @subst_string_by_hook(i8* %name, i8* %arg1, i8* %orig) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %arg1.addr = alloca i8*, align 4
  %orig.addr = alloca i8*, align 4
  %func = alloca %struct.shfunc*, align 4
  %ret = alloca i8**, align 4
  %arrptr = alloca i8**, align 4
  %namlen = alloca i32, align 4
  %arrnam = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %arg1, i8** %arg1.addr, align 4
  store i8* %orig, i8** %orig.addr, align 4
  store i8** null, i8*** %ret, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call %struct.shfunc* @getshfunc(i8* %0)
  store %struct.shfunc* %call, %struct.shfunc** %func, align 4
  %tobool = icmp ne %struct.shfunc* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.shfunc*, %struct.shfunc** %func, align 4
  %2 = load i8*, i8** %arg1.addr, align 4
  %3 = load i8*, i8** %orig.addr, align 4
  %call1 = call i8** @subst_string_by_func(%struct.shfunc* %1, i8* %2, i8* %3)
  store i8** %call1, i8*** %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8**, i8*** %ret, align 4
  %tobool2 = icmp ne i8** %4, null
  br i1 %tobool2, label %if.end20, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %name.addr, align 4
  %call4 = call i32 @strlen(i8* %5)
  store i32 %call4, i32* %namlen, align 4
  %6 = load i32, i32* %namlen, align 4
  %add = add nsw i32 %6, 11
  %mul = mul i32 1, %add
  %call5 = call i8* @zhalloc(i32 %mul)
  store i8* %call5, i8** %arrnam, align 4
  %7 = load i8*, i8** %arrnam, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %9 = load i32, i32* %namlen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 %9, i32 1, i1 false)
  %10 = load i8*, i8** %arrnam, align 4
  %11 = load i32, i32* %namlen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %10, i32 %11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 11, i32 1, i1 false)
  %12 = load i8*, i8** %arrnam, align 4
  %call6 = call i8** @getaparam(i8* %12)
  store i8** %call6, i8*** %arrptr, align 4
  %tobool7 = icmp ne i8** %call6, null
  br i1 %tobool7, label %if.then8, label %if.end19

if.then8:                                         ; preds = %if.then3
  %13 = load i8**, i8*** %arrptr, align 4
  %call9 = call i8** @arrdup(i8** %13)
  store i8** %call9, i8*** %arrptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then8
  %14 = load i8**, i8*** %arrptr, align 4
  %15 = load i8*, i8** %14, align 4
  %tobool10 = icmp ne i8* %15, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8**, i8*** %arrptr, align 4
  %17 = load i8*, i8** %16, align 4
  %call11 = call %struct.shfunc* @getshfunc(i8* %17)
  store %struct.shfunc* %call11, %struct.shfunc** %func, align 4
  %tobool12 = icmp ne %struct.shfunc* %call11, null
  br i1 %tobool12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %for.body
  %18 = load %struct.shfunc*, %struct.shfunc** %func, align 4
  %19 = load i8*, i8** %arg1.addr, align 4
  %20 = load i8*, i8** %orig.addr, align 4
  %call14 = call i8** @subst_string_by_func(%struct.shfunc* %18, i8* %19, i8* %20)
  store i8** %call14, i8*** %ret, align 4
  %21 = load i8**, i8*** %ret, align 4
  %tobool15 = icmp ne i8** %21, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  br label %for.end

if.end17:                                         ; preds = %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %22 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr, i8*** %arrptr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then16, %for.cond
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.then3
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %23 = load i8**, i8*** %ret, align 4
  ret i8** %23
}

; Function Attrs: noinline nounwind
define signext i8 @arrlen_ge(i8** %s, i32 %lower_bound) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i8**, align 4
  %lower_bound.addr = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 %lower_bound, i32* %lower_bound.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %lower_bound.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %lower_bound.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8**, i8*** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %s.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %3 = load i8, i8* %retval, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind
define i32 @zstrtol(i8* %s, i8** %t, i32 %base) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8**, align 4
  %base.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8** %t, i8*** %t.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8**, i8*** %t.addr, align 4
  %2 = load i32, i32* %base.addr, align 4
  %call = call i32 @zstrtol_underscore(i8* %0, i8** %1, i32 %2, i32 0)
  ret i32 %call
}

declare i8* @hcalloc(i32) #2

declare i8* @dupstrpfx(i8*, i32) #2

; Function Attrs: noinline nounwind
define void @adduserdir(i8* %s, i8* %t, i32 %flags, i32 %always) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %always.addr = alloca i32, align 4
  %nd = alloca %struct.nameddir*, align 4
  %eptr = alloca i8*, align 4
  %hn = alloca %struct.hashnode*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %always, i32* %always.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 10
  %3 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %5 = load i8*, i8** %s.addr, align 4
  %call = call %struct.hashnode* %3(%struct.hashtable* %4, i8* %5)
  %tobool2 = icmp ne %struct.hashnode* %call, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %6 = load i32, i32* %always.addr, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.end13, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end4
  %7 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 11), align 1
  %tobool7 = icmp ne i8 %7, 0
  br i1 %tobool7, label %if.end13, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %8 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %getnode29 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 10
  %9 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode29, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %11 = load i8*, i8** %s.addr, align 4
  %call10 = call %struct.hashnode* %9(%struct.hashtable* %10, i8* %11)
  %tobool11 = icmp ne %struct.hashnode* %call10, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true8
  br label %return

if.end13:                                         ; preds = %land.lhs.true8, %land.lhs.true6, %if.end4
  %12 = load i8*, i8** %t.addr, align 4
  %tobool14 = icmp ne i8* %12, null
  br i1 %tobool14, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.end13
  %13 = load i8*, i8** %t.addr, align 4
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %15 = load i8*, i8** %t.addr, align 4
  %call17 = call i32 @strlen(i8* %15)
  %cmp18 = icmp uge i32 %call17, 4096
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %lor.lhs.false16, %lor.lhs.false, %if.end13
  %16 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 11
  %17 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %18 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %19 = load i8*, i8** %s.addr, align 4
  %call21 = call %struct.hashnode* %17(%struct.hashtable* %18, i8* %19)
  store %struct.hashnode* %call21, %struct.hashnode** %hn, align 4
  %20 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool22 = icmp ne %struct.hashnode* %20, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  %21 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 14
  %22 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %23 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  call void %22(%struct.hashnode* %23)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20
  br label %return

if.end25:                                         ; preds = %lor.lhs.false16
  %call26 = call i8* @zshcalloc(i32 20)
  %24 = bitcast i8* %call26 to %struct.nameddir*
  store %struct.nameddir* %24, %struct.nameddir** %nd, align 4
  %25 = load i32, i32* %flags.addr, align 4
  %26 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %26, i32 0, i32 0
  %flags27 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 %25, i32* %flags27, align 4
  %27 = load i8*, i8** %t.addr, align 4
  %28 = load i8*, i8** %t.addr, align 4
  %call28 = call i32 @strlen(i8* %28)
  %add.ptr = getelementptr inbounds i8, i8* %27, i32 %call28
  store i8* %add.ptr, i8** %eptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end25
  %29 = load i8*, i8** %eptr, align 4
  %30 = load i8*, i8** %t.addr, align 4
  %cmp29 = icmp ugt i8* %29, %30
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %31 = load i8*, i8** %eptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %31, i32 -1
  %32 = load i8, i8* %arrayidx, align 1
  %conv31 = sext i8 %32 to i32
  %cmp32 = icmp eq i32 %conv31, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp32, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i8*, i8** %eptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr, i8** %eptr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %35 = load i8*, i8** %eptr, align 4
  %36 = load i8*, i8** %t.addr, align 4
  %cmp34 = icmp eq i8* %35, %36
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %while.end
  %37 = load i8*, i8** %t.addr, align 4
  %call37 = call i8* @metafy(i8* %37, i32 -1, i32 3)
  %38 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %38, i32 0, i32 1
  store i8* %call37, i8** %dir, align 4
  br label %if.end40

if.else:                                          ; preds = %while.end
  %39 = load i8*, i8** %t.addr, align 4
  %40 = load i8*, i8** %eptr, align 4
  %41 = load i8*, i8** %t.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call38 = call i8* @metafy(i8* %39, i32 %sub.ptr.sub, i32 3)
  %42 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir39 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %42, i32 0, i32 1
  store i8* %call38, i8** %dir39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then36
  %43 = load i8*, i8** %s.addr, align 4
  %call41 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %lor.lhs.false43, label %if.then46

lor.lhs.false43:                                  ; preds = %if.end40
  %44 = load i8*, i8** %s.addr, align 4
  %call44 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end49, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false43, %if.end40
  %45 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node47 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %45, i32 0, i32 0
  %flags48 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node47, i32 0, i32 2
  %46 = load i32, i32* %flags48, align 4
  %or = or i32 %46, 4
  store i32 %or, i32* %flags48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %lor.lhs.false43
  %47 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %47, i32 0, i32 8
  %48 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %49 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %50 = load i8*, i8** %s.addr, align 4
  %call50 = call i8* @metafy(i8* %50, i32 -1, i32 3)
  %51 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %52 = bitcast %struct.nameddir* %51 to i8*
  call void %48(%struct.hashtable* %49, i8* %call50, i8* %52)
  br label %return

return:                                           ; preds = %if.end49, %if.end24, %if.then12, %if.then3, %if.then
  ret void
}

declare i8* @zshcalloc(i32) #2

; Function Attrs: noinline nounwind
define i8* @metafy(i8* %buf, i32 %len, i32 %heap) #0 {
entry:
  %buf.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %heap.addr = alloca i32, align 4
  %meta = alloca i32, align 4
  %t = alloca i8*, align 4
  %p = alloca i8*, align 4
  %e = alloca i8*, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  store i32 0, i32* %meta, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 4
  store i8* %1, i8** %e, align 4
  store i32 0, i32* %len.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i8*, i8** %e, align 4
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %e, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %e, align 4
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %6 to i32
  %and = and i32 %conv, 4096
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %7 = load i32, i32* %meta, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %meta, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %len.addr, align 4
  %inc3 = add nsw i32 %8, 1
  store i32 %inc3, i32* %len.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %buf.addr, align 4
  store i8* %9, i8** %e, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %if.end16, %if.else
  %10 = load i8*, i8** %e, align 4
  %11 = load i8*, i8** %buf.addr, align 4
  %12 = load i32, i32* %len.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 %12
  %cmp5 = icmp ult i8* %10, %add.ptr
  br i1 %cmp5, label %for.body7, label %for.end17

for.body7:                                        ; preds = %for.cond4
  %13 = load i8*, i8** %e, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr8, i8** %e, align 4
  %14 = load i8, i8* %13, align 1
  %idxprom9 = zext i8 %14 to i32
  %arrayidx10 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom9
  %15 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %15 to i32
  %and12 = and i32 %conv11, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.body7
  %16 = load i32, i32* %meta, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %meta, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.body7
  br label %for.cond4

for.end17:                                        ; preds = %for.cond4
  br label %if.end18

if.end18:                                         ; preds = %for.end17, %for.end
  %17 = load i32, i32* %meta, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %18 = load i32, i32* %heap.addr, align 4
  %cmp20 = icmp eq i32 %18, 3
  br i1 %cmp20, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %19 = load i32, i32* %heap.addr, align 4
  %cmp23 = icmp eq i32 %19, 6
  br i1 %cmp23, label %if.then25, label %if.end56

if.then25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %if.end18
  %20 = load i32, i32* %heap.addr, align 4
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb27
    i32 4, label %sw.bb31
    i32 3, label %sw.bb31
    i32 1, label %sw.bb35
    i32 6, label %sw.bb35
    i32 2, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.then25
  %21 = load i8*, i8** %buf.addr, align 4
  %22 = load i32, i32* %len.addr, align 4
  %23 = load i32, i32* %meta, align 4
  %add = add nsw i32 %22, %23
  %add26 = add nsw i32 %add, 1
  %call = call i8* @zrealloc(i8* %21, i32 %add26)
  store i8* %call, i8** %buf.addr, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then25
  %24 = load i8*, i8** %buf.addr, align 4
  %25 = load i32, i32* %len.addr, align 4
  %26 = load i32, i32* %len.addr, align 4
  %27 = load i32, i32* %meta, align 4
  %add28 = add nsw i32 %26, %27
  %add29 = add nsw i32 %add28, 1
  %call30 = call i8* @hrealloc(i8* %24, i32 %25, i32 %add29)
  store i8* %call30, i8** %buf.addr, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then25, %if.then25
  %28 = load i32, i32* %len.addr, align 4
  %29 = load i32, i32* %meta, align 4
  %add32 = add nsw i32 %28, %29
  %add33 = add nsw i32 %add32, 1
  %call34 = call i8* @zalloc(i32 %add33)
  %30 = load i8*, i8** %buf.addr, align 4
  %31 = load i32, i32* %len.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call34, i8* %30, i32 %31, i32 1, i1 false)
  store i8* %call34, i8** %buf.addr, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then25, %if.then25
  %32 = load i32, i32* %len.addr, align 4
  %33 = load i32, i32* %meta, align 4
  %add36 = add nsw i32 %32, %33
  %add37 = add nsw i32 %add36, 1
  %call38 = call i8* @zhalloc(i32 %add37)
  %34 = load i8*, i8** %buf.addr, align 4
  %35 = load i32, i32* %len.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call38, i8* %34, i32 %35, i32 1, i1 false)
  store i8* %call38, i8** %buf.addr, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then25
  %36 = load i8*, i8** %buf.addr, align 4
  %37 = load i32, i32* %len.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @metafy.mbuf, i32 0, i32 0), i8* %36, i32 %37, i32 1, i1 false)
  store i8* getelementptr inbounds ([8193 x i8], [8193 x i8]* @metafy.mbuf, i32 0, i32 0), i8** %buf.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then25, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb
  %38 = load i8*, i8** %buf.addr, align 4
  %39 = load i32, i32* %len.addr, align 4
  %add.ptr40 = getelementptr inbounds i8, i8* %38, i32 %39
  store i8* %add.ptr40, i8** %p, align 4
  %40 = load i8*, i8** %buf.addr, align 4
  %41 = load i32, i32* %len.addr, align 4
  %add.ptr41 = getelementptr inbounds i8, i8* %40, i32 %41
  %42 = load i32, i32* %meta, align 4
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr41, i32 %42
  store i8* %add.ptr42, i8** %t, align 4
  store i8* %add.ptr42, i8** %e, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %sw.epilog
  %43 = load i32, i32* %meta, align 4
  %tobool43 = icmp ne i32 %43, 0
  br i1 %tobool43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i8*, i8** %p, align 4
  %incdec.ptr44 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr44, i8** %p, align 4
  %45 = load i8, i8* %incdec.ptr44, align 1
  %46 = load i8*, i8** %t, align 4
  %incdec.ptr45 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr45, i8** %t, align 4
  store i8 %45, i8* %incdec.ptr45, align 1
  %idxprom46 = zext i8 %45 to i32
  %arrayidx47 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom46
  %47 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %47 to i32
  %and49 = and i32 %conv48, 4096
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end55

if.then51:                                        ; preds = %while.body
  %48 = load i8*, i8** %t, align 4
  %incdec.ptr52 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr52, i8** %t, align 4
  %49 = load i8, i8* %48, align 1
  %conv53 = sext i8 %49 to i32
  %xor = xor i32 %conv53, 32
  %conv54 = trunc i32 %xor to i8
  store i8 %conv54, i8* %48, align 1
  %50 = load i8*, i8** %t, align 4
  store i8 -125, i8* %50, align 1
  %51 = load i32, i32* %meta, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %meta, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end56

if.end56:                                         ; preds = %while.end, %lor.lhs.false22
  %52 = load i8*, i8** %e, align 4
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %buf.addr, align 4
  ret i8* %53
}

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind
define i8* @getnameddir(i8* %name) #0 {
entry:
  %retval = alloca i8*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %str = alloca i8*, align 4
  %nd = alloca %struct.nameddir*, align 4
  %pw = alloca %struct.passwd*, align 4
  %dir18 = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %3 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %3)
  %4 = bitcast %struct.hashnode* %call to %struct.nameddir*
  store %struct.nameddir* %4, %struct.nameddir** %nd, align 4
  %tobool = icmp ne %struct.nameddir* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %5, i32 0, i32 1
  %6 = load i8*, i8** %dir, align 4
  %call1 = call i8* @dupstring(i8* %6)
  store i8* %call1, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 9
  %8 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %10 = load i8*, i8** %name.addr, align 4
  %call3 = call %struct.hashnode* %8(%struct.hashtable* %9, i8* %10)
  %11 = bitcast %struct.hashnode* %call3 to %struct.param*
  store %struct.param* %11, %struct.param** %pm, align 4
  %tobool4 = icmp ne %struct.param* %11, null
  br i1 %tobool4, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags, align 8
  %and = and i32 %13, 31
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true5, label %if.end14

land.lhs.true5:                                   ; preds = %land.lhs.true
  %14 = load i8*, i8** %name.addr, align 4
  %call6 = call i8* @getsparam(i8* %14)
  store i8* %call6, i8** %str, align 4
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %land.lhs.true8, label %if.end14

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %15 = load i8*, i8** %str, align 4
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp9 = icmp eq i32 %conv, 47
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %land.lhs.true8
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %18 = load i32, i32* %flags13, align 8
  %or = or i32 %18, 1073741824
  store i32 %or, i32* %flags13, align 8
  %19 = load i8*, i8** %name.addr, align 4
  %20 = load i8*, i8** %str, align 4
  call void @adduserdir(i8* %19, i8* %20, i32 0, i32 1)
  %21 = load i8*, i8** %str, align 4
  store i8* %21, i8** %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true8, %land.lhs.true5, %land.lhs.true, %if.end
  %22 = load i8*, i8** %name.addr, align 4
  %call15 = call %struct.passwd* @getpwnam(i8* %22)
  store %struct.passwd* %call15, %struct.passwd** %pw, align 4
  %tobool16 = icmp ne %struct.passwd* %call15, null
  br i1 %tobool16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end14
  %23 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 31), align 1
  %conv19 = sext i8 %23 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then17
  %24 = load %struct.passwd*, %struct.passwd** %pw, align 4
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 5
  %25 = load i8*, i8** %pw_dir, align 4
  %call21 = call i8* @xsymlink(i8* %25, i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.then17
  %26 = load %struct.passwd*, %struct.passwd** %pw, align 4
  %pw_dir22 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 5
  %27 = load i8*, i8** %pw_dir22, align 4
  %call23 = call i8* @ztrdup(i8* %27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call21, %cond.true ], [ %call23, %cond.false ]
  store i8* %cond, i8** %dir18, align 4
  %28 = load i8*, i8** %dir18, align 4
  %tobool24 = icmp ne i8* %28, null
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %cond.end
  %29 = load i8*, i8** %name.addr, align 4
  %30 = load i8*, i8** %dir18, align 4
  call void @adduserdir(i8* %29, i8* %30, i32 2, i32 1)
  %31 = load i8*, i8** %dir18, align 4
  %call26 = call i8* @dupstring(i8* %31)
  store i8* %call26, i8** %str, align 4
  %32 = load i8*, i8** %dir18, align 4
  call void @zsfree(i8* %32)
  %33 = load i8*, i8** %str, align 4
  store i8* %33, i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %cond.end
  %34 = load %struct.passwd*, %struct.passwd** %pw, align 4
  %pw_dir27 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 5
  %35 = load i8*, i8** %pw_dir27, align 4
  %call28 = call i8* @dupstring(i8* %35)
  store i8* %call28, i8** %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end14
  store i8* null, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.else, %if.then25, %if.then11, %if.then
  %36 = load i8*, i8** %retval, align 4
  ret i8* %36
}

declare i8* @getsparam(i8*) #2

declare %struct.passwd* @getpwnam(i8*) #2

; Function Attrs: noinline nounwind
define void @addprepromptfn(void ()* %func) #0 {
entry:
  %func.addr = alloca void ()*, align 4
  %ppdat = alloca %struct.prepromptfn*, align 4
  store void ()* %func, void ()** %func.addr, align 4
  %call = call i8* @zalloc(i32 4)
  %0 = bitcast i8* %call to %struct.prepromptfn*
  store %struct.prepromptfn* %0, %struct.prepromptfn** %ppdat, align 4
  %1 = load void ()*, void ()** %func.addr, align 4
  %2 = load %struct.prepromptfn*, %struct.prepromptfn** %ppdat, align 4
  %func1 = getelementptr inbounds %struct.prepromptfn, %struct.prepromptfn* %2, i32 0, i32 0
  store void ()* %1, void ()** %func1, align 4
  %3 = load %union.linkroot*, %union.linkroot** @prepromptfns, align 4
  %tobool = icmp ne %union.linkroot* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call2, %union.linkroot** @prepromptfns, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %union.linkroot*, %union.linkroot** @prepromptfns, align 4
  %5 = load %union.linkroot*, %union.linkroot** @prepromptfns, align 4
  %list = bitcast %union.linkroot* %5 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %6 = load %struct.linknode*, %struct.linknode** %last, align 4
  %7 = load %struct.prepromptfn*, %struct.prepromptfn** %ppdat, align 4
  %8 = bitcast %struct.prepromptfn* %7 to i8*
  %call3 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %4, %struct.linknode* %6, i8* %8)
  ret void
}

declare %union.linkroot* @znewlinklist() #2

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #2

; Function Attrs: noinline nounwind
define void @delprepromptfn(void ()* %func) #0 {
entry:
  %func.addr = alloca void ()*, align 4
  %ln = alloca %struct.linknode*, align 4
  %ppdat = alloca %struct.prepromptfn*, align 4
  store void ()* %func, void ()** %func.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @prepromptfns, align 4
  %list = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %ln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 2
  %4 = load i8*, i8** %dat, align 4
  %5 = bitcast i8* %4 to %struct.prepromptfn*
  store %struct.prepromptfn* %5, %struct.prepromptfn** %ppdat, align 4
  %6 = load %struct.prepromptfn*, %struct.prepromptfn** %ppdat, align 4
  %func1 = getelementptr inbounds %struct.prepromptfn, %struct.prepromptfn* %6, i32 0, i32 0
  %7 = load void ()*, void ()** %func1, align 4
  %8 = load void ()*, void ()** %func.addr, align 4
  %cmp = icmp eq void ()* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %union.linkroot*, %union.linkroot** @prepromptfns, align 4
  %10 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %call = call i8* @remnode(%union.linkroot* %9, %struct.linknode* %10)
  %11 = load %struct.prepromptfn*, %struct.prepromptfn** %ppdat, align 4
  %12 = bitcast %struct.prepromptfn* %11 to i8*
  call void @zfree(i8* %12, i32 4)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %13, i32 0, i32 0
  %14 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %14, %struct.linknode** %ln, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i8* @remnode(%union.linkroot*, %struct.linknode*) #2

declare void @zfree(i8*, i32) #2

; Function Attrs: noinline nounwind
define void @addtimedfn(void ()* %func, i32 %when) #0 {
entry:
  %func.addr = alloca void ()*, align 4
  %when.addr = alloca i32, align 4
  %tfdat = alloca %struct.timedfn*, align 4
  %ln = alloca %struct.linknode*, align 4
  %tfdat2 = alloca %struct.timedfn*, align 4
  %next = alloca %struct.linknode*, align 4
  store void ()* %func, void ()** %func.addr, align 4
  store i32 %when, i32* %when.addr, align 4
  %call = call i8* @zalloc(i32 8)
  %0 = bitcast i8* %call to %struct.timedfn*
  store %struct.timedfn* %0, %struct.timedfn** %tfdat, align 4
  %1 = load void ()*, void ()** %func.addr, align 4
  %2 = load %struct.timedfn*, %struct.timedfn** %tfdat, align 4
  %func1 = getelementptr inbounds %struct.timedfn, %struct.timedfn* %2, i32 0, i32 0
  store void ()* %1, void ()** %func1, align 4
  %3 = load i32, i32* %when.addr, align 4
  %4 = load %struct.timedfn*, %struct.timedfn** %tfdat, align 4
  %when2 = getelementptr inbounds %struct.timedfn, %struct.timedfn* %4, i32 0, i32 1
  store i32 %3, i32* %when2, align 4
  %5 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %tobool = icmp ne %union.linkroot* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call3, %union.linkroot** @timedfns, align 4
  %6 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %7 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %list = bitcast %union.linkroot* %7 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %8 = load %struct.linknode*, %struct.linknode** %last, align 4
  %9 = load %struct.timedfn*, %struct.timedfn** %tfdat, align 4
  %10 = bitcast %struct.timedfn* %9 to i8*
  %call4 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %6, %struct.linknode* %8, i8* %10)
  br label %if.end22

if.else:                                          ; preds = %entry
  %11 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %list5 = bitcast %union.linkroot* %11 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list5, i32 0, i32 0
  %12 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %12, %struct.linknode** %ln, align 4
  %13 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %tobool6 = icmp ne %struct.linknode* %13, null
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.else
  %14 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %15 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %list8 = bitcast %union.linkroot* %15 to %struct.linklist*
  %last9 = getelementptr inbounds %struct.linklist, %struct.linklist* %list8, i32 0, i32 1
  %16 = load %struct.linknode*, %struct.linknode** %last9, align 4
  %17 = load %struct.timedfn*, %struct.timedfn** %tfdat, align 4
  %18 = bitcast %struct.timedfn* %17 to i8*
  %call10 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %14, %struct.linknode* %16, i8* %18)
  br label %if.end22

if.end:                                           ; preds = %if.else
  br label %for.cond

for.cond:                                         ; preds = %if.end21, %if.end
  %19 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %next11 = getelementptr inbounds %struct.linknode, %struct.linknode* %19, i32 0, i32 0
  %20 = load %struct.linknode*, %struct.linknode** %next11, align 4
  store %struct.linknode* %20, %struct.linknode** %next, align 4
  %21 = load %struct.linknode*, %struct.linknode** %next, align 4
  %tobool12 = icmp ne %struct.linknode* %21, null
  br i1 %tobool12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %for.cond
  %22 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %23 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %list14 = bitcast %union.linkroot* %23 to %struct.linklist*
  %last15 = getelementptr inbounds %struct.linklist, %struct.linklist* %list14, i32 0, i32 1
  %24 = load %struct.linknode*, %struct.linknode** %last15, align 4
  %25 = load %struct.timedfn*, %struct.timedfn** %tfdat, align 4
  %26 = bitcast %struct.timedfn* %25 to i8*
  %call16 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %22, %struct.linknode* %24, i8* %26)
  br label %if.end22

if.end17:                                         ; preds = %for.cond
  %27 = load %struct.linknode*, %struct.linknode** %next, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %27, i32 0, i32 2
  %28 = load i8*, i8** %dat, align 4
  %29 = bitcast i8* %28 to %struct.timedfn*
  store %struct.timedfn* %29, %struct.timedfn** %tfdat2, align 4
  %30 = load i32, i32* %when.addr, align 4
  %31 = load %struct.timedfn*, %struct.timedfn** %tfdat2, align 4
  %when18 = getelementptr inbounds %struct.timedfn, %struct.timedfn* %31, i32 0, i32 1
  %32 = load i32, i32* %when18, align 4
  %cmp = icmp slt i32 %30, %32
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %33 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %34 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %35 = load %struct.timedfn*, %struct.timedfn** %tfdat, align 4
  %36 = bitcast %struct.timedfn* %35 to i8*
  %call20 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %33, %struct.linknode* %34, i8* %36)
  br label %if.end22

if.end21:                                         ; preds = %if.end17
  %37 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %37, %struct.linknode** %ln, align 4
  br label %for.cond

if.end22:                                         ; preds = %if.then7, %if.then13, %if.then19, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @deltimedfn(void ()* %func) #0 {
entry:
  %func.addr = alloca void ()*, align 4
  %ln = alloca %struct.linknode*, align 4
  %ppdat = alloca %struct.timedfn*, align 4
  store void ()* %func, void ()** %func.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %list = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %ln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 2
  %4 = load i8*, i8** %dat, align 4
  %5 = bitcast i8* %4 to %struct.timedfn*
  store %struct.timedfn* %5, %struct.timedfn** %ppdat, align 4
  %6 = load %struct.timedfn*, %struct.timedfn** %ppdat, align 4
  %func1 = getelementptr inbounds %struct.timedfn, %struct.timedfn* %6, i32 0, i32 0
  %7 = load void ()*, void ()** %func1, align 4
  %8 = load void ()*, void ()** %func.addr, align 4
  %cmp = icmp eq void ()* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %union.linkroot*, %union.linkroot** @timedfns, align 4
  %10 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %call = call i8* @remnode(%union.linkroot* %9, %struct.linknode* %10)
  %11 = load %struct.timedfn*, %struct.timedfn** %ppdat, align 4
  %12 = bitcast %struct.timedfn* %11 to i8*
  call void @zfree(i8* %12, i32 8)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %13, i32 0, i32 0
  %14 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %14, %struct.linknode** %ln, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define i32 @callhookfunc(i8* %name, %union.linkroot* %lnklst, i32 %arrayp, i32* %retval1) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %lnklst.addr = alloca %union.linkroot*, align 4
  %arrayp.addr = alloca i32, align 4
  %retval.addr = alloca i32*, align 4
  %shfunc = alloca %struct.shfunc*, align 4
  %osc = alloca i32, align 4
  %osm = alloca i32, align 4
  %stat = alloca i32, align 4
  %ret = alloca i32, align 4
  %old_incompfunc = alloca i32, align 4
  %arrptr = alloca i8**, align 4
  %namlen = alloca i32, align 4
  %arrnam = alloca i8*, align 4
  %newret = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store %union.linkroot* %lnklst, %union.linkroot** %lnklst.addr, align 4
  store i32 %arrayp, i32* %arrayp.addr, align 4
  store i32* %retval1, i32** %retval.addr, align 4
  %0 = load i32, i32* @sfcontext, align 4
  store i32 %0, i32* %osc, align 4
  %1 = load i32, i32* @stopmsg, align 4
  store i32 %1, i32* %osm, align 4
  store i32 1, i32* %stat, align 4
  store i32 0, i32* %ret, align 4
  %2 = load i32, i32* @incompfunc, align 4
  store i32 %2, i32* %old_incompfunc, align 4
  store i32 3, i32* @sfcontext, align 4
  store i32 0, i32* @incompfunc, align 4
  %3 = load i8*, i8** %name.addr, align 4
  %call = call %struct.shfunc* @getshfunc(i8* %3)
  store %struct.shfunc* %call, %struct.shfunc** %shfunc, align 4
  %tobool = icmp ne %struct.shfunc* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.shfunc*, %struct.shfunc** %shfunc, align 4
  %5 = load %union.linkroot*, %union.linkroot** %lnklst.addr, align 4
  %call2 = call i32 @doshfunc(%struct.shfunc* %4, %union.linkroot* %5, i32 1)
  store i32 %call2, i32* %ret, align 4
  store i32 0, i32* %stat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %arrayp.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end21

if.then4:                                         ; preds = %if.end
  %7 = load i8*, i8** %name.addr, align 4
  %call5 = call i32 @strlen(i8* %7)
  store i32 %call5, i32* %namlen, align 4
  %8 = load i32, i32* %namlen, align 4
  %add = add nsw i32 %8, 11
  %mul = mul i32 1, %add
  %call6 = call i8* @zhalloc(i32 %mul)
  store i8* %call6, i8** %arrnam, align 4
  %9 = load i8*, i8** %arrnam, align 4
  %10 = load i8*, i8** %name.addr, align 4
  %11 = load i32, i32* %namlen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 %11, i32 1, i1 false)
  %12 = load i8*, i8** %arrnam, align 4
  %13 = load i32, i32* %namlen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %12, i32 %13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 11, i32 1, i1 false)
  %14 = load i8*, i8** %arrnam, align 4
  %call7 = call i8** @getaparam(i8* %14)
  store i8** %call7, i8*** %arrptr, align 4
  %tobool8 = icmp ne i8** %call7, null
  br i1 %tobool8, label %if.then9, label %if.end20

if.then9:                                         ; preds = %if.then4
  %15 = load i8**, i8*** %arrptr, align 4
  %call10 = call i8** @arrdup(i8** %15)
  store i8** %call10, i8*** %arrptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i8**, i8*** %arrptr, align 4
  %17 = load i8*, i8** %16, align 4
  %tobool11 = icmp ne i8* %17, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8**, i8*** %arrptr, align 4
  %19 = load i8*, i8** %18, align 4
  %call12 = call %struct.shfunc* @getshfunc(i8* %19)
  store %struct.shfunc* %call12, %struct.shfunc** %shfunc, align 4
  %tobool13 = icmp ne %struct.shfunc* %call12, null
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %for.body
  %20 = load %struct.shfunc*, %struct.shfunc** %shfunc, align 4
  %21 = load %union.linkroot*, %union.linkroot** %lnklst.addr, align 4
  %call15 = call i32 @doshfunc(%struct.shfunc* %20, %union.linkroot* %21, i32 1)
  store i32 %call15, i32* %newret, align 4
  %22 = load i32, i32* %ret, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then14
  %23 = load i32, i32* %newret, align 4
  store i32 %23, i32* %ret, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then14
  store i32 0, i32* %stat, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %24 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %incdec.ptr, i8*** %arrptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end20

if.end20:                                         ; preds = %for.end, %if.then4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  %25 = load i32, i32* %osc, align 4
  store i32 %25, i32* @sfcontext, align 4
  %26 = load i32, i32* %osm, align 4
  store i32 %26, i32* @stopmsg, align 4
  %27 = load i32, i32* %old_incompfunc, align 4
  store i32 %27, i32* @incompfunc, align 4
  %28 = load i32*, i32** %retval.addr, align 4
  %tobool22 = icmp ne i32* %28, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  %29 = load i32, i32* %ret, align 4
  %30 = load i32*, i32** %retval.addr, align 4
  store i32 %29, i32* %30, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %31 = load i32, i32* %stat, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind
define %struct.shfunc* @getshfunc(i8* %nam) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %3 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %3)
  %4 = bitcast %struct.hashnode* %call to %struct.shfunc*
  ret %struct.shfunc* %4
}

declare i32 @doshfunc(%struct.shfunc*, %union.linkroot*, i32) #2

declare i8** @getaparam(i8*) #2

; Function Attrs: noinline nounwind
define i8** @arrdup(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %x = alloca i8**, align 4
  %y = alloca i8**, align 4
  store i8** %s, i8*** %s.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %call = call i32 @arrlen(i8** %0)
  %add = add nsw i32 %call, 1
  %mul = mul i32 4, %add
  %call1 = call i8* @zhalloc(i32 %mul)
  %1 = bitcast i8* %call1 to i8**
  store i8** %1, i8*** %x, align 4
  store i8** %1, i8*** %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8**, i8*** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %2, i32 1
  store i8** %incdec.ptr, i8*** %s.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %call2 = call i8* @dupstring(i8* %3)
  %4 = load i8**, i8*** %x, align 4
  %incdec.ptr3 = getelementptr inbounds i8*, i8** %4, i32 1
  store i8** %incdec.ptr3, i8*** %x, align 4
  store i8* %call2, i8** %4, align 4
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8**, i8*** %y, align 4
  ret i8** %5
}

; Function Attrs: noinline nounwind
define void @preprompt() #0 {
entry:
  %currentmailcheck = alloca i32, align 4
  %ln = alloca %struct.linknode*, align 4
  %period = alloca i32, align 4
  %mailcheck = alloca i32, align 4
  %agg.tmp = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %agg.tmp2 = alloca %struct.__sigset_t, align 4
  %tmp3 = alloca %struct.__sigset_t, align 4
  %eolmark = alloca i8*, align 4
  %str = alloca i8*, align 4
  %percents = alloca i32, align 4
  %w = alloca i32, align 4
  %mailfile = alloca i8*, align 4
  %x = alloca [2 x i8*], align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp97 = alloca %struct.__sigset_t, align 4
  %tmp99 = alloca %struct.__sigset_t, align 4
  %ppnode = alloca %struct.prepromptfn*, align 4
  %call = call i32 @getiparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  store i32 %call, i32* %period, align 4
  %call1 = call i32 @getiparam(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  store i32 %call1, i32* %mailcheck, align 4
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp, i32 28)
  call void @signal_unblock(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %agg.tmp)
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp2, i32 28)
  call void @signal_block(%struct.__sigset_t* sret %tmp3, %struct.__sigset_t* byval align 4 %agg.tmp2)
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 144), align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 142), align 1
  %conv4 = sext i8 %1 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %land.lhs.true6, label %if.end25

land.lhs.true6:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* @use_exit_printed, align 4
  %tobool7 = icmp ne i32 %2, 0
  br i1 %tobool7, label %if.end25, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool9 = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool9, label %if.then, label %if.end25

if.then:                                          ; preds = %land.lhs.true8
  %call11 = call i8* @getsparam(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0))
  store i8* %call11, i8** %eolmark, align 4
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 143), align 1
  %conv14 = sext i8 %4 to i32
  store i32 %conv14, i32* %percents, align 4
  store i32 0, i32* %w, align 4
  %5 = load i8*, i8** %eolmark, align 4
  %tobool16 = icmp ne i8* %5, null
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8** %eolmark, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  store i8 1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 143), align 1
  %6 = load i8*, i8** %eolmark, align 4
  %call18 = call i8* @promptexpand(i8* %6, i32 1, i8* null, i8* null, i32* null)
  store i8* %call18, i8** %str, align 4
  %7 = load i8*, i8** %str, align 4
  call void @countprompt(i8* %7, i32* %w, i32* null, i32 -1)
  %8 = load i32, i32* %percents, align 4
  %conv19 = trunc i32 %8 to i8
  store i8 %conv19, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 143), align 1
  %9 = load i8*, i8** %str, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call20 = call i32 @zputs(i8* %9, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %12 = load i32, i32* @zterm_columns, align 4
  %13 = load i32, i32* %w, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* @hasxn, align 4
  %tobool21 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool21, true
  %lnot.ext = zext i1 %lnot to i32
  %sub22 = sub nsw i32 %sub, %lnot.ext
  %15 = load i32, i32* %w, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %sub22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call24 = call i32 @fflush(%struct._IO_FILE* %16)
  %17 = load i8*, i8** %str, align 4
  call void @free(i8* %17)
  br label %if.end25

if.end25:                                         ; preds = %if.end, %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %entry
  %18 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 122), align 1
  %tobool26 = icmp ne i8 %18, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @scanjobs()
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %19 = load i32, i32* @errflag, align 4
  %tobool29 = icmp ne i32 %19, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  br label %if.end108

if.end31:                                         ; preds = %if.end28
  %call32 = call i32 @callhookfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %union.linkroot* null, i32 1, i32* null)
  %20 = load i32, i32* @errflag, align 4
  %tobool33 = icmp ne i32 %20, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  br label %if.end108

if.end35:                                         ; preds = %if.end31
  %21 = load i32, i32* %period, align 4
  %tobool36 = icmp ne i32 %21, 0
  br i1 %tobool36, label %land.lhs.true37, label %if.end45

land.lhs.true37:                                  ; preds = %if.end35
  %call38 = call i32 @time(i32* null)
  %22 = load i32, i32* @preprompt.lastperiodic, align 4
  %23 = load i32, i32* %period, align 4
  %add = add nsw i32 %22, %23
  %cmp = icmp sgt i32 %call38, %add
  br i1 %cmp, label %land.lhs.true40, label %if.end45

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %call41 = call i32 @callhookfunc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), %union.linkroot* null, i32 1, i32* null)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %land.lhs.true40
  %call44 = call i32 @time(i32* null)
  store i32 %call44, i32* @preprompt.lastperiodic, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true40, %land.lhs.true37, %if.end35
  %24 = load i32, i32* @errflag, align 4
  %tobool46 = icmp ne i32 %24, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  br label %if.end108

if.end48:                                         ; preds = %if.end45
  %25 = load i8**, i8*** @watch, align 4
  %tobool49 = icmp ne i8** %25, null
  br i1 %tobool49, label %if.then50, label %if.end60

if.then50:                                        ; preds = %if.end48
  %call51 = call i32 @time(i32* null)
  %26 = load i32, i32* @lastwatch, align 4
  %call52 = call double @difftime(i32 %call51, i32 %26)
  %conv53 = fptosi double %call52 to i32
  %call54 = call i32 @getiparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0))
  %cmp55 = icmp sgt i32 %conv53, %call54
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then50
  call void @dowatch()
  %call58 = call i32 @time(i32* null)
  store i32 %call58, i32* @lastwatch, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then50
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end48
  %27 = load i32, i32* @errflag, align 4
  %tobool61 = icmp ne i32 %27, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end60
  br label %if.end108

if.end63:                                         ; preds = %if.end60
  %call64 = call i32 @time(i32* null)
  store i32 %call64, i32* %currentmailcheck, align 4
  %28 = load i32, i32* %mailcheck, align 4
  %tobool65 = icmp ne i32 %28, 0
  br i1 %tobool65, label %land.lhs.true66, label %if.end103

land.lhs.true66:                                  ; preds = %if.end63
  %29 = load i32, i32* %currentmailcheck, align 4
  %30 = load i32, i32* @lastmailcheck, align 4
  %call67 = call double @difftime(i32 %29, i32 %30)
  %conv68 = fptosi double %call67 to i32
  %31 = load i32, i32* %mailcheck, align 4
  %cmp69 = icmp sgt i32 %conv68, %31
  br i1 %cmp69, label %if.then71, label %if.end103

if.then71:                                        ; preds = %land.lhs.true66
  %32 = load i8**, i8*** @mailpath, align 4
  %tobool73 = icmp ne i8** %32, null
  br i1 %tobool73, label %land.lhs.true74, label %if.else

land.lhs.true74:                                  ; preds = %if.then71
  %33 = load i8**, i8*** @mailpath, align 4
  %34 = load i8*, i8** %33, align 4
  %tobool75 = icmp ne i8* %34, null
  br i1 %tobool75, label %land.lhs.true76, label %if.else

land.lhs.true76:                                  ; preds = %land.lhs.true74
  %35 = load i8**, i8*** @mailpath, align 4
  %36 = load i8*, i8** %35, align 4
  %37 = load i8, i8* %36, align 1
  %conv77 = sext i8 %37 to i32
  %tobool78 = icmp ne i32 %conv77, 0
  br i1 %tobool78, label %if.then79, label %if.else

if.then79:                                        ; preds = %land.lhs.true76
  %38 = load i8**, i8*** @mailpath, align 4
  call void @checkmailpath(i8** %38)
  br label %if.end102

if.else:                                          ; preds = %land.lhs.true76, %land.lhs.true74, %if.then71
  %39 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call80 = call i8* @getsparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  store i8* %call80, i8** %mailfile, align 4
  %tobool81 = icmp ne i8* %call80, null
  br i1 %tobool81, label %land.lhs.true82, label %if.end88

land.lhs.true82:                                  ; preds = %if.else
  %40 = load i8*, i8** %mailfile, align 4
  %41 = load i8, i8* %40, align 1
  %conv83 = sext i8 %41 to i32
  %tobool84 = icmp ne i32 %conv83, 0
  br i1 %tobool84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %land.lhs.true82
  %42 = load i8*, i8** %mailfile, align 4
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %x, i32 0, i32 0
  store i8* %42, i8** %arrayidx, align 4
  %arrayidx87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %x, i32 0, i32 1
  store i8* null, i8** %arrayidx87, align 4
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %x, i32 0, i32 0
  call void @checkmailpath(i8** %arraydecay)
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %land.lhs.true82, %if.else
  br label %do.body

do.body:                                          ; preds = %if.end88
  %43 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool89 = icmp ne i32 %dec, 0
  br i1 %tobool89, label %if.end100, label %if.then90

if.then90:                                        ; preds = %do.body
  br label %do.body91

do.body91:                                        ; preds = %if.then90
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body91
  %44 = load i32, i32* @queue_front, align 4
  %45 = load i32, i32* @queue_rear, align 4
  %cmp92 = icmp ne i32 %44, %45
  br i1 %cmp92, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i32, i32* @queue_front, align 4
  %add95 = add nsw i32 %46, 1
  %rem = srem i32 %add95, 128
  store i32 %rem, i32* @queue_front, align 4
  %47 = load i32, i32* @queue_front, align 4
  %arrayidx96 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %47
  call void @signal_setmask(%struct.__sigset_t* sret %tmp97, %struct.__sigset_t* byval align 4 %arrayidx96)
  %48 = bitcast %struct.__sigset_t* %oset to i8*
  %49 = bitcast %struct.__sigset_t* %tmp97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 128, i32 4, i1 false)
  %50 = load i32, i32* @queue_front, align 4
  %arrayidx98 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %50
  %51 = load i32, i32* %arrayidx98, align 4
  call void @zhandler(i32 %51)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp99, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end100

if.end100:                                        ; preds = %do.end, %do.body
  br label %do.end101

do.end101:                                        ; preds = %if.end100
  br label %if.end102

if.end102:                                        ; preds = %do.end101, %if.then79
  %52 = load i32, i32* %currentmailcheck, align 4
  store i32 %52, i32* @lastmailcheck, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %land.lhs.true66, %if.end63
  %53 = load %union.linkroot*, %union.linkroot** @prepromptfns, align 4
  %tobool104 = icmp ne %union.linkroot* %53, null
  br i1 %tobool104, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.end103
  %54 = load %union.linkroot*, %union.linkroot** @prepromptfns, align 4
  %list = bitcast %union.linkroot* %54 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %55 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %55, %struct.linknode** %ln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then105
  %56 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %tobool106 = icmp ne %struct.linknode* %56, null
  br i1 %tobool106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %57, i32 0, i32 2
  %58 = load i8*, i8** %dat, align 4
  %59 = bitcast i8* %58 to %struct.prepromptfn*
  store %struct.prepromptfn* %59, %struct.prepromptfn** %ppnode, align 4
  %60 = load %struct.prepromptfn*, %struct.prepromptfn** %ppnode, align 4
  %func = getelementptr inbounds %struct.prepromptfn, %struct.prepromptfn* %60, i32 0, i32 0
  %61 = load void ()*, void ()** %func, align 4
  call void %61()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %62, i32 0, i32 0
  %63 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %63, %struct.linknode** %ln, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end108

if.end108:                                        ; preds = %if.then30, %if.then34, %if.then47, %if.then62, %for.end, %if.end103
  ret void
}

declare i32 @getiparam(i8*) #2

declare void @signal_unblock(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #2

declare void @signal_mask(%struct.__sigset_t* sret, i32) #2

declare void @signal_block(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #2

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*) #2

declare void @countprompt(i8*, i32*, i32*, i32) #2

declare void @scanjobs() #2

declare i32 @time(i32*) #2

declare double @difftime(i32, i32) #2

declare void @dowatch() #2

; Function Attrs: noinline nounwind
define internal void @checkmailpath(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %st = alloca %struct.stat, align 8
  %v = alloca i8*, align 4
  %u = alloca i8*, align 4
  %c = alloca i8, align 1
  %l = alloca %union.linkroot*, align 4
  %lock = alloca %struct.__dirstream*, align 4
  %buf = alloca [8193 x i8], align 1
  %arr = alloca i8**, align 4
  %ap = alloca i8**, align 4
  %buflen = alloca i32, align 4
  %ct = alloca i32, align 4
  %fn = alloca i8*, align 4
  %usav = alloca i8*, align 4
  %uusav = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end123, %entry
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %while.body, label %while.end125

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %s.addr, align 4
  %3 = load i8*, i8** %2, align 4
  store i8* %3, i8** %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i8*, i8** %v, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i8*, i8** %v, align 4
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv2, 63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8*, i8** %v, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %v, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i8*, i8** %v, align 4
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %c, align 1
  %12 = load i8*, i8** %v, align 4
  store i8 0, i8* %12, align 1
  %13 = load i8, i8* %c, align 1
  %conv4 = sext i8 %13 to i32
  %cmp5 = icmp ne i32 %conv4, 63
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i8* null, i8** %u, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %14 = load i8*, i8** %v, align 4
  %add.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %add.ptr, i8** %u, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i8**, i8*** %s.addr, align 4
  %16 = load i8*, i8** %15, align 4
  %17 = load i8, i8* %16, align 1
  %conv7 = sext i8 %17 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end
  %18 = load i8, i8* %c, align 1
  %19 = load i8*, i8** %v, align 4
  store i8 %18, i8* %19, align 1
  %20 = load i8**, i8*** %s.addr, align 4
  %21 = load i8*, i8** %20, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i32 0, i32 0), i8* %21)
  br label %if.end123

if.else11:                                        ; preds = %if.end
  %22 = load i8**, i8*** %s.addr, align 4
  %23 = load i8*, i8** %22, align 4
  %call = call i8* @unmeta(i8* %23)
  %call12 = call i32 @stat(i8* %call, %struct.stat* %st)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.else11
  %call16 = call i32* @__errno_location()
  %24 = load i32, i32* %call16, align 4
  %cmp17 = icmp ne i32 %24, 2
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then15
  %call20 = call i32* @__errno_location()
  %25 = load i32, i32* %call20, align 4
  %26 = load i8**, i8*** %s.addr, align 4
  %27 = load i8*, i8** %26, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %25, i8* %27)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then15
  br label %if.end122

if.else22:                                        ; preds = %if.else11
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %28 = load i32, i32* %st_mode, align 8
  %and = and i32 %28, 61440
  %cmp23 = icmp eq i32 %and, 16384
  br i1 %cmp23, label %if.then25, label %if.else63

if.then25:                                        ; preds = %if.else22
  %29 = load i8**, i8*** %s.addr, align 4
  %30 = load i8*, i8** %29, align 4
  %call26 = call i8* @unmeta(i8* %30)
  %call27 = call %struct.__dirstream* @opendir(i8* %call26)
  store %struct.__dirstream* %call27, %struct.__dirstream** %lock, align 4
  store i32 1, i32* %ct, align 4
  %31 = load %struct.__dirstream*, %struct.__dirstream** %lock, align 4
  %tobool28 = icmp ne %struct.__dirstream* %31, null
  br i1 %tobool28, label %if.then29, label %if.end62

if.then29:                                        ; preds = %if.then25
  call void @pushheap()
  %call30 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call30, %union.linkroot** %l, align 4
  br label %while.cond31

while.cond31:                                     ; preds = %if.end50, %if.then49, %if.then29
  %32 = load %struct.__dirstream*, %struct.__dirstream** %lock, align 4
  %call32 = call i8* @zreaddir(%struct.__dirstream* %32, i32 1)
  store i8* %call32, i8** %fn, align 4
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %land.rhs34, label %land.end36

land.rhs34:                                       ; preds = %while.cond31
  %33 = load i32, i32* @errflag, align 4
  %tobool35 = icmp ne i32 %33, 0
  %lnot = xor i1 %tobool35, true
  br label %land.end36

land.end36:                                       ; preds = %land.rhs34, %while.cond31
  %34 = phi i1 [ false, %while.cond31 ], [ %lnot, %land.rhs34 ]
  br i1 %34, label %while.body37, label %while.end

while.body37:                                     ; preds = %land.end36
  %35 = load i8*, i8** %u, align 4
  %tobool38 = icmp ne i8* %35, null
  br i1 %tobool38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %while.body37
  %arraydecay = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %36 = load i8**, i8*** %s.addr, align 4
  %37 = load i8*, i8** %36, align 4
  %38 = load i8*, i8** %fn, align 4
  %39 = load i8*, i8** %u, align 4
  %call40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %arraydecay, i32 8193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* %37, i8* %38, i8* %39)
  store i32 %call40, i32* %buflen, align 4
  br label %if.end44

if.else41:                                        ; preds = %while.body37
  %arraydecay42 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %40 = load i8**, i8*** %s.addr, align 4
  %41 = load i8*, i8** %40, align 4
  %42 = load i8*, i8** %fn, align 4
  %call43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %arraydecay42, i32 8193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %41, i8* %42)
  store i32 %call43, i32* %buflen, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.then39
  %43 = load i32, i32* %buflen, align 4
  %cmp45 = icmp slt i32 %43, 0
  br i1 %cmp45, label %if.then49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end44
  %44 = load i32, i32* %buflen, align 4
  %cmp47 = icmp sge i32 %44, 8193
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false, %if.end44
  br label %while.cond31

if.end50:                                         ; preds = %lor.lhs.false
  %45 = load %union.linkroot*, %union.linkroot** %l, align 4
  %46 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list = bitcast %union.linkroot* %46 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %47 = load %struct.linknode*, %struct.linknode** %last, align 4
  %arraydecay51 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call52 = call i8* @dupstring(i8* %arraydecay51)
  %call53 = call %struct.linknode* @insertlinknode(%union.linkroot* %45, %struct.linknode* %47, i8* %call52)
  %48 = load i32, i32* %ct, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %ct, align 4
  br label %while.cond31

while.end:                                        ; preds = %land.end36
  %49 = load %struct.__dirstream*, %struct.__dirstream** %lock, align 4
  %call54 = call i32 @closedir(%struct.__dirstream* %49)
  %50 = load i32, i32* %ct, align 4
  %mul = mul i32 %50, 4
  %call55 = call i8* @zhalloc(i32 %mul)
  %51 = bitcast i8* %call55 to i8**
  store i8** %51, i8*** %arr, align 4
  store i8** %51, i8*** %ap, align 4
  br label %while.cond56

while.cond56:                                     ; preds = %while.body60, %while.end
  %52 = load %union.linkroot*, %union.linkroot** %l, align 4
  %call57 = call i8* @ugetnode(%union.linkroot* %52)
  %53 = load i8**, i8*** %ap, align 4
  %incdec.ptr58 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %incdec.ptr58, i8*** %ap, align 4
  store i8* %call57, i8** %53, align 4
  %tobool59 = icmp ne i8* %call57, null
  br i1 %tobool59, label %while.body60, label %while.end61

while.body60:                                     ; preds = %while.cond56
  br label %while.cond56

while.end61:                                      ; preds = %while.cond56
  %54 = load i8**, i8*** %arr, align 4
  call void @checkmailpath(i8** %54)
  call void @popheap()
  br label %if.end62

if.end62:                                         ; preds = %while.end61, %if.then25
  br label %if.end121

if.else63:                                        ; preds = %if.else22
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool64 = icmp ne %struct._IO_FILE* %55, null
  br i1 %tobool64, label %if.then65, label %if.end120

if.then65:                                        ; preds = %if.else63
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %56 = load i32, i32* %st_size, align 8
  %tobool66 = icmp ne i32 %56, 0
  br i1 %tobool66, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %if.then65
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 18
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %57 = load i32, i32* %tv_sec, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 19
  %tv_sec67 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %58 = load i32, i32* %tv_sec67, align 8
  %cmp68 = icmp sle i32 %57, %58
  br i1 %cmp68, label %land.lhs.true70, label %if.end97

land.lhs.true70:                                  ; preds = %land.lhs.true
  %st_mtim71 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 19
  %tv_sec72 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim71, i32 0, i32 0
  %59 = load i32, i32* %tv_sec72, align 8
  %60 = load i32, i32* @lastmailcheck, align 4
  %cmp73 = icmp sge i32 %59, %60
  br i1 %cmp73, label %if.then75, label %if.end97

if.then75:                                        ; preds = %land.lhs.true70
  %61 = load i8*, i8** %u, align 4
  %tobool76 = icmp ne i8* %61, null
  br i1 %tobool76, label %if.else80, label %if.then77

if.then77:                                        ; preds = %if.then75
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call79 = call i32 @fflush(%struct._IO_FILE* %63)
  br label %if.end96

if.else80:                                        ; preds = %if.then75
  %64 = load i32, i32* @underscoreused, align 4
  store i32 %64, i32* %uusav, align 4
  %65 = load i32, i32* @underscoreused, align 4
  %call81 = call i8* @zalloc(i32 %65)
  store i8* %call81, i8** %usav, align 4
  %66 = load i8*, i8** %usav, align 4
  %tobool82 = icmp ne i8* %66, null
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.else80
  %67 = load i8*, i8** %usav, align 4
  %68 = load i8*, i8** @zunderscore, align 4
  %69 = load i32, i32* @underscoreused, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %67, i8* %68, i32 %69, i32 1, i1 false)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.else80
  %70 = load i8**, i8*** %s.addr, align 4
  %71 = load i8*, i8** %70, align 4
  call void @setunderscore(i8* %71)
  %72 = load i8*, i8** %u, align 4
  %call85 = call i8* @dupstring(i8* %72)
  store i8* %call85, i8** %u, align 4
  %call86 = call i32 @parsestr(i8** %u)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end92, label %if.then88

if.then88:                                        ; preds = %if.end84
  call void @singsub(i8** %u)
  %73 = load i8*, i8** %u, align 4
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call89 = call i32 @zputs(i8* %73, %struct._IO_FILE* %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call90 = call i32 @fputc(i32 10, %struct._IO_FILE* %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call91 = call i32 @fflush(%struct._IO_FILE* %76)
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end84
  %77 = load i8*, i8** %usav, align 4
  %tobool93 = icmp ne i8* %77, null
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end92
  %78 = load i8*, i8** %usav, align 4
  call void @setunderscore(i8* %78)
  %79 = load i8*, i8** %usav, align 4
  %80 = load i32, i32* %uusav, align 4
  call void @zfree(i8* %79, i32 %80)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end92
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then77
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %land.lhs.true70, %land.lhs.true, %if.then65
  %81 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 114), align 1
  %conv98 = sext i8 %81 to i32
  %tobool99 = icmp ne i32 %conv98, 0
  br i1 %tobool99, label %land.lhs.true100, label %if.end119

land.lhs.true100:                                 ; preds = %if.end97
  %st_atim101 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 18
  %tv_sec102 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim101, i32 0, i32 0
  %82 = load i32, i32* %tv_sec102, align 8
  %st_mtim103 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 19
  %tv_sec104 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim103, i32 0, i32 0
  %83 = load i32, i32* %tv_sec104, align 8
  %cmp105 = icmp sgt i32 %82, %83
  br i1 %cmp105, label %land.lhs.true107, label %if.end119

land.lhs.true107:                                 ; preds = %land.lhs.true100
  %st_atim108 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 18
  %tv_sec109 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim108, i32 0, i32 0
  %84 = load i32, i32* %tv_sec109, align 8
  %85 = load i32, i32* @lastmailcheck, align 4
  %cmp110 = icmp sgt i32 %84, %85
  br i1 %cmp110, label %land.lhs.true112, label %if.end119

land.lhs.true112:                                 ; preds = %land.lhs.true107
  %st_size113 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %86 = load i32, i32* %st_size113, align 8
  %tobool114 = icmp ne i32 %86, 0
  br i1 %tobool114, label %if.then115, label %if.end119

if.then115:                                       ; preds = %land.lhs.true112
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %88 = load i8**, i8*** %s.addr, align 4
  %89 = load i8*, i8** %88, align 4
  %call116 = call i8* @unmeta(i8* %89)
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i32 0, i32 0), i8* %call116)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call118 = call i32 @fflush(%struct._IO_FILE* %90)
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %land.lhs.true112, %land.lhs.true107, %land.lhs.true100, %if.end97
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.else63
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end62
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end21
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then10
  %91 = load i8, i8* %c, align 1
  %92 = load i8*, i8** %v, align 4
  store i8 %91, i8* %92, align 1
  %93 = load i8**, i8*** %s.addr, align 4
  %incdec.ptr124 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %incdec.ptr124, i8*** %s.addr, align 4
  br label %while.cond

while.end125:                                     ; preds = %while.cond
  ret void
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #2

declare void @zhandler(i32) #2

; Function Attrs: noinline nounwind
define void @printprompt4() #0 {
entry:
  %l = alloca i32, align 4
  %t = alloca i32, align 4
  %s = alloca i8*, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** @xtrerr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @prompt4, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %t, align 4
  %4 = load i8*, i8** @prompt4, align 4
  %call = call i8* @dupstring(i8* %4)
  store i8* %call, i8** %s, align 4
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %5 = load i8*, i8** %s, align 4
  %call3 = call i8* @unmetafy(i8* %5, i32* %l)
  %6 = load i8*, i8** %s, align 4
  %7 = load i32, i32* %l, align 4
  %call4 = call i8* @metafy(i8* %6, i32 %7, i32 5)
  %call5 = call i8* @promptexpand(i8* %call4, i32 0, i8* null, i8* null, i32* null)
  %call6 = call i8* @unmetafy(i8* %call5, i32* %l)
  store i8* %call6, i8** %s, align 4
  %8 = load i32, i32* %t, align 4
  %conv7 = trunc i32 %8 to i8
  store i8 %conv7, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %10 = load i8*, i8** %s, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* %10)
  %11 = load i8*, i8** %s, align 4
  call void @free(i8* %11)
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define i8* @unmetafy(i8* %s, i32* %len) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32*, align 4
  %p = alloca i8*, align 4
  %t = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %len, i32** %len.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 4
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv1, -125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i8*, i8** %p, align 4
  store i8* %7, i8** %t, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %if.end, %for.end
  %8 = load i8*, i8** %p, align 4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %p, align 4
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %t, align 4
  store i8 %9, i8* %10, align 1
  %tobool5 = icmp ne i8 %9, 0
  br i1 %tobool5, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond3
  %11 = load i8*, i8** %t, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %t, align 4
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, -125
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %13 = load i8*, i8** %p, align 4
  %14 = load i8, i8* %13, align 1
  %conv11 = sext i8 %14 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load i8*, i8** %p, align 4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr13, i8** %p, align 4
  %16 = load i8, i8* %15, align 1
  %conv14 = sext i8 %16 to i32
  %xor = xor i32 %conv14, 32
  %conv15 = trunc i32 %xor to i8
  %17 = load i8*, i8** %t, align 4
  %arrayidx = getelementptr inbounds i8, i8* %17, i32 -1
  store i8 %conv15, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body6
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  %18 = load i32*, i32** %len.addr, align 4
  %tobool17 = icmp ne i32* %18, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end16
  %19 = load i8*, i8** %t, align 4
  %20 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = load i32*, i32** %len.addr, align 4
  store i32 %sub.ptr.sub, i32* %21, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.end16
  %22 = load i8*, i8** %s.addr, align 4
  ret i8* %22
}

; Function Attrs: noinline nounwind
define void @freestr(i8* %a) #0 {
entry:
  %a.addr = alloca i8*, align 4
  store i8* %a, i8** %a.addr, align 4
  %0 = load i8*, i8** %a.addr, align 4
  call void @zsfree(i8* %0)
  ret void
}

; Function Attrs: noinline nounwind
define void @gettyinfo(%struct.ttyinfo* %ti) #0 {
entry:
  %ti.addr = alloca %struct.ttyinfo*, align 4
  store %struct.ttyinfo* %ti, %struct.ttyinfo** %ti.addr, align 4
  %0 = load i32, i32* @SHTTY, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @SHTTY, align 4
  %2 = load %struct.ttyinfo*, %struct.ttyinfo** %ti.addr, align 4
  %tio = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %2, i32 0, i32 0
  %call = call i32 @tcgetattr(i32 %1, %struct.termios* %tio)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call i32* @__errno_location()
  %3 = load i32, i32* %call3, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare i32 @tcgetattr(i32, %struct.termios*) #2

declare i32* @__errno_location() #2

; Function Attrs: noinline nounwind
define void @settyinfo(%struct.ttyinfo* %ti) #0 {
entry:
  %ti.addr = alloca %struct.ttyinfo*, align 4
  store %struct.ttyinfo* %ti, %struct.ttyinfo** %ti.addr, align 4
  %0 = load i32, i32* @SHTTY, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i32, i32* @SHTTY, align 4
  %2 = load %struct.ttyinfo*, %struct.ttyinfo** %ti.addr, align 4
  %tio = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %2, i32 0, i32 0
  %call = call i32 @tcsetattr(i32 %1, i32 1, %struct.termios* %tio)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call2 = call i32* @__errno_location()
  %3 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %3, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i32 @tcsetattr(i32, i32, %struct.termios*) #2

; Function Attrs: noinline nounwind
define void @adjustwinsize(i32 %from) #0 {
entry:
  %from.addr = alloca i32, align 4
  %ttyrows = alloca i32, align 4
  %ttycols = alloca i32, align 4
  %resetzle = alloca i32, align 4
  store i32 %from, i32* %from.addr, align 4
  %0 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4
  %conv = zext i16 %0 to i32
  store i32 %conv, i32* %ttyrows, align 4
  %1 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2
  %conv1 = zext i16 %1 to i32
  store i32 %conv1, i32* %ttycols, align 4
  store i32 0, i32* %resetzle, align 4
  %2 = load i32, i32* @adjustwinsize.getwinsz, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %from.addr, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* @SHTTY, align 4
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  br label %if.end73

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* @SHTTY, align 4
  %call = call i32 (i32, i32, ...) @ioctl(i32 %5, i32 21523, i8* bitcast (%struct.winsize* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1) to i8*))
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %6 = load i32, i32* %ttyrows, align 4
  %7 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4
  %conv9 = zext i16 %7 to i32
  %cmp10 = icmp ne i32 %6, %conv9
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then8
  %8 = load i32, i32* %ttycols, align 4
  %9 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2
  %conv12 = zext i16 %9 to i32
  %cmp13 = icmp ne i32 %8, %conv12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then8
  %10 = phi i1 [ true, %if.then8 ], [ %cmp13, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  store i32 %lor.ext, i32* %resetzle, align 4
  %11 = load i32, i32* %from.addr, align 4
  %cmp15 = icmp eq i32 %11, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %lor.end
  %12 = load i32, i32* %resetzle, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %land.lhs.true18, label %if.end23

land.lhs.true18:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %ttyrows, align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %land.lhs.true20, label %if.end23

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %14 = load i32, i32* %ttycols, align 4
  %tobool21 = icmp ne i32 %14, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true20
  store i32 1, i32* %from.addr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true20, %land.lhs.true18, %land.lhs.true, %lor.end
  %15 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4
  %conv24 = zext i16 %15 to i32
  store i32 %conv24, i32* %ttyrows, align 4
  %16 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2
  %conv25 = zext i16 %16 to i32
  store i32 %conv25, i32* %ttycols, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* @zterm_lines, align 4
  %conv26 = trunc i32 %17 to i16
  store i16 %conv26, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4
  %18 = load i32, i32* @zterm_columns, align 4
  %conv27 = trunc i32 %18 to i16
  store i16 %conv27, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2
  %19 = load i32, i32* %from.addr, align 4
  %cmp28 = icmp eq i32 %19, 1
  %conv29 = zext i1 %cmp28 to i32
  store i32 %conv29, i32* %resetzle, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %lor.lhs.false
  %20 = load i32, i32* %from.addr, align 4
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb48
    i32 3, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end31, %if.end31
  store i32 0, i32* @adjustwinsize.getwinsz, align 4
  %21 = load i32, i32* %from.addr, align 4
  %call32 = call i32 @adjustlines(i32 %21)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end39

land.lhs.true34:                                  ; preds = %sw.bb
  %call35 = call i8* @zgetenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  %tobool36 = icmp ne i8* %call35, null
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %land.lhs.true34
  %22 = load i32, i32* @zterm_lines, align 4
  %call38 = call %struct.param* @setiparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %22)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true34, %sw.bb
  %23 = load i32, i32* %from.addr, align 4
  %call40 = call i32 @adjustcolumns(i32 %23)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %if.end39
  %call43 = call i8* @zgetenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0))
  %tobool44 = icmp ne i8* %call43, null
  br i1 %tobool44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %land.lhs.true42
  %24 = load i32, i32* @zterm_columns, align 4
  %call46 = call %struct.param* @setiparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 %24)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true42, %if.end39
  store i32 1, i32* @adjustwinsize.getwinsz, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end31
  %call49 = call i32 @adjustlines(i32 0)
  store i32 %call49, i32* %resetzle, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end31
  %call51 = call i32 @adjustcolumns(i32 0)
  store i32 %call51, i32* %resetzle, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end31, %sw.bb50, %sw.bb48, %if.end47
  %25 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv52 = sext i8 %25 to i32
  %tobool53 = icmp ne i32 %conv52, 0
  br i1 %tobool53, label %land.lhs.true54, label %if.end66

land.lhs.true54:                                  ; preds = %sw.epilog
  %26 = load i32, i32* %from.addr, align 4
  %cmp55 = icmp sge i32 %26, 2
  br i1 %cmp55, label %land.lhs.true57, label %if.end66

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %27 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4
  %conv58 = zext i16 %27 to i32
  %28 = load i32, i32* %ttyrows, align 4
  %cmp59 = icmp ne i32 %conv58, %28
  br i1 %cmp59, label %if.then65, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.lhs.true57
  %29 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2
  %conv62 = zext i16 %29 to i32
  %30 = load i32, i32* %ttycols, align 4
  %cmp63 = icmp ne i32 %conv62, %30
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false61, %land.lhs.true57
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %lor.lhs.false61, %land.lhs.true54, %sw.epilog
  %31 = load i32, i32* @zleactive, align 4
  %tobool67 = icmp ne i32 %31, 0
  br i1 %tobool67, label %land.lhs.true68, label %if.end73

land.lhs.true68:                                  ; preds = %if.end66
  %32 = load i32, i32* %resetzle, align 4
  %tobool69 = icmp ne i32 %32, 0
  br i1 %tobool69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %land.lhs.true68
  store i32 1, i32* @resetneeded, align 4
  store i32 1, i32* @winchanged, align 4
  %call71 = call i8* (i32, ...) @zleentry(i32 4)
  %call72 = call i8* (i32, ...) @zleentry(i32 5)
  br label %if.end73

if.end73:                                         ; preds = %if.then5, %if.then70, %land.lhs.true68, %if.end66
  ret void
}

declare i32 @ioctl(i32, i32, ...) #2

; Function Attrs: noinline nounwind
define internal i32 @adjustlines(i32 %signalled) #0 {
entry:
  %signalled.addr = alloca i32, align 4
  %oldlines = alloca i32, align 4
  store i32 %signalled, i32* %signalled.addr, align 4
  %0 = load i32, i32* @zterm_lines, align 4
  store i32 %0, i32* %oldlines, align 4
  %1 = load i32, i32* %signalled.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @zterm_lines, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* @zterm_lines, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* @zterm_lines, align 4
  %conv1 = trunc i32 %4 to i16
  store i16 %conv1, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* @zterm_lines, align 4
  %cmp2 = icmp sle i32 %5, 0
  br i1 %cmp2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* @tclines, align 4
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  %7 = load i32, i32* @tclines, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 24, %cond.false ]
  store i32 %cond, i32* @zterm_lines, align 4
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  %8 = load i32, i32* @zterm_lines, align 4
  %cmp8 = icmp sgt i32 %8, 2
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  %9 = load i32, i32* @termflags, align 4
  %and = and i32 %9, -9
  store i32 %and, i32* @termflags, align 4
  br label %if.end12

if.else11:                                        ; preds = %if.end7
  %10 = load i32, i32* @termflags, align 4
  %or = or i32 %10, 8
  store i32 %or, i32* @termflags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %11 = load i32, i32* @zterm_lines, align 4
  %12 = load i32, i32* %oldlines, align 4
  %cmp13 = icmp ne i32 %11, %12
  %conv14 = zext i1 %cmp13 to i32
  ret i32 %conv14
}

declare i8* @zgetenv(i8*) #2

declare %struct.param* @setiparam(i8*, i32) #2

; Function Attrs: noinline nounwind
define internal i32 @adjustcolumns(i32 %signalled) #0 {
entry:
  %signalled.addr = alloca i32, align 4
  %oldcolumns = alloca i32, align 4
  store i32 %signalled, i32* %signalled.addr, align 4
  %0 = load i32, i32* @zterm_columns, align 4
  store i32 %0, i32* %oldcolumns, align 4
  %1 = load i32, i32* %signalled.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @zterm_columns, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i16, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* @zterm_columns, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* @zterm_columns, align 4
  %conv1 = trunc i32 %4 to i16
  store i16 %conv1, i16* getelementptr inbounds (%struct.ttyinfo, %struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* @zterm_columns, align 4
  %cmp2 = icmp sle i32 %5, 0
  br i1 %cmp2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* @tccolumns, align 4
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  %7 = load i32, i32* @tccolumns, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 80, %cond.false ]
  store i32 %cond, i32* @zterm_columns, align 4
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  %8 = load i32, i32* @zterm_columns, align 4
  %cmp8 = icmp sgt i32 %8, 2
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  %9 = load i32, i32* @termflags, align 4
  %and = and i32 %9, -17
  store i32 %and, i32* @termflags, align 4
  br label %if.end12

if.else11:                                        ; preds = %if.end7
  %10 = load i32, i32* @termflags, align 4
  %or = or i32 %10, 16
  store i32 %or, i32* @termflags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %11 = load i32, i32* @zterm_columns, align 4
  %12 = load i32, i32* %oldcolumns, align 4
  %cmp13 = icmp ne i32 %11, %12
  %conv14 = zext i1 %cmp13 to i32
  ret i32 %conv14
}

declare i8* @zleentry(i32, ...) #2

; Function Attrs: noinline nounwind
define i32 @movefd(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %fe = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %2, i32 0, i32 10)
  store i32 %call, i32* %fe, align 4
  %3 = load i32, i32* %fd.addr, align 4
  %call2 = call i32 @zclose(i32 %3)
  %4 = load i32, i32* %fe, align 4
  store i32 %4, i32* %fd.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, i32* %fd.addr, align 4
  %cmp3 = icmp ne i32 %5, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %fd.addr, align 4
  call void @check_fd_table(i32 %6)
  %7 = load i8*, i8** @fdtable, align 4
  %8 = load i32, i32* %fd.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 %8
  store i8 1, i8* %arrayidx, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %9 = load i32, i32* %fd.addr, align 4
  ret i32 %9
}

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind
define i32 @zclose(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i32, i32* @max_zsh_fd, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %if.then2, label %if.end22

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** @fdtable, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 5
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %6 = load i32, i32* @fdtable_flocks, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @fdtable_flocks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  %7 = load i8*, i8** @fdtable, align 4
  %8 = load i32, i32* %fd.addr, align 4
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i32 %8
  store i8 0, i8* %arrayidx6, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i32, i32* @max_zsh_fd, align 4
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i8*, i8** @fdtable, align 4
  %11 = load i32, i32* @max_zsh_fd, align 4
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i32 %11
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* @max_zsh_fd, align 4
  %dec13 = add nsw i32 %14, -1
  store i32 %dec13, i32* @max_zsh_fd, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %fd.addr, align 4
  %16 = load i32, i32* @coprocin, align 4
  %cmp14 = icmp eq i32 %15, %16
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.end
  store i32 -1, i32* @coprocin, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.end
  %17 = load i32, i32* %fd.addr, align 4
  %18 = load i32, i32* @coprocout, align 4
  %cmp18 = icmp eq i32 %17, %18
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store i32 -1, i32* @coprocout, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %19 = load i32, i32* %fd.addr, align 4
  %call = call i32 @close(i32 %19)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.end22
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind
define internal void @check_fd_table(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %old_size = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* @max_zsh_fd, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i32, i32* @fdtable_size, align 4
  %cmp1 = icmp sge i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @fdtable_size, align 4
  store i32 %4, i32* %old_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i32, i32* @fdtable_size, align 4
  %cmp3 = icmp sge i32 %5, %6
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** @fdtable, align 4
  %8 = load i32, i32* @fdtable_size, align 4
  %mul = mul nsw i32 %8, 2
  store i32 %mul, i32* @fdtable_size, align 4
  %mul4 = mul i32 %mul, 1
  %call = call i8* @zrealloc(i8* %7, i32 %mul4)
  store i8* %call, i8** @fdtable, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** @fdtable, align 4
  %10 = load i32, i32* %old_size, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 %10
  %11 = load i32, i32* @fdtable_size, align 4
  %12 = load i32, i32* %old_size, align 4
  %sub = sub nsw i32 %11, %12
  %mul5 = mul i32 %sub, 1
  call void @llvm.memset.p0i8.i32(i8* %add.ptr, i8 0, i32 %mul5, i32 1, i1 false)
  br label %if.end6

if.end6:                                          ; preds = %while.end, %if.end
  %13 = load i32, i32* %fd.addr, align 4
  store i32 %13, i32* @max_zsh_fd, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i32 @redup(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  store i32 %0, i32* %ret, align 4
  %1 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %y.addr, align 4
  %call = call i32 @zclose(i32 %2)
  br label %if.end26

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end25

if.then2:                                         ; preds = %if.else
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %call3 = call i32 @dup2(i32 %5, i32 %6)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then2
  store i32 -1, i32* %ret, align 4
  br label %if.end17

if.else6:                                         ; preds = %if.then2
  %7 = load i32, i32* %y.addr, align 4
  call void @check_fd_table(i32 %7)
  %8 = load i8*, i8** @fdtable, align 4
  %9 = load i32, i32* %x.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %8, i32 %9
  %10 = load i8, i8* %arrayidx, align 1
  %11 = load i8*, i8** @fdtable, align 4
  %12 = load i32, i32* %y.addr, align 4
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i32 %12
  store i8 %10, i8* %arrayidx7, align 1
  %13 = load i8*, i8** @fdtable, align 4
  %14 = load i32, i32* %y.addr, align 4
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i32 %14
  %15 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %15 to i32
  %cmp9 = icmp eq i32 %conv, 5
  br i1 %cmp9, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else6
  %16 = load i8*, i8** @fdtable, align 4
  %17 = load i32, i32* %y.addr, align 4
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i32 %17
  %18 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %18 to i32
  %cmp13 = icmp eq i32 %conv12, 6
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %lor.lhs.false, %if.else6
  %19 = load i8*, i8** @fdtable, align 4
  %20 = load i32, i32* %y.addr, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i32 %20
  store i8 1, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then15, %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  %21 = load i8*, i8** @fdtable, align 4
  %22 = load i32, i32* %x.addr, align 4
  %arrayidx18 = getelementptr inbounds i8, i8* %21, i32 %22
  %23 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %23 to i32
  %cmp20 = icmp eq i32 %conv19, 5
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  %24 = load i32, i32* @fdtable_flocks, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* @fdtable_flocks, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17
  %25 = load i32, i32* %x.addr, align 4
  %call24 = call i32 @zclose(i32 %25)
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %26 = load i32, i32* %ret, align 4
  ret i32 %26
}

declare i32 @dup2(i32, i32) #2

; Function Attrs: noinline nounwind
define void @addmodulefd(i32 %fd, i32 %fdt) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %fdt.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %fdt, i32* %fdt.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  call void @check_fd_table(i32 %1)
  %2 = load i32, i32* %fdt.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i8*, i8** @fdtable, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 %4
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @addlockfd(i32 %fd, i32 %cloexec) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %cloexec.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %cloexec, i32* %cloexec.addr, align 4
  %0 = load i32, i32* %cloexec.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @fdtable, align 4
  %2 = load i32, i32* %fd.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %1, i32 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 5
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* @fdtable_flocks, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @fdtable_flocks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load i8*, i8** @fdtable, align 4
  %6 = load i32, i32* %fd.addr, align 4
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i32 %6
  store i8 5, i8* %arrayidx3, align 1
  br label %if.end5

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** @fdtable, align 4
  %8 = load i32, i32* %fd.addr, align 4
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i32 %8
  store i8 6, i8* %arrayidx4, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  ret void
}

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind
define i32 @zcloselockfd(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* @max_zsh_fd, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @fdtable, align 4
  %3 = load i32, i32* %fd.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %2, i32 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 5
  br i1 %cmp1, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** @fdtable, align 4
  %6 = load i32, i32* %fd.addr, align 4
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i32 %6
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 6
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* %fd.addr, align 4
  %call = call i32 @zclose(i32 %8)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define i8* @gettempname(i8* %prefix, i32 %use_heap) #0 {
entry:
  %prefix.addr = alloca i8*, align 4
  %use_heap.addr = alloca i32, align 4
  %ret = alloca i8*, align 4
  %suffix = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp15 = alloca %struct.__sigset_t, align 4
  store i8* %prefix, i8** %prefix.addr, align 4
  store i32 %use_heap, i32* %use_heap.addr, align 4
  %0 = load i8*, i8** %prefix.addr, align 4
  %tobool = icmp ne i8* %0, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)
  store i8* %cond, i8** %suffix, align 4
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %2 = load i8*, i8** %prefix.addr, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i8* @getsparam(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0))
  store i8* %call, i8** %prefix.addr, align 4
  %tobool2 = icmp ne i8* %call, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8** %prefix.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, i32* %use_heap.addr, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %4 = load i8*, i8** %prefix.addr, align 4
  %call5 = call i8* @unmeta(i8* %4)
  %5 = load i8*, i8** %suffix, align 4
  %call6 = call i8* @dyncat(i8* %call5, i8* %5)
  store i8* %call6, i8** %ret, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %prefix.addr, align 4
  %call7 = call i8* @unmeta(i8* %6)
  %7 = load i8*, i8** %suffix, align 4
  %call8 = call i8* @bicat(i8* %call7, i8* %7)
  store i8* %call8, i8** %ret, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %8 = load i8*, i8** %ret, align 4
  %call10 = call i8* @mktemp(i8* %8)
  store i8* %call10, i8** %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end9
  %9 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool11 = icmp ne i32 %dec, 0
  br i1 %tobool11, label %if.end16, label %if.then12

if.then12:                                        ; preds = %do.body
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body13
  %10 = load i32, i32* @queue_front, align 4
  %11 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %10, %11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %12, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %13 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %13
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %14 = bitcast %struct.__sigset_t* %oset to i8*
  %15 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 128, i32 4, i1 false)
  %16 = load i32, i32* @queue_front, align 4
  %arrayidx14 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %16
  %17 = load i32, i32* %arrayidx14, align 4
  call void @zhandler(i32 %17)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp15, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %18 = load i8*, i8** %ret, align 4
  ret i8* %18
}

declare i8* @dyncat(i8*, i8*) #2

declare i8* @bicat(i8*, i8*) #2

declare i8* @mktemp(i8*) #2

; Function Attrs: noinline nounwind
define i32 @gettempfile(i8* %prefix, i32 %use_heap, i8** %tempname) #0 {
entry:
  %prefix.addr = alloca i8*, align 4
  %use_heap.addr = alloca i32, align 4
  %tempname.addr = alloca i8**, align 4
  %fn = alloca i8*, align 4
  %fd = alloca i32, align 4
  %old_umask = alloca i32, align 4
  %suffix = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp23 = alloca %struct.__sigset_t, align 4
  store i8* %prefix, i8** %prefix.addr, align 4
  store i32 %use_heap, i32* %use_heap.addr, align 4
  store i8** %tempname, i8*** %tempname.addr, align 4
  %0 = load i8*, i8** %prefix.addr, align 4
  %tobool = icmp ne i8* %0, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)
  store i8* %cond, i8** %suffix, align 4
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call = call i32 @umask(i32 127)
  store i32 %call, i32* %old_umask, align 4
  %2 = load i8*, i8** %prefix.addr, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i8* @getsparam(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0))
  store i8* %call2, i8** %prefix.addr, align 4
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8** %prefix.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, i32* %use_heap.addr, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %4 = load i8*, i8** %prefix.addr, align 4
  %call6 = call i8* @unmeta(i8* %4)
  %5 = load i8*, i8** %suffix, align 4
  %call7 = call i8* @dyncat(i8* %call6, i8* %5)
  store i8* %call7, i8** %fn, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %prefix.addr, align 4
  %call8 = call i8* @unmeta(i8* %6)
  %7 = load i8*, i8** %suffix, align 4
  %call9 = call i8* @bicat(i8* %call8, i8* %7)
  store i8* %call9, i8** %fn, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %8 = load i8*, i8** %fn, align 4
  %call11 = call i32 @mkstemp(i8* %8)
  store i32 %call11, i32* %fd, align 4
  %9 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end10
  %10 = load i32, i32* %use_heap.addr, align 4
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then12
  %11 = load i8*, i8** %fn, align 4
  call void @free(i8* %11)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  store i8* null, i8** %fn, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end10
  %12 = load i8*, i8** %fn, align 4
  %13 = load i8**, i8*** %tempname.addr, align 4
  store i8* %12, i8** %13, align 4
  %14 = load i32, i32* %old_umask, align 4
  %call17 = call i32 @umask(i32 %14)
  br label %do.body

do.body:                                          ; preds = %if.end16
  %15 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool18 = icmp ne i32 %dec, 0
  br i1 %tobool18, label %if.end24, label %if.then19

if.then19:                                        ; preds = %do.body
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body20
  %16 = load i32, i32* @queue_front, align 4
  %17 = load i32, i32* @queue_rear, align 4
  %cmp21 = icmp ne i32 %16, %17
  br i1 %cmp21, label %while.body, label %while.end

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
  %arrayidx22 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %22
  %23 = load i32, i32* %arrayidx22, align 4
  call void @zhandler(i32 %23)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp23, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end24

if.end24:                                         ; preds = %do.end, %do.body
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  %24 = load i32, i32* %fd, align 4
  ret i32 %24
}

declare i32 @umask(i32) #2

declare i32 @mkstemp(i8*) #2

; Function Attrs: noinline nounwind
define i32 @has_token(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, 16
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind
define void @chuck(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 1
  %1 = load i8, i8* %arrayidx, align 1
  %2 = load i8*, i8** %str.addr, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i32 0
  store i8 %1, i8* %arrayidx1, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #4

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #4

; Function Attrs: noinline nounwind
define i32 @tuupper(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %c.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @islower(i32 %1) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @toupper(i32 %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readonly
declare i32 @islower(i32) #4

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

; Function Attrs: noinline nounwind
define void @ztrncpy(i8* %s, i8* %t, i32 %len) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %t.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %t.addr, align 4
  %2 = load i8, i8* %1, align 1
  %3 = load i8*, i8** %s.addr, align 4
  %incdec.ptr1 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr1, i8** %s.addr, align 4
  store i8 %2, i8* %3, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %s.addr, align 4
  store i8 0, i8* %4, align 1
  ret void
}

; Function Attrs: noinline nounwind
define void @strucpy(i8** %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %t.addr = alloca i8*, align 4
  %u = alloca i8*, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %u, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %t.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %t.addr, align 4
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %u, align 4
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %u, align 4
  store i8 %3, i8* %4, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %u, align 4
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 -1
  %6 = load i8**, i8*** %s.addr, align 4
  store i8* %add.ptr, i8** %6, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @struncpy(i8** %s, i8* %t, i32 %n) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %t.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %u = alloca i8*, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %u, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %t.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %t.addr, align 4
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %u, align 4
  store i8 %4, i8* %5, align 1
  %conv = sext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %u, align 4
  %incdec.ptr2 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr2, i8** %u, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %u, align 4
  %9 = load i8**, i8*** %s.addr, align 4
  store i8* %8, i8** %9, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load i8*, i8** %u, align 4
  store i8 0, i8* %11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: noinline nounwind
define i32 @arrlen(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %count = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i8**, i8*** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %2, i32 1
  store i8** %incdec.ptr, i8*** %s.addr, align 4
  %3 = load i32, i32* %count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %count, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind
define signext i8 @arrlen_gt(i8** %s, i32 %lower_bound) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %lower_bound.addr = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 %lower_bound, i32* %lower_bound.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i32, i32* %lower_bound.addr, align 4
  %add = add i32 1, %1
  %call = call signext i8 @arrlen_ge(i8** %0, i32 %add)
  ret i8 %call
}

; Function Attrs: noinline nounwind
define signext i8 @arrlen_le(i8** %s, i32 %upper_bound) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %upper_bound.addr = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 %upper_bound, i32* %upper_bound.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i32, i32* %upper_bound.addr, align 4
  %add = add i32 1, %1
  %call = call signext i8 @arrlen_lt(i8** %0, i32 %add)
  ret i8 %call
}

; Function Attrs: noinline nounwind
define signext i8 @arrlen_lt(i8** %s, i32 %upper_bound) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %upper_bound.addr = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 %upper_bound, i32* %upper_bound.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i32, i32* %upper_bound.addr, align 4
  %call = call signext i8 @arrlen_ge(i8** %0, i32 %1)
  %tobool = icmp ne i8 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  ret i8 %conv
}

; Function Attrs: noinline nounwind
define i32 @skipparens(i8 signext %inpar, i8 signext %outpar, i8** %s) #0 {
entry:
  %retval = alloca i32, align 4
  %inpar.addr = alloca i8, align 1
  %outpar.addr = alloca i8, align 1
  %s.addr = alloca i8**, align 4
  %level = alloca i32, align 4
  store i8 %inpar, i8* %inpar.addr, align 1
  store i8 %outpar, i8* %outpar.addr, align 1
  store i8** %s, i8*** %s.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, i8* %inpar.addr, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.end
  %4 = load i8**, i8*** %s.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %4, align 4
  %6 = load i8, i8* %incdec.ptr, align 1
  %conv3 = sext i8 %6 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, i32* %level, align 4
  %tobool4 = icmp ne i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %tobool4, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i8**, i8*** %s.addr, align 4
  %10 = load i8*, i8** %9, align 4
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %12 = load i8, i8* %inpar.addr, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv5, %conv6
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %13 = load i32, i32* %level, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %level, align 4
  br label %if.end16

if.else:                                          ; preds = %for.body
  %14 = load i8**, i8*** %s.addr, align 4
  %15 = load i8*, i8** %14, align 4
  %16 = load i8, i8* %15, align 1
  %conv10 = sext i8 %16 to i32
  %17 = load i8, i8* %outpar.addr, align 1
  %conv11 = sext i8 %17 to i32
  %cmp12 = icmp eq i32 %conv10, %conv11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  %18 = load i32, i32* %level, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then9
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load i32, i32* %level, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind
define i32 @zstrtol_underscore(i8* %s, i8** %t, i32 %base, i32 %underscore) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8**, align 4
  %base.addr = alloca i32, align 4
  %underscore.addr = alloca i32, align 4
  %inp = alloca i8*, align 4
  %trunc = alloca i8*, align 4
  %calc = alloca i32, align 4
  %newcalc = alloca i32, align 4
  %neg = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8** %t, i8*** %t.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %underscore, i32* %underscore.addr, align 4
  store i8* null, i8** %trunc, align 4
  store i32 0, i32* %calc, align 4
  store i32 0, i32* %newcalc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, 45
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, -101
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %8 = phi i1 [ true, %while.end ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %neg, align 4
  br i1 %8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %9 = load i8*, i8** %s.addr, align 4
  %incdec.ptr6 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %s.addr, align 4
  br label %if.end12

if.else:                                          ; preds = %lor.end
  %10 = load i8*, i8** %s.addr, align 4
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 43
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %12 = load i8*, i8** %s.addr, align 4
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr11, i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %base.addr, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.end43, label %if.then14

if.then14:                                        ; preds = %if.end12
  %14 = load i8*, i8** %s.addr, align 4
  %15 = load i8, i8* %14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp ne i32 %conv15, 48
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then14
  store i32 10, i32* %base.addr, align 4
  br label %if.end42

if.else19:                                        ; preds = %if.then14
  %16 = load i8*, i8** %s.addr, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr20, i8** %s.addr, align 4
  %17 = load i8, i8* %incdec.ptr20, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 120
  br i1 %cmp22, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else19
  %18 = load i8*, i8** %s.addr, align 4
  %19 = load i8, i8* %18, align 1
  %conv24 = sext i8 %19 to i32
  %cmp25 = icmp eq i32 %conv24, 88
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %lor.lhs.false, %if.else19
  store i32 16, i32* %base.addr, align 4
  %20 = load i8*, i8** %s.addr, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr28, i8** %s.addr, align 4
  br label %if.end41

if.else29:                                        ; preds = %lor.lhs.false
  %21 = load i8*, i8** %s.addr, align 4
  %22 = load i8, i8* %21, align 1
  %conv30 = sext i8 %22 to i32
  %cmp31 = icmp eq i32 %conv30, 98
  br i1 %cmp31, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.else29
  %23 = load i8*, i8** %s.addr, align 4
  %24 = load i8, i8* %23, align 1
  %conv34 = sext i8 %24 to i32
  %cmp35 = icmp eq i32 %conv34, 66
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %lor.lhs.false33, %if.else29
  store i32 2, i32* %base.addr, align 4
  %25 = load i8*, i8** %s.addr, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr38, i8** %s.addr, align 4
  br label %if.end40

if.else39:                                        ; preds = %lor.lhs.false33
  store i32 8, i32* %base.addr, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then27
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then18
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end12
  %26 = load i8*, i8** %s.addr, align 4
  store i8* %26, i8** %inp, align 4
  %27 = load i32, i32* %base.addr, align 4
  %cmp44 = icmp slt i32 %27, 2
  br i1 %cmp44, label %if.then49, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end43
  %28 = load i32, i32* %base.addr, align 4
  %cmp47 = icmp sgt i32 %28, 36
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %lor.lhs.false46, %if.end43
  %29 = load i32, i32* %base.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0), i32 %29)
  store i32 0, i32* %retval, align 4
  br label %return

if.else50:                                        ; preds = %lor.lhs.false46
  %30 = load i32, i32* %base.addr, align 4
  %cmp51 = icmp sle i32 %30, 10
  br i1 %cmp51, label %if.then53, label %if.else81

if.then53:                                        ; preds = %if.else50
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then53
  %31 = load i8*, i8** %s.addr, align 4
  %32 = load i8, i8* %31, align 1
  %conv54 = sext i8 %32 to i32
  %cmp55 = icmp sge i32 %conv54, 48
  br i1 %cmp55, label %land.lhs.true, label %lor.rhs60

land.lhs.true:                                    ; preds = %for.cond
  %33 = load i8*, i8** %s.addr, align 4
  %34 = load i8, i8* %33, align 1
  %conv57 = sext i8 %34 to i32
  %35 = load i32, i32* %base.addr, align 4
  %add = add nsw i32 48, %35
  %cmp58 = icmp slt i32 %conv57, %add
  br i1 %cmp58, label %lor.end65, label %lor.rhs60

lor.rhs60:                                        ; preds = %land.lhs.true, %for.cond
  %36 = load i32, i32* %underscore.addr, align 4
  %tobool61 = icmp ne i32 %36, 0
  br i1 %tobool61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs60
  %37 = load i8*, i8** %s.addr, align 4
  %38 = load i8, i8* %37, align 1
  %conv62 = sext i8 %38 to i32
  %cmp63 = icmp eq i32 %conv62, 95
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs60
  %39 = phi i1 [ false, %lor.rhs60 ], [ %cmp63, %land.rhs ]
  br label %lor.end65

lor.end65:                                        ; preds = %land.end, %land.lhs.true
  %40 = phi i1 [ true, %land.lhs.true ], [ %39, %land.end ]
  br i1 %40, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end65
  %41 = load i8*, i8** %trunc, align 4
  %tobool67 = icmp ne i8* %41, null
  br i1 %tobool67, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %for.body
  %42 = load i8*, i8** %s.addr, align 4
  %43 = load i8, i8* %42, align 1
  %conv69 = sext i8 %43 to i32
  %cmp70 = icmp eq i32 %conv69, 95
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false68, %for.body
  br label %for.inc

if.end73:                                         ; preds = %lor.lhs.false68
  %44 = load i32, i32* %calc, align 4
  %45 = load i32, i32* %base.addr, align 4
  %mul = mul i32 %44, %45
  %46 = load i8*, i8** %s.addr, align 4
  %47 = load i8, i8* %46, align 1
  %conv74 = sext i8 %47 to i32
  %add75 = add i32 %mul, %conv74
  %sub = sub i32 %add75, 48
  store i32 %sub, i32* %newcalc, align 4
  %48 = load i32, i32* %newcalc, align 4
  %49 = load i32, i32* %calc, align 4
  %cmp76 = icmp ult i32 %48, %49
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end73
  %50 = load i8*, i8** %s.addr, align 4
  store i8* %50, i8** %trunc, align 4
  br label %for.inc

if.end79:                                         ; preds = %if.end73
  %51 = load i32, i32* %newcalc, align 4
  store i32 %51, i32* %calc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end79, %if.then78, %if.then72
  %52 = load i8*, i8** %s.addr, align 4
  %incdec.ptr80 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr80, i8** %s.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end65
  br label %if.end144

if.else81:                                        ; preds = %if.else50
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc141, %if.else81
  %53 = load i8*, i8** %s.addr, align 4
  %54 = load i8, i8* %53, align 1
  %idxprom83 = zext i8 %54 to i32
  %arrayidx84 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom83
  %55 = load i16, i16* %arrayidx84, align 2
  %conv85 = sext i16 %55 to i32
  %and86 = and i32 %conv85, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %lor.end115, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %for.cond82
  %56 = load i8*, i8** %s.addr, align 4
  %57 = load i8, i8* %56, align 1
  %conv89 = sext i8 %57 to i32
  %cmp90 = icmp sge i32 %conv89, 97
  br i1 %cmp90, label %land.lhs.true92, label %lor.lhs.false98

land.lhs.true92:                                  ; preds = %lor.lhs.false88
  %58 = load i8*, i8** %s.addr, align 4
  %59 = load i8, i8* %58, align 1
  %conv93 = sext i8 %59 to i32
  %60 = load i32, i32* %base.addr, align 4
  %add94 = add nsw i32 97, %60
  %sub95 = sub nsw i32 %add94, 10
  %cmp96 = icmp slt i32 %conv93, %sub95
  br i1 %cmp96, label %lor.end115, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %land.lhs.true92, %lor.lhs.false88
  %61 = load i8*, i8** %s.addr, align 4
  %62 = load i8, i8* %61, align 1
  %conv99 = sext i8 %62 to i32
  %cmp100 = icmp sge i32 %conv99, 65
  br i1 %cmp100, label %land.lhs.true102, label %lor.rhs108

land.lhs.true102:                                 ; preds = %lor.lhs.false98
  %63 = load i8*, i8** %s.addr, align 4
  %64 = load i8, i8* %63, align 1
  %conv103 = sext i8 %64 to i32
  %65 = load i32, i32* %base.addr, align 4
  %add104 = add nsw i32 65, %65
  %sub105 = sub nsw i32 %add104, 10
  %cmp106 = icmp slt i32 %conv103, %sub105
  br i1 %cmp106, label %lor.end115, label %lor.rhs108

lor.rhs108:                                       ; preds = %land.lhs.true102, %lor.lhs.false98
  %66 = load i32, i32* %underscore.addr, align 4
  %tobool109 = icmp ne i32 %66, 0
  br i1 %tobool109, label %land.rhs110, label %land.end114

land.rhs110:                                      ; preds = %lor.rhs108
  %67 = load i8*, i8** %s.addr, align 4
  %68 = load i8, i8* %67, align 1
  %conv111 = sext i8 %68 to i32
  %cmp112 = icmp eq i32 %conv111, 95
  br label %land.end114

land.end114:                                      ; preds = %land.rhs110, %lor.rhs108
  %69 = phi i1 [ false, %lor.rhs108 ], [ %cmp112, %land.rhs110 ]
  br label %lor.end115

lor.end115:                                       ; preds = %land.end114, %land.lhs.true102, %land.lhs.true92, %for.cond82
  %70 = phi i1 [ true, %land.lhs.true102 ], [ true, %land.lhs.true92 ], [ true, %for.cond82 ], [ %69, %land.end114 ]
  br i1 %70, label %for.body117, label %for.end143

for.body117:                                      ; preds = %lor.end115
  %71 = load i8*, i8** %trunc, align 4
  %tobool118 = icmp ne i8* %71, null
  br i1 %tobool118, label %if.then123, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %for.body117
  %72 = load i8*, i8** %s.addr, align 4
  %73 = load i8, i8* %72, align 1
  %conv120 = sext i8 %73 to i32
  %cmp121 = icmp eq i32 %conv120, 95
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %lor.lhs.false119, %for.body117
  br label %for.inc141

if.end124:                                        ; preds = %lor.lhs.false119
  %74 = load i32, i32* %calc, align 4
  %75 = load i32, i32* %base.addr, align 4
  %mul125 = mul i32 %74, %75
  %76 = load i8*, i8** %s.addr, align 4
  %77 = load i8, i8* %76, align 1
  %idxprom126 = zext i8 %77 to i32
  %arrayidx127 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom126
  %78 = load i16, i16* %arrayidx127, align 2
  %conv128 = sext i16 %78 to i32
  %and129 = and i32 %conv128, 1
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end124
  %79 = load i8*, i8** %s.addr, align 4
  %80 = load i8, i8* %79, align 1
  %conv131 = sext i8 %80 to i32
  %sub132 = sub nsw i32 %conv131, 48
  br label %cond.end

cond.false:                                       ; preds = %if.end124
  %81 = load i8*, i8** %s.addr, align 4
  %82 = load i8, i8* %81, align 1
  %conv133 = sext i8 %82 to i32
  %and134 = and i32 %conv133, 31
  %add135 = add nsw i32 %and134, 9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub132, %cond.true ], [ %add135, %cond.false ]
  %add136 = add i32 %mul125, %cond
  store i32 %add136, i32* %newcalc, align 4
  %83 = load i32, i32* %newcalc, align 4
  %84 = load i32, i32* %calc, align 4
  %cmp137 = icmp ult i32 %83, %84
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %cond.end
  %85 = load i8*, i8** %s.addr, align 4
  store i8* %85, i8** %trunc, align 4
  br label %for.inc141

if.end140:                                        ; preds = %cond.end
  %86 = load i32, i32* %newcalc, align 4
  store i32 %86, i32* %calc, align 4
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140, %if.then139, %if.then123
  %87 = load i8*, i8** %s.addr, align 4
  %incdec.ptr142 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr142, i8** %s.addr, align 4
  br label %for.cond82

for.end143:                                       ; preds = %lor.end115
  br label %if.end144

if.end144:                                        ; preds = %for.end143, %for.end
  br label %if.end145

if.end145:                                        ; preds = %if.end144
  %88 = load i8*, i8** %trunc, align 4
  %tobool146 = icmp ne i8* %88, null
  br i1 %tobool146, label %if.end156, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %if.end145
  %89 = load i32, i32* %calc, align 4
  %cmp148 = icmp slt i32 %89, 0
  br i1 %cmp148, label %land.lhs.true150, label %if.end156

land.lhs.true150:                                 ; preds = %land.lhs.true147
  %90 = load i32, i32* %neg, align 4
  %tobool151 = icmp ne i32 %90, 0
  br i1 %tobool151, label %lor.lhs.false152, label %if.then155

lor.lhs.false152:                                 ; preds = %land.lhs.true150
  %91 = load i32, i32* %calc, align 4
  %and153 = and i32 %91, 2147483647
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %lor.lhs.false152, %land.lhs.true150
  %92 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %add.ptr, i8** %trunc, align 4
  %93 = load i32, i32* %base.addr, align 4
  %94 = load i32, i32* %calc, align 4
  %div = udiv i32 %94, %93
  store i32 %div, i32* %calc, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %lor.lhs.false152, %land.lhs.true147, %if.end145
  %95 = load i8*, i8** %trunc, align 4
  %tobool157 = icmp ne i8* %95, null
  br i1 %tobool157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end156
  %96 = load i8*, i8** %trunc, align 4
  %97 = load i8*, i8** %inp, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %96 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %97 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %98 = load i8*, i8** %inp, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0), i32 %sub.ptr.sub, i8* %98)
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end156
  %99 = load i8**, i8*** %t.addr, align 4
  %tobool160 = icmp ne i8** %99, null
  br i1 %tobool160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end159
  %100 = load i8*, i8** %s.addr, align 4
  %101 = load i8**, i8*** %t.addr, align 4
  store i8* %100, i8** %101, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end159
  %102 = load i32, i32* %neg, align 4
  %tobool163 = icmp ne i32 %102, 0
  br i1 %tobool163, label %cond.true164, label %cond.false166

cond.true164:                                     ; preds = %if.end162
  %103 = load i32, i32* %calc, align 4
  %sub165 = sub nsw i32 0, %103
  br label %cond.end167

cond.false166:                                    ; preds = %if.end162
  %104 = load i32, i32* %calc, align 4
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false166, %cond.true164
  %cond168 = phi i32 [ %sub165, %cond.true164 ], [ %104, %cond.false166 ]
  store i32 %cond168, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end167, %if.then49
  %105 = load i32, i32* %retval, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind
define i32 @zstrtoul_underscore(i8* %s, i32* %retval1) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %retval.addr = alloca i32*, align 4
  %calc = alloca i32, align 4
  %newcalc = alloca i32, align 4
  %base = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %retval1, i32** %retval.addr, align 4
  store i32 0, i32* %calc, align 4
  store i32 0, i32* %newcalc, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %s.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv3, 48
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  store i32 10, i32* %base, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr7, i8** %s.addr, align 4
  %6 = load i8, i8* %incdec.ptr7, align 1
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 120
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i8*, i8** %s.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 88
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %lor.lhs.false, %if.else
  store i32 16, i32* %base, align 4
  %9 = load i8*, i8** %s.addr, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr15, i8** %s.addr, align 4
  br label %if.end29

if.else16:                                        ; preds = %lor.lhs.false
  %10 = load i8*, i8** %s.addr, align 4
  %11 = load i8, i8* %10, align 1
  %conv17 = sext i8 %11 to i32
  %cmp18 = icmp eq i32 %conv17, 98
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else16
  %12 = load i8*, i8** %s.addr, align 4
  %13 = load i8, i8* %12, align 1
  %conv21 = sext i8 %13 to i32
  %cmp22 = icmp eq i32 %conv21, 66
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %lor.lhs.false20, %if.else16
  store i32 2, i32* %base, align 4
  %14 = load i8*, i8** %s.addr, align 4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr25, i8** %s.addr, align 4
  br label %if.end28

if.else26:                                        ; preds = %lor.lhs.false20
  %15 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 125), align 1
  %conv27 = sext i8 %15 to i32
  %tobool = icmp ne i32 %conv27, 0
  %cond = select i1 %tobool, i32 8, i32 10
  store i32 %cond, i32* %base, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then14
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then6
  %16 = load i32, i32* %base, align 4
  %cmp31 = icmp ule i32 %16, 10
  br i1 %cmp31, label %if.then33, label %if.else55

if.then33:                                        ; preds = %if.end30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then33
  %17 = load i8*, i8** %s.addr, align 4
  %18 = load i8, i8* %17, align 1
  %conv34 = sext i8 %18 to i32
  %cmp35 = icmp sge i32 %conv34, 48
  br i1 %cmp35, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %for.cond
  %19 = load i8*, i8** %s.addr, align 4
  %20 = load i8, i8* %19, align 1
  %conv37 = sext i8 %20 to i32
  %21 = load i32, i32* %base, align 4
  %add = add i32 48, %21
  %cmp38 = icmp ult i32 %conv37, %add
  br i1 %cmp38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %for.cond
  %22 = load i8*, i8** %s.addr, align 4
  %23 = load i8, i8* %22, align 1
  %conv40 = sext i8 %23 to i32
  %cmp41 = icmp eq i32 %conv40, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %24 = phi i1 [ true, %land.lhs.true ], [ %cmp41, %lor.rhs ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %25 = load i8*, i8** %s.addr, align 4
  %26 = load i8, i8* %25, align 1
  %conv43 = sext i8 %26 to i32
  %cmp44 = icmp eq i32 %conv43, 95
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.body
  br label %for.inc

if.end47:                                         ; preds = %for.body
  %27 = load i32, i32* %calc, align 4
  %28 = load i32, i32* %base, align 4
  %mul = mul i32 %27, %28
  %29 = load i8*, i8** %s.addr, align 4
  %30 = load i8, i8* %29, align 1
  %conv48 = sext i8 %30 to i32
  %add49 = add i32 %mul, %conv48
  %sub = sub i32 %add49, 48
  store i32 %sub, i32* %newcalc, align 4
  %31 = load i32, i32* %newcalc, align 4
  %32 = load i32, i32* %calc, align 4
  %cmp50 = icmp ult i32 %31, %32
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  store i32 0, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end47
  %33 = load i32, i32* %newcalc, align 4
  store i32 %33, i32* %calc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end53, %if.then46
  %34 = load i8*, i8** %s.addr, align 4
  %incdec.ptr54 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr54, i8** %s.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  br label %if.end110

if.else55:                                        ; preds = %if.end30
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc107, %if.else55
  %35 = load i8*, i8** %s.addr, align 4
  %36 = load i8, i8* %35, align 1
  %idxprom = zext i8 %36 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %37 = load i16, i16* %arrayidx, align 2
  %conv57 = sext i16 %37 to i32
  %and = and i32 %conv57, 1
  %tobool58 = icmp ne i32 %and, 0
  br i1 %tobool58, label %lor.end83, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %for.cond56
  %38 = load i8*, i8** %s.addr, align 4
  %39 = load i8, i8* %38, align 1
  %conv60 = sext i8 %39 to i32
  %cmp61 = icmp sge i32 %conv60, 97
  br i1 %cmp61, label %land.lhs.true63, label %lor.lhs.false69

land.lhs.true63:                                  ; preds = %lor.lhs.false59
  %40 = load i8*, i8** %s.addr, align 4
  %41 = load i8, i8* %40, align 1
  %conv64 = sext i8 %41 to i32
  %42 = load i32, i32* %base, align 4
  %add65 = add i32 97, %42
  %sub66 = sub i32 %add65, 10
  %cmp67 = icmp ult i32 %conv64, %sub66
  br i1 %cmp67, label %lor.end83, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %land.lhs.true63, %lor.lhs.false59
  %43 = load i8*, i8** %s.addr, align 4
  %44 = load i8, i8* %43, align 1
  %conv70 = sext i8 %44 to i32
  %cmp71 = icmp sge i32 %conv70, 65
  br i1 %cmp71, label %land.lhs.true73, label %lor.rhs79

land.lhs.true73:                                  ; preds = %lor.lhs.false69
  %45 = load i8*, i8** %s.addr, align 4
  %46 = load i8, i8* %45, align 1
  %conv74 = sext i8 %46 to i32
  %47 = load i32, i32* %base, align 4
  %add75 = add i32 65, %47
  %sub76 = sub i32 %add75, 10
  %cmp77 = icmp ult i32 %conv74, %sub76
  br i1 %cmp77, label %lor.end83, label %lor.rhs79

lor.rhs79:                                        ; preds = %land.lhs.true73, %lor.lhs.false69
  %48 = load i8*, i8** %s.addr, align 4
  %49 = load i8, i8* %48, align 1
  %conv80 = sext i8 %49 to i32
  %cmp81 = icmp eq i32 %conv80, 95
  br label %lor.end83

lor.end83:                                        ; preds = %lor.rhs79, %land.lhs.true73, %land.lhs.true63, %for.cond56
  %50 = phi i1 [ true, %land.lhs.true73 ], [ true, %land.lhs.true63 ], [ true, %for.cond56 ], [ %cmp81, %lor.rhs79 ]
  br i1 %50, label %for.body84, label %for.end109

for.body84:                                       ; preds = %lor.end83
  %51 = load i8*, i8** %s.addr, align 4
  %52 = load i8, i8* %51, align 1
  %conv85 = sext i8 %52 to i32
  %cmp86 = icmp eq i32 %conv85, 95
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %for.body84
  br label %for.inc107

if.end89:                                         ; preds = %for.body84
  %53 = load i32, i32* %calc, align 4
  %54 = load i32, i32* %base, align 4
  %mul90 = mul i32 %53, %54
  %55 = load i8*, i8** %s.addr, align 4
  %56 = load i8, i8* %55, align 1
  %idxprom91 = zext i8 %56 to i32
  %arrayidx92 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom91
  %57 = load i16, i16* %arrayidx92, align 2
  %conv93 = sext i16 %57 to i32
  %and94 = and i32 %conv93, 1
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end89
  %58 = load i8*, i8** %s.addr, align 4
  %59 = load i8, i8* %58, align 1
  %conv96 = sext i8 %59 to i32
  %sub97 = sub nsw i32 %conv96, 48
  br label %cond.end

cond.false:                                       ; preds = %if.end89
  %60 = load i8*, i8** %s.addr, align 4
  %61 = load i8, i8* %60, align 1
  %conv98 = sext i8 %61 to i32
  %and99 = and i32 %conv98, 31
  %add100 = add nsw i32 %and99, 9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond101 = phi i32 [ %sub97, %cond.true ], [ %add100, %cond.false ]
  %add102 = add i32 %mul90, %cond101
  store i32 %add102, i32* %newcalc, align 4
  %62 = load i32, i32* %newcalc, align 4
  %63 = load i32, i32* %calc, align 4
  %cmp103 = icmp ult i32 %62, %63
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end106:                                        ; preds = %cond.end
  %64 = load i32, i32* %newcalc, align 4
  store i32 %64, i32* %calc, align 4
  br label %for.inc107

for.inc107:                                       ; preds = %if.end106, %if.then88
  %65 = load i8*, i8** %s.addr, align 4
  %incdec.ptr108 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr108, i8** %s.addr, align 4
  br label %for.cond56

for.end109:                                       ; preds = %lor.end83
  br label %if.end110

if.end110:                                        ; preds = %for.end109, %for.end
  %66 = load i8*, i8** %s.addr, align 4
  %67 = load i8, i8* %66, align 1
  %tobool111 = icmp ne i8 %67, 0
  br i1 %tobool111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end110
  store i32 0, i32* %retval, align 4
  br label %return

if.end113:                                        ; preds = %if.end110
  %68 = load i32, i32* %calc, align 4
  %69 = load i32*, i32** %retval.addr, align 4
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end113, %if.then112, %if.then105, %if.then52
  %70 = load i32, i32* %retval, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind
define i32 @setblock_fd(i32 %turnonblocking, i32 %fd, i32* %modep) #0 {
entry:
  %retval = alloca i32, align 4
  %turnonblocking.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %modep.addr = alloca i32*, align 4
  %st = alloca %struct.stat, align 8
  store i32 %turnonblocking, i32* %turnonblocking.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32* %modep, i32** %modep.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %st)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else21, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %if.else21, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %fd.addr, align 4
  %call1 = call i32 (i32, i32, ...) @fcntl(i32 %2, i32 3, i32 0)
  %3 = load i32*, i32** %modep.addr, align 4
  store i32 %call1, i32* %3, align 4
  %4 = load i32*, i32** %modep.addr, align 4
  %5 = load i32, i32* %4, align 4
  %cmp2 = icmp ne i32 %5, -1
  br i1 %cmp2, label %if.then3, label %if.end20

if.then3:                                         ; preds = %if.then
  %6 = load i32, i32* %turnonblocking.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %7 = load i32*, i32** %modep.addr, align 4
  %8 = load i32, i32* %7, align 4
  %and6 = and i32 %8, 2048
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load i32*, i32** %modep.addr, align 4
  %11 = load i32, i32* %10, align 4
  %or = or i32 %11, 2048
  %call8 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 4, i32 %or)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false, %if.then5
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end19

if.else:                                          ; preds = %if.then3
  %12 = load i32*, i32** %modep.addr, align 4
  %13 = load i32, i32* %12, align 4
  %and11 = and i32 %13, 2048
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %land.lhs.true13, label %if.end18

land.lhs.true13:                                  ; preds = %if.else
  %14 = load i32, i32* %fd.addr, align 4
  %15 = load i32*, i32** %modep.addr, align 4
  %16 = load i32, i32* %15, align 4
  %and14 = and i32 %16, -2049
  %call15 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 4, i32 %and14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true13, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end22

if.else21:                                        ; preds = %land.lhs.true, %entry
  %17 = load i32*, i32** %modep.addr, align 4
  store i32 -1, i32* %17, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then17, %if.then10
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: noinline nounwind
define i32 @setblock_stdin() #0 {
entry:
  %mode = alloca i32, align 4
  %call = call i32 @setblock_fd(i32 1, i32 0, i32* %mode)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define i32 @read_poll(i32 %fd, i32* %readchar, i32 %polltty, i32 %microseconds) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %readchar.addr = alloca i32*, align 4
  %polltty.addr = alloca i32, align 4
  %microseconds.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %mode = alloca i32, align 4
  %c = alloca i8, align 1
  %foofd = alloca %struct.fd_set, align 4
  %expire_tv = alloca %struct.timeval, align 4
  %ti = alloca %struct.ttyinfo, align 4
  %__i = alloca i32, align 4
  %__b = alloca i32*, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32* %readchar, i32** %readchar.addr, align 4
  store i32 %polltty, i32* %polltty.addr, align 4
  store i32 %microseconds, i32* %microseconds.addr, align 4
  store i32 -1, i32* %ret, align 4
  store i32 -1, i32* %mode, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %polltty.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %fd.addr, align 4
  %call = call i32 @isatty(i32 %2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %polltty.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %3 = load i32, i32* %polltty.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end16

land.lhs.true3:                                   ; preds = %if.end
  %4 = load i32, i32* %fd.addr, align 4
  %cmp4 = icmp sge i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end16

if.then5:                                         ; preds = %land.lhs.true3
  call void @gettyinfo(%struct.ttyinfo* %ti)
  %tio = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i32 6
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %polltty.addr, align 4
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.then5
  %tio8 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc9 = getelementptr inbounds %struct.termios, %struct.termios* %tio8, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc9, i32 0, i32 6
  store i8 0, i8* %arrayidx10, align 1
  %6 = load i32, i32* %microseconds.addr, align 4
  %div = sdiv i32 %6, 100000
  %conv11 = trunc i32 %div to i8
  %tio12 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc13 = getelementptr inbounds %struct.termios, %struct.termios* %tio12, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc13, i32 0, i32 5
  store i8 %conv11, i8* %arrayidx14, align 1
  call void @settyinfo(%struct.ttyinfo* %ti)
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.then5
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %land.lhs.true3, %if.end
  %7 = load i32, i32* %microseconds.addr, align 4
  %div17 = sdiv i32 %7, 1000000
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %expire_tv, i32 0, i32 0
  store i32 %div17, i32* %tv_sec, align 4
  %8 = load i32, i32* %microseconds.addr, align 4
  %rem = srem i32 %8, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %expire_tv, i32 0, i32 1
  store i32 %rem, i32* %tv_usec, align 4
  br label %do.body

do.body:                                          ; preds = %if.end16
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %foofd, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %fds_bits, i32 0, i32 0
  store i32* %arraydecay, i32** %__b, align 4
  store i32 32, i32* %__i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %9 = load i32, i32* %__i, align 4
  %tobool18 = icmp ne i32 %9, 0
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %__b, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %__b, align 4
  store i32 0, i32* %10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %__i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %__i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end
  %12 = load i32, i32* %fd.addr, align 4
  %cmp19 = icmp sgt i32 %12, -1
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %do.end
  %13 = load i32, i32* %fd.addr, align 4
  %rem22 = urem i32 %13, 32
  %shl = shl i32 1, %rem22
  %fds_bits23 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %foofd, i32 0, i32 0
  %14 = load i32, i32* %fd.addr, align 4
  %div24 = udiv i32 %14, 32
  %arrayidx25 = getelementptr inbounds [32 x i32], [32 x i32]* %fds_bits23, i32 0, i32 %div24
  %15 = load i32, i32* %arrayidx25, align 4
  %or = or i32 %15, %shl
  store i32 %or, i32* %arrayidx25, align 4
  %16 = load i32, i32* %fd.addr, align 4
  %add = add nsw i32 %16, 1
  %call26 = call i32 @select(i32 %add, %struct.fd_set* %foofd, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %expire_tv)
  store i32 %call26, i32* %ret, align 4
  br label %if.end28

if.else:                                          ; preds = %do.end
  %call27 = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %expire_tv)
  store i32 %call27, i32* %ret, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %17 = load i32, i32* %fd.addr, align 4
  %cmp29 = icmp sge i32 %17, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end53

land.lhs.true31:                                  ; preds = %if.end28
  %18 = load i32, i32* %ret, align 4
  %cmp32 = icmp slt i32 %18, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.end53

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %19 = load i32, i32* @errflag, align 4
  %tobool35 = icmp ne i32 %19, 0
  br i1 %tobool35, label %if.end53, label %if.then36

if.then36:                                        ; preds = %land.lhs.true34
  %20 = load i32, i32* %polltty.addr, align 4
  %tobool37 = icmp ne i32 %20, 0
  br i1 %tobool37, label %land.lhs.true41, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.then36
  %21 = load i32, i32* %fd.addr, align 4
  %call39 = call i32 @setblock_fd(i32 0, i32 %21, i32* %mode)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true41, label %if.end47

land.lhs.true41:                                  ; preds = %lor.lhs.false38, %if.then36
  %22 = load i32, i32* %fd.addr, align 4
  %call42 = call i32 @read(i32 %22, i8* %c, i32 1)
  %cmp43 = icmp sgt i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %land.lhs.true41
  %23 = load i8, i8* %c, align 1
  %conv46 = sext i8 %23 to i32
  %24 = load i32*, i32** %readchar.addr, align 4
  store i32 %conv46, i32* %24, align 4
  store i32 1, i32* %ret, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true41, %lor.lhs.false38
  %25 = load i32, i32* %mode, align 4
  %cmp48 = icmp ne i32 %25, -1
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  %26 = load i32, i32* %fd.addr, align 4
  %27 = load i32, i32* %mode, align 4
  %call51 = call i32 (i32, i32, ...) @fcntl(i32 %26, i32 4, i32 %27)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %land.lhs.true34, %land.lhs.true31, %if.end28
  %28 = load i32, i32* %polltty.addr, align 4
  %tobool54 = icmp ne i32 %28, 0
  br i1 %tobool54, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.end53
  %tio56 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc57 = getelementptr inbounds %struct.termios, %struct.termios* %tio56, i32 0, i32 5
  %arrayidx58 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc57, i32 0, i32 6
  store i8 1, i8* %arrayidx58, align 1
  %tio59 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc60 = getelementptr inbounds %struct.termios, %struct.termios* %tio59, i32 0, i32 5
  %arrayidx61 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc60, i32 0, i32 5
  store i8 0, i8* %arrayidx61, align 1
  call void @settyinfo(%struct.ttyinfo* %ti)
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.end53
  %29 = load i32, i32* %ret, align 4
  %cmp63 = icmp sgt i32 %29, 0
  %conv64 = zext i1 %cmp63 to i32
  ret i32 %conv64
}

declare i32 @isatty(i32) #2

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

declare i32 @read(i32, i8*, i32) #2

; Function Attrs: noinline nounwind
define i32 @zsleep(i32 %us) #0 {
entry:
  %retval = alloca i32, align 4
  %us.addr = alloca i32, align 4
  %sleeptime = alloca %struct.timespec, align 4
  %rem1 = alloca %struct.timespec, align 4
  %ret = alloca i32, align 4
  store i32 %us, i32* %us.addr, align 4
  %0 = load i32, i32* %us.addr, align 4
  %div = sdiv i32 %0, 1000000
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %sleeptime, i32 0, i32 0
  store i32 %div, i32* %tv_sec, align 4
  %1 = load i32, i32* %us.addr, align 4
  %rem = srem i32 %1, 1000000
  %mul = mul nsw i32 %rem, 1000
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %sleeptime, i32 0, i32 1
  store i32 %mul, i32* %tv_nsec, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %call = call i32 @nanosleep(%struct.timespec* %sleeptime, %struct.timespec* %rem1)
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.cond
  %call2 = call i32* @__errno_location()
  %3 = load i32, i32* %call2, align 4
  %cmp3 = icmp ne i32 %3, 4
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %4 = bitcast %struct.timespec* %sleeptime to i8*
  %5 = bitcast %struct.timespec* %rem1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 8, i32 4, i1 false)
  br label %for.cond

return:                                           ; preds = %if.then4, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) #2

; Function Attrs: noinline nounwind
define i32 @zsleep_random(i32 %max_us, i32 %end_time) #0 {
entry:
  %retval = alloca i32, align 4
  %max_us.addr = alloca i32, align 4
  %end_time.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %now = alloca i32, align 4
  store i32 %max_us, i32* %max_us.addr, align 4
  store i32 %end_time, i32* %end_time.addr, align 4
  %call = call i32 @time(i32* null)
  store i32 %call, i32* %now, align 4
  %call1 = call i32 @rand()
  %and = and i32 %call1, 65535
  store i32 %and, i32* %r, align 4
  %0 = load i32, i32* %max_us.addr, align 4
  %shr = ashr i32 %0, 16
  %1 = load i32, i32* %r, align 4
  %mul = mul nsw i32 %shr, %1
  store i32 %mul, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %now, align 4
  %4 = load i32, i32* %r, align 4
  %div = sdiv i32 %4, 1000000
  %add = add nsw i32 %3, %div
  %5 = load i32, i32* %end_time.addr, align 4
  %cmp = icmp sgt i32 %add, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %r, align 4
  %shr2 = ashr i32 %7, 1
  store i32 %shr2, i32* %r, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %r, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %9 = load i32, i32* %r, align 4
  %call4 = call i32 @zsleep(i32 %9)
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare i32 @rand() #2

; Function Attrs: noinline nounwind
define i32 @checkrmall(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %rmd = alloca %struct.__dirstream*, align 4
  %count = alloca i32, align 4
  %max_count = alloca i32, align 4
  %ignoredots = alloca i32, align 4
  %fname = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** @pwd, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 1
  %4 = load i8, i8* %arrayidx, align 1
  %tobool3 = icmp ne i8 %4, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %5 = load i8*, i8** @pwd, align 4
  %6 = load i8*, i8** %s.addr, align 4
  %call = call i8* @zhtricat(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %6)
  store i8* %call, i8** %s.addr, align 4
  br label %if.end6

if.else:                                          ; preds = %if.then2
  %7 = load i8*, i8** %s.addr, align 4
  %call5 = call i8* @dyncat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %7)
  store i8* %call5, i8** %s.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  store i32 100, i32* %max_count, align 4
  %8 = load i8*, i8** %s.addr, align 4
  %call8 = call i8* @unmeta(i8* %8)
  %call9 = call %struct.__dirstream* @opendir(i8* %call8)
  store %struct.__dirstream* %call9, %struct.__dirstream** %rmd, align 4
  %tobool10 = icmp ne %struct.__dirstream* %call9, null
  br i1 %tobool10, label %if.then11, label %if.end26

if.then11:                                        ; preds = %if.end7
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 65), align 1
  %tobool12 = icmp ne i8 %9, 0
  %lnot = xor i1 %tobool12, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ignoredots, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.then19, %if.then11
  %10 = load %struct.__dirstream*, %struct.__dirstream** %rmd, align 4
  %call13 = call i8* @zreaddir(%struct.__dirstream* %10, i32 1)
  store i8* %call13, i8** %fname, align 4
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %ignoredots, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %while.body
  %12 = load i8*, i8** %fname, align 4
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 46
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  br label %while.cond

if.end20:                                         ; preds = %land.lhs.true, %while.body
  %14 = load i32, i32* %count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %count, align 4
  %15 = load i32, i32* %count, align 4
  %cmp21 = icmp sgt i32 %15, 100
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  br label %while.end

if.end24:                                         ; preds = %if.end20
  br label %while.cond

while.end:                                        ; preds = %if.then23, %while.cond
  %16 = load %struct.__dirstream*, %struct.__dirstream** %rmd, align 4
  %call25 = call i32 @closedir(%struct.__dirstream* %16)
  br label %if.end26

if.end26:                                         ; preds = %while.end, %if.end7
  %17 = load i32, i32* %count, align 4
  %cmp27 = icmp sgt i32 %17, 100
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.end26
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i32 0, i32 0), i32 100)
  br label %if.end45

if.else31:                                        ; preds = %if.end26
  %19 = load i32, i32* %count, align 4
  %cmp32 = icmp eq i32 %19, 1
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else31
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end44

if.else36:                                        ; preds = %if.else31
  %21 = load i32, i32* %count, align 4
  %cmp37 = icmp sgt i32 %21, 0
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else36
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %23 = load i32, i32* %count, align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.40, i32 0, i32 0), i32 %23)
  br label %if.end43

if.else41:                                        ; preds = %if.else36
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then34
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then29
  %25 = load i8*, i8** %s.addr, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call46 = call i32 @mb_niceformat(i8* %25, %struct._IO_FILE* %26, i8** null, i32 0)
  %27 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 157), align 1
  %tobool47 = icmp ne i8 %27, 0
  br i1 %tobool47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.end45
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call50 = call i32 @fflush(%struct._IO_FILE* %29)
  call void @zbeep()
  %call51 = call i32 @sleep(i32 10)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call52 = call i32 @fputc(i32 10, %struct._IO_FILE* %30)
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end45
  %31 = load i32, i32* @errflag, align 4
  %tobool54 = icmp ne i32 %31, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end53
  store i32 0, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end53
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call58 = call i32 @fflush(%struct._IO_FILE* %33)
  call void @zbeep()
  %call59 = call i32 @getquery(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 1)
  %cmp60 = icmp eq i32 %call59, 121
  %conv61 = zext i1 %cmp60 to i32
  store i32 %conv61, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.then55, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

declare %struct.__dirstream* @opendir(i8*) #2

; Function Attrs: noinline nounwind
define i8* @zreaddir(%struct.__dirstream* %dir, i32 %ignoredots) #0 {
entry:
  %retval = alloca i8*, align 4
  %dir.addr = alloca %struct.__dirstream*, align 4
  %ignoredots.addr = alloca i32, align 4
  %de = alloca %struct.dirent*, align 4
  store %struct.__dirstream* %dir, %struct.__dirstream** %dir.addr, align 4
  store i32 %ignoredots, i32* %ignoredots.addr, align 4
  br label %do.body

do.body:                                          ; preds = %land.end15, %entry
  %0 = load %struct.__dirstream*, %struct.__dirstream** %dir.addr, align 4
  %call = call %struct.dirent* @readdir(%struct.__dirstream* %0)
  store %struct.dirent* %call, %struct.dirent** %de, align 4
  %1 = load %struct.dirent*, %struct.dirent** %de, align 4
  %tobool = icmp ne %struct.dirent* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %2 = load i32, i32* %ignoredots.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %land.end15

land.lhs.true:                                    ; preds = %do.cond
  %3 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 6
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %land.rhs, label %land.end15

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name3 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name3, i32 0, i32 1
  %6 = load i8, i8* %arrayidx4, align 1
  %tobool5 = icmp ne i8 %6, 0
  br i1 %tobool5, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %7 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name6 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name6, i32 0, i32 1
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 46
  br i1 %cmp9, label %land.rhs11, label %land.end

land.rhs11:                                       ; preds = %lor.rhs
  %9 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name12 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name12, i32 0, i32 2
  %10 = load i8, i8* %arrayidx13, align 1
  %tobool14 = icmp ne i8 %10, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs11, %lor.rhs
  %11 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs11 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %11, %land.end ]
  br label %land.end15

land.end15:                                       ; preds = %lor.end, %land.lhs.true, %do.cond
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %12, %lor.end ]
  br i1 %13, label %do.body, label %do.end

do.end:                                           ; preds = %land.end15
  %14 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name16 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 6
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name16, i32 0, i32 0
  %call17 = call i8* @metafy(i8* %arraydecay, i32 -1, i32 2)
  store i8* %call17, i8** %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load i8*, i8** %retval, align 4
  ret i8* %15
}

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: noinline nounwind
define void @zbeep() #0 {
entry:
  %vb = alloca i8*, align 4
  %len = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp11 = alloca %struct.__sigset_t, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call = call i8* @getsparam_u(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0))
  store i8* %call, i8** %vb, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %vb, align 4
  %call1 = call i8* @getkeystring(i8* %1, i32* %len, i32 7, i32* null)
  store i8* %call1, i8** %vb, align 4
  %2 = load i32, i32* @SHTTY, align 4
  %3 = load i8*, i8** %vb, align 4
  %4 = load i32, i32* %len, align 4
  %call2 = call i32 @write_loop(i32 %2, i8* %3, i32 %4)
  br label %if.end6

if.else:                                          ; preds = %entry
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 22), align 1
  %tobool3 = icmp ne i8 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %6 = load i32, i32* @SHTTY, align 4
  %call5 = call i32 @write_loop(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end6
  %7 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool7 = icmp ne i32 %dec, 0
  br i1 %tobool7, label %if.end12, label %if.then8

if.then8:                                         ; preds = %do.body
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body9
  %8 = load i32, i32* @queue_front, align 4
  %9 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %10, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %11 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %11
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %12 = bitcast %struct.__sigset_t* %oset to i8*
  %13 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 128, i32 4, i1 false)
  %14 = load i32, i32* @queue_front, align 4
  %arrayidx10 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %14
  %15 = load i32, i32* %arrayidx10, align 4
  call void @zhandler(i32 %15)
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

declare i32 @sleep(i32) #2

; Function Attrs: noinline nounwind
define i32 @getquery(i8* %valid_chars, i32 %purge) #0 {
entry:
  %retval = alloca i32, align 4
  %valid_chars.addr = alloca i8*, align 4
  %purge.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %nl = alloca i32, align 4
  %isem = alloca i32, align 4
  %ti = alloca %struct.ttyinfo, align 4
  %buf = alloca i8, align 1
  %mbs = alloca %struct.__mbstate_t, align 4
  %cc = alloca i8, align 1
  %ret = alloca i32, align 4
  store i8* %valid_chars, i8** %valid_chars.addr, align 4
  store i32 %purge, i32* %purge.addr, align 4
  store i32 0, i32* %nl, align 4
  %0 = load i8*, i8** @term, align 4
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %isem, align 4
  %1 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %1)
  call void @gettyinfo(%struct.ttyinfo* %ti)
  %tio = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 3
  %2 = load i32, i32* %c_lflag, align 4
  %and = and i32 %2, -9
  store i32 %and, i32* %c_lflag, align 4
  %3 = load i32, i32* %isem, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tio2 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_lflag3 = getelementptr inbounds %struct.termios, %struct.termios* %tio2, i32 0, i32 3
  %4 = load i32, i32* %c_lflag3, align 4
  %and4 = and i32 %4, -3
  store i32 %and4, i32* %c_lflag3, align 4
  %tio5 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio5, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i32 6
  store i8 1, i8* %arrayidx, align 1
  %tio6 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc7 = getelementptr inbounds %struct.termios, %struct.termios* %tio6, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc7, i32 0, i32 5
  store i8 0, i8* %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @settyinfo(%struct.ttyinfo* %ti)
  %5 = load i32, i32* %purge.addr, align 4
  %call9 = call i32 @noquery(i32 %5)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end
  %6 = load i32, i32* %isem, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then11
  call void @settyinfo(%struct.ttyinfo* @shttyinfo)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then11
  %7 = load i32, i32* @SHTTY, align 4
  %call15 = call i32 @write_loop(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i32 2)
  store i32 110, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.end16
  %call17 = call i32 @read1char(i32 0)
  store i32 %call17, i32* %c, align 4
  %cmp = icmp sge i32 %call17, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %8, 89
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %while.body
  store i32 121, i32* %c, align 4
  br label %if.end23

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %9, 78
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.else
  store i32 110, i32* %c, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then19
  %10 = load i8*, i8** %valid_chars.addr, align 4
  %tobool24 = icmp ne i8* %10, null
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  br label %while.end

if.end26:                                         ; preds = %if.end23
  %11 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %11, 10
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %12 = load i8*, i8** %valid_chars.addr, align 4
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  store i32 %conv, i32* %c, align 4
  store i32 1, i32* %nl, align 4
  br label %while.end

if.end29:                                         ; preds = %if.end26
  %14 = load i8*, i8** %valid_chars.addr, align 4
  %15 = load i32, i32* %c, align 4
  %call30 = call i8* @strchr(i8* %14, i32 %15)
  %tobool31 = icmp ne i8* %call30, null
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  store i32 1, i32* %nl, align 4
  br label %while.end

if.end33:                                         ; preds = %if.end29
  call void @zbeep()
  br label %while.cond

while.end:                                        ; preds = %if.then32, %if.then28, %if.then25, %while.cond
  %16 = load i32, i32* %c, align 4
  %cmp34 = icmp sge i32 %16, 0
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %while.end
  %17 = load i32, i32* %c, align 4
  %conv37 = trunc i32 %17 to i8
  store i8 %conv37, i8* %buf, align 1
  %18 = load i32, i32* @SHTTY, align 4
  %call38 = call i32 @write_loop(i32 %18, i8* %buf, i32 1)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %while.end
  %19 = load i32, i32* %nl, align 4
  %tobool40 = icmp ne i32 %19, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %20 = load i32, i32* @SHTTY, align 4
  %call42 = call i32 @write_loop(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0), i32 1)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  %21 = load i32, i32* %isem, align 4
  %tobool44 = icmp ne i32 %21, 0
  br i1 %tobool44, label %if.then45, label %if.else58

if.then45:                                        ; preds = %if.end43
  %22 = load i32, i32* %c, align 4
  %cmp46 = icmp ne i32 %22, 10
  br i1 %cmp46, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.then45
  br label %while.cond49

while.cond49:                                     ; preds = %while.body55, %if.then48
  %call50 = call i32 @read1char(i32 1)
  store i32 %call50, i32* %d, align 4
  %cmp51 = icmp sge i32 %call50, 0
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond49
  %23 = load i32, i32* %d, align 4
  %cmp53 = icmp ne i32 %23, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond49
  %24 = phi i1 [ false, %while.cond49 ], [ %cmp53, %land.rhs ]
  br i1 %24, label %while.body55, label %while.end56

while.body55:                                     ; preds = %land.end
  br label %while.cond49

while.end56:                                      ; preds = %land.end
  br label %if.end57

if.end57:                                         ; preds = %while.end56, %if.then45
  br label %if.end84

if.else58:                                        ; preds = %if.end43
  %25 = load i32, i32* %c, align 4
  %cmp59 = icmp ne i32 %25, 10
  br i1 %cmp59, label %land.lhs.true, label %if.end83

land.lhs.true:                                    ; preds = %if.else58
  %26 = load i8*, i8** %valid_chars.addr, align 4
  %tobool61 = icmp ne i8* %26, null
  br i1 %tobool61, label %if.end83, label %if.then62

if.then62:                                        ; preds = %land.lhs.true
  %27 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %conv63 = sext i8 %27 to i32
  %tobool64 = icmp ne i32 %conv63, 0
  br i1 %tobool64, label %land.lhs.true65, label %if.end81

land.lhs.true65:                                  ; preds = %if.then62
  %28 = load i32, i32* %c, align 4
  %cmp66 = icmp sge i32 %28, 0
  br i1 %cmp66, label %if.then68, label %if.end81

if.then68:                                        ; preds = %land.lhs.true65
  %29 = load i32, i32* %c, align 4
  %conv69 = trunc i32 %29 to i8
  store i8 %conv69, i8* %cc, align 1
  %30 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %30, i8 0, i32 8, i32 4, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %if.end79, %if.then68
  %call70 = call i32 @mbrlen(i8* %cc, i32 1, %struct.__mbstate_t* %mbs)
  store i32 %call70, i32* %ret, align 4
  %31 = load i32, i32* %ret, align 4
  %cmp71 = icmp ne i32 %31, -2
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.cond
  br label %for.end

if.end74:                                         ; preds = %for.cond
  %call75 = call i32 @read1char(i32 1)
  store i32 %call75, i32* %c, align 4
  %32 = load i32, i32* %c, align 4
  %cmp76 = icmp slt i32 %32, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  br label %for.end

if.end79:                                         ; preds = %if.end74
  %33 = load i32, i32* %c, align 4
  %conv80 = trunc i32 %33 to i8
  store i8 %conv80, i8* %cc, align 1
  br label %for.cond

for.end:                                          ; preds = %if.then78, %if.then73
  br label %if.end81

if.end81:                                         ; preds = %for.end, %land.lhs.true65, %if.then62
  %34 = load i32, i32* @SHTTY, align 4
  %call82 = call i32 @write_loop(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0), i32 1)
  br label %if.end83

if.end83:                                         ; preds = %if.end81, %land.lhs.true, %if.else58
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end57
  call void @settyinfo(%struct.ttyinfo* @shttyinfo)
  %35 = load i32, i32* %c, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.end14
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind
define i32 @read_loop(i32 %fd, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %got = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %got, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.then7, %if.end14
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 4
  %3 = load i32, i32* %len.addr, align 4
  %call = call i32 @read(i32 %1, i8* %2, i32 %3)
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %5 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %ret, align 4
  %cmp1 = icmp sle i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end14

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.then2
  %call5 = call i32* @__errno_location()
  %8 = load i32, i32* %call5, align 4
  %cmp6 = icmp eq i32 %8, 4
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  br label %while.body

if.end8:                                          ; preds = %if.then4
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load i32, i32* @SHTTY, align 4
  %cmp9 = icmp ne i32 %9, %10
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %call11 = call i32* @__errno_location()
  %11 = load i32, i32* %call11, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 %11)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then2
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %13 = load i32, i32* %ret, align 4
  %14 = load i8*, i8** %buf.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %14, i32 %13
  store i8* %add.ptr, i8** %buf.addr, align 4
  %15 = load i32, i32* %ret, align 4
  %16 = load i32, i32* %len.addr, align 4
  %sub = sub i32 %16, %15
  store i32 %sub, i32* %len.addr, align 4
  br label %while.body

while.end:                                        ; preds = %if.then
  %17 = load i32, i32* %got, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end13
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind
define i32 @write_loop(i32 %fd, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %wrote = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %wrote, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.then5, %if.end11
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 4
  %3 = load i32, i32* %len.addr, align 4
  %call = call i32 @write(i32 %1, i8* %2, i32 %3)
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %5 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %ret, align 4
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %call3 = call i32* @__errno_location()
  %7 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %7, 4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  br label %while.body

if.end6:                                          ; preds = %if.then2
  %8 = load i32, i32* %fd.addr, align 4
  %9 = load i32, i32* @SHTTY, align 4
  %cmp7 = icmp ne i32 %8, %9
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %call9 = call i32* @__errno_location()
  %10 = load i32, i32* %call9, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 %10)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4
  %12 = load i8*, i8** %buf.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %12, i32 %11
  store i8* %add.ptr, i8** %buf.addr, align 4
  %13 = load i32, i32* %ret, align 4
  %14 = load i32, i32* %len.addr, align 4
  %sub = sub i32 %14, %13
  store i32 %sub, i32* %len.addr, align 4
  br label %while.body

while.end:                                        ; preds = %if.then
  %15 = load i32, i32* %wrote, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end10
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare i32 @write(i32, i8*, i32) #2

; Function Attrs: noinline nounwind
define i32 @noquery(i32 %purge) #0 {
entry:
  %purge.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %purge, i32* %purge.addr, align 4
  store i32 0, i32* %val, align 4
  %0 = load i32, i32* @SHTTY, align 4
  %1 = bitcast i32* %val to i8*
  %call = call i32 (i32, i32, ...) @ioctl(i32 %0, i32 21531, i8* %1)
  %2 = load i32, i32* %purge.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %val, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @SHTTY, align 4
  %call2 = call i32 @read(i32 %4, i8* %c, i32 1)
  %cmp = icmp ne i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %val, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %val, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end4

if.end4:                                          ; preds = %for.end, %entry
  %6 = load i32, i32* %val, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define void @attachtty(i32 %pgrp) #0 {
entry:
  %pgrp.addr = alloca i32, align 4
  store i32 %pgrp, i32* %pgrp.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv1 = sext i8 %1 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %if.then, label %if.end25

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* @SHTTY, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %land.lhs.true4, label %if.end24

land.lhs.true4:                                   ; preds = %if.then
  %3 = load i32, i32* @SHTTY, align 4
  %4 = load i32, i32* %pgrp.addr, align 4
  %call = call i32 @tcsetpgrp(i32 %3, i32 %4)
  %cmp5 = icmp eq i32 %call, -1
  br i1 %cmp5, label %land.lhs.true7, label %if.end24

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %5 = load i32, i32* @attachtty.ep, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.end24, label %if.then9

if.then9:                                         ; preds = %land.lhs.true7
  %6 = load i32, i32* %pgrp.addr, align 4
  %7 = load i32, i32* @mypgrp, align 4
  %cmp10 = icmp ne i32 %6, %7
  br i1 %cmp10, label %land.lhs.true12, label %if.else

land.lhs.true12:                                  ; preds = %if.then9
  %8 = load i32, i32* %pgrp.addr, align 4
  %sub = sub nsw i32 0, %8
  %call13 = call i32 @kill(i32 %sub, i32 0)
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.lhs.true12
  %9 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %9)
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true12, %if.then9
  %call17 = call i32* @__errno_location()
  %10 = load i32, i32* %call17, align 4
  %cmp18 = icmp ne i32 %10, 25
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.else
  %call21 = call i32* @__errno_location()
  %11 = load i32, i32* %call21, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call22 = call i32 @fflush(%struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.else
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  store i32 1, i32* @attachtty.ep, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then16
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.lhs.true7, %land.lhs.true4, %if.then
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @read1char(i32 %echo) #0 {
entry:
  %retval = alloca i32, align 4
  %echo.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %q = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp3 = alloca %struct.__sigset_t, align 4
  store i32 %echo, i32* %echo.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  store i32 %0, i32* %q, align 4
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
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %5 = bitcast %struct.__sigset_t* %oset to i8*
  %6 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 128, i32 4, i1 false)
  %7 = load i32, i32* @queue_front, align 4
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %7
  %8 = load i32, i32* %arrayidx2, align 4
  call void @zhandler(i32 %8)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp3, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %do.end4

do.end4:                                          ; preds = %do.end
  br label %while.cond5

while.cond5:                                      ; preds = %if.end, %do.end4
  %9 = load i32, i32* @SHTTY, align 4
  %call = call i32 @read(i32 %9, i8* %c, i32 1)
  %cmp6 = icmp ne i32 %call, 1
  br i1 %cmp6, label %while.body7, label %while.end16

while.body7:                                      ; preds = %while.cond5
  %call8 = call i32* @__errno_location()
  %10 = load i32, i32* %call8, align 4
  %cmp9 = icmp ne i32 %10, 4
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body7
  %11 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* @retflag, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %13 = load i32, i32* @breaks, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %14 = load i32, i32* @contflag, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false, %while.body7
  %15 = load i32, i32* %q, align 4
  store i32 %15, i32* @queueing_enabled, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false14
  br label %while.cond5

while.end16:                                      ; preds = %while.cond5
  %16 = load i32, i32* %q, align 4
  store i32 %16, i32* @queueing_enabled, align 4
  %17 = load i32, i32* %echo.addr, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %while.end16
  %18 = load i32, i32* @SHTTY, align 4
  %call19 = call i32 @write_loop(i32 %18, i8* %c, i32 1)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.end16
  %19 = load i8, i8* %c, align 1
  %conv = zext i8 %19 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare i8* @strchr(i8*, i32) #2

declare i32 @mbrlen(i8*, i32, %struct.__mbstate_t*) #2

; Function Attrs: noinline nounwind
define void @spckword(i8** %s, i32 %hist, i32 %cmd, i32 %ask) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %hist.addr = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %ask.addr = alloca i32, align 4
  %t = alloca i8*, align 4
  %correct_ignore = alloca i8*, align 4
  %ic = alloca i8, align 1
  %preflen = alloca i32, align 4
  %autocd = alloca i32, align 4
  %ne = alloca i32, align 4
  %pp = alloca i8**, align 4
  %bestcd = alloca [4097 x i8], align 1
  %thisdist = alloca i32, align 4
  %x = alloca i32, align 4
  %u = alloca i8*, align 4
  %pptbuf = alloca i8*, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 %hist, i32* %hist.addr, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  store i32 %ask, i32* %ask.addr, align 4
  store i8 0, i8* %ic, align 1
  store i32 0, i32* %preflen, align 4
  %0 = load i32, i32* %cmd.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 7), align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i8**, i8*** %s.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %4 = load i8**, i8*** %s.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %call4 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %autocd, align 4
  %7 = load i32, i32* @histdone, align 4
  %and = and i32 %7, 2
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %8 = load i8**, i8*** %s.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv7, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %11 = load i8**, i8*** %s.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %13 = load i8, i8* %12, align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 37
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %land.end
  br label %if.end285

if.end:                                           ; preds = %lor.lhs.false9
  %14 = load i8**, i8*** %s.addr, align 4
  %15 = load i8*, i8** %14, align 4
  %call13 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  br label %if.end285

if.end16:                                         ; preds = %if.end
  %16 = load i8**, i8*** %s.addr, align 4
  %17 = load i8*, i8** %16, align 4
  %arrayidx = getelementptr inbounds i8, i8* %17, i32 0
  %18 = load i8, i8* %arrayidx, align 1
  %tobool17 = icmp ne i8 %18, 0
  br i1 %tobool17, label %lor.lhs.false18, label %if.then21

lor.lhs.false18:                                  ; preds = %if.end16
  %19 = load i8**, i8*** %s.addr, align 4
  %20 = load i8*, i8** %19, align 4
  %arrayidx19 = getelementptr inbounds i8, i8* %20, i32 1
  %21 = load i8, i8* %arrayidx19, align 1
  %tobool20 = icmp ne i8 %21, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false18, %if.end16
  br label %if.end285

if.end22:                                         ; preds = %lor.lhs.false18
  %22 = load i32, i32* %cmd.addr, align 4
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %if.then24, label %if.end53

if.then24:                                        ; preds = %if.end22
  %23 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %23, i32 0, i32 9
  %24 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %25 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %26 = load i8**, i8*** %s.addr, align 4
  %27 = load i8*, i8** %26, align 4
  %call25 = call %struct.hashnode* %24(%struct.hashtable* %25, i8* %27)
  %tobool26 = icmp ne %struct.hashnode* %call25, null
  br i1 %tobool26, label %if.then43, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.then24
  %28 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %getnode28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 9
  %29 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode28, align 4
  %30 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %31 = load i8**, i8*** %s.addr, align 4
  %32 = load i8*, i8** %31, align 4
  %call29 = call %struct.hashnode* %29(%struct.hashtable* %30, i8* %32)
  %tobool30 = icmp ne %struct.hashnode* %call29, null
  br i1 %tobool30, label %if.then43, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %33 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %getnode32 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %33, i32 0, i32 9
  %34 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode32, align 4
  %35 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %36 = load i8**, i8*** %s.addr, align 4
  %37 = load i8*, i8** %36, align 4
  %call33 = call %struct.hashnode* %34(%struct.hashtable* %35, i8* %37)
  %tobool34 = icmp ne %struct.hashnode* %call33, null
  br i1 %tobool34, label %if.then43, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %38 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %getnode36 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 9
  %39 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode36, align 4
  %40 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %41 = load i8**, i8*** %s.addr, align 4
  %42 = load i8*, i8** %41, align 4
  %call37 = call %struct.hashnode* %39(%struct.hashtable* %40, i8* %42)
  %tobool38 = icmp ne %struct.hashnode* %call37, null
  br i1 %tobool38, label %if.then43, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %43 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %getnode40 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %43, i32 0, i32 9
  %44 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode40, align 4
  %45 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %46 = load i8**, i8*** %s.addr, align 4
  %47 = load i8*, i8** %46, align 4
  %call41 = call %struct.hashnode* %44(%struct.hashtable* %45, i8* %47)
  %tobool42 = icmp ne %struct.hashnode* %call41, null
  br i1 %tobool42, label %if.then43, label %if.else

if.then43:                                        ; preds = %lor.lhs.false39, %lor.lhs.false35, %lor.lhs.false31, %lor.lhs.false27, %if.then24
  br label %if.end285

if.else:                                          ; preds = %lor.lhs.false39
  %48 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 71), align 1
  %tobool44 = icmp ne i8 %48, 0
  br i1 %tobool44, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.else
  %49 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %49, i32 0, i32 6
  %50 = load void (%struct.hashtable*)*, void (%struct.hashtable*)** %filltable, align 4
  %51 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  call void %50(%struct.hashtable* %51)
  %52 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %getnode46 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %52, i32 0, i32 9
  %53 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode46, align 4
  %54 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %55 = load i8**, i8*** %s.addr, align 4
  %56 = load i8*, i8** %55, align 4
  %call47 = call %struct.hashnode* %53(%struct.hashtable* %54, i8* %56)
  %tobool48 = icmp ne %struct.hashnode* %call47, null
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  br label %if.end285

if.end50:                                         ; preds = %if.then45
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.else
  br label %if.end52

if.end52:                                         ; preds = %if.end51
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end22
  %57 = load i8**, i8*** %s.addr, align 4
  %58 = load i8*, i8** %57, align 4
  store i8* %58, i8** %t, align 4
  %59 = load i8*, i8** %t, align 4
  %60 = load i8, i8* %59, align 1
  %conv54 = sext i8 %60 to i32
  %cmp55 = icmp eq i32 %conv54, -104
  br i1 %cmp55, label %if.then65, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end53
  %61 = load i8*, i8** %t, align 4
  %62 = load i8, i8* %61, align 1
  %conv58 = sext i8 %62 to i32
  %cmp59 = icmp eq i32 %conv58, -115
  br i1 %cmp59, label %if.then65, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %63 = load i8*, i8** %t, align 4
  %64 = load i8, i8* %63, align 1
  %conv62 = sext i8 %64 to i32
  %cmp63 = icmp eq i32 %conv62, -123
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false61, %lor.lhs.false57, %if.end53
  %65 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %lor.lhs.false61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end66
  %66 = load i8*, i8** %t, align 4
  %67 = load i8, i8* %66, align 1
  %tobool67 = icmp ne i8 %67, 0
  br i1 %tobool67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i8*, i8** %t, align 4
  %69 = load i8, i8* %68, align 1
  %idxprom = zext i8 %69 to i32
  %arrayidx68 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %70 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %70 to i32
  %and70 = and i32 %conv69, 16
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %for.body
  br label %if.end285

if.end73:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end73
  %71 = load i8*, i8** %t, align 4
  %incdec.ptr74 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr74, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** @best, align 4
  %72 = load i8**, i8*** %s.addr, align 4
  %73 = load i8*, i8** %72, align 4
  store i8* %73, i8** %t, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc83, %for.end
  %74 = load i8*, i8** %t, align 4
  %75 = load i8, i8* %74, align 1
  %tobool76 = icmp ne i8 %75, 0
  br i1 %tobool76, label %for.body77, label %for.end85

for.body77:                                       ; preds = %for.cond75
  %76 = load i8*, i8** %t, align 4
  %77 = load i8, i8* %76, align 1
  %conv78 = sext i8 %77 to i32
  %cmp79 = icmp eq i32 %conv78, 47
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %for.body77
  br label %for.end85

if.end82:                                         ; preds = %for.body77
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %78 = load i8*, i8** %t, align 4
  %incdec.ptr84 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr84, i8** %t, align 4
  br label %for.cond75

for.end85:                                        ; preds = %if.then81, %for.cond75
  %79 = load i8**, i8*** %s.addr, align 4
  %80 = load i8*, i8** %79, align 4
  %81 = load i8, i8* %80, align 1
  %conv86 = sext i8 %81 to i32
  %cmp87 = icmp eq i32 %conv86, -104
  br i1 %cmp87, label %land.lhs.true89, label %if.end92

land.lhs.true89:                                  ; preds = %for.end85
  %82 = load i8*, i8** %t, align 4
  %83 = load i8, i8* %82, align 1
  %tobool90 = icmp ne i8 %83, 0
  br i1 %tobool90, label %if.end92, label %if.then91

if.then91:                                        ; preds = %land.lhs.true89
  br label %if.end285

if.end92:                                         ; preds = %land.lhs.true89, %for.end85
  %call93 = call i8* @getsparam(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0))
  store i8* %call93, i8** %correct_ignore, align 4
  %cmp94 = icmp ne i8* %call93, null
  br i1 %cmp94, label %if.then96, label %if.else99

if.then96:                                        ; preds = %if.end92
  %84 = load i8*, i8** %correct_ignore, align 4
  %call97 = call i8* @dupstring(i8* %84)
  store i8* %call97, i8** %correct_ignore, align 4
  call void @tokenize(i8* %call97)
  %85 = load i8*, i8** %correct_ignore, align 4
  call void @remnulargs(i8* %85)
  %86 = load i8*, i8** %correct_ignore, align 4
  %call98 = call %struct.patprog* @patcompile(i8* %86, i32 0, i8** null)
  store %struct.patprog* %call98, %struct.patprog** @spckpat, align 4
  br label %if.end100

if.else99:                                        ; preds = %if.end92
  store %struct.patprog* null, %struct.patprog** @spckpat, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then96
  %call101 = call i8* @getsparam(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0))
  store i8* %call101, i8** %correct_ignore, align 4
  %cmp102 = icmp ne i8* %call101, null
  br i1 %cmp102, label %if.then104, label %if.else107

if.then104:                                       ; preds = %if.end100
  %87 = load i8*, i8** %correct_ignore, align 4
  %call105 = call i8* @dupstring(i8* %87)
  store i8* %call105, i8** %correct_ignore, align 4
  call void @tokenize(i8* %call105)
  %88 = load i8*, i8** %correct_ignore, align 4
  call void @remnulargs(i8* %88)
  %89 = load i8*, i8** %correct_ignore, align 4
  %call106 = call %struct.patprog* @patcompile(i8* %89, i32 0, i8** null)
  store %struct.patprog* %call106, %struct.patprog** @spnamepat, align 4
  br label %if.end108

if.else107:                                       ; preds = %if.end100
  store %struct.patprog* null, %struct.patprog** @spnamepat, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else107, %if.then104
  %90 = load i8**, i8*** %s.addr, align 4
  %91 = load i8*, i8** %90, align 4
  %92 = load i8, i8* %91, align 1
  %conv109 = sext i8 %92 to i32
  %cmp110 = icmp eq i32 %conv109, -123
  br i1 %cmp110, label %land.lhs.true112, label %if.else121

land.lhs.true112:                                 ; preds = %if.end108
  %93 = load i8*, i8** %t, align 4
  %94 = load i8, i8* %93, align 1
  %tobool113 = icmp ne i8 %94, 0
  br i1 %tobool113, label %if.else121, label %if.then114

if.then114:                                       ; preds = %land.lhs.true112
  %95 = load i8**, i8*** %s.addr, align 4
  %96 = load i8*, i8** %95, align 4
  %add.ptr = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %add.ptr, i8** @guess, align 4
  %97 = load i8*, i8** @guess, align 4
  %call115 = call i8* @itype_end(i8* %97, i32 128, i32 1)
  %98 = load i8*, i8** @guess, align 4
  %cmp116 = icmp eq i8* %call115, %98
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then114
  br label %if.end285

if.end119:                                        ; preds = %if.then114
  store i8 -123, i8* %ic, align 1
  store i32 100, i32* @d, align 4
  %99 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call120 = call i32 @scanhashtable(%struct.hashtable* %99, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  br label %if.end194

if.else121:                                       ; preds = %land.lhs.true112, %if.end108
  %100 = load i8**, i8*** %s.addr, align 4
  %101 = load i8*, i8** %100, align 4
  %102 = load i8, i8* %101, align 1
  %conv122 = sext i8 %102 to i32
  %cmp123 = icmp eq i32 %conv122, -115
  br i1 %cmp123, label %if.then125, label %if.else136

if.then125:                                       ; preds = %if.else121
  %103 = load i8*, i8** %t, align 4
  %104 = load i8, i8* %103, align 1
  %tobool126 = icmp ne i8 %104, 0
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.then125
  br label %if.end285

if.end128:                                        ; preds = %if.then125
  %105 = load i8**, i8*** %s.addr, align 4
  %106 = load i8*, i8** %105, align 4
  %add.ptr129 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %add.ptr129, i8** @guess, align 4
  %107 = load i8**, i8*** @pathchecked, align 4
  %call130 = call %struct.cmdnam* @hashcmd(i8* %add.ptr129, i8** %107)
  %tobool131 = icmp ne %struct.cmdnam* %call130, null
  br i1 %tobool131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end128
  br label %if.end285

if.end133:                                        ; preds = %if.end128
  store i32 100, i32* @d, align 4
  store i8 -115, i8* %ic, align 1
  %108 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %call134 = call i32 @scanhashtable(%struct.hashtable* %108, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  %109 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %call135 = call i32 @scanhashtable(%struct.hashtable* %109, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  br label %if.end193

if.else136:                                       ; preds = %if.else121
  %110 = load i8**, i8*** %s.addr, align 4
  %111 = load i8*, i8** %110, align 4
  store i8* %111, i8** @guess, align 4
  %112 = load i8*, i8** @guess, align 4
  %113 = load i8, i8* %112, align 1
  %conv137 = sext i8 %113 to i32
  %cmp138 = icmp eq i32 %conv137, -104
  br i1 %cmp138, label %if.then144, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %if.else136
  %114 = load i8*, i8** @guess, align 4
  %115 = load i8, i8* %114, align 1
  %conv141 = sext i8 %115 to i32
  %cmp142 = icmp eq i32 %conv141, -123
  br i1 %cmp142, label %if.then144, label %if.end155

if.then144:                                       ; preds = %lor.lhs.false140, %if.else136
  %116 = load i8*, i8** @guess, align 4
  %117 = load i8, i8* %116, align 1
  store i8 %117, i8* %ic, align 1
  %118 = load i8*, i8** %t, align 4
  %incdec.ptr145 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr145, i8** %t, align 4
  %119 = load i8, i8* %incdec.ptr145, align 1
  %tobool146 = icmp ne i8 %119, 0
  br i1 %tobool146, label %if.end148, label %if.then147

if.then147:                                       ; preds = %if.then144
  br label %if.end285

if.end148:                                        ; preds = %if.then144
  %120 = load i8*, i8** @guess, align 4
  %call149 = call i8* @dupstring(i8* %120)
  store i8* %call149, i8** @guess, align 4
  %121 = load i32, i32* @noerrs, align 4
  store i32 %121, i32* %ne, align 4
  store i32 2, i32* @noerrs, align 4
  call void @singsub(i8** @guess)
  %122 = load i32, i32* %ne, align 4
  store i32 %122, i32* @noerrs, align 4
  %123 = load i8*, i8** @guess, align 4
  %tobool150 = icmp ne i8* %123, null
  br i1 %tobool150, label %if.end152, label %if.then151

if.then151:                                       ; preds = %if.end148
  br label %if.end285

if.end152:                                        ; preds = %if.end148
  %124 = load i8*, i8** @guess, align 4
  %call153 = call i32 @strlen(i8* %124)
  %125 = load i8*, i8** %t, align 4
  %call154 = call i32 @strlen(i8* %125)
  %sub = sub i32 %call153, %call154
  store i32 %sub, i32* %preflen, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.end152, %lor.lhs.false140
  %126 = load i8*, i8** @guess, align 4
  %call156 = call i8* @unmeta(i8* %126)
  %call157 = call i32 @access(i8* %call156, i32 0)
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end155
  br label %if.end285

if.end161:                                        ; preds = %if.end155
  %127 = load i8*, i8** @guess, align 4
  %call162 = call i8* @spname(i8* %127)
  store i8* %call162, i8** @best, align 4
  %128 = load i8*, i8** %t, align 4
  %129 = load i8, i8* %128, align 1
  %tobool163 = icmp ne i8 %129, 0
  br i1 %tobool163, label %if.end192, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %if.end161
  %130 = load i32, i32* %cmd.addr, align 4
  %tobool165 = icmp ne i32 %130, 0
  br i1 %tobool165, label %if.then166, label %if.end192

if.then166:                                       ; preds = %land.lhs.true164
  %131 = load i8*, i8** @guess, align 4
  %132 = load i8**, i8*** @pathchecked, align 4
  %call167 = call %struct.cmdnam* @hashcmd(i8* %131, i8** %132)
  %tobool168 = icmp ne %struct.cmdnam* %call167, null
  br i1 %tobool168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then166
  br label %if.end285

if.end170:                                        ; preds = %if.then166
  store i32 100, i32* @d, align 4
  %133 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %call171 = call i32 @scanhashtable(%struct.hashtable* %133, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  %134 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %call172 = call i32 @scanhashtable(%struct.hashtable* %134, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  %135 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %call173 = call i32 @scanhashtable(%struct.hashtable* %135, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  %136 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %call174 = call i32 @scanhashtable(%struct.hashtable* %136, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  %137 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %call175 = call i32 @scanhashtable(%struct.hashtable* %137, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0)
  %138 = load i32, i32* %autocd, align 4
  %tobool176 = icmp ne i32 %138, 0
  br i1 %tobool176, label %if.then177, label %if.end191

if.then177:                                       ; preds = %if.end170
  %139 = load i8**, i8*** @cdpath, align 4
  store i8** %139, i8*** %pp, align 4
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc188, %if.then177
  %140 = load i8**, i8*** %pp, align 4
  %141 = load i8*, i8** %140, align 4
  %tobool179 = icmp ne i8* %141, null
  br i1 %tobool179, label %for.body180, label %for.end190

for.body180:                                      ; preds = %for.cond178
  %142 = load i8**, i8*** %pp, align 4
  %143 = load i8*, i8** %142, align 4
  %144 = load i8**, i8*** %s.addr, align 4
  %145 = load i8*, i8** %144, align 4
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %bestcd, i32 0, i32 0
  %call181 = call i32 @mindist(i8* %143, i8* %145, i8* %arraydecay, i32 1)
  store i32 %call181, i32* %thisdist, align 4
  %146 = load i32, i32* @d, align 4
  %cmp182 = icmp slt i32 %call181, %146
  br i1 %cmp182, label %if.then184, label %if.end187

if.then184:                                       ; preds = %for.body180
  %arraydecay185 = getelementptr inbounds [4097 x i8], [4097 x i8]* %bestcd, i32 0, i32 0
  %call186 = call i8* @dupstring(i8* %arraydecay185)
  store i8* %call186, i8** @best, align 4
  %147 = load i32, i32* %thisdist, align 4
  store i32 %147, i32* @d, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then184, %for.body180
  br label %for.inc188

for.inc188:                                       ; preds = %if.end187
  %148 = load i8**, i8*** %pp, align 4
  %incdec.ptr189 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %incdec.ptr189, i8*** %pp, align 4
  br label %for.cond178

for.end190:                                       ; preds = %for.cond178
  br label %if.end191

if.end191:                                        ; preds = %for.end190, %if.end170
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %land.lhs.true164, %if.end161
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end133
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end119
  %149 = load i32, i32* @errflag, align 4
  %tobool195 = icmp ne i32 %149, 0
  br i1 %tobool195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end194
  br label %if.end285

if.end197:                                        ; preds = %if.end194
  %150 = load i8*, i8** @best, align 4
  %tobool198 = icmp ne i8* %150, null
  br i1 %tobool198, label %land.lhs.true199, label %if.end285

land.lhs.true199:                                 ; preds = %if.end197
  %151 = load i8*, i8** @best, align 4
  %call200 = call i32 @strlen(i8* %151)
  %cmp201 = icmp sgt i32 %call200, 1
  br i1 %cmp201, label %land.lhs.true203, label %if.end285

land.lhs.true203:                                 ; preds = %land.lhs.true199
  %152 = load i8*, i8** @best, align 4
  %153 = load i8*, i8** @guess, align 4
  %call204 = call i32 @strcmp(i8* %152, i8* %153)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then206, label %if.end285

if.then206:                                       ; preds = %land.lhs.true203
  %154 = load i8, i8* %ic, align 1
  %tobool207 = icmp ne i8 %154, 0
  br i1 %tobool207, label %if.then208, label %if.end239

if.then208:                                       ; preds = %if.then206
  %155 = load i32, i32* %preflen, align 4
  %tobool209 = icmp ne i32 %155, 0
  br i1 %tobool209, label %if.then210, label %if.else229

if.then210:                                       ; preds = %if.then208
  %156 = load i8*, i8** @guess, align 4
  %157 = load i8*, i8** @best, align 4
  %158 = load i32, i32* %preflen, align 4
  %call211 = call i32 @strncmp(i8* %156, i8* %157, i32 %158)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.then210
  br label %if.end285

if.end214:                                        ; preds = %if.then210
  %159 = load i8*, i8** %t, align 4
  %160 = load i8**, i8*** %s.addr, align 4
  %161 = load i8*, i8** %160, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %159 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %161 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %162 = load i8*, i8** @best, align 4
  %163 = load i32, i32* %preflen, align 4
  %add.ptr215 = getelementptr inbounds i8, i8* %162, i32 %163
  %call216 = call i32 @strlen(i8* %add.ptr215)
  %add = add i32 %sub.ptr.sub, %call216
  %add217 = add i32 %add, 1
  %call218 = call i8* @zhalloc(i32 %add217)
  store i8* %call218, i8** %u, align 4
  %164 = load i8*, i8** %u, align 4
  %165 = load i8**, i8*** %s.addr, align 4
  %166 = load i8*, i8** %165, align 4
  %167 = load i8*, i8** %t, align 4
  %168 = load i8**, i8*** %s.addr, align 4
  %169 = load i8*, i8** %168, align 4
  %sub.ptr.lhs.cast219 = ptrtoint i8* %167 to i32
  %sub.ptr.rhs.cast220 = ptrtoint i8* %169 to i32
  %sub.ptr.sub221 = sub i32 %sub.ptr.lhs.cast219, %sub.ptr.rhs.cast220
  %call222 = call i8* @strncpy(i8* %164, i8* %166, i32 %sub.ptr.sub221)
  %170 = load i8*, i8** %u, align 4
  %171 = load i8*, i8** %t, align 4
  %172 = load i8**, i8*** %s.addr, align 4
  %173 = load i8*, i8** %172, align 4
  %sub.ptr.lhs.cast223 = ptrtoint i8* %171 to i32
  %sub.ptr.rhs.cast224 = ptrtoint i8* %173 to i32
  %sub.ptr.sub225 = sub i32 %sub.ptr.lhs.cast223, %sub.ptr.rhs.cast224
  %add.ptr226 = getelementptr inbounds i8, i8* %170, i32 %sub.ptr.sub225
  %174 = load i8*, i8** @best, align 4
  %175 = load i32, i32* %preflen, align 4
  %add.ptr227 = getelementptr inbounds i8, i8* %174, i32 %175
  %call228 = call i8* @strcpy(i8* %add.ptr226, i8* %add.ptr227)
  br label %if.end235

if.else229:                                       ; preds = %if.then208
  %176 = load i8*, i8** @best, align 4
  %call230 = call i32 @strlen(i8* %176)
  %add231 = add i32 %call230, 2
  %call232 = call i8* @zhalloc(i32 %add231)
  store i8* %call232, i8** %u, align 4
  %177 = load i8*, i8** %u, align 4
  store i8 0, i8* %177, align 1
  %178 = load i8*, i8** %u, align 4
  %add.ptr233 = getelementptr inbounds i8, i8* %178, i32 1
  %179 = load i8*, i8** @best, align 4
  %call234 = call i8* @strcpy(i8* %add.ptr233, i8* %179)
  br label %if.end235

if.end235:                                        ; preds = %if.else229, %if.end214
  %180 = load i8*, i8** %u, align 4
  store i8* %180, i8** @best, align 4
  %181 = load i8**, i8*** %s.addr, align 4
  %182 = load i8*, i8** %181, align 4
  store i8* %182, i8** @guess, align 4
  %183 = load i8, i8* %ic, align 1
  %conv236 = sext i8 %183 to i32
  %sub237 = sub nsw i32 %conv236, -124
  %arrayidx238 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub237
  %184 = load i8, i8* %arrayidx238, align 1
  %185 = load i8*, i8** @best, align 4
  store i8 %184, i8* %185, align 1
  %186 = load i8*, i8** @guess, align 4
  store i8 %184, i8* %186, align 1
  br label %if.end239

if.end239:                                        ; preds = %if.end235, %if.then206
  %187 = load i32, i32* %ask.addr, align 4
  %tobool240 = icmp ne i32 %187, 0
  br i1 %tobool240, label %if.then241, label %if.else261

if.then241:                                       ; preds = %if.end239
  %call242 = call i32 @noquery(i32 0)
  %tobool243 = icmp ne i32 %call242, 0
  br i1 %tobool243, label %if.then244, label %if.else245

if.then244:                                       ; preds = %if.then241
  store i32 110, i32* %x, align 4
  br label %if.end260

if.else245:                                       ; preds = %if.then241
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool246 = icmp ne %struct._IO_FILE* %188, null
  br i1 %tobool246, label %if.then247, label %if.else258

if.then247:                                       ; preds = %if.else245
  %189 = load i8*, i8** @sprompt, align 4
  %190 = load i8*, i8** @best, align 4
  %191 = load i8*, i8** @guess, align 4
  %call248 = call i8* @promptexpand(i8* %189, i32 0, i8* %190, i8* %191, i32* null)
  store i8* %call248, i8** %pptbuf, align 4
  %192 = load i8*, i8** %pptbuf, align 4
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call249 = call i32 @zputs(i8* %192, %struct._IO_FILE* %193)
  %194 = load i8*, i8** %pptbuf, align 4
  call void @free(i8* %194)
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call250 = call i32 @fflush(%struct._IO_FILE* %195)
  call void @zbeep()
  %call251 = call i32 @getquery(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0)
  store i32 %call251, i32* %x, align 4
  %196 = load i32, i32* %cmd.addr, align 4
  %tobool252 = icmp ne i32 %196, 0
  br i1 %tobool252, label %land.lhs.true253, label %if.end257

land.lhs.true253:                                 ; preds = %if.then247
  %197 = load i32, i32* %x, align 4
  %cmp254 = icmp eq i32 %197, 110
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %land.lhs.true253
  %198 = load i8**, i8*** @path, align 4
  store i8** %198, i8*** @pathchecked, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %land.lhs.true253, %if.then247
  br label %if.end259

if.else258:                                       ; preds = %if.else245
  store i32 110, i32* %x, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.else258, %if.end257
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %if.then244
  br label %if.end262

if.else261:                                       ; preds = %if.end239
  store i32 121, i32* %x, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.else261, %if.end260
  %199 = load i32, i32* %x, align 4
  %cmp263 = icmp eq i32 %199, 121
  br i1 %cmp263, label %if.then265, label %if.else270

if.then265:                                       ; preds = %if.end262
  %200 = load i8*, i8** @best, align 4
  %call266 = call i8* @dupstring(i8* %200)
  %201 = load i8**, i8*** %s.addr, align 4
  store i8* %call266, i8** %201, align 4
  %202 = load i32, i32* %hist.addr, align 4
  %tobool267 = icmp ne i32 %202, 0
  br i1 %tobool267, label %if.then268, label %if.end269

if.then268:                                       ; preds = %if.then265
  %203 = load i8*, i8** @best, align 4
  call void @hwrep(i8* %203)
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %if.then265
  br label %if.end281

if.else270:                                       ; preds = %if.end262
  %204 = load i32, i32* %x, align 4
  %cmp271 = icmp eq i32 %204, 97
  br i1 %cmp271, label %if.then273, label %if.else274

if.then273:                                       ; preds = %if.else270
  %205 = load i32, i32* @histdone, align 4
  %or = or i32 %205, 2
  store i32 %or, i32* @histdone, align 4
  br label %if.end280

if.else274:                                       ; preds = %if.else270
  %206 = load i32, i32* %x, align 4
  %cmp275 = icmp eq i32 %206, 101
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %if.else274
  %207 = load i32, i32* @histdone, align 4
  %or278 = or i32 %207, 6
  store i32 %or278, i32* @histdone, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.else274
  br label %if.end280

if.end280:                                        ; preds = %if.end279, %if.then273
  br label %if.end281

if.end281:                                        ; preds = %if.end280, %if.end269
  %208 = load i8, i8* %ic, align 1
  %tobool282 = icmp ne i8 %208, 0
  br i1 %tobool282, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.end281
  %209 = load i8, i8* %ic, align 1
  %210 = load i8**, i8*** %s.addr, align 4
  %211 = load i8*, i8** %210, align 4
  store i8 %209, i8* %211, align 1
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %if.end281
  br label %if.end285

if.end285:                                        ; preds = %if.then, %if.then15, %if.then21, %if.then43, %if.then49, %if.then72, %if.then91, %if.then118, %if.then127, %if.then132, %if.then147, %if.then151, %if.then160, %if.then169, %if.then196, %if.then213, %if.end284, %land.lhs.true203, %land.lhs.true199, %if.end197
  ret void
}

declare void @tokenize(i8*) #2

declare void @remnulargs(i8*) #2

declare %struct.patprog* @patcompile(i8*, i32, i8**) #2

; Function Attrs: noinline nounwind
define i8* @itype_end(i8* %ptr, i32 %itype, i32 %once) #0 {
entry:
  %retval = alloca i8*, align 4
  %ptr.addr = alloca i8*, align 4
  %itype.addr = alloca i32, align 4
  %once.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %wc = alloca i32, align 4
  %chr = alloca i32, align 4
  %chr82 = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  store i32 %itype, i32* %itype.addr, align 4
  store i32 %once, i32* %once.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else81

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %itype.addr, align 4
  %cmp = icmp ne i32 %1, 128
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 134), align 1
  %tobool2 = icmp ne i8 %2, 0
  br i1 %tobool2, label %if.else81, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @mb_charinit()
  br label %while.cond

while.cond:                                       ; preds = %if.end80, %if.then
  %3 = load i8*, i8** %ptr.addr, align 4
  %4 = load i8, i8* %3, align 1
  %tobool3 = icmp ne i8 %4, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %ptr.addr, align 4
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv4 = sext i16 %7 to i32
  %and = and i32 %conv4, 16
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  store i32 1, i32* %len, align 4
  %8 = load i8*, i8** %ptr.addr, align 4
  %9 = load i8, i8* %8, align 1
  %idxprom7 = zext i8 %9 to i32
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom7
  %10 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %10 to i32
  %11 = load i32, i32* %itype.addr, align 4
  %and10 = and i32 %conv9, %11
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then6
  br label %while.end

if.end:                                           ; preds = %if.then6
  br label %if.end77

if.else:                                          ; preds = %while.body
  %12 = load i8*, i8** %ptr.addr, align 4
  %call = call i32 @mb_metacharlenconv(i8* %12, i32* %wc)
  store i32 %call, i32* %len, align 4
  %13 = load i32, i32* %len, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.else
  br label %while.end

if.end15:                                         ; preds = %if.else
  %14 = load i32, i32* %wc, align 4
  %cmp16 = icmp eq i32 %14, -1
  br i1 %cmp16, label %if.then18, label %if.else38

if.then18:                                        ; preds = %if.end15
  %15 = load i8*, i8** %ptr.addr, align 4
  %16 = load i8, i8* %15, align 1
  %conv19 = sext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, -125
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then18
  %17 = load i8*, i8** %ptr.addr, align 4
  %arrayidx22 = getelementptr inbounds i8, i8* %17, i32 1
  %18 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %18 to i32
  %xor = xor i32 %conv23, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then18
  %19 = load i8*, i8** %ptr.addr, align 4
  %20 = load i8, i8* %19, align 1
  %conv24 = sext i8 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv24, %cond.false ]
  %conv25 = trunc i32 %cond to i8
  %conv26 = zext i8 %conv25 to i32
  store i32 %conv26, i32* %chr, align 4
  %21 = load i32, i32* %chr, align 4
  %cmp27 = icmp sgt i32 %21, 127
  br i1 %cmp27, label %if.then36, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %cond.end
  %22 = load i32, i32* %chr, align 4
  %conv30 = trunc i32 %22 to i8
  %idxprom31 = zext i8 %conv30 to i32
  %arrayidx32 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom31
  %23 = load i16, i16* %arrayidx32, align 2
  %conv33 = sext i16 %23 to i32
  %24 = load i32, i32* %itype.addr, align 4
  %and34 = and i32 %conv33, %24
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false29, %cond.end
  br label %while.end

if.end37:                                         ; preds = %lor.lhs.false29
  br label %if.end76

if.else38:                                        ; preds = %if.end15
  %25 = load i32, i32* %len, align 4
  %cmp39 = icmp eq i32 %25, 1
  br i1 %cmp39, label %land.lhs.true41, label %if.else58

land.lhs.true41:                                  ; preds = %if.else38
  br i1 false, label %cond.true42, label %cond.false46

cond.true42:                                      ; preds = %land.lhs.true41
  %26 = load i8*, i8** %ptr.addr, align 4
  %27 = load i8, i8* %26, align 1
  %conv43 = sext i8 %27 to i32
  %call44 = call i32 @isascii(i32 %conv43)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then50, label %if.else58

cond.false46:                                     ; preds = %land.lhs.true41
  %28 = load i8*, i8** %ptr.addr, align 4
  %29 = load i8, i8* %28, align 1
  %conv47 = sext i8 %29 to i32
  %cmp48 = icmp ult i32 %conv47, 128
  br i1 %cmp48, label %if.then50, label %if.else58

if.then50:                                        ; preds = %cond.false46, %cond.true42
  %30 = load i8*, i8** %ptr.addr, align 4
  %31 = load i8, i8* %30, align 1
  %idxprom51 = zext i8 %31 to i32
  %arrayidx52 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom51
  %32 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %32 to i32
  %33 = load i32, i32* %itype.addr, align 4
  %and54 = and i32 %conv53, %33
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.then50
  br label %while.end

if.end57:                                         ; preds = %if.then50
  br label %if.end75

if.else58:                                        ; preds = %cond.false46, %cond.true42, %if.else38
  %34 = load i32, i32* %itype.addr, align 4
  switch i32 %34, label %sw.default [
    i32 1024, label %sw.bb
    i32 32, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.else58
  %35 = load i32, i32* %wc, align 4
  %call59 = call i32 @iswalnum(i32 %35)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end65, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %sw.bb
  %36 = load i32*, i32** getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @wordchars_wide, i32 0, i32 0), align 4
  %37 = load i32, i32* %wc, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @wordchars_wide, i32 0, i32 1), align 4
  %call62 = call i32* @wmemchr(i32* %36, i32 %37, i32 %38)
  %tobool63 = icmp ne i32* %call62, null
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %land.lhs.true61
  %39 = load i8*, i8** %ptr.addr, align 4
  store i8* %39, i8** %retval, align 4
  br label %return

if.end65:                                         ; preds = %land.lhs.true61, %sw.bb
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.else58
  %40 = load i32*, i32** getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @ifs_wide, i32 0, i32 0), align 4
  %41 = load i32, i32* %wc, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @ifs_wide, i32 0, i32 1), align 4
  %call67 = call i32* @wmemchr(i32* %40, i32 %41, i32 %42)
  %tobool68 = icmp ne i32* %call67, null
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %sw.bb66
  %43 = load i8*, i8** %ptr.addr, align 4
  store i8* %43, i8** %retval, align 4
  br label %return

if.end70:                                         ; preds = %sw.bb66
  br label %sw.epilog

sw.default:                                       ; preds = %if.else58
  %44 = load i32, i32* %wc, align 4
  %call71 = call i32 @iswalnum(i32 %44)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %sw.default
  %45 = load i8*, i8** %ptr.addr, align 4
  store i8* %45, i8** %retval, align 4
  br label %return

if.end74:                                         ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end74, %if.end70, %if.end65
  br label %if.end75

if.end75:                                         ; preds = %sw.epilog, %if.end57
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end37
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end
  %46 = load i32, i32* %len, align 4
  %47 = load i8*, i8** %ptr.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %47, i32 %46
  store i8* %add.ptr, i8** %ptr.addr, align 4
  %48 = load i32, i32* %once.addr, align 4
  %tobool78 = icmp ne i32 %48, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end77
  br label %while.end

if.end80:                                         ; preds = %if.end77
  br label %while.cond

while.end:                                        ; preds = %if.then79, %if.then56, %if.then36, %if.then14, %if.then12, %while.cond
  br label %if.end112

if.else81:                                        ; preds = %lor.lhs.false, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end111, %if.else81
  %49 = load i8*, i8** %ptr.addr, align 4
  %50 = load i8, i8* %49, align 1
  %conv83 = sext i8 %50 to i32
  %cmp84 = icmp eq i32 %conv83, -125
  br i1 %cmp84, label %cond.true86, label %cond.false90

cond.true86:                                      ; preds = %for.cond
  %51 = load i8*, i8** %ptr.addr, align 4
  %arrayidx87 = getelementptr inbounds i8, i8* %51, i32 1
  %52 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %52 to i32
  %xor89 = xor i32 %conv88, 32
  br label %cond.end92

cond.false90:                                     ; preds = %for.cond
  %53 = load i8*, i8** %ptr.addr, align 4
  %54 = load i8, i8* %53, align 1
  %conv91 = sext i8 %54 to i32
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false90, %cond.true86
  %cond93 = phi i32 [ %xor89, %cond.true86 ], [ %conv91, %cond.false90 ]
  %conv94 = trunc i32 %cond93 to i8
  %conv95 = zext i8 %conv94 to i32
  store i32 %conv95, i32* %chr82, align 4
  %55 = load i32, i32* %chr82, align 4
  %conv96 = trunc i32 %55 to i8
  %idxprom97 = zext i8 %conv96 to i32
  %arrayidx98 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom97
  %56 = load i16, i16* %arrayidx98, align 2
  %conv99 = sext i16 %56 to i32
  %57 = load i32, i32* %itype.addr, align 4
  %and100 = and i32 %conv99, %57
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.end103, label %if.then102

if.then102:                                       ; preds = %cond.end92
  br label %for.end

if.end103:                                        ; preds = %cond.end92
  %58 = load i8*, i8** %ptr.addr, align 4
  %59 = load i8, i8* %58, align 1
  %conv104 = sext i8 %59 to i32
  %cmp105 = icmp eq i32 %conv104, -125
  %cond107 = select i1 %cmp105, i32 2, i32 1
  %60 = load i8*, i8** %ptr.addr, align 4
  %add.ptr108 = getelementptr inbounds i8, i8* %60, i32 %cond107
  store i8* %add.ptr108, i8** %ptr.addr, align 4
  %61 = load i32, i32* %once.addr, align 4
  %tobool109 = icmp ne i32 %61, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end103
  br label %for.end

if.end111:                                        ; preds = %if.end103
  br label %for.cond

for.end:                                          ; preds = %if.then110, %if.then102
  br label %if.end112

if.end112:                                        ; preds = %for.end, %while.end
  %62 = load i8*, i8** %ptr.addr, align 4
  store i8* %62, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end112, %if.then73, %if.then69, %if.then64
  %63 = load i8*, i8** %retval, align 4
  ret i8* %63
}

; Function Attrs: noinline nounwind
define internal void @spscan(%struct.hashnode* %hn, i32 %scanflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %scanflags.addr = alloca i32, align 4
  %nd = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %scanflags, i32* %scanflags.addr, align 4
  %0 = load %struct.patprog*, %struct.patprog** @spckpat, align 4
  %tobool = icmp ne %struct.patprog* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.patprog*, %struct.patprog** @spckpat, align 4
  %2 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %2, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  %call = call i32 @pattry(%struct.patprog* %1, i8* %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end7

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %nam2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %4, i32 0, i32 1
  %5 = load i8*, i8** %nam2, align 4
  %6 = load i8*, i8** @guess, align 4
  %7 = load i8*, i8** @guess, align 4
  %call3 = call i32 @strlen(i8* %7)
  %div = sdiv i32 %call3, 4
  %add = add nsw i32 %div, 1
  %call4 = call i32 @spdist(i8* %5, i8* %6, i32 %add)
  store i32 %call4, i32* %nd, align 4
  %8 = load i32, i32* %nd, align 4
  %9 = load i32, i32* @d, align 4
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %nam6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %10, i32 0, i32 1
  %11 = load i8*, i8** %nam6, align 4
  store i8* %11, i8** @best, align 4
  %12 = load i32, i32* %nd, align 4
  store i32 %12, i32* @d, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %if.end
  ret void
}

declare %struct.cmdnam* @hashcmd(i8*, i8**) #2

declare void @singsub(i8**) #2

; Function Attrs: noinline nounwind
define internal i8* @spname(i8* %oldname) #0 {
entry:
  %retval = alloca i8*, align 4
  %oldname.addr = alloca i8*, align 4
  %p = alloca i8*, align 4
  %spnameguess = alloca [4097 x i8], align 1
  %spnamebest = alloca [4097 x i8], align 1
  %new = alloca i8*, align 4
  %old = alloca i8*, align 4
  %bestdist = alloca i32, align 4
  %thisdist = alloca i32, align 4
  %thresh = alloca i32, align 4
  %maxthresh = alloca i32, align 4
  store i8* %oldname, i8** %oldname.addr, align 4
  store i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @spname.newname, i32 0, i32 0), i8** %new, align 4
  %0 = load i8*, i8** %oldname.addr, align 4
  store i8* %0, i8** %old, align 4
  store i32 0, i32* %bestdist, align 4
  store i32 0, i32* %maxthresh, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end66, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.cond
  %1 = load i8*, i8** %old, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %new, align 4
  %cmp2 = icmp uge i8* %3, getelementptr inbounds ([4097 x i8], [4097 x i8]* @spname.newname, i32 0, i32 4096)
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i8*, i8** %old, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %old, align 4
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %new, align 4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %new, align 4
  store i8 %5, i8* %6, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %new, align 4
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %old, align 4
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @spname.newname, i32 0, i32 0), i8** %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %spnameguess, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.end9
  %10 = load i8*, i8** %old, align 4
  %11 = load i8, i8* %10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp ne i32 %conv11, 47
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond10
  %12 = load i8*, i8** %old, align 4
  %13 = load i8, i8* %12, align 1
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond10
  %14 = phi i1 [ false, %for.cond10 ], [ %cmp15, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load i8*, i8** %p, align 4
  %arraydecay17 = getelementptr inbounds [4097 x i8], [4097 x i8]* %spnameguess, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay17, i32 4096
  %cmp18 = icmp ult i8* %15, %add.ptr
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body
  %16 = load i8*, i8** %old, align 4
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %p, align 4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr21, i8** %p, align 4
  store i8 %17, i8* %18, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %19 = load i8*, i8** %old, align 4
  %incdec.ptr23 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr23, i8** %old, align 4
  br label %for.cond10

for.end:                                          ; preds = %land.end
  %20 = load i8*, i8** %p, align 4
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %p, align 4
  %arraydecay24 = getelementptr inbounds [4097 x i8], [4097 x i8]* %spnameguess, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay24 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i32 %sub.ptr.sub, 4
  %add = add nsw i32 %div, 1
  store i32 %add, i32* %thresh, align 4
  %22 = load i32, i32* %thresh, align 4
  %cmp25 = icmp slt i32 %22, 3
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %for.end
  store i32 3, i32* %thresh, align 4
  br label %if.end32

if.else:                                          ; preds = %for.end
  %23 = load i32, i32* %thresh, align 4
  %cmp28 = icmp sgt i32 %23, 100
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  store i32 100, i32* %thresh, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then27
  %arraydecay33 = getelementptr inbounds [4097 x i8], [4097 x i8]* %spnameguess, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [4097 x i8], [4097 x i8]* %spnamebest, i32 0, i32 0
  %24 = load i8*, i8** %old, align 4
  %25 = load i8, i8* %24, align 1
  %conv35 = sext i8 %25 to i32
  %cmp36 = icmp eq i32 %conv35, 47
  %conv37 = zext i1 %cmp36 to i32
  %call = call i32 @mindist(i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @spname.newname, i32 0, i32 0), i8* %arraydecay33, i8* %arraydecay34, i32 %conv37)
  store i32 %call, i32* %thisdist, align 4
  %26 = load i32, i32* %thisdist, align 4
  %27 = load i32, i32* %thresh, align 4
  %cmp38 = icmp sge i32 %26, %27
  br i1 %cmp38, label %if.then40, label %if.else53

if.then40:                                        ; preds = %if.end32
  %28 = load i32, i32* %bestdist, align 4
  %29 = load i32, i32* %maxthresh, align 4
  %cmp41 = icmp slt i32 %28, %29
  br i1 %cmp41, label %if.then43, label %if.else52

if.then43:                                        ; preds = %if.then40
  %arraydecay44 = getelementptr inbounds [4097 x i8], [4097 x i8]* %spnameguess, i32 0, i32 0
  %30 = load i8*, i8** %new, align 4
  %sub.ptr.lhs.cast45 = ptrtoint i8* %30 to i32
  %sub.ptr.sub46 = sub i32 %sub.ptr.lhs.cast45, ptrtoint ([4097 x i8]* @spname.newname to i32)
  %sub = sub i32 4097, %sub.ptr.sub46
  call void @struncpy(i8** %new, i8* %arraydecay44, i32 %sub)
  %31 = load i8*, i8** %old, align 4
  %32 = load i8*, i8** %new, align 4
  %sub.ptr.lhs.cast47 = ptrtoint i8* %32 to i32
  %sub.ptr.sub48 = sub i32 %sub.ptr.lhs.cast47, ptrtoint ([4097 x i8]* @spname.newname to i32)
  %sub49 = sub i32 4097, %sub.ptr.sub48
  call void @struncpy(i8** %new, i8* %31, i32 %sub49)
  %33 = load i8*, i8** %new, align 4
  %cmp50 = icmp uge i8* %33, getelementptr inbounds ([4097 x i8], [4097 x i8]* @spname.newname, i32 0, i32 4096)
  %cond = select i1 %cmp50, i8* null, i8* getelementptr inbounds ([4097 x i8], [4097 x i8]* @spname.newname, i32 0, i32 0)
  store i8* %cond, i8** %retval, align 4
  br label %return

if.else52:                                        ; preds = %if.then40
  store i8* null, i8** %retval, align 4
  br label %return

if.else53:                                        ; preds = %if.end32
  %34 = load i32, i32* %bestdist, align 4
  %35 = load i32, i32* %thresh, align 4
  %add54 = add nsw i32 %34, %35
  store i32 %add54, i32* %maxthresh, align 4
  %36 = load i32, i32* %thisdist, align 4
  %37 = load i32, i32* %bestdist, align 4
  %add55 = add nsw i32 %37, %36
  store i32 %add55, i32* %bestdist, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else53
  %arraydecay57 = getelementptr inbounds [4097 x i8], [4097 x i8]* %spnamebest, i32 0, i32 0
  store i8* %arraydecay57, i8** %p, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %if.end64, %if.end56
  %38 = load i8*, i8** %p, align 4
  %incdec.ptr59 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr59, i8** %p, align 4
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %new, align 4
  store i8 %39, i8* %40, align 1
  %tobool = icmp ne i8 %39, 0
  br i1 %tobool, label %for.body60, label %for.end66

for.body60:                                       ; preds = %for.cond58
  %41 = load i8*, i8** %new, align 4
  %cmp61 = icmp uge i8* %41, getelementptr inbounds ([4097 x i8], [4097 x i8]* @spname.newname, i32 0, i32 4096)
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.body60
  store i8* null, i8** %retval, align 4
  br label %return

if.end64:                                         ; preds = %for.body60
  %42 = load i8*, i8** %new, align 4
  %incdec.ptr65 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr65, i8** %new, align 4
  br label %for.cond58

for.end66:                                        ; preds = %for.cond58
  br label %for.cond

return:                                           ; preds = %if.then63, %if.else52, %if.then43, %if.then8, %if.then
  %43 = load i8*, i8** %retval, align 4
  ret i8* %43
}

; Function Attrs: noinline nounwind
define internal i32 @mindist(i8* %dir, i8* %mindistguess, i8* %mindistbest, i32 %wantdir) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 4
  %mindistguess.addr = alloca i8*, align 4
  %mindistbest.addr = alloca i8*, align 4
  %wantdir.addr = alloca i32, align 4
  %mindistd = alloca i32, align 4
  %nd = alloca i32, align 4
  %dd = alloca %struct.__dirstream*, align 4
  %fn = alloca i8*, align 4
  %buf = alloca i8*, align 4
  %st = alloca %struct.stat, align 8
  %dirlen = alloca i32, align 4
  store i8* %dir, i8** %dir.addr, align 4
  store i8* %mindistguess, i8** %mindistguess.addr, align 4
  store i8* %mindistbest, i8** %mindistbest.addr, align 4
  store i32 %wantdir, i32* %wantdir.addr, align 4
  %0 = load i8*, i8** %dir.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %dir.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 100, i32* %mindistd, align 4
  %2 = load i8*, i8** %dir.addr, align 4
  %call = call i32 @strlen(i8* %2)
  store i32 %call, i32* %dirlen, align 4
  %3 = load i8*, i8** %mindistguess.addr, align 4
  %call2 = call i32 @strlen(i8* %3)
  %add = add i32 %call, %call2
  %add3 = add i32 %add, 2
  %call4 = call i8* @zalloc(i32 %add3)
  store i8* %call4, i8** %buf, align 4
  %tobool = icmp ne i8* %call4, null
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load i8*, i8** %buf, align 4
  %5 = load i8*, i8** %dir.addr, align 4
  %6 = load i8*, i8** %mindistguess.addr, align 4
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %5, i8* %6)
  %7 = load i8*, i8** %buf, align 4
  %call8 = call i8* @unmeta(i8* %7)
  %call9 = call i32 @stat(i8* %call8, %struct.stat* %st)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end6
  %8 = load i32, i32* %wantdir.addr, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %9 = load i32, i32* %st_mode, align 8
  %and = and i32 %9, 61440
  %cmp13 = icmp eq i32 %and, 16384
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i8*, i8** %mindistbest.addr, align 4
  %11 = load i8*, i8** %mindistguess.addr, align 4
  %call16 = call i8* @strcpy(i8* %10, i8* %11)
  %12 = load i8*, i8** %buf, align 4
  call void @free(i8* %12)
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false, %if.end6
  %13 = load i8*, i8** %dir.addr, align 4
  %call18 = call i8* @unmeta(i8* %13)
  %call19 = call %struct.__dirstream* @opendir(i8* %call18)
  store %struct.__dirstream* %call19, %struct.__dirstream** %dd, align 4
  %tobool20 = icmp ne %struct.__dirstream* %call19, null
  br i1 %tobool20, label %if.then21, label %if.end65

if.then21:                                        ; preds = %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end63, %if.then55, %if.then43, %if.then28, %if.then21
  %14 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 4
  %call22 = call i8* @zreaddir(%struct.__dirstream* %14, i32 0)
  store i8* %call22, i8** %fn, align 4
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.patprog*, %struct.patprog** @spnamepat, align 4
  %tobool24 = icmp ne %struct.patprog* %15, null
  br i1 %tobool24, label %land.lhs.true25, label %if.end29

land.lhs.true25:                                  ; preds = %while.body
  %16 = load %struct.patprog*, %struct.patprog** @spnamepat, align 4
  %17 = load i8*, i8** %fn, align 4
  %call26 = call i32 @pattry(%struct.patprog* %16, i8* %17)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true25
  br label %while.cond

if.end29:                                         ; preds = %land.lhs.true25, %while.body
  %18 = load i8*, i8** %fn, align 4
  %19 = load i8*, i8** %mindistguess.addr, align 4
  %20 = load i8*, i8** %mindistguess.addr, align 4
  %call30 = call i32 @strlen(i8* %20)
  %div = sdiv i32 %call30, 4
  %add31 = add nsw i32 %div, 1
  %call32 = call i32 @spdist(i8* %18, i8* %19, i32 %add31)
  store i32 %call32, i32* %nd, align 4
  %21 = load i32, i32* %nd, align 4
  %22 = load i32, i32* %mindistd, align 4
  %cmp33 = icmp sle i32 %21, %22
  br i1 %cmp33, label %if.then35, label %if.end63

if.then35:                                        ; preds = %if.end29
  %23 = load i32, i32* %wantdir.addr, align 4
  %tobool36 = icmp ne i32 %23, 0
  br i1 %tobool36, label %if.then37, label %if.end57

if.then37:                                        ; preds = %if.then35
  %24 = load i8*, i8** %buf, align 4
  %25 = load i32, i32* %dirlen, align 4
  %26 = load i8*, i8** %fn, align 4
  %call38 = call i32 @strlen(i8* %26)
  %add39 = add i32 %25, %call38
  %add40 = add i32 %add39, 2
  %call41 = call i8* @zrealloc(i8* %24, i32 %add40)
  store i8* %call41, i8** %buf, align 4
  %tobool42 = icmp ne i8* %call41, null
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.then37
  br label %while.cond

if.end44:                                         ; preds = %if.then37
  %27 = load i8*, i8** %buf, align 4
  %28 = load i8*, i8** %dir.addr, align 4
  %29 = load i8*, i8** %fn, align 4
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %28, i8* %29)
  %30 = load i8*, i8** %buf, align 4
  %call46 = call i8* @unmeta(i8* %30)
  %call47 = call i32 @stat(i8* %call46, %struct.stat* %st)
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then55, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end44
  %st_mode51 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %31 = load i32, i32* %st_mode51, align 8
  %and52 = and i32 %31, 61440
  %cmp53 = icmp eq i32 %and52, 16384
  br i1 %cmp53, label %if.end56, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false50, %if.end44
  br label %while.cond

if.end56:                                         ; preds = %lor.lhs.false50
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then35
  %32 = load i8*, i8** %mindistbest.addr, align 4
  %33 = load i8*, i8** %fn, align 4
  %call58 = call i8* @strcpy(i8* %32, i8* %33)
  %34 = load i32, i32* %nd, align 4
  store i32 %34, i32* %mindistd, align 4
  %35 = load i32, i32* %mindistd, align 4
  %cmp59 = icmp eq i32 %35, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  br label %while.end

if.end62:                                         ; preds = %if.end57
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end29
  br label %while.cond

while.end:                                        ; preds = %if.then61, %while.cond
  %36 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 4
  %call64 = call i32 @closedir(%struct.__dirstream* %36)
  br label %if.end65

if.end65:                                         ; preds = %while.end, %if.end17
  %37 = load i8*, i8** %buf, align 4
  call void @free(i8* %37)
  %38 = load i32, i32* %mindistd, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then15, %if.then5
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

declare i32 @strncmp(i8*, i8*, i32) #2

declare i8* @strncpy(i8*, i8*, i32) #2

declare void @hwrep(i8*) #2

; Function Attrs: noinline nounwind
define i32 @ztrftime(i8* %buf, i32 %bufsize, i8* %fmt, %struct.tm* %tm, i32 %usec) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %bufsize.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 4
  %tm.addr = alloca %struct.tm*, align 4
  %usec.addr = alloca i32, align 4
  %hr12 = alloca i32, align 4
  %decr = alloca i32, align 4
  %fmtstart = alloca i8*, align 4
  %origbuf = alloca i8*, align 4
  %chr = alloca i32, align 4
  %strip = alloca i32, align 4
  %digs = alloca i32, align 4
  %dstart = alloca i8*, align 4
  %dend = alloca i8*, align 4
  %trunc = alloca i32, align 4
  %origchar = alloca i8, align 1
  %size = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %last = alloca i8*, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 4
  store %struct.tm* %tm, %struct.tm** %tm.addr, align 4
  store i32 %usec, i32* %usec.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 4
  store i8* %0, i8** %origbuf, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end303, %entry
  %1 = load i8*, i8** %fmt.addr, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end304

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %fmt.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %fmt.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  %xor = xor i32 %conv2, 32
  store i32 %xor, i32* %chr, align 4
  %call = call i32 @ztrftimebuf(i32* %bufsize.addr, i32 1)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %chr, align 4
  %conv5 = trunc i32 %7 to i8
  %8 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 4
  store i8 %conv5, i8* %8, align 1
  %9 = load i8*, i8** %fmt.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 2
  store i8* %add.ptr, i8** %fmt.addr, align 4
  br label %if.end303

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %fmt.addr, align 4
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 37
  br i1 %cmp7, label %if.then9, label %if.else295

if.then9:                                         ; preds = %if.else
  store i32 3, i32* %digs, align 4
  %12 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %fmt.addr, align 4
  store i8* %12, i8** %fmtstart, align 4
  %13 = load i8*, i8** %fmt.addr, align 4
  %14 = load i8, i8* %13, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 45
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.then9
  store i32 1, i32* %strip, align 4
  %15 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr15, i8** %fmt.addr, align 4
  br label %if.end17

if.else16:                                        ; preds = %if.then9
  store i32 0, i32* %strip, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then14
  %16 = load i8*, i8** %fmt.addr, align 4
  %17 = load i8, i8* %16, align 1
  %idxprom = zext i8 %17 to i32
  %arrayidx18 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %18 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %18 to i32
  %and = and i32 %conv19, 1
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then21, label %if.end37

if.then21:                                        ; preds = %if.end17
  %19 = load i8*, i8** %fmt.addr, align 4
  store i8* %19, i8** %dstart, align 4
  %20 = load i8*, i8** %fmt.addr, align 4
  %add.ptr22 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %add.ptr22, i8** %dend, align 4
  br label %while.cond23

while.cond23:                                     ; preds = %while.body29, %if.then21
  %21 = load i8*, i8** %dend, align 4
  %22 = load i8, i8* %21, align 1
  %idxprom24 = zext i8 %22 to i32
  %arrayidx25 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom24
  %23 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %23 to i32
  %and27 = and i32 %conv26, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %while.body29, label %while.end

while.body29:                                     ; preds = %while.cond23
  %24 = load i8*, i8** %dend, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr30, i8** %dend, align 4
  br label %while.cond23

while.end:                                        ; preds = %while.cond23
  %25 = load i8*, i8** %dend, align 4
  %26 = load i8, i8* %25, align 1
  %conv31 = sext i8 %26 to i32
  %cmp32 = icmp eq i32 %conv31, 46
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %while.end
  %27 = load i8*, i8** %dend, align 4
  store i8* %27, i8** %fmt.addr, align 4
  %28 = load i8*, i8** %dstart, align 4
  %call35 = call i32 @atoi(i8* %28)
  store i32 %call35, i32* %digs, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %while.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end17
  %call38 = call i32 @ztrftimebuf(i32* %bufsize.addr, i32 2)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  store i32 -1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end37
  br label %morefmt

morefmt:                                          ; preds = %sw.bb250, %if.end41
  %29 = load i8*, i8** %fmt.addr, align 4
  %30 = load i8*, i8** %fmtstart, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp42 = icmp eq i32 %sub.ptr.sub, 1
  br i1 %cmp42, label %if.end68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %morefmt
  %31 = load i8*, i8** %fmt.addr, align 4
  %32 = load i8*, i8** %fmtstart, align 4
  %sub.ptr.lhs.cast44 = ptrtoint i8* %31 to i32
  %sub.ptr.rhs.cast45 = ptrtoint i8* %32 to i32
  %sub.ptr.sub46 = sub i32 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %cmp47 = icmp eq i32 %sub.ptr.sub46, 2
  br i1 %cmp47, label %land.lhs.true, label %lor.lhs.false50

land.lhs.true:                                    ; preds = %lor.lhs.false
  %33 = load i32, i32* %strip, align 4
  %tobool49 = icmp ne i32 %33, 0
  br i1 %tobool49, label %if.end68, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %34 = load i8*, i8** %fmt.addr, align 4
  %35 = load i8, i8* %34, align 1
  %conv51 = sext i8 %35 to i32
  %cmp52 = icmp eq i32 %conv51, 46
  br i1 %cmp52, label %if.end68, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false50
  br label %while.cond55

while.cond55:                                     ; preds = %while.body61, %if.then54
  %36 = load i8*, i8** %fmt.addr, align 4
  %37 = load i8, i8* %36, align 1
  %conv56 = sext i8 %37 to i32
  %tobool57 = icmp ne i32 %conv56, 0
  br i1 %tobool57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond55
  %38 = load i8*, i8** %fmt.addr, align 4
  %39 = load i8, i8* %38, align 1
  %conv58 = sext i8 %39 to i32
  %call59 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i32 %conv58)
  %tobool60 = icmp ne i8* %call59, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond55
  %40 = phi i1 [ false, %while.cond55 ], [ %tobool60, %land.rhs ]
  br i1 %40, label %while.body61, label %while.end63

while.body61:                                     ; preds = %land.end
  %41 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr62 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr62, i8** %fmt.addr, align 4
  br label %while.cond55

while.end63:                                      ; preds = %land.end
  %42 = load i8*, i8** %fmt.addr, align 4
  %43 = load i8, i8* %42, align 1
  %tobool64 = icmp ne i8 %43, 0
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %while.end63
  %44 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr66 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr66, i8** %fmt.addr, align 4
  br label %strftimehandling

if.end67:                                         ; preds = %while.end63
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %lor.lhs.false50, %land.lhs.true, %morefmt
  %45 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr69 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr69, i8** %fmt.addr, align 4
  %46 = load i8, i8* %45, align 1
  %conv70 = sext i8 %46 to i32
  switch i32 %conv70, label %sw.default [
    i32 46, label %sw.bb
    i32 0, label %sw.bb87
    i32 102, label %sw.bb90
    i32 101, label %sw.bb91
    i32 75, label %sw.bb110
    i32 72, label %sw.bb111
    i32 107, label %sw.bb111
    i32 76, label %sw.bb139
    i32 108, label %sw.bb140
    i32 100, label %sw.bb161
    i32 109, label %sw.bb179
    i32 77, label %sw.bb198
    i32 83, label %sw.bb215
    i32 121, label %sw.bb232
    i32 69, label %sw.bb250
    i32 79, label %sw.bb250
    i32 94, label %sw.bb250
    i32 35, label %sw.bb250
    i32 95, label %sw.bb250
    i32 45, label %sw.bb250
    i32 48, label %sw.bb250
    i32 49, label %sw.bb250
    i32 50, label %sw.bb250
    i32 51, label %sw.bb250
    i32 52, label %sw.bb250
    i32 53, label %sw.bb250
    i32 54, label %sw.bb250
    i32 55, label %sw.bb250
    i32 56, label %sw.bb250
    i32 57, label %sw.bb250
  ]

sw.bb:                                            ; preds = %if.end68
  %47 = load i32, i32* %digs, align 4
  %call71 = call i32 @ztrftimebuf(i32* %bufsize.addr, i32 %47)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %sw.bb
  store i32 -1, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %sw.bb
  %48 = load i32, i32* %digs, align 4
  %cmp75 = icmp sgt i32 %48, 6
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end74
  store i32 6, i32* %digs, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74
  %49 = load i32, i32* %digs, align 4
  %cmp79 = icmp slt i32 %49, 6
  br i1 %cmp79, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end78
  %50 = load i32, i32* %digs, align 4
  %sub = sub nsw i32 5, %50
  store i32 %sub, i32* %trunc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then81
  %51 = load i32, i32* %trunc, align 4
  %tobool82 = icmp ne i32 %51, 0
  br i1 %tobool82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %usec.addr, align 4
  %div = sdiv i32 %52, 10
  store i32 %div, i32* %usec.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %trunc, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %trunc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i32, i32* %usec.addr, align 4
  %add = add nsw i32 %54, 5
  %div83 = sdiv i32 %add, 10
  store i32 %div83, i32* %usec.addr, align 4
  br label %if.end84

if.end84:                                         ; preds = %for.end, %if.end78
  %55 = load i8*, i8** %buf.addr, align 4
  %56 = load i32, i32* %digs, align 4
  %57 = load i32, i32* %usec.addr, align 4
  %call85 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 %56, i32 %57)
  %58 = load i32, i32* %digs, align 4
  %59 = load i8*, i8** %buf.addr, align 4
  %add.ptr86 = getelementptr inbounds i8, i8* %59, i32 %58
  store i8* %add.ptr86, i8** %buf.addr, align 4
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end68
  %60 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr88 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr88, i8** %buf.addr, align 4
  store i8 37, i8* %60, align 1
  %61 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr89 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %incdec.ptr89, i8** %fmt.addr, align 4
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end68
  store i32 1, i32* %strip, align 4
  br label %sw.bb91

sw.bb91:                                          ; preds = %if.end68, %sw.bb90
  %62 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 3
  %63 = load i32, i32* %tm_mday, align 4
  %cmp92 = icmp sgt i32 %63, 9
  br i1 %cmp92, label %if.then94, label %if.else100

if.then94:                                        ; preds = %sw.bb91
  %64 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mday95 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 3
  %65 = load i32, i32* %tm_mday95, align 4
  %div96 = sdiv i32 %65, 10
  %add97 = add nsw i32 48, %div96
  %conv98 = trunc i32 %add97 to i8
  %66 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr99 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr99, i8** %buf.addr, align 4
  store i8 %conv98, i8* %66, align 1
  br label %if.end105

if.else100:                                       ; preds = %sw.bb91
  %67 = load i32, i32* %strip, align 4
  %tobool101 = icmp ne i32 %67, 0
  br i1 %tobool101, label %if.end104, label %if.then102

if.then102:                                       ; preds = %if.else100
  %68 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr103 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr103, i8** %buf.addr, align 4
  store i8 32, i8* %68, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.else100
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then94
  %69 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mday106 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 3
  %70 = load i32, i32* %tm_mday106, align 4
  %rem = srem i32 %70, 10
  %add107 = add nsw i32 48, %rem
  %conv108 = trunc i32 %add107 to i8
  %71 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr109 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr109, i8** %buf.addr, align 4
  store i8 %conv108, i8* %71, align 1
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end68
  store i32 1, i32* %strip, align 4
  br label %sw.bb111

sw.bb111:                                         ; preds = %if.end68, %if.end68, %sw.bb110
  %72 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 2
  %73 = load i32, i32* %tm_hour, align 4
  %cmp112 = icmp sgt i32 %73, 9
  br i1 %cmp112, label %if.then114, label %if.else120

if.then114:                                       ; preds = %sw.bb111
  %74 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_hour115 = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 2
  %75 = load i32, i32* %tm_hour115, align 4
  %div116 = sdiv i32 %75, 10
  %add117 = add nsw i32 48, %div116
  %conv118 = trunc i32 %add117 to i8
  %76 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr119 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr119, i8** %buf.addr, align 4
  store i8 %conv118, i8* %76, align 1
  br label %if.end133

if.else120:                                       ; preds = %sw.bb111
  %77 = load i32, i32* %strip, align 4
  %tobool121 = icmp ne i32 %77, 0
  br i1 %tobool121, label %if.end132, label %if.then122

if.then122:                                       ; preds = %if.else120
  %78 = load i8*, i8** %fmt.addr, align 4
  %arrayidx123 = getelementptr inbounds i8, i8* %78, i32 -1
  %79 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %79 to i32
  %cmp125 = icmp eq i32 %conv124, 72
  br i1 %cmp125, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.then122
  %80 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr128 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr128, i8** %buf.addr, align 4
  store i8 48, i8* %80, align 1
  br label %if.end131

if.else129:                                       ; preds = %if.then122
  %81 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr130 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr130, i8** %buf.addr, align 4
  store i8 32, i8* %81, align 1
  br label %if.end131

if.end131:                                        ; preds = %if.else129, %if.then127
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.else120
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then114
  %82 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_hour134 = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 2
  %83 = load i32, i32* %tm_hour134, align 4
  %rem135 = srem i32 %83, 10
  %add136 = add nsw i32 48, %rem135
  %conv137 = trunc i32 %add136 to i8
  %84 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr138 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr138, i8** %buf.addr, align 4
  store i8 %conv137, i8* %84, align 1
  br label %sw.epilog

sw.bb139:                                         ; preds = %if.end68
  store i32 1, i32* %strip, align 4
  br label %sw.bb140

sw.bb140:                                         ; preds = %if.end68, %sw.bb139
  %85 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_hour141 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 2
  %86 = load i32, i32* %tm_hour141, align 4
  %rem142 = srem i32 %86, 12
  store i32 %rem142, i32* %hr12, align 4
  %87 = load i32, i32* %hr12, align 4
  %cmp143 = icmp eq i32 %87, 0
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %sw.bb140
  store i32 12, i32* %hr12, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %sw.bb140
  %88 = load i32, i32* %hr12, align 4
  %cmp147 = icmp sgt i32 %88, 9
  br i1 %cmp147, label %if.then149, label %if.else151

if.then149:                                       ; preds = %if.end146
  %89 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr150 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr150, i8** %buf.addr, align 4
  store i8 49, i8* %89, align 1
  br label %if.end156

if.else151:                                       ; preds = %if.end146
  %90 = load i32, i32* %strip, align 4
  %tobool152 = icmp ne i32 %90, 0
  br i1 %tobool152, label %if.end155, label %if.then153

if.then153:                                       ; preds = %if.else151
  %91 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr154 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr154, i8** %buf.addr, align 4
  store i8 32, i8* %91, align 1
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.else151
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then149
  %92 = load i32, i32* %hr12, align 4
  %rem157 = srem i32 %92, 10
  %add158 = add nsw i32 48, %rem157
  %conv159 = trunc i32 %add158 to i8
  %93 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr160 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr160, i8** %buf.addr, align 4
  store i8 %conv159, i8* %93, align 1
  br label %sw.epilog

sw.bb161:                                         ; preds = %if.end68
  %94 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mday162 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 3
  %95 = load i32, i32* %tm_mday162, align 4
  %cmp163 = icmp sgt i32 %95, 9
  br i1 %cmp163, label %if.then167, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %sw.bb161
  %96 = load i32, i32* %strip, align 4
  %tobool166 = icmp ne i32 %96, 0
  br i1 %tobool166, label %if.end173, label %if.then167

if.then167:                                       ; preds = %lor.lhs.false165, %sw.bb161
  %97 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mday168 = getelementptr inbounds %struct.tm, %struct.tm* %97, i32 0, i32 3
  %98 = load i32, i32* %tm_mday168, align 4
  %div169 = sdiv i32 %98, 10
  %add170 = add nsw i32 48, %div169
  %conv171 = trunc i32 %add170 to i8
  %99 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr172 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr172, i8** %buf.addr, align 4
  store i8 %conv171, i8* %99, align 1
  br label %if.end173

if.end173:                                        ; preds = %if.then167, %lor.lhs.false165
  %100 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mday174 = getelementptr inbounds %struct.tm, %struct.tm* %100, i32 0, i32 3
  %101 = load i32, i32* %tm_mday174, align 4
  %rem175 = srem i32 %101, 10
  %add176 = add nsw i32 48, %rem175
  %conv177 = trunc i32 %add176 to i8
  %102 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr178 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr178, i8** %buf.addr, align 4
  store i8 %conv177, i8* %102, align 1
  br label %sw.epilog

sw.bb179:                                         ; preds = %if.end68
  %103 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 4
  %104 = load i32, i32* %tm_mon, align 4
  %cmp180 = icmp sgt i32 %104, 8
  br i1 %cmp180, label %if.then184, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %sw.bb179
  %105 = load i32, i32* %strip, align 4
  %tobool183 = icmp ne i32 %105, 0
  br i1 %tobool183, label %if.end191, label %if.then184

if.then184:                                       ; preds = %lor.lhs.false182, %sw.bb179
  %106 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mon185 = getelementptr inbounds %struct.tm, %struct.tm* %106, i32 0, i32 4
  %107 = load i32, i32* %tm_mon185, align 4
  %add186 = add nsw i32 %107, 1
  %div187 = sdiv i32 %add186, 10
  %add188 = add nsw i32 48, %div187
  %conv189 = trunc i32 %add188 to i8
  %108 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr190 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr190, i8** %buf.addr, align 4
  store i8 %conv189, i8* %108, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.then184, %lor.lhs.false182
  %109 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_mon192 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 4
  %110 = load i32, i32* %tm_mon192, align 4
  %add193 = add nsw i32 %110, 1
  %rem194 = srem i32 %add193, 10
  %add195 = add nsw i32 48, %rem194
  %conv196 = trunc i32 %add195 to i8
  %111 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr197 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr197, i8** %buf.addr, align 4
  store i8 %conv196, i8* %111, align 1
  br label %sw.epilog

sw.bb198:                                         ; preds = %if.end68
  %112 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %112, i32 0, i32 1
  %113 = load i32, i32* %tm_min, align 4
  %cmp199 = icmp sgt i32 %113, 9
  br i1 %cmp199, label %if.then203, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %sw.bb198
  %114 = load i32, i32* %strip, align 4
  %tobool202 = icmp ne i32 %114, 0
  br i1 %tobool202, label %if.end209, label %if.then203

if.then203:                                       ; preds = %lor.lhs.false201, %sw.bb198
  %115 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_min204 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 1
  %116 = load i32, i32* %tm_min204, align 4
  %div205 = sdiv i32 %116, 10
  %add206 = add nsw i32 48, %div205
  %conv207 = trunc i32 %add206 to i8
  %117 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr208 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr208, i8** %buf.addr, align 4
  store i8 %conv207, i8* %117, align 1
  br label %if.end209

if.end209:                                        ; preds = %if.then203, %lor.lhs.false201
  %118 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_min210 = getelementptr inbounds %struct.tm, %struct.tm* %118, i32 0, i32 1
  %119 = load i32, i32* %tm_min210, align 4
  %rem211 = srem i32 %119, 10
  %add212 = add nsw i32 48, %rem211
  %conv213 = trunc i32 %add212 to i8
  %120 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr214 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr214, i8** %buf.addr, align 4
  store i8 %conv213, i8* %120, align 1
  br label %sw.epilog

sw.bb215:                                         ; preds = %if.end68
  %121 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %121, i32 0, i32 0
  %122 = load i32, i32* %tm_sec, align 4
  %cmp216 = icmp sgt i32 %122, 9
  br i1 %cmp216, label %if.then220, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %sw.bb215
  %123 = load i32, i32* %strip, align 4
  %tobool219 = icmp ne i32 %123, 0
  br i1 %tobool219, label %if.end226, label %if.then220

if.then220:                                       ; preds = %lor.lhs.false218, %sw.bb215
  %124 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_sec221 = getelementptr inbounds %struct.tm, %struct.tm* %124, i32 0, i32 0
  %125 = load i32, i32* %tm_sec221, align 4
  %div222 = sdiv i32 %125, 10
  %add223 = add nsw i32 48, %div222
  %conv224 = trunc i32 %add223 to i8
  %126 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr225 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr225, i8** %buf.addr, align 4
  store i8 %conv224, i8* %126, align 1
  br label %if.end226

if.end226:                                        ; preds = %if.then220, %lor.lhs.false218
  %127 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_sec227 = getelementptr inbounds %struct.tm, %struct.tm* %127, i32 0, i32 0
  %128 = load i32, i32* %tm_sec227, align 4
  %rem228 = srem i32 %128, 10
  %add229 = add nsw i32 48, %rem228
  %conv230 = trunc i32 %add229 to i8
  %129 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr231 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr231, i8** %buf.addr, align 4
  store i8 %conv230, i8* %129, align 1
  br label %sw.epilog

sw.bb232:                                         ; preds = %if.end68
  %130 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %130, i32 0, i32 5
  %131 = load i32, i32* %tm_year, align 4
  %cmp233 = icmp sgt i32 %131, 9
  br i1 %cmp233, label %if.then237, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %sw.bb232
  %132 = load i32, i32* %strip, align 4
  %tobool236 = icmp ne i32 %132, 0
  br i1 %tobool236, label %if.end244, label %if.then237

if.then237:                                       ; preds = %lor.lhs.false235, %sw.bb232
  %133 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_year238 = getelementptr inbounds %struct.tm, %struct.tm* %133, i32 0, i32 5
  %134 = load i32, i32* %tm_year238, align 4
  %div239 = sdiv i32 %134, 10
  %rem240 = srem i32 %div239, 10
  %add241 = add nsw i32 48, %rem240
  %conv242 = trunc i32 %add241 to i8
  %135 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr243 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr243, i8** %buf.addr, align 4
  store i8 %conv242, i8* %135, align 1
  br label %if.end244

if.end244:                                        ; preds = %if.then237, %lor.lhs.false235
  %136 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %tm_year245 = getelementptr inbounds %struct.tm, %struct.tm* %136, i32 0, i32 5
  %137 = load i32, i32* %tm_year245, align 4
  %rem246 = srem i32 %137, 10
  %add247 = add nsw i32 48, %rem246
  %conv248 = trunc i32 %add247 to i8
  %138 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr249 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr249, i8** %buf.addr, align 4
  store i8 %conv248, i8* %138, align 1
  br label %sw.epilog

sw.bb250:                                         ; preds = %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68, %if.end68
  br label %morefmt

strftimehandling:                                 ; preds = %if.then65
  br label %sw.default

sw.default:                                       ; preds = %if.end68, %strftimehandling
  %139 = load i8*, i8** %fmt.addr, align 4
  %arrayidx251 = getelementptr inbounds i8, i8* %139, i32 -1
  %140 = load i8, i8* %arrayidx251, align 1
  store i8 %140, i8* %origchar, align 1
  %141 = load i8*, i8** %fmt.addr, align 4
  %142 = load i8*, i8** %fmtstart, align 4
  %sub.ptr.lhs.cast252 = ptrtoint i8* %141 to i32
  %sub.ptr.rhs.cast253 = ptrtoint i8* %142 to i32
  %sub.ptr.sub254 = sub i32 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253
  store i32 %sub.ptr.sub254, i32* %size, align 4
  %143 = load i32, i32* %size, align 4
  %add256 = add nsw i32 %143, 1
  %call257 = call i8* @zhalloc(i32 %add256)
  store i8* %call257, i8** %tmp, align 4
  %144 = load i8*, i8** %tmp, align 4
  %145 = load i8*, i8** %fmtstart, align 4
  %146 = load i32, i32* %size, align 4
  %call258 = call i8* @strncpy(i8* %144, i8* %145, i32 %146)
  %147 = load i8*, i8** %fmt.addr, align 4
  %add.ptr259 = getelementptr inbounds i8, i8* %147, i32 -1
  store i8* %add.ptr259, i8** %last, align 4
  %148 = load i8*, i8** %last, align 4
  %149 = load i8, i8* %148, align 1
  %conv260 = sext i8 %149 to i32
  %cmp261 = icmp eq i32 %conv260, -125
  br i1 %cmp261, label %if.then263, label %if.end268

if.then263:                                       ; preds = %sw.default
  %150 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr264 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr264, i8** %fmt.addr, align 4
  %151 = load i8, i8* %incdec.ptr264, align 1
  %conv265 = sext i8 %151 to i32
  %xor266 = xor i32 %conv265, 32
  %conv267 = trunc i32 %xor266 to i8
  %152 = load i8*, i8** %last, align 4
  store i8 %conv267, i8* %152, align 1
  br label %if.end268

if.end268:                                        ; preds = %if.then263, %sw.default
  %153 = load i8*, i8** %tmp, align 4
  %154 = load i32, i32* %size, align 4
  %arrayidx269 = getelementptr inbounds i8, i8* %153, i32 %154
  store i8 0, i8* %arrayidx269, align 1
  %155 = load i8*, i8** %buf.addr, align 4
  store i8 1, i8* %155, align 1
  %156 = load i8*, i8** %buf.addr, align 4
  %157 = load i32, i32* %bufsize.addr, align 4
  %add270 = add nsw i32 %157, 2
  %158 = load i8*, i8** %tmp, align 4
  %159 = load %struct.tm*, %struct.tm** %tm.addr, align 4
  %call271 = call i32 @strftime(i8* %156, i32 %add270, i8* %158, %struct.tm* %159)
  %tobool272 = icmp ne i32 %call271, 0
  br i1 %tobool272, label %if.end290, label %if.then273

if.then273:                                       ; preds = %if.end268
  %160 = load i8*, i8** %buf.addr, align 4
  %161 = load i8, i8* %160, align 1
  %conv274 = sext i8 %161 to i32
  %tobool275 = icmp ne i32 %conv274, 0
  br i1 %tobool275, label %if.then284, label %lor.lhs.false276

lor.lhs.false276:                                 ; preds = %if.then273
  %162 = load i8, i8* %origchar, align 1
  %conv277 = sext i8 %162 to i32
  %cmp278 = icmp ne i32 %conv277, 112
  br i1 %cmp278, label %land.lhs.true280, label %if.end289

land.lhs.true280:                                 ; preds = %lor.lhs.false276
  %163 = load i8, i8* %origchar, align 1
  %conv281 = sext i8 %163 to i32
  %cmp282 = icmp ne i32 %conv281, 80
  br i1 %cmp282, label %if.then284, label %if.end289

if.then284:                                       ; preds = %land.lhs.true280, %if.then273
  %164 = load i8*, i8** %buf.addr, align 4
  %165 = load i8, i8* %164, align 1
  %tobool285 = icmp ne i8 %165, 0
  br i1 %tobool285, label %if.then286, label %if.end288

if.then286:                                       ; preds = %if.then284
  %166 = load i8*, i8** %buf.addr, align 4
  %arrayidx287 = getelementptr inbounds i8, i8* %166, i32 0
  store i8 0, i8* %arrayidx287, align 1
  store i32 -1, i32* %retval, align 4
  br label %return

if.end288:                                        ; preds = %if.then284
  store i32 0, i32* %retval, align 4
  br label %return

if.end289:                                        ; preds = %land.lhs.true280, %lor.lhs.false276
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %if.end268
  %167 = load i8*, i8** %buf.addr, align 4
  %call291 = call i32 @strlen(i8* %167)
  store i32 %call291, i32* %decr, align 4
  %168 = load i32, i32* %decr, align 4
  %169 = load i8*, i8** %buf.addr, align 4
  %add.ptr292 = getelementptr inbounds i8, i8* %169, i32 %168
  store i8* %add.ptr292, i8** %buf.addr, align 4
  %170 = load i32, i32* %decr, align 4
  %sub293 = sub nsw i32 %170, 2
  %171 = load i32, i32* %bufsize.addr, align 4
  %sub294 = sub nsw i32 %171, %sub293
  store i32 %sub294, i32* %bufsize.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end290, %if.end244, %if.end226, %if.end209, %if.end191, %if.end173, %if.end156, %if.end133, %if.end105, %sw.bb87, %if.end84
  br label %if.end302

if.else295:                                       ; preds = %if.else
  %call296 = call i32 @ztrftimebuf(i32* %bufsize.addr, i32 1)
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.then298, label %if.end299

if.then298:                                       ; preds = %if.else295
  store i32 -1, i32* %retval, align 4
  br label %return

if.end299:                                        ; preds = %if.else295
  %172 = load i8*, i8** %fmt.addr, align 4
  %incdec.ptr300 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr300, i8** %fmt.addr, align 4
  %173 = load i8, i8* %172, align 1
  %174 = load i8*, i8** %buf.addr, align 4
  %incdec.ptr301 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr301, i8** %buf.addr, align 4
  store i8 %173, i8* %174, align 1
  br label %if.end302

if.end302:                                        ; preds = %if.end299, %sw.epilog
  br label %if.end303

if.end303:                                        ; preds = %if.end302, %if.end
  br label %while.cond

while.end304:                                     ; preds = %while.cond
  %175 = load i8*, i8** %buf.addr, align 4
  store i8 0, i8* %175, align 1
  %176 = load i8*, i8** %buf.addr, align 4
  %177 = load i8*, i8** %origbuf, align 4
  %sub.ptr.lhs.cast305 = ptrtoint i8* %176 to i32
  %sub.ptr.rhs.cast306 = ptrtoint i8* %177 to i32
  %sub.ptr.sub307 = sub i32 %sub.ptr.lhs.cast305, %sub.ptr.rhs.cast306
  store i32 %sub.ptr.sub307, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end304, %if.then298, %if.end288, %if.then286, %if.then73, %if.then40, %if.then4
  %178 = load i32, i32* %retval, align 4
  ret i32 %178
}

; Function Attrs: noinline nounwind
define internal i32 @ztrftimebuf(i32* %bufsizeptr, i32 %decr) #0 {
entry:
  %retval = alloca i32, align 4
  %bufsizeptr.addr = alloca i32*, align 4
  %decr.addr = alloca i32, align 4
  store i32* %bufsizeptr, i32** %bufsizeptr.addr, align 4
  store i32 %decr, i32* %decr.addr, align 4
  %0 = load i32*, i32** %bufsizeptr.addr, align 4
  %1 = load i32, i32* %0, align 4
  %2 = load i32, i32* %decr.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %decr.addr, align 4
  %4 = load i32*, i32** %bufsizeptr.addr, align 4
  %5 = load i32, i32* %4, align 4
  %sub = sub nsw i32 %5, %3
  store i32 %sub, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @atoi(i8*) #2

declare i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

; Function Attrs: noinline nounwind
define i8* @zjoin(i8** %arr, i32 %delim, i32 %heap) #0 {
entry:
  %retval = alloca i8*, align 4
  %arr.addr = alloca i8**, align 4
  %delim.addr = alloca i32, align 4
  %heap.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %s = alloca i8**, align 4
  %ret = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  store i8** %arr, i8*** %arr.addr, align 4
  store i32 %delim, i32* %delim.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  store i32 0, i32* %len, align 4
  %0 = load i8**, i8*** %arr.addr, align 4
  store i8** %0, i8*** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %s, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %s, align 4
  %4 = load i8*, i8** %3, align 4
  %call = call i32 @strlen(i8* %4)
  %add = add i32 %call, 1
  %5 = load i32, i32* %delim.addr, align 4
  %conv = trunc i32 %5 to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv1 = sext i16 %6 to i32
  %and = and i32 %conv1, 4096
  %tobool2 = icmp ne i32 %and, 0
  %cond = select i1 %tobool2, i32 1, i32 0
  %add3 = add i32 %add, %cond
  %7 = load i32, i32* %len, align 4
  %add4 = add i32 %7, %add3
  store i32 %add4, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8**, i8*** %s, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %len, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %10 = load i32, i32* %heap.addr, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call7 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.true ], [ %call7, %cond.false ]
  store i8* %cond8, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %11 = load i32, i32* %heap.addr, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %cond.true10, label %cond.false12

cond.true10:                                      ; preds = %if.end
  %12 = load i32, i32* %len, align 4
  %call11 = call i8* @zhalloc(i32 %12)
  br label %cond.end14

cond.false12:                                     ; preds = %if.end
  %13 = load i32, i32* %len, align 4
  %call13 = call i8* @zalloc(i32 %13)
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %cond.true10
  %cond15 = phi i8* [ %call11, %cond.true10 ], [ %call13, %cond.false12 ]
  store i8* %cond15, i8** %ret, align 4
  store i8* %cond15, i8** %ptr, align 4
  %14 = load i8**, i8*** %arr.addr, align 4
  store i8** %14, i8*** %s, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc32, %cond.end14
  %15 = load i8**, i8*** %s, align 4
  %16 = load i8*, i8** %15, align 4
  %tobool17 = icmp ne i8* %16, null
  br i1 %tobool17, label %for.body18, label %for.end34

for.body18:                                       ; preds = %for.cond16
  %17 = load i8**, i8*** %s, align 4
  %18 = load i8*, i8** %17, align 4
  call void @strucpy(i8** %ptr, i8* %18)
  %19 = load i32, i32* %delim.addr, align 4
  %conv19 = trunc i32 %19 to i8
  %idxprom20 = zext i8 %conv19 to i32
  %arrayidx21 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom20
  %20 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %20 to i32
  %and23 = and i32 %conv22, 4096
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.body18
  %21 = load i8*, i8** %ptr, align 4
  %incdec.ptr26 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr26, i8** %ptr, align 4
  store i8 -125, i8* %21, align 1
  %22 = load i32, i32* %delim.addr, align 4
  %xor = xor i32 %22, 32
  %conv27 = trunc i32 %xor to i8
  %23 = load i8*, i8** %ptr, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr28, i8** %ptr, align 4
  store i8 %conv27, i8* %23, align 1
  br label %if.end31

if.else:                                          ; preds = %for.body18
  %24 = load i32, i32* %delim.addr, align 4
  %conv29 = trunc i32 %24 to i8
  %25 = load i8*, i8** %ptr, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr30, i8** %ptr, align 4
  store i8 %conv29, i8* %25, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then25
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %26 = load i8**, i8*** %s, align 4
  %incdec.ptr33 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr33, i8*** %s, align 4
  br label %for.cond16

for.end34:                                        ; preds = %for.cond16
  %27 = load i8*, i8** %ptr, align 4
  %28 = load i32, i32* %delim.addr, align 4
  %conv35 = trunc i32 %28 to i8
  %idxprom36 = zext i8 %conv35 to i32
  %arrayidx37 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom36
  %29 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %29 to i32
  %and39 = and i32 %conv38, 4096
  %tobool40 = icmp ne i32 %and39, 0
  %cond41 = select i1 %tobool40, i32 1, i32 0
  %sub = sub nsw i32 -1, %cond41
  %arrayidx42 = getelementptr inbounds i8, i8* %27, i32 %sub
  store i8 0, i8* %arrayidx42, align 1
  %30 = load i8*, i8** %ret, align 4
  store i8* %30, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end34, %cond.end
  %31 = load i8*, i8** %retval, align 4
  ret i8* %31
}

; Function Attrs: noinline nounwind
define i8** @colonsplit(i8* %s, i32 %uniq) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %uniq.addr = alloca i32, align 4
  %ct = alloca i32, align 4
  %t = alloca i8*, align 4
  %ret = alloca i8**, align 4
  %ptr = alloca i8**, align 4
  %p = alloca i8**, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %uniq, i32* %uniq.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %t, align 4
  store i32 0, i32* %ct, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %t, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %t, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %ct, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ct, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %ct, align 4
  %add = add nsw i32 %7, 2
  %mul = mul i32 4, %add
  %call = call i8* @zalloc(i32 %mul)
  %8 = bitcast i8* %call to i8**
  store i8** %8, i8*** %ret, align 4
  store i8** %8, i8*** %ptr, align 4
  %9 = load i8*, i8** %s.addr, align 4
  store i8* %9, i8** %t, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %10 = load i8*, i8** %t, align 4
  store i8* %10, i8** %s.addr, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %do.body
  %11 = load i8*, i8** %t, align 4
  %12 = load i8, i8* %11, align 1
  %conv3 = sext i8 %12 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond2
  %13 = load i8*, i8** %t, align 4
  %14 = load i8, i8* %13, align 1
  %conv5 = sext i8 %14 to i32
  %cmp6 = icmp ne i32 %conv5, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond2
  %15 = phi i1 [ false, %for.cond2 ], [ %cmp6, %land.rhs ]
  br i1 %15, label %for.body8, label %for.end11

for.body8:                                        ; preds = %land.end
  br label %for.inc9

for.inc9:                                         ; preds = %for.body8
  %16 = load i8*, i8** %t, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr10, i8** %t, align 4
  br label %for.cond2

for.end11:                                        ; preds = %land.end
  %17 = load i32, i32* %uniq.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then13, label %if.end31

if.then13:                                        ; preds = %for.end11
  %18 = load i8**, i8*** %ret, align 4
  store i8** %18, i8*** %p, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc28, %if.then13
  %19 = load i8**, i8*** %p, align 4
  %20 = load i8**, i8*** %ptr, align 4
  %cmp15 = icmp ult i8** %19, %20
  br i1 %cmp15, label %for.body17, label %for.end30

for.body17:                                       ; preds = %for.cond14
  %21 = load i8**, i8*** %p, align 4
  %22 = load i8*, i8** %21, align 4
  %call18 = call i32 @strlen(i8* %22)
  %23 = load i8*, i8** %t, align 4
  %24 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp19 = icmp eq i32 %call18, %sub.ptr.sub
  br i1 %cmp19, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %for.body17
  %25 = load i8**, i8*** %p, align 4
  %26 = load i8*, i8** %25, align 4
  %27 = load i8*, i8** %s.addr, align 4
  %28 = load i8*, i8** %t, align 4
  %29 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast21 = ptrtoint i8* %28 to i32
  %sub.ptr.rhs.cast22 = ptrtoint i8* %29 to i32
  %sub.ptr.sub23 = sub i32 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %call24 = call i32 @strncmp(i8* %26, i8* %27, i32 %sub.ptr.sub23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  br label %cont

if.end27:                                         ; preds = %land.lhs.true, %for.body17
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %30 = load i8**, i8*** %p, align 4
  %incdec.ptr29 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr29, i8*** %p, align 4
  br label %for.cond14

for.end30:                                        ; preds = %for.cond14
  br label %if.end31

if.end31:                                         ; preds = %for.end30, %for.end11
  %31 = load i8*, i8** %t, align 4
  %32 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast32 = ptrtoint i8* %31 to i32
  %sub.ptr.rhs.cast33 = ptrtoint i8* %32 to i32
  %sub.ptr.sub34 = sub i32 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %add35 = add nsw i32 %sub.ptr.sub34, 1
  %call36 = call i8* @zalloc(i32 %add35)
  %33 = load i8**, i8*** %ptr, align 4
  store i8* %call36, i8** %33, align 4
  %34 = load i8**, i8*** %ptr, align 4
  %incdec.ptr37 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %incdec.ptr37, i8*** %ptr, align 4
  %35 = load i8*, i8** %34, align 4
  %36 = load i8*, i8** %s.addr, align 4
  %37 = load i8*, i8** %t, align 4
  %38 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast38 = ptrtoint i8* %37 to i32
  %sub.ptr.rhs.cast39 = ptrtoint i8* %38 to i32
  %sub.ptr.sub40 = sub i32 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  call void @ztrncpy(i8* %35, i8* %36, i32 %sub.ptr.sub40)
  br label %cont

cont:                                             ; preds = %if.end31, %if.then26
  br label %do.cond

do.cond:                                          ; preds = %cont
  %39 = load i8*, i8** %t, align 4
  %incdec.ptr41 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr41, i8** %t, align 4
  %40 = load i8, i8* %39, align 1
  %tobool42 = icmp ne i8 %40, 0
  br i1 %tobool42, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load i8**, i8*** %ptr, align 4
  store i8* null, i8** %41, align 4
  %42 = load i8**, i8*** %ret, align 4
  ret i8** %42
}

; Function Attrs: noinline nounwind
define i8** @spacesplit(i8* %s, i32 %allownull, i32 %heap, i32 %quote) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %allownull.addr = alloca i32, align 4
  %heap.addr = alloca i32, align 4
  %quote.addr = alloca i32, align 4
  %t = alloca i8*, align 4
  %ret = alloca i8**, align 4
  %ptr = alloca i8**, align 4
  %l = alloca i32, align 4
  %dup = alloca i8* (i8*)*, align 4
  %iend = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %allownull, i32* %allownull.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  store i32 %quote, i32* %quote.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i32, i32* %allownull.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %sub = sub nsw i32 0, %lnot.ext
  %call = call i32 @wordcount(i8* %0, i8* null, i32 %sub)
  %add = add nsw i32 %call, 1
  %mul = mul i32 4, %add
  store i32 %mul, i32* %l, align 4
  %2 = load i32, i32* %heap.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  %cond = select i1 %tobool1, i8* (i8*)* @dupstring, i8* (i8*)* @ztrdup
  store i8* (i8*)* %cond, i8* (i8*)** %dup, align 4
  %3 = load i32, i32* %heap.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %l, align 4
  %call3 = call i8* @hcalloc(i32 %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %l, align 4
  %call4 = call i8* @zshcalloc(i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i8* [ %call3, %cond.true ], [ %call4, %cond.false ]
  %6 = bitcast i8* %cond5 to i8**
  store i8** %6, i8*** %ret, align 4
  store i8** %6, i8*** %ptr, align 4
  %7 = load i32, i32* %quote.addr, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i8*, i8** %s.addr, align 4
  %call7 = call i8* @dupstring(i8* %8)
  store i8* %call7, i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load i8*, i8** %s.addr, align 4
  store i8* %9, i8** %t, align 4
  %call8 = call i32 @skipwsep(i8** %s.addr)
  call void @mb_charinit()
  %10 = load i8*, i8** %s.addr, align 4
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %tobool9 = icmp ne i32 %conv, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load i8*, i8** %s.addr, align 4
  %call10 = call i8* @itype_end(i8* %12, i32 32, i32 1)
  %13 = load i8*, i8** %s.addr, align 4
  %cmp = icmp ne i8* %call10, %13
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %14 = load i8* (i8*)*, i8* (i8*)** %dup, align 4
  %15 = load i32, i32* %allownull.addr, align 4
  %tobool13 = icmp ne i32 %15, 0
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @nulstring, i32 0, i32 0)
  %call15 = call i8* %14(i8* %cond14)
  %16 = load i8**, i8*** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %ptr, align 4
  store i8* %call15, i8** %16, align 4
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true, %if.end
  %17 = load i32, i32* %allownull.addr, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.end23, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.else
  %18 = load i8*, i8** %t, align 4
  %19 = load i8*, i8** %s.addr, align 4
  %cmp18 = icmp ne i8* %18, %19
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %land.lhs.true17
  %20 = load i8* (i8*)*, i8* (i8*)** %dup, align 4
  %call21 = call i8* %20(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %21 = load i8**, i8*** %ptr, align 4
  %incdec.ptr22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %incdec.ptr22, i8*** %ptr, align 4
  store i8* %call21, i8** %21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true17, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then12
  br label %while.cond

while.cond:                                       ; preds = %if.end66, %if.end24
  %22 = load i8*, i8** %s.addr, align 4
  %23 = load i8, i8* %22, align 1
  %tobool25 = icmp ne i8 %23, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %s.addr, align 4
  %call26 = call i8* @itype_end(i8* %24, i32 32, i32 1)
  store i8* %call26, i8** %iend, align 4
  %25 = load i8*, i8** %iend, align 4
  %26 = load i8*, i8** %s.addr, align 4
  %cmp27 = icmp ne i8* %25, %26
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %while.body
  %27 = load i8*, i8** %iend, align 4
  store i8* %27, i8** %s.addr, align 4
  %call30 = call i32 @skipwsep(i8** %s.addr)
  br label %if.end41

if.else31:                                        ; preds = %while.body
  %28 = load i32, i32* %quote.addr, align 4
  %tobool32 = icmp ne i32 %28, 0
  br i1 %tobool32, label %land.lhs.true33, label %if.end40

land.lhs.true33:                                  ; preds = %if.else31
  %29 = load i8*, i8** %s.addr, align 4
  %30 = load i8, i8* %29, align 1
  %conv34 = sext i8 %30 to i32
  %cmp35 = icmp eq i32 %conv34, 92
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %land.lhs.true33
  %31 = load i8*, i8** %s.addr, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr38, i8** %s.addr, align 4
  %call39 = call i32 @skipwsep(i8** %s.addr)
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true33, %if.else31
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then29
  %32 = load i8*, i8** %s.addr, align 4
  store i8* %32, i8** %t, align 4
  %33 = load i32, i32* %quote.addr, align 4
  %call42 = call i32 @findsep(i8** %s.addr, i8* null, i32 %33)
  %34 = load i8*, i8** %s.addr, align 4
  %35 = load i8*, i8** %t, align 4
  %cmp43 = icmp ugt i8* %34, %35
  br i1 %cmp43, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end41
  %36 = load i32, i32* %allownull.addr, align 4
  %tobool45 = icmp ne i32 %36, 0
  br i1 %tobool45, label %if.then46, label %if.else63

if.then46:                                        ; preds = %lor.lhs.false, %if.end41
  %37 = load i32, i32* %heap.addr, align 4
  %tobool47 = icmp ne i32 %37, 0
  br i1 %tobool47, label %cond.true48, label %cond.false51

cond.true48:                                      ; preds = %if.then46
  %38 = load i8*, i8** %s.addr, align 4
  %39 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add49 = add nsw i32 %sub.ptr.sub, 1
  %call50 = call i8* @zhalloc(i32 %add49)
  br label %cond.end57

cond.false51:                                     ; preds = %if.then46
  %40 = load i8*, i8** %s.addr, align 4
  %41 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast52 = ptrtoint i8* %40 to i32
  %sub.ptr.rhs.cast53 = ptrtoint i8* %41 to i32
  %sub.ptr.sub54 = sub i32 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %add55 = add nsw i32 %sub.ptr.sub54, 1
  %call56 = call i8* @zalloc(i32 %add55)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false51, %cond.true48
  %cond58 = phi i8* [ %call50, %cond.true48 ], [ %call56, %cond.false51 ]
  %42 = load i8**, i8*** %ptr, align 4
  store i8* %cond58, i8** %42, align 4
  %43 = load i8**, i8*** %ptr, align 4
  %incdec.ptr59 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %incdec.ptr59, i8*** %ptr, align 4
  %44 = load i8*, i8** %43, align 4
  %45 = load i8*, i8** %t, align 4
  %46 = load i8*, i8** %s.addr, align 4
  %47 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast60 = ptrtoint i8* %46 to i32
  %sub.ptr.rhs.cast61 = ptrtoint i8* %47 to i32
  %sub.ptr.sub62 = sub i32 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  call void @ztrncpy(i8* %44, i8* %45, i32 %sub.ptr.sub62)
  br label %if.end66

if.else63:                                        ; preds = %lor.lhs.false
  %48 = load i8* (i8*)*, i8* (i8*)** %dup, align 4
  %call64 = call i8* %48(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @nulstring, i32 0, i32 0))
  %49 = load i8**, i8*** %ptr, align 4
  %incdec.ptr65 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %incdec.ptr65, i8*** %ptr, align 4
  store i8* %call64, i8** %49, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else63, %cond.end57
  %50 = load i8*, i8** %s.addr, align 4
  store i8* %50, i8** %t, align 4
  %call67 = call i32 @skipwsep(i8** %s.addr)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load i32, i32* %allownull.addr, align 4
  %tobool68 = icmp ne i32 %51, 0
  br i1 %tobool68, label %if.end75, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %while.end
  %52 = load i8*, i8** %t, align 4
  %53 = load i8*, i8** %s.addr, align 4
  %cmp70 = icmp ne i8* %52, %53
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %land.lhs.true69
  %54 = load i8* (i8*)*, i8* (i8*)** %dup, align 4
  %call73 = call i8* %54(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %55 = load i8**, i8*** %ptr, align 4
  %incdec.ptr74 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %incdec.ptr74, i8*** %ptr, align 4
  store i8* %call73, i8** %55, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %land.lhs.true69, %while.end
  %56 = load i8**, i8*** %ptr, align 4
  store i8* null, i8** %56, align 4
  %57 = load i8**, i8*** %ret, align 4
  ret i8** %57
}

; Function Attrs: noinline nounwind
define i32 @wordcount(i8* %s, i8* %sep, i32 %mul) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %sep.addr = alloca i8*, align 4
  %mul.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %sl = alloca i32, align 4
  %c = alloca i32, align 4
  %t = alloca i8*, align 4
  %ie = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %sep, i8** %sep.addr, align 4
  store i32 %mul, i32* %mul.addr, align 4
  %0 = load i8*, i8** %sep.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %r, align 4
  %1 = load i8*, i8** %sep.addr, align 4
  %call = call i32 @strlen(i8* %1)
  store i32 %call, i32* %sl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i8*, i8** %sep.addr, align 4
  %call1 = call i32 @findsep(i8** %s.addr, i8* %2, i32 0)
  store i32 %call1, i32* %c, align 4
  %cmp = icmp sge i32 %call1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %mul.addr, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %sl, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i32, i32* %sl, align 4
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 %7
  %8 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %8 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false5, %land.lhs.true
  %9 = load i32, i32* %r, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %lor.lhs.false5, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %sl, align 4
  %11 = load i8*, i8** %s.addr, align 4
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i32 %10
  store i8* %add.ptr8, i8** %s.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end59

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** %s.addr, align 4
  store i8* %12, i8** %t, align 4
  store i32 0, i32* %r, align 4
  %13 = load i32, i32* %mul.addr, align 4
  %cmp9 = icmp sle i32 %13, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %call12 = call i32 @skipwsep(i8** %s.addr)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else
  %14 = load i8*, i8** %s.addr, align 4
  %15 = load i8, i8* %14, align 1
  %conv14 = sext i8 %15 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.lhs.true16, label %lor.lhs.false20

land.lhs.true16:                                  ; preds = %if.end13
  %16 = load i8*, i8** %s.addr, align 4
  %call17 = call i8* @itype_end(i8* %16, i32 32, i32 1)
  %17 = load i8*, i8** %s.addr, align 4
  %cmp18 = icmp ne i8* %call17, %17
  br i1 %cmp18, label %if.then26, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true16, %if.end13
  %18 = load i32, i32* %mul.addr, align 4
  %cmp21 = icmp slt i32 %18, 0
  br i1 %cmp21, label %land.lhs.true23, label %if.end28

land.lhs.true23:                                  ; preds = %lor.lhs.false20
  %19 = load i8*, i8** %t, align 4
  %20 = load i8*, i8** %s.addr, align 4
  %cmp24 = icmp ne i8* %19, %20
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %land.lhs.true23, %land.lhs.true16
  %21 = load i32, i32* %r, align 4
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, i32* %r, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true23, %lor.lhs.false20
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc48, %if.end28
  %22 = load i8*, i8** %s.addr, align 4
  %23 = load i8, i8* %22, align 1
  %tobool30 = icmp ne i8 %23, 0
  br i1 %tobool30, label %for.body31, label %for.end50

for.body31:                                       ; preds = %for.cond29
  %24 = load i8*, i8** %s.addr, align 4
  %call32 = call i8* @itype_end(i8* %24, i32 32, i32 1)
  store i8* %call32, i8** %ie, align 4
  %25 = load i8*, i8** %ie, align 4
  %26 = load i8*, i8** %s.addr, align 4
  %cmp33 = icmp ne i8* %25, %26
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %for.body31
  %27 = load i8*, i8** %ie, align 4
  store i8* %27, i8** %s.addr, align 4
  %28 = load i32, i32* %mul.addr, align 4
  %cmp36 = icmp sle i32 %28, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then35
  %call39 = call i32 @skipwsep(i8** %s.addr)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then35
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %for.body31
  %call42 = call i32 @findsep(i8** %s.addr, i8* null, i32 0)
  %29 = load i8*, i8** %s.addr, align 4
  store i8* %29, i8** %t, align 4
  %30 = load i32, i32* %mul.addr, align 4
  %cmp43 = icmp sle i32 %30, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end41
  %call46 = call i32 @skipwsep(i8** %s.addr)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end41
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %31 = load i32, i32* %r, align 4
  %inc49 = add nsw i32 %31, 1
  store i32 %inc49, i32* %r, align 4
  br label %for.cond29

for.end50:                                        ; preds = %for.cond29
  %32 = load i32, i32* %mul.addr, align 4
  %cmp51 = icmp slt i32 %32, 0
  br i1 %cmp51, label %land.lhs.true53, label %if.end58

land.lhs.true53:                                  ; preds = %for.end50
  %33 = load i8*, i8** %t, align 4
  %34 = load i8*, i8** %s.addr, align 4
  %cmp54 = icmp ne i8* %33, %34
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %land.lhs.true53
  %35 = load i32, i32* %r, align 4
  %inc57 = add nsw i32 %35, 1
  store i32 %inc57, i32* %r, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true53, %for.end50
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %for.end
  %36 = load i32, i32* %r, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind
define internal i32 @skipwsep(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %t = alloca i8*, align 4
  %i = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %t, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %t, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %t, align 4
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, -125
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %6 = load i8*, i8** %t, align 4
  %arrayidx = getelementptr inbounds i8, i8* %6, i32 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %7 to i32
  %xor = xor i32 %conv3, 32
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %8 = load i8*, i8** %t, align 4
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  %idxprom = zext i8 %conv5 to i32
  %arrayidx6 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %10 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %10 to i32
  %and = and i32 %conv7, 8192
  %tobool8 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %cond.end, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool8, %cond.end ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %t, align 4
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, -125
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load i8*, i8** %t, align 4
  %incdec.ptr12 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr12, i8** %t, align 4
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i8*, i8** %t, align 4
  %18 = load i8**, i8*** %s.addr, align 4
  store i8* %17, i8** %18, align 4
  %19 = load i32, i32* %i, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind
define internal i32 @findsep(i8** %s, i8* %sep, i32 %quote) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8**, align 4
  %sep.addr = alloca i8*, align 4
  %quote.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ilen = alloca i32, align 4
  %t = alloca i8*, align 4
  %tt = alloca i8*, align 4
  %c = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i8* %sep, i8** %sep.addr, align 4
  store i32 %quote, i32* %quote.addr, align 4
  call void @mb_charinit()
  %0 = load i8*, i8** %sep.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %s.addr, align 4
  %2 = load i8*, i8** %1, align 4
  store i8* %2, i8** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i8*, i8** %t, align 4
  %4 = load i8, i8* %3, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %quote.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8*, i8** %t, align 4
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then4, label %if.else19

if.then4:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %t, align 4
  %arrayidx = getelementptr inbounds i8, i8* %8, i32 1
  %9 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 92
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  %10 = load i8*, i8** %t, align 4
  call void @chuck(i8* %10)
  store i32 1, i32* %ilen, align 4
  br label %for.inc

if.else:                                          ; preds = %if.then4
  %11 = load i8*, i8** %t, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 1
  %call = call i32 @mb_metacharlenconv(i8* %add.ptr, i32* %c)
  store i32 %call, i32* %ilen, align 4
  %12 = load i32, i32* %c, align 4
  %call9 = call i32 @wcsitype(i32 %12, i32 32)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %13 = load i8*, i8** %t, align 4
  call void @chuck(i8* %13)
  br label %if.end17

if.else12:                                        ; preds = %if.else
  %14 = load i8*, i8** %t, align 4
  %15 = load i8, i8* %14, align 1
  %idxprom = zext i8 %15 to i32
  %arrayidx13 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %16 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %16 to i32
  %and = and i32 %conv14, 32
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else12
  br label %for.end

if.end:                                           ; preds = %if.else12
  store i32 1, i32* %ilen, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  br label %if.end25

if.else19:                                        ; preds = %land.lhs.true, %for.body
  %17 = load i8*, i8** %t, align 4
  %call20 = call i32 @mb_metacharlenconv(i8* %17, i32* %c)
  store i32 %call20, i32* %ilen, align 4
  %18 = load i32, i32* %c, align 4
  %call21 = call i32 @wcsitype(i32 %18, i32 32)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else19
  br label %for.end

if.end24:                                         ; preds = %if.else19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.then8
  %19 = load i32, i32* %ilen, align 4
  %20 = load i8*, i8** %t, align 4
  %add.ptr26 = getelementptr inbounds i8, i8* %20, i32 %19
  store i8* %add.ptr26, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then23, %if.then16, %for.cond
  %21 = load i8*, i8** %t, align 4
  %22 = load i8**, i8*** %s.addr, align 4
  %23 = load i8*, i8** %22, align 4
  %cmp27 = icmp ugt i8* %21, %23
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %i, align 4
  %24 = load i8*, i8** %t, align 4
  %25 = load i8**, i8*** %s.addr, align 4
  store i8* %24, i8** %25, align 4
  %26 = load i32, i32* %i, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %entry
  %27 = load i8*, i8** %sep.addr, align 4
  %arrayidx30 = getelementptr inbounds i8, i8* %27, i32 0
  %28 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %28, 0
  br i1 %tobool31, label %if.end38, label %if.then32

if.then32:                                        ; preds = %if.end29
  %29 = load i8**, i8*** %s.addr, align 4
  %30 = load i8*, i8** %29, align 4
  %31 = load i8, i8* %30, align 1
  %tobool33 = icmp ne i8 %31, 0
  br i1 %tobool33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.then32
  %32 = load i8**, i8*** %s.addr, align 4
  %33 = load i8*, i8** %32, align 4
  %call35 = call i32 @mb_metacharlenconv(i8* %33, i32* null)
  %34 = load i8**, i8*** %s.addr, align 4
  %35 = load i8*, i8** %34, align 4
  %add.ptr36 = getelementptr inbounds i8, i8* %35, i32 %call35
  store i8* %add.ptr36, i8** %34, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then32
  store i32 -1, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end29
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc63, %if.end38
  %36 = load i8**, i8*** %s.addr, align 4
  %37 = load i8*, i8** %36, align 4
  %38 = load i8, i8* %37, align 1
  %tobool40 = icmp ne i8 %38, 0
  br i1 %tobool40, label %for.body41, label %for.end64

for.body41:                                       ; preds = %for.cond39
  %39 = load i8*, i8** %sep.addr, align 4
  store i8* %39, i8** %t, align 4
  %40 = load i8**, i8*** %s.addr, align 4
  %41 = load i8*, i8** %40, align 4
  store i8* %41, i8** %tt, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc53, %for.body41
  %42 = load i8*, i8** %t, align 4
  %43 = load i8, i8* %42, align 1
  %conv43 = sext i8 %43 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %land.lhs.true45, label %land.end

land.lhs.true45:                                  ; preds = %for.cond42
  %44 = load i8*, i8** %tt, align 4
  %45 = load i8, i8* %44, align 1
  %conv46 = sext i8 %45 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true45
  %46 = load i8*, i8** %t, align 4
  %47 = load i8, i8* %46, align 1
  %conv48 = sext i8 %47 to i32
  %48 = load i8*, i8** %tt, align 4
  %49 = load i8, i8* %48, align 1
  %conv49 = sext i8 %49 to i32
  %cmp50 = icmp eq i32 %conv48, %conv49
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true45, %for.cond42
  %50 = phi i1 [ false, %land.lhs.true45 ], [ false, %for.cond42 ], [ %cmp50, %land.rhs ]
  br i1 %50, label %for.body52, label %for.end55

for.body52:                                       ; preds = %land.end
  br label %for.inc53

for.inc53:                                        ; preds = %for.body52
  %51 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  %52 = load i8*, i8** %tt, align 4
  %incdec.ptr54 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr54, i8** %tt, align 4
  br label %for.cond42

for.end55:                                        ; preds = %land.end
  %53 = load i8*, i8** %t, align 4
  %54 = load i8, i8* %53, align 1
  %tobool56 = icmp ne i8 %54, 0
  br i1 %tobool56, label %if.end60, label %if.then57

if.then57:                                        ; preds = %for.end55
  %55 = load i32, i32* %i, align 4
  %cmp58 = icmp sgt i32 %55, 0
  %conv59 = zext i1 %cmp58 to i32
  store i32 %conv59, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %for.end55
  %56 = load i8**, i8*** %s.addr, align 4
  %57 = load i8*, i8** %56, align 4
  %call61 = call i32 @mb_metacharlenconv(i8* %57, i32* null)
  %58 = load i8**, i8*** %s.addr, align 4
  %59 = load i8*, i8** %58, align 4
  %add.ptr62 = getelementptr inbounds i8, i8* %59, i32 %call61
  store i8* %add.ptr62, i8** %58, align 4
  br label %for.inc63

for.inc63:                                        ; preds = %if.end60
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond39

for.end64:                                        ; preds = %for.cond39
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end64, %if.then57, %if.end37, %if.then34, %for.end
  %61 = load i32, i32* %retval, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind
define i8* @findword(i8** %s, i8* %sep) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8**, align 4
  %sep.addr = alloca i8*, align 4
  %r = alloca i8*, align 4
  %t = alloca i8*, align 4
  %sl = alloca i32, align 4
  %c = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i8* %sep, i8** %sep.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %sep.addr, align 4
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %sep.addr, align 4
  %call = call i32 @strlen(i8* %4)
  store i32 %call, i32* %sl, align 4
  %5 = load i8**, i8*** %s.addr, align 4
  %6 = load i8*, i8** %5, align 4
  store i8* %6, i8** %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %7 = load i8**, i8*** %s.addr, align 4
  %8 = load i8*, i8** %sep.addr, align 4
  %call3 = call i32 @findsep(i8** %7, i8* %8, i32 0)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %sl, align 4
  %10 = load i8**, i8*** %s.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 %9
  store i8* %add.ptr, i8** %10, align 4
  store i8* %add.ptr, i8** %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %r, align 4
  store i8* %12, i8** %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  call void @mb_charinit()
  %13 = load i8**, i8*** %s.addr, align 4
  %14 = load i8*, i8** %13, align 4
  store i8* %14, i8** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %15 = load i8*, i8** %t, align 4
  %16 = load i8, i8* %15, align 1
  %tobool6 = icmp ne i8 %16, 0
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %t, align 4
  %call7 = call i32 @mb_metacharlenconv(i8* %17, i32* %c)
  store i32 %call7, i32* %sl, align 4
  %18 = load i32, i32* %c, align 4
  %call8 = call i32 @wcsitype(i32 %18, i32 32)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %19 = load i32, i32* %sl, align 4
  %20 = load i8*, i8** %t, align 4
  %add.ptr12 = getelementptr inbounds i8, i8* %20, i32 %19
  store i8* %add.ptr12, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then10, %for.cond
  %21 = load i8*, i8** %t, align 4
  %22 = load i8**, i8*** %s.addr, align 4
  store i8* %21, i8** %22, align 4
  %23 = load i8**, i8*** %s.addr, align 4
  %24 = load i8*, i8** %sep.addr, align 4
  %call13 = call i32 @findsep(i8** %23, i8* %24, i32 0)
  %25 = load i8*, i8** %t, align 4
  store i8* %25, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %while.end, %if.then
  %26 = load i8*, i8** %retval, align 4
  ret i8* %26
}

; Function Attrs: noinline nounwind
define i32 @mb_metacharlenconv(i8* %s, i32* %wcp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %wcp.addr = alloca i32*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %wcp, i32** %wcp.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp sle i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32*, i32** %wcp.addr, align 4
  %tobool2 = icmp ne i32* %3, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, -125
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  %6 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %6, i32 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %7 to i32
  %xor = xor i32 %conv7, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  %8 = load i8*, i8** %s.addr, align 4
  %9 = load i8, i8* %8, align 1
  %conv8 = sext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv8, %cond.false ]
  %10 = load i32*, i32** %wcp.addr, align 4
  store i32 %cond, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %11 = load i8*, i8** %s.addr, align 4
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, -125
  %conv11 = zext i1 %cmp10 to i32
  %add = add nsw i32 1, %conv11
  store i32 %add, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %13 = load i8*, i8** %s.addr, align 4
  %14 = load i8, i8* %13, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx13 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %15 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %15 to i32
  %and = and i32 %conv14, 16
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end12
  %16 = load i32*, i32** %wcp.addr, align 4
  %tobool17 = icmp ne i32* %16, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  %17 = load i32*, i32** %wcp.addr, align 4
  store i32 -1, i32* %17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16
  store i32 1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end12
  %18 = load i8*, i8** %s.addr, align 4
  %19 = load i32*, i32** %wcp.addr, align 4
  %call = call i32 @mb_metacharlenconv_r(i8* %18, i32* %19, %struct.__mbstate_t* @mb_shiftstate)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.end19, %if.end
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind
define i32 @wcsitype(i32 %c, i32 %itype) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %itype.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %mbs = alloca %struct.__mbstate_t, align 4
  %outstr = alloca i8*, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %itype, i32* %itype.addr, align 4
  %call = call i32 @__ctype_get_mb_cur_max()
  %mul = mul i32 1, %call
  %call1 = call i8* @zhalloc(i32 %mul)
  store i8* %call1, i8** %outstr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %1 to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv2 = sext i16 %2 to i32
  %3 = load i32, i32* %itype.addr, align 4
  %and = and i32 %conv2, %3
  store i32 %and, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 8, i32 4, i1 false)
  %5 = load i8*, i8** %outstr, align 4
  %6 = load i32, i32* %c.addr, align 4
  %call3 = call i32 @wcrtomb(i8* %5, i32 %6, %struct.__mbstate_t* %mbs)
  store i32 %call3, i32* %len, align 4
  %7 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %8 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 0), align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, i32* %itype.addr, align 4
  %and7 = and i32 %conv6, %9
  store i32 %and7, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %len, align 4
  %cmp8 = icmp eq i32 %10, 1
  br i1 %cmp8, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %if.else
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %outstr, align 4
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i32 0
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %12 to i32
  %call12 = call i32 @isascii(i32 %conv11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then18, label %if.else24

cond.false:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %outstr, align 4
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i32 0
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp ult i32 %conv15, 128
  br i1 %cmp16, label %if.then18, label %if.else24

if.then18:                                        ; preds = %cond.false, %cond.true
  %15 = load i8*, i8** %outstr, align 4
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i32 0
  %16 = load i8, i8* %arrayidx19, align 1
  %idxprom20 = zext i8 %16 to i32
  %arrayidx21 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom20
  %17 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %17 to i32
  %18 = load i32, i32* %itype.addr, align 4
  %and23 = and i32 %conv22, %18
  store i32 %and23, i32* %retval, align 4
  br label %return

if.else24:                                        ; preds = %cond.false, %cond.true, %if.else
  %19 = load i32, i32* %itype.addr, align 4
  switch i32 %19, label %sw.default [
    i32 128, label %sw.bb
    i32 1024, label %sw.bb29
    i32 32, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.else24
  %20 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 134), align 1
  %tobool25 = icmp ne i8 %20, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %sw.bb
  %21 = load i32, i32* %c.addr, align 4
  %call28 = call i32 @iswalnum(i32 %21)
  store i32 %call28, i32* %retval, align 4
  br label %return

sw.bb29:                                          ; preds = %if.else24
  %22 = load i32, i32* %c.addr, align 4
  %call30 = call i32 @iswalnum(i32 %22)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb29
  store i32 1, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %sw.bb29
  %23 = load i32, i32* %c.addr, align 4
  %cmp34 = icmp ne i32 %23, 0
  br i1 %cmp34, label %land.lhs.true36, label %if.end41

land.lhs.true36:                                  ; preds = %if.end33
  %24 = load i32, i32* %c.addr, align 4
  %call37 = call i32 @wcwidth(i32 %24)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true36
  store i32 1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %land.lhs.true36, %if.end33
  %25 = load i32*, i32** getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @wordchars_wide, i32 0, i32 0), align 4
  %26 = load i32, i32* %c.addr, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @wordchars_wide, i32 0, i32 1), align 4
  %call42 = call i32* @wmemchr(i32* %25, i32 %26, i32 %27)
  %tobool43 = icmp ne i32* %call42, null
  %lnot = xor i1 %tobool43, true
  %lnot44 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot44 to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %if.else24
  %28 = load i32*, i32** getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @ifs_wide, i32 0, i32 0), align 4
  %29 = load i32, i32* %c.addr, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.widechar_array, %struct.widechar_array* @ifs_wide, i32 0, i32 1), align 4
  %call46 = call i32* @wmemchr(i32* %28, i32 %29, i32 %30)
  %tobool47 = icmp ne i32* %call46, null
  %lnot48 = xor i1 %tobool47, true
  %lnot50 = xor i1 %lnot48, true
  %lnot.ext51 = zext i1 %lnot50 to i32
  store i32 %lnot.ext51, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.else24
  %31 = load i32, i32* %c.addr, align 4
  %call52 = call i32 @iswalnum(i32 %31)
  store i32 %call52, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb45, %if.end41, %if.then40, %if.then32, %if.end27, %if.then26, %if.then18, %if.then5, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind
define i8* @sepjoin(i8** %s, i8* %sep, i32 %heap) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8**, align 4
  %sep.addr = alloca i8*, align 4
  %heap.addr = alloca i32, align 4
  %r = alloca i8*, align 4
  %p = alloca i8*, align 4
  %t = alloca i8**, align 4
  %l = alloca i32, align 4
  %sl = alloca i32, align 4
  %sepbuf = alloca [2 x i8], align 1
  store i8** %s, i8*** %s.addr, align 4
  store i8* %sep, i8** %sep.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %heap.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %sep.addr, align 4
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load i8*, i8** @ifs, align 4
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then3
  %5 = load i8*, i8** @ifs, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 32
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @mb_charinit()
  %7 = load i8*, i8** @ifs, align 4
  %8 = load i8*, i8** @ifs, align 4
  %call7 = call i32 @mb_metacharlenconv(i8* %8, i32* null)
  %call8 = call i8* @dupstrpfx(i8* %7, i32 %call7)
  store i8* %call8, i8** %sep.addr, align 4
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %if.then3
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %sepbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %sep.addr, align 4
  store i8* %arraydecay, i8** %p, align 4
  %9 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  store i8 32, i8* %9, align 1
  %10 = load i8*, i8** %p, align 4
  store i8 0, i8* %10, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %11 = load i8*, i8** %sep.addr, align 4
  %call11 = call i32 @strlen(i8* %11)
  store i32 %call11, i32* %sl, align 4
  %12 = load i8**, i8*** %s.addr, align 4
  store i8** %12, i8*** %t, align 4
  %13 = load i32, i32* %sl, align 4
  %sub = sub nsw i32 1, %13
  store i32 %sub, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %14 = load i8**, i8*** %t, align 4
  %15 = load i8*, i8** %14, align 4
  %tobool12 = icmp ne i8* %15, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8**, i8*** %t, align 4
  %17 = load i8*, i8** %16, align 4
  %call13 = call i32 @strlen(i8* %17)
  %18 = load i32, i32* %sl, align 4
  %add = add i32 %call13, %18
  %19 = load i32, i32* %l, align 4
  %add14 = add i32 %19, %add
  store i32 %add14, i32* %l, align 4
  %20 = load i8**, i8*** %t, align 4
  %incdec.ptr15 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %incdec.ptr15, i8*** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %heap.addr, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %cond.true17, label %cond.false19

cond.true17:                                      ; preds = %for.end
  %22 = load i32, i32* %l, align 4
  %call18 = call i8* @zhalloc(i32 %22)
  br label %cond.end21

cond.false19:                                     ; preds = %for.end
  %23 = load i32, i32* %l, align 4
  %call20 = call i8* @zalloc(i32 %23)
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true17
  %cond22 = phi i8* [ %call18, %cond.true17 ], [ %call20, %cond.false19 ]
  store i8* %cond22, i8** %p, align 4
  store i8* %cond22, i8** %r, align 4
  %24 = load i8**, i8*** %s.addr, align 4
  store i8** %24, i8*** %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %cond.end21
  %25 = load i8**, i8*** %t, align 4
  %26 = load i8*, i8** %25, align 4
  %tobool23 = icmp ne i8* %26, null
  br i1 %tobool23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i8**, i8*** %t, align 4
  %28 = load i8*, i8** %27, align 4
  call void @strucpy(i8** %p, i8* %28)
  %29 = load i8**, i8*** %t, align 4
  %incdec.ptr24 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr24, i8*** %t, align 4
  %30 = load i8*, i8** %incdec.ptr24, align 4
  %tobool25 = icmp ne i8* %30, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %while.body
  %31 = load i8*, i8** %sep.addr, align 4
  call void @strucpy(i8** %p, i8* %31)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load i8*, i8** %p, align 4
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %r, align 4
  store i8* %33, i8** %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %cond.end
  %34 = load i8*, i8** %retval, align 4
  ret i8* %34
}

; Function Attrs: noinline nounwind
define i8** @sepsplit(i8* %s, i8* %sep, i32 %allownull, i32 %heap) #0 {
entry:
  %retval = alloca i8**, align 4
  %s.addr = alloca i8*, align 4
  %sep.addr = alloca i8*, align 4
  %allownull.addr = alloca i32, align 4
  %heap.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %sl = alloca i32, align 4
  %t = alloca i8*, align 4
  %tt = alloca i8*, align 4
  %r = alloca i8**, align 4
  %p = alloca i8**, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %sep, i8** %sep.addr, align 4
  store i32 %allownull, i32* %allownull.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, -95
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i32 1
  %3 = load i8, i8* %arrayidx2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8*, i8** %sep.addr, align 4
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i32, i32* %allownull.addr, align 4
  %8 = load i32, i32* %heap.addr, align 4
  %call = call i8** @spacesplit(i8* %6, i32 %7, i32 %8, i32 0)
  store i8** %call, i8*** %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load i8*, i8** %sep.addr, align 4
  %call6 = call i32 @strlen(i8* %9)
  store i32 %call6, i32* %sl, align 4
  %10 = load i8*, i8** %s.addr, align 4
  %11 = load i8*, i8** %sep.addr, align 4
  %call7 = call i32 @wordcount(i8* %10, i8* %11, i32 1)
  store i32 %call7, i32* %n, align 4
  %12 = load i32, i32* %heap.addr, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  %13 = load i32, i32* %n, align 4
  %add = add nsw i32 %13, 1
  %mul = mul i32 %add, 4
  %call9 = call i8* @zhalloc(i32 %mul)
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  %14 = load i32, i32* %n, align 4
  %add10 = add nsw i32 %14, 1
  %mul11 = mul i32 %add10, 4
  %call12 = call i8* @zalloc(i32 %mul11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call9, %cond.true ], [ %call12, %cond.false ]
  %15 = bitcast i8* %cond to i8**
  store i8** %15, i8*** %p, align 4
  store i8** %15, i8*** %r, align 4
  %16 = load i8*, i8** %s.addr, align 4
  store i8* %16, i8** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end25, %cond.end
  %17 = load i32, i32* %n, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %n, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %t, align 4
  store i8* %18, i8** %tt, align 4
  %19 = load i8*, i8** %sep.addr, align 4
  %call14 = call i32 @findsep(i8** %t, i8* %19, i32 0)
  %20 = load i32, i32* %heap.addr, align 4
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %cond.true16, label %cond.false19

cond.true16:                                      ; preds = %for.body
  %21 = load i8*, i8** %t, align 4
  %22 = load i8*, i8** %tt, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add17 = add nsw i32 %sub.ptr.sub, 1
  %call18 = call i8* @zhalloc(i32 %add17)
  br label %cond.end25

cond.false19:                                     ; preds = %for.body
  %23 = load i8*, i8** %t, align 4
  %24 = load i8*, i8** %tt, align 4
  %sub.ptr.lhs.cast20 = ptrtoint i8* %23 to i32
  %sub.ptr.rhs.cast21 = ptrtoint i8* %24 to i32
  %sub.ptr.sub22 = sub i32 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %add23 = add nsw i32 %sub.ptr.sub22, 1
  %call24 = call i8* @zalloc(i32 %add23)
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false19, %cond.true16
  %cond26 = phi i8* [ %call18, %cond.true16 ], [ %call24, %cond.false19 ]
  %25 = load i8**, i8*** %p, align 4
  store i8* %cond26, i8** %25, align 4
  %26 = load i8**, i8*** %p, align 4
  %27 = load i8*, i8** %26, align 4
  %28 = load i8*, i8** %tt, align 4
  %29 = load i8*, i8** %t, align 4
  %30 = load i8*, i8** %tt, align 4
  %sub.ptr.lhs.cast27 = ptrtoint i8* %29 to i32
  %sub.ptr.rhs.cast28 = ptrtoint i8* %30 to i32
  %sub.ptr.sub29 = sub i32 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %call30 = call i8* @strncpy(i8* %27, i8* %28, i32 %sub.ptr.sub29)
  %31 = load i8**, i8*** %p, align 4
  %32 = load i8*, i8** %31, align 4
  %33 = load i8*, i8** %t, align 4
  %34 = load i8*, i8** %tt, align 4
  %sub.ptr.lhs.cast31 = ptrtoint i8* %33 to i32
  %sub.ptr.rhs.cast32 = ptrtoint i8* %34 to i32
  %sub.ptr.sub33 = sub i32 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i32 %sub.ptr.sub33
  store i8 0, i8* %arrayidx34, align 1
  %35 = load i8**, i8*** %p, align 4
  %incdec.ptr35 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr35, i8*** %p, align 4
  %36 = load i32, i32* %sl, align 4
  %37 = load i8*, i8** %t, align 4
  %add.ptr = getelementptr inbounds i8, i8* %37, i32 %36
  store i8* %add.ptr, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i8**, i8*** %p, align 4
  store i8* null, i8** %38, align 4
  %39 = load i8**, i8*** %r, align 4
  store i8** %39, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4
  %40 = load i8**, i8*** %retval, align 4
  ret i8** %40
}

; Function Attrs: noinline nounwind
define i8** @subst_string_by_func(%struct.shfunc* %func, i8* %arg1, i8* %orig) #0 {
entry:
  %func.addr = alloca %struct.shfunc*, align 4
  %arg1.addr = alloca i8*, align 4
  %orig.addr = alloca i8*, align 4
  %osc = alloca i32, align 4
  %osm = alloca i32, align 4
  %old_incompfunc = alloca i32, align 4
  %l = alloca %union.linkroot*, align 4
  %ret = alloca i8**, align 4
  store %struct.shfunc* %func, %struct.shfunc** %func.addr, align 4
  store i8* %arg1, i8** %arg1.addr, align 4
  store i8* %orig, i8** %orig.addr, align 4
  %0 = load i32, i32* @sfcontext, align 4
  store i32 %0, i32* %osc, align 4
  %1 = load i32, i32* @stopmsg, align 4
  store i32 %1, i32* %osm, align 4
  %2 = load i32, i32* @incompfunc, align 4
  store i32 %2, i32* %old_incompfunc, align 4
  %call = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call, %union.linkroot** %l, align 4
  %3 = load %union.linkroot*, %union.linkroot** %l, align 4
  %4 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list = bitcast %union.linkroot* %4 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %5 = load %struct.linknode*, %struct.linknode** %last, align 4
  %6 = load %struct.shfunc*, %struct.shfunc** %func.addr, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %6, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %7 = load i8*, i8** %nam, align 4
  %call1 = call %struct.linknode* @insertlinknode(%union.linkroot* %3, %struct.linknode* %5, i8* %7)
  %8 = load i8*, i8** %arg1.addr, align 4
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %union.linkroot*, %union.linkroot** %l, align 4
  %10 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list2 = bitcast %union.linkroot* %10 to %struct.linklist*
  %last3 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 1
  %11 = load %struct.linknode*, %struct.linknode** %last3, align 4
  %12 = load i8*, i8** %arg1.addr, align 4
  %call4 = call %struct.linknode* @insertlinknode(%union.linkroot* %9, %struct.linknode* %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %union.linkroot*, %union.linkroot** %l, align 4
  %14 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list5 = bitcast %union.linkroot* %14 to %struct.linklist*
  %last6 = getelementptr inbounds %struct.linklist, %struct.linklist* %list5, i32 0, i32 1
  %15 = load %struct.linknode*, %struct.linknode** %last6, align 4
  %16 = load i8*, i8** %orig.addr, align 4
  %call7 = call %struct.linknode* @insertlinknode(%union.linkroot* %13, %struct.linknode* %15, i8* %16)
  store i32 7, i32* @sfcontext, align 4
  store i32 0, i32* @incompfunc, align 4
  %17 = load %struct.shfunc*, %struct.shfunc** %func.addr, align 4
  %18 = load %union.linkroot*, %union.linkroot** %l, align 4
  %call8 = call i32 @doshfunc(%struct.shfunc* %17, %union.linkroot* %18, i32 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  store i8** null, i8*** %ret, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %call11 = call i8** @getaparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0))
  store i8** %call11, i8*** %ret, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %19 = load i32, i32* %osc, align 4
  store i32 %19, i32* @sfcontext, align 4
  %20 = load i32, i32* %osm, align 4
  store i32 %20, i32* @stopmsg, align 4
  %21 = load i32, i32* %old_incompfunc, align 4
  store i32 %21, i32* @incompfunc, align 4
  %22 = load i8**, i8*** %ret, align 4
  ret i8** %22
}

declare %union.linkroot* @newlinklist() #2

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #2

; Function Attrs: noinline nounwind
define i8** @mkarray(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t = alloca i8**, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  %cond = select i1 %tobool, i32 8, i32 4
  %call = call i8* @zalloc(i32 %cond)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %t, align 4
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8**, i8*** %t, align 4
  store i8* %2, i8** %3, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %t, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %4, i32 1
  store i8* null, i8** %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8**, i8*** %t, align 4
  ret i8** %5
}

; Function Attrs: noinline nounwind
define i8** @hmkarray(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t = alloca i8**, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  %cond = select i1 %tobool, i32 8, i32 4
  %call = call i8* @zhalloc(i32 %cond)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %t, align 4
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8**, i8*** %t, align 4
  store i8* %2, i8** %3, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %t, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %4, i32 1
  store i8* null, i8** %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8**, i8*** %t, align 4
  ret i8** %5
}

declare i8* @getsparam_u(i8*) #2

; Function Attrs: noinline nounwind
define i8* @getkeystring(i8* %s, i32* %len, i32 %how, i32* %misc) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32*, align 4
  %how.addr = alloca i32, align 4
  %misc.addr = alloca i32*, align 4
  %buf = alloca i8*, align 4
  %tmp = alloca [1 x i8], align 1
  %t = alloca i8*, align 4
  %tdest = alloca i8*, align 4
  %u = alloca i8*, align 4
  %sstart = alloca i8*, align 4
  %tbuf = alloca i8*, align 4
  %svchar = alloca i8, align 1
  %meta = alloca i32, align 4
  %control = alloca i32, align 4
  %ignoring = alloca i32, align 4
  %i = alloca i32, align 4
  %wval = alloca i32, align 4
  %cd = alloca i8*, align 4
  %inbuf = alloca [4 x i8], align 1
  %inbytes = alloca i32, align 4
  %outbytes = alloca i32, align 4
  %count = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %miscadded = alloca i32, align 4
  %inptr = alloca i8*, align 4
  %codesetstr = alloca i8*, align 4
  %t2 = alloca i8*, align 4
  %wc = alloca i32, align 4
  %len521 = alloca i32, align 4
  %t2621 = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %len, i32** %len.addr, align 4
  store i32 %how, i32* %how.addr, align 4
  store i32* %misc, i32** %misc.addr, align 4
  store i8* null, i8** %tdest, align 4
  store i8* null, i8** %u, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %sstart, align 4
  store i8* null, i8** %tbuf, align 4
  store i8 0, i8* %svchar, align 1
  store i32 0, i32* %meta, align 4
  store i32 0, i32* %control, align 4
  store i32 0, i32* %ignoring, align 4
  %1 = load i32, i32* %how.addr, align 4
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %tmp, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 4
  store i8* %arraydecay, i8** %t, align 4
  br label %if.end50

if.else:                                          ; preds = %entry
  store i32 1, i32* %maxlen, align 4
  %2 = load i8*, i8** %s.addr, align 4
  store i8* %2, i8** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i8*, i8** %t, align 4
  %4 = load i8, i8* %3, align 1
  %tobool18 = icmp ne i8 %4, 0
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %t, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then20, label %if.else35

if.then20:                                        ; preds = %for.body
  %7 = load i8*, i8** %t, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 1
  %8 = load i8, i8* %arrayidx, align 1
  %tobool21 = icmp ne i8 %8, 0
  br i1 %tobool21, label %if.end, label %if.then22

if.then22:                                        ; preds = %if.then20
  %9 = load i32, i32* %maxlen, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %maxlen, align 4
  br label %for.end

if.end:                                           ; preds = %if.then20
  %10 = load i8*, i8** %t, align 4
  %arrayidx23 = getelementptr inbounds i8, i8* %10, i32 1
  %11 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %11 to i32
  %cmp25 = icmp eq i32 %conv24, 117
  br i1 %cmp25, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i8*, i8** %t, align 4
  %arrayidx27 = getelementptr inbounds i8, i8* %12, i32 1
  %13 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %13 to i32
  %cmp29 = icmp eq i32 %conv28, 85
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %lor.lhs.false, %if.end
  %call = call i32 @__ctype_get_mb_cur_max()
  %mul = mul i32 %call, 2
  %14 = load i32, i32* %maxlen, align 4
  %add = add i32 %14, %mul
  store i32 %add, i32* %maxlen, align 4
  br label %if.end34

if.else32:                                        ; preds = %lor.lhs.false
  %15 = load i32, i32* %maxlen, align 4
  %add33 = add nsw i32 %15, 2
  store i32 %add33, i32* %maxlen, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then31
  %16 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %if.end37

if.else35:                                        ; preds = %for.body
  %17 = load i32, i32* %maxlen, align 4
  %inc36 = add nsw i32 %17, 1
  store i32 %inc36, i32* %maxlen, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %18 = load i8*, i8** %t, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr38, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then22, %for.cond
  %19 = load i32, i32* %how.addr, align 4
  %and39 = and i32 %19, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.else47

if.then41:                                        ; preds = %for.end
  %20 = load i32, i32* %maxlen, align 4
  %call42 = call i8* @zhalloc(i32 %20)
  store i8* %call42, i8** %tdest, align 4
  store i8* %call42, i8** %buf, align 4
  %call43 = call i32 @__ctype_get_mb_cur_max()
  %mul44 = mul i32 %call43, 3
  %add45 = add i32 %mul44, 1
  %call46 = call i8* @zhalloc(i32 %add45)
  store i8* %call46, i8** %tbuf, align 4
  store i8* %call46, i8** %t, align 4
  br label %if.end49

if.else47:                                        ; preds = %for.end
  %21 = load i32, i32* %maxlen, align 4
  %call48 = call i8* @zhalloc(i32 %21)
  store i8* %call48, i8** %buf, align 4
  store i8* %call48, i8** %t, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then41
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc666, %if.end50
  %22 = load i8*, i8** %s.addr, align 4
  %23 = load i8, i8* %22, align 1
  %tobool52 = icmp ne i8 %23, 0
  br i1 %tobool52, label %for.body53, label %for.end668

for.body53:                                       ; preds = %for.cond51
  %24 = load i8*, i8** %s.addr, align 4
  %25 = load i8, i8* %24, align 1
  %conv54 = sext i8 %25 to i32
  %cmp55 = icmp eq i32 %conv54, 92
  br i1 %cmp55, label %land.lhs.true, label %if.else482

land.lhs.true:                                    ; preds = %for.body53
  %26 = load i8*, i8** %s.addr, align 4
  %arrayidx57 = getelementptr inbounds i8, i8* %26, i32 1
  %27 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %27 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.else482

if.then60:                                        ; preds = %land.lhs.true
  %28 = load i32, i32* %how.addr, align 4
  %and62 = and i32 %28, 128
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %land.lhs.true64, label %if.else68

land.lhs.true64:                                  ; preds = %if.then60
  %29 = load i8*, i8** %s.addr, align 4
  %30 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = load i32*, i32** %misc.addr, align 4
  %32 = load i32, i32* %31, align 4
  %cmp65 = icmp slt i32 %sub.ptr.sub, %32
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %land.lhs.true64
  %33 = load i32*, i32** %misc.addr, align 4
  %34 = load i32, i32* %33, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %33, align 4
  store i32 1, i32* %miscadded, align 4
  br label %if.end69

if.else68:                                        ; preds = %land.lhs.true64, %if.then60
  store i32 0, i32* %miscadded, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  %35 = load i8*, i8** %s.addr, align 4
  %incdec.ptr70 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr70, i8** %s.addr, align 4
  %36 = load i8, i8* %incdec.ptr70, align 1
  %conv71 = sext i8 %36 to i32
  switch i32 %conv71, label %sw.default [
    i32 97, label %sw.bb
    i32 110, label %sw.bb73
    i32 98, label %sw.bb75
    i32 116, label %sw.bb77
    i32 118, label %sw.bb79
    i32 102, label %sw.bb81
    i32 114, label %sw.bb83
    i32 69, label %sw.bb85
    i32 101, label %sw.bb96
    i32 77, label %sw.bb98
    i32 67, label %sw.bb118
    i32 -125, label %sw.bb137
    i32 45, label %sw.bb144
    i32 99, label %sw.bb149
    i32 85, label %sw.bb157
    i32 117, label %sw.bb168
    i32 39, label %sw.bb387
    i32 92, label %sw.bb387
  ]

sw.bb:                                            ; preds = %if.end69
  %37 = load i8*, i8** %t, align 4
  %incdec.ptr72 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr72, i8** %t, align 4
  store i8 7, i8* %37, align 1
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end69
  %38 = load i8*, i8** %t, align 4
  %incdec.ptr74 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr74, i8** %t, align 4
  store i8 10, i8* %38, align 1
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end69
  %39 = load i8*, i8** %t, align 4
  %incdec.ptr76 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr76, i8** %t, align 4
  store i8 8, i8* %39, align 1
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end69
  %40 = load i8*, i8** %t, align 4
  %incdec.ptr78 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr78, i8** %t, align 4
  store i8 9, i8* %40, align 1
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end69
  %41 = load i8*, i8** %t, align 4
  %incdec.ptr80 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr80, i8** %t, align 4
  store i8 11, i8* %41, align 1
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end69
  %42 = load i8*, i8** %t, align 4
  %incdec.ptr82 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr82, i8** %t, align 4
  store i8 12, i8* %42, align 1
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end69
  %43 = load i8*, i8** %t, align 4
  %incdec.ptr84 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr84, i8** %t, align 4
  store i8 13, i8* %43, align 1
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end69
  %44 = load i32, i32* %how.addr, align 4
  %and86 = and i32 %44, 2
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.end95, label %if.then88

if.then88:                                        ; preds = %sw.bb85
  %45 = load i8*, i8** %t, align 4
  %incdec.ptr89 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr89, i8** %t, align 4
  store i8 92, i8* %45, align 1
  %46 = load i8*, i8** %s.addr, align 4
  %incdec.ptr90 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr90, i8** %s.addr, align 4
  %47 = load i32, i32* %miscadded, align 4
  %tobool91 = icmp ne i32 %47, 0
  br i1 %tobool91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.then88
  %48 = load i32*, i32** %misc.addr, align 4
  %49 = load i32, i32* %48, align 4
  %inc93 = add nsw i32 %49, 1
  store i32 %inc93, i32* %48, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then88
  br label %for.inc666

if.end95:                                         ; preds = %sw.bb85
  br label %sw.bb96

sw.bb96:                                          ; preds = %if.end69, %if.end95
  %50 = load i8*, i8** %t, align 4
  %incdec.ptr97 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr97, i8** %t, align 4
  store i8 27, i8* %50, align 1
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end69
  %51 = load i32, i32* %how.addr, align 4
  %and99 = and i32 %51, 2
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.else110

if.then101:                                       ; preds = %sw.bb98
  %52 = load i8*, i8** %s.addr, align 4
  %arrayidx102 = getelementptr inbounds i8, i8* %52, i32 1
  %53 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %53 to i32
  %cmp104 = icmp eq i32 %conv103, 45
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.then101
  %54 = load i8*, i8** %s.addr, align 4
  %incdec.ptr107 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr107, i8** %s.addr, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then101
  %55 = load i32, i32* %control, align 4
  %add109 = add nsw i32 1, %55
  store i32 %add109, i32* %meta, align 4
  br label %if.end117

if.else110:                                       ; preds = %sw.bb98
  %56 = load i32, i32* %miscadded, align 4
  %tobool111 = icmp ne i32 %56, 0
  br i1 %tobool111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.else110
  %57 = load i32*, i32** %misc.addr, align 4
  %58 = load i32, i32* %57, align 4
  %inc113 = add nsw i32 %58, 1
  store i32 %inc113, i32* %57, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.else110
  %59 = load i8*, i8** %t, align 4
  %incdec.ptr115 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr115, i8** %t, align 4
  store i8 92, i8* %59, align 1
  %60 = load i8*, i8** %s.addr, align 4
  %incdec.ptr116 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr116, i8** %s.addr, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end114, %if.end108
  br label %for.inc666

sw.bb118:                                         ; preds = %if.end69
  %61 = load i32, i32* %how.addr, align 4
  %and119 = and i32 %61, 2
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then121, label %if.else129

if.then121:                                       ; preds = %sw.bb118
  %62 = load i8*, i8** %s.addr, align 4
  %arrayidx122 = getelementptr inbounds i8, i8* %62, i32 1
  %63 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %63 to i32
  %cmp124 = icmp eq i32 %conv123, 45
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.then121
  %64 = load i8*, i8** %s.addr, align 4
  %incdec.ptr127 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr127, i8** %s.addr, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.then121
  store i32 1, i32* %control, align 4
  br label %if.end136

if.else129:                                       ; preds = %sw.bb118
  %65 = load i32, i32* %miscadded, align 4
  %tobool130 = icmp ne i32 %65, 0
  br i1 %tobool130, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.else129
  %66 = load i32*, i32** %misc.addr, align 4
  %67 = load i32, i32* %66, align 4
  %inc132 = add nsw i32 %67, 1
  store i32 %inc132, i32* %66, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.else129
  %68 = load i8*, i8** %t, align 4
  %incdec.ptr134 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr134, i8** %t, align 4
  store i8 92, i8* %68, align 1
  %69 = load i8*, i8** %s.addr, align 4
  %incdec.ptr135 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %incdec.ptr135, i8** %s.addr, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.end133, %if.end128
  br label %for.inc666

sw.bb137:                                         ; preds = %if.end69
  %70 = load i32, i32* %miscadded, align 4
  %tobool138 = icmp ne i32 %70, 0
  br i1 %tobool138, label %if.then139, label %if.end141

if.then139:                                       ; preds = %sw.bb137
  %71 = load i32*, i32** %misc.addr, align 4
  %72 = load i32, i32* %71, align 4
  %inc140 = add nsw i32 %72, 1
  store i32 %inc140, i32* %71, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %sw.bb137
  %73 = load i8*, i8** %t, align 4
  %incdec.ptr142 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr142, i8** %t, align 4
  store i8 92, i8* %73, align 1
  %74 = load i8*, i8** %s.addr, align 4
  %incdec.ptr143 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr143, i8** %s.addr, align 4
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end69
  %75 = load i32, i32* %how.addr, align 4
  %and145 = and i32 %75, 32
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %sw.bb144
  %76 = load i32*, i32** %misc.addr, align 4
  store i32 1, i32* %76, align 4
  br label %sw.epilog

if.end148:                                        ; preds = %sw.bb144
  br label %def

sw.bb149:                                         ; preds = %if.end69
  %77 = load i32, i32* %how.addr, align 4
  %and150 = and i32 %77, 8
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %if.then152, label %if.end156

if.then152:                                       ; preds = %sw.bb149
  %78 = load i32*, i32** %misc.addr, align 4
  store i32 1, i32* %78, align 4
  %79 = load i8*, i8** %t, align 4
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %t, align 4
  %81 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast153 = ptrtoint i8* %80 to i32
  %sub.ptr.rhs.cast154 = ptrtoint i8* %81 to i32
  %sub.ptr.sub155 = sub i32 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast154
  %82 = load i32*, i32** %len.addr, align 4
  store i32 %sub.ptr.sub155, i32* %82, align 4
  %83 = load i8*, i8** %buf, align 4
  store i8* %83, i8** %retval, align 4
  br label %return

if.end156:                                        ; preds = %sw.bb149
  br label %def

sw.bb157:                                         ; preds = %if.end69
  %84 = load i32, i32* %how.addr, align 4
  %and158 = and i32 %84, 128
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %land.lhs.true160, label %if.end167

land.lhs.true160:                                 ; preds = %sw.bb157
  %85 = load i8*, i8** %s.addr, align 4
  %86 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast161 = ptrtoint i8* %85 to i32
  %sub.ptr.rhs.cast162 = ptrtoint i8* %86 to i32
  %sub.ptr.sub163 = sub i32 %sub.ptr.lhs.cast161, %sub.ptr.rhs.cast162
  %87 = load i32*, i32** %misc.addr, align 4
  %88 = load i32, i32* %87, align 4
  %cmp164 = icmp slt i32 %sub.ptr.sub163, %88
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %land.lhs.true160
  %89 = load i32*, i32** %misc.addr, align 4
  %90 = load i32, i32* %89, align 4
  %sub = sub nsw i32 %90, 4
  store i32 %sub, i32* %89, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %land.lhs.true160, %sw.bb157
  br label %sw.bb168

sw.bb168:                                         ; preds = %if.end69, %if.end167
  %91 = load i32, i32* %how.addr, align 4
  %and169 = and i32 %91, 128
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %land.lhs.true171, label %if.end179

land.lhs.true171:                                 ; preds = %sw.bb168
  %92 = load i8*, i8** %s.addr, align 4
  %93 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast172 = ptrtoint i8* %92 to i32
  %sub.ptr.rhs.cast173 = ptrtoint i8* %93 to i32
  %sub.ptr.sub174 = sub i32 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast173
  %94 = load i32*, i32** %misc.addr, align 4
  %95 = load i32, i32* %94, align 4
  %cmp175 = icmp slt i32 %sub.ptr.sub174, %95
  br i1 %cmp175, label %if.then177, label %if.end179

if.then177:                                       ; preds = %land.lhs.true171
  %96 = load i32*, i32** %misc.addr, align 4
  %97 = load i32, i32* %96, align 4
  %sub178 = sub nsw i32 %97, 6
  store i32 %sub178, i32* %96, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %land.lhs.true171, %sw.bb168
  store i32 0, i32* %wval, align 4
  %98 = load i8*, i8** %s.addr, align 4
  %99 = load i8, i8* %98, align 1
  %conv180 = sext i8 %99 to i32
  %cmp181 = icmp eq i32 %conv180, 117
  %cond = select i1 %cmp181, i32 4, i32 8
  store i32 %cond, i32* %i, align 4
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc229, %if.end179
  %100 = load i32, i32* %i, align 4
  %cmp184 = icmp sgt i32 %100, 0
  br i1 %cmp184, label %for.body186, label %for.end231

for.body186:                                      ; preds = %for.cond183
  %101 = load i8*, i8** %s.addr, align 4
  %incdec.ptr187 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr187, i8** %s.addr, align 4
  %102 = load i8, i8* %incdec.ptr187, align 1
  %conv188 = sext i8 %102 to i32
  %tobool189 = icmp ne i32 %conv188, 0
  br i1 %tobool189, label %land.lhs.true190, label %if.else200

land.lhs.true190:                                 ; preds = %for.body186
  %103 = load i8*, i8** %s.addr, align 4
  %104 = load i8, i8* %103, align 1
  %idxprom = zext i8 %104 to i32
  %arrayidx191 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %105 = load i16, i16* %arrayidx191, align 2
  %conv192 = sext i16 %105 to i32
  %and193 = and i32 %conv192, 1
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then195, label %if.else200

if.then195:                                       ; preds = %land.lhs.true190
  %106 = load i32, i32* %wval, align 4
  %mul196 = mul i32 %106, 16
  %107 = load i8*, i8** %s.addr, align 4
  %108 = load i8, i8* %107, align 1
  %conv197 = sext i8 %108 to i32
  %sub198 = sub nsw i32 %conv197, 48
  %add199 = add i32 %mul196, %sub198
  store i32 %add199, i32* %wval, align 4
  br label %if.end228

if.else200:                                       ; preds = %land.lhs.true190, %for.body186
  %109 = load i8*, i8** %s.addr, align 4
  %110 = load i8, i8* %109, align 1
  %conv201 = sext i8 %110 to i32
  %tobool202 = icmp ne i32 %conv201, 0
  br i1 %tobool202, label %land.lhs.true203, label %if.else225

land.lhs.true203:                                 ; preds = %if.else200
  %111 = load i8*, i8** %s.addr, align 4
  %112 = load i8, i8* %111, align 1
  %conv204 = sext i8 %112 to i32
  %cmp205 = icmp sge i32 %conv204, 97
  br i1 %cmp205, label %land.lhs.true207, label %lor.lhs.false211

land.lhs.true207:                                 ; preds = %land.lhs.true203
  %113 = load i8*, i8** %s.addr, align 4
  %114 = load i8, i8* %113, align 1
  %conv208 = sext i8 %114 to i32
  %cmp209 = icmp sle i32 %conv208, 102
  br i1 %cmp209, label %if.then219, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %land.lhs.true207, %land.lhs.true203
  %115 = load i8*, i8** %s.addr, align 4
  %116 = load i8, i8* %115, align 1
  %conv212 = sext i8 %116 to i32
  %cmp213 = icmp sge i32 %conv212, 65
  br i1 %cmp213, label %land.lhs.true215, label %if.else225

land.lhs.true215:                                 ; preds = %lor.lhs.false211
  %117 = load i8*, i8** %s.addr, align 4
  %118 = load i8, i8* %117, align 1
  %conv216 = sext i8 %118 to i32
  %cmp217 = icmp sle i32 %conv216, 70
  br i1 %cmp217, label %if.then219, label %if.else225

if.then219:                                       ; preds = %land.lhs.true215, %land.lhs.true207
  %119 = load i32, i32* %wval, align 4
  %mul220 = mul i32 %119, 16
  %120 = load i8*, i8** %s.addr, align 4
  %121 = load i8, i8* %120, align 1
  %conv221 = sext i8 %121 to i32
  %and222 = and i32 %conv221, 31
  %add223 = add i32 %mul220, %and222
  %add224 = add i32 %add223, 9
  store i32 %add224, i32* %wval, align 4
  br label %if.end227

if.else225:                                       ; preds = %land.lhs.true215, %lor.lhs.false211, %if.else200
  %122 = load i8*, i8** %s.addr, align 4
  %incdec.ptr226 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %incdec.ptr226, i8** %s.addr, align 4
  br label %for.end231

if.end227:                                        ; preds = %if.then219
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.then195
  br label %for.inc229

for.inc229:                                       ; preds = %if.end228
  %123 = load i32, i32* %i, align 4
  %dec230 = add nsw i32 %123, -1
  store i32 %dec230, i32* %i, align 4
  br label %for.cond183

for.end231:                                       ; preds = %if.else225, %for.cond183
  %124 = load i32, i32* %how.addr, align 4
  %and232 = and i32 %124, 64
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %if.then234, label %if.end235

if.then234:                                       ; preds = %for.end231
  %125 = load i32, i32* %wval, align 4
  %126 = load i32*, i32** %misc.addr, align 4
  store i32 %125, i32* %126, align 4
  %127 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %add.ptr, i8** %retval, align 4
  br label %return

if.end235:                                        ; preds = %for.end231
  %call236 = call i8* @nl_langinfo(i32 14)
  %call237 = call i32 @strcmp(i8* %call236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0))
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.else253, label %if.then239

if.then239:                                       ; preds = %if.end235
  %128 = load i8*, i8** %t, align 4
  %129 = load i32, i32* %wval, align 4
  %call240 = call i32 @ucs4toutf8(i8* %128, i32 %129)
  store i32 %call240, i32* %count, align 4
  %130 = load i32, i32* %count, align 4
  %131 = load i8*, i8** %t, align 4
  %add.ptr241 = getelementptr inbounds i8, i8* %131, i32 %130
  store i8* %add.ptr241, i8** %t, align 4
  %132 = load i32, i32* %how.addr, align 4
  %and242 = and i32 %132, 128
  %tobool243 = icmp ne i32 %and242, 0
  br i1 %tobool243, label %land.lhs.true244, label %if.end252

land.lhs.true244:                                 ; preds = %if.then239
  %133 = load i8*, i8** %s.addr, align 4
  %134 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast245 = ptrtoint i8* %133 to i32
  %sub.ptr.rhs.cast246 = ptrtoint i8* %134 to i32
  %sub.ptr.sub247 = sub i32 %sub.ptr.lhs.cast245, %sub.ptr.rhs.cast246
  %135 = load i32*, i32** %misc.addr, align 4
  %136 = load i32, i32* %135, align 4
  %cmp248 = icmp slt i32 %sub.ptr.sub247, %136
  br i1 %cmp248, label %if.then250, label %if.end252

if.then250:                                       ; preds = %land.lhs.true244
  %137 = load i32, i32* %count, align 4
  %138 = load i32*, i32** %misc.addr, align 4
  %139 = load i32, i32* %138, align 4
  %add251 = add i32 %139, %137
  store i32 %add251, i32* %138, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %land.lhs.true244, %if.then239
  br label %if.end361

if.else253:                                       ; preds = %if.end235
  %arraydecay255 = getelementptr inbounds [4 x i8], [4 x i8]* %inbuf, i32 0, i32 0
  store i8* %arraydecay255, i8** %inptr, align 4
  %call257 = call i8* @nl_langinfo(i32 14)
  store i8* %call257, i8** %codesetstr, align 4
  store i32 4, i32* %inbytes, align 4
  store i32 6, i32* %outbytes, align 4
  store i32 3, i32* %i, align 4
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc265, %if.else253
  %140 = load i32, i32* %i, align 4
  %cmp259 = icmp sge i32 %140, 0
  br i1 %cmp259, label %for.body261, label %for.end267

for.body261:                                      ; preds = %for.cond258
  %141 = load i32, i32* %wval, align 4
  %and262 = and i32 %141, 255
  %conv263 = trunc i32 %and262 to i8
  %142 = load i32, i32* %i, align 4
  %arrayidx264 = getelementptr inbounds [4 x i8], [4 x i8]* %inbuf, i32 0, i32 %142
  store i8 %conv263, i8* %arrayidx264, align 1
  %143 = load i32, i32* %wval, align 4
  %shr = lshr i32 %143, 8
  store i32 %shr, i32* %wval, align 4
  br label %for.inc265

for.inc265:                                       ; preds = %for.body261
  %144 = load i32, i32* %i, align 4
  %dec266 = add nsw i32 %144, -1
  store i32 %dec266, i32* %i, align 4
  br label %for.cond258

for.end267:                                       ; preds = %for.cond258
  %145 = load i8*, i8** %codesetstr, align 4
  %call268 = call i8* @iconv_open(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0))
  store i8* %call268, i8** %cd, align 4
  %146 = load i8*, i8** %cd, align 4
  %cmp269 = icmp eq i8* %146, inttoptr (i32 -1 to i8*)
  br i1 %cmp269, label %if.then271, label %if.end306

if.then271:                                       ; preds = %for.end267
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.73, i32 0, i32 0))
  %147 = load i32, i32* %how.addr, align 4
  %and272 = and i32 %147, 16
  %tobool273 = icmp ne i32 %and272, 0
  br i1 %tobool273, label %if.then274, label %if.end302

if.then274:                                       ; preds = %if.then271
  br label %while.cond

while.cond:                                       ; preds = %if.end298, %if.then274
  %148 = load i8*, i8** %s.addr, align 4
  %incdec.ptr275 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr275, i8** %s.addr, align 4
  %149 = load i8, i8* %incdec.ptr275, align 1
  %150 = load i8*, i8** %tdest, align 4
  %incdec.ptr276 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr276, i8** %tdest, align 4
  store i8 %149, i8* %150, align 1
  %tobool277 = icmp ne i8 %149, 0
  br i1 %tobool277, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %151 = load i32, i32* %how.addr, align 4
  %and278 = and i32 %151, 128
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %if.then280, label %if.end289

if.then280:                                       ; preds = %while.body
  %152 = load i8*, i8** %s.addr, align 4
  %153 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast281 = ptrtoint i8* %152 to i32
  %sub.ptr.rhs.cast282 = ptrtoint i8* %153 to i32
  %sub.ptr.sub283 = sub i32 %sub.ptr.lhs.cast281, %sub.ptr.rhs.cast282
  %154 = load i32*, i32** %misc.addr, align 4
  %155 = load i32, i32* %154, align 4
  %cmp284 = icmp sgt i32 %sub.ptr.sub283, %155
  br i1 %cmp284, label %if.then286, label %if.end288

if.then286:                                       ; preds = %if.then280
  %156 = load i32*, i32** %misc.addr, align 4
  %157 = load i32, i32* %156, align 4
  %inc287 = add nsw i32 %157, 1
  store i32 %inc287, i32* %156, align 4
  br label %if.end288

if.end288:                                        ; preds = %if.then286, %if.then280
  br label %if.end289

if.end289:                                        ; preds = %if.end288, %while.body
  %158 = load i8*, i8** %s.addr, align 4
  %159 = load i8, i8* %158, align 1
  %conv290 = sext i8 %159 to i32
  %cmp291 = icmp eq i32 %conv290, -99
  br i1 %cmp291, label %if.then293, label %if.end298

if.then293:                                       ; preds = %if.end289
  %160 = load i8*, i8** %s.addr, align 4
  %161 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast294 = ptrtoint i8* %160 to i32
  %sub.ptr.rhs.cast295 = ptrtoint i8* %161 to i32
  %sub.ptr.sub296 = sub i32 %sub.ptr.lhs.cast294, %sub.ptr.rhs.cast295
  %add297 = add nsw i32 %sub.ptr.sub296, 1
  %162 = load i32*, i32** %len.addr, align 4
  store i32 %add297, i32* %162, align 4
  %163 = load i8*, i8** %tdest, align 4
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %buf, align 4
  store i8* %164, i8** %retval, align 4
  br label %return

if.end298:                                        ; preds = %if.end289
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %165 = load i8*, i8** %tdest, align 4
  %166 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast299 = ptrtoint i8* %165 to i32
  %sub.ptr.rhs.cast300 = ptrtoint i8* %166 to i32
  %sub.ptr.sub301 = sub i32 %sub.ptr.lhs.cast299, %sub.ptr.rhs.cast300
  %167 = load i32*, i32** %len.addr, align 4
  store i32 %sub.ptr.sub301, i32* %167, align 4
  %168 = load i8*, i8** %buf, align 4
  store i8* %168, i8** %retval, align 4
  br label %return

if.end302:                                        ; preds = %if.then271
  %169 = load i8*, i8** %t, align 4
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %t, align 4
  %171 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast303 = ptrtoint i8* %170 to i32
  %sub.ptr.rhs.cast304 = ptrtoint i8* %171 to i32
  %sub.ptr.sub305 = sub i32 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast304
  %172 = load i32*, i32** %len.addr, align 4
  store i32 %sub.ptr.sub305, i32* %172, align 4
  %173 = load i8*, i8** %buf, align 4
  store i8* %173, i8** %retval, align 4
  br label %return

if.end306:                                        ; preds = %for.end267
  %174 = load i8*, i8** %cd, align 4
  %call307 = call i32 @iconv(i8* %174, i8** %inptr, i32* %inbytes, i8** %t, i32* %outbytes)
  store i32 %call307, i32* %count, align 4
  %175 = load i8*, i8** %cd, align 4
  %call308 = call i32 @iconv_close(i8* %175)
  %176 = load i32, i32* %count, align 4
  %cmp309 = icmp eq i32 %176, -1
  br i1 %cmp309, label %if.then311, label %if.end349

if.then311:                                       ; preds = %if.end306
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0))
  %177 = load i32, i32* %how.addr, align 4
  %and312 = and i32 %177, 16
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %if.then314, label %if.end345

if.then314:                                       ; preds = %if.then311
  br label %while.cond315

while.cond315:                                    ; preds = %if.end340, %if.then314
  %178 = load i8*, i8** %s.addr, align 4
  %incdec.ptr316 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr316, i8** %s.addr, align 4
  %179 = load i8, i8* %incdec.ptr316, align 1
  %180 = load i8*, i8** %tdest, align 4
  %incdec.ptr317 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr317, i8** %tdest, align 4
  store i8 %179, i8* %180, align 1
  %tobool318 = icmp ne i8 %179, 0
  br i1 %tobool318, label %while.body319, label %while.end341

while.body319:                                    ; preds = %while.cond315
  %181 = load i32, i32* %how.addr, align 4
  %and320 = and i32 %181, 128
  %tobool321 = icmp ne i32 %and320, 0
  br i1 %tobool321, label %if.then322, label %if.end331

if.then322:                                       ; preds = %while.body319
  %182 = load i8*, i8** %s.addr, align 4
  %183 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast323 = ptrtoint i8* %182 to i32
  %sub.ptr.rhs.cast324 = ptrtoint i8* %183 to i32
  %sub.ptr.sub325 = sub i32 %sub.ptr.lhs.cast323, %sub.ptr.rhs.cast324
  %184 = load i32*, i32** %misc.addr, align 4
  %185 = load i32, i32* %184, align 4
  %cmp326 = icmp sgt i32 %sub.ptr.sub325, %185
  br i1 %cmp326, label %if.then328, label %if.end330

if.then328:                                       ; preds = %if.then322
  %186 = load i32*, i32** %misc.addr, align 4
  %187 = load i32, i32* %186, align 4
  %inc329 = add nsw i32 %187, 1
  store i32 %inc329, i32* %186, align 4
  br label %if.end330

if.end330:                                        ; preds = %if.then328, %if.then322
  br label %if.end331

if.end331:                                        ; preds = %if.end330, %while.body319
  %188 = load i8*, i8** %s.addr, align 4
  %189 = load i8, i8* %188, align 1
  %conv332 = sext i8 %189 to i32
  %cmp333 = icmp eq i32 %conv332, -99
  br i1 %cmp333, label %if.then335, label %if.end340

if.then335:                                       ; preds = %if.end331
  %190 = load i8*, i8** %s.addr, align 4
  %191 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast336 = ptrtoint i8* %190 to i32
  %sub.ptr.rhs.cast337 = ptrtoint i8* %191 to i32
  %sub.ptr.sub338 = sub i32 %sub.ptr.lhs.cast336, %sub.ptr.rhs.cast337
  %add339 = add nsw i32 %sub.ptr.sub338, 1
  %192 = load i32*, i32** %len.addr, align 4
  store i32 %add339, i32* %192, align 4
  %193 = load i8*, i8** %tdest, align 4
  store i8 0, i8* %193, align 1
  %194 = load i8*, i8** %buf, align 4
  store i8* %194, i8** %retval, align 4
  br label %return

if.end340:                                        ; preds = %if.end331
  br label %while.cond315

while.end341:                                     ; preds = %while.cond315
  %195 = load i8*, i8** %tdest, align 4
  %196 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast342 = ptrtoint i8* %195 to i32
  %sub.ptr.rhs.cast343 = ptrtoint i8* %196 to i32
  %sub.ptr.sub344 = sub i32 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343
  %197 = load i32*, i32** %len.addr, align 4
  store i32 %sub.ptr.sub344, i32* %197, align 4
  %198 = load i8*, i8** %buf, align 4
  store i8* %198, i8** %retval, align 4
  br label %return

if.end345:                                        ; preds = %if.then311
  %199 = load i8*, i8** %t, align 4
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %t, align 4
  %201 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast346 = ptrtoint i8* %200 to i32
  %sub.ptr.rhs.cast347 = ptrtoint i8* %201 to i32
  %sub.ptr.sub348 = sub i32 %sub.ptr.lhs.cast346, %sub.ptr.rhs.cast347
  %202 = load i32*, i32** %len.addr, align 4
  store i32 %sub.ptr.sub348, i32* %202, align 4
  %203 = load i8*, i8** %buf, align 4
  store i8* %203, i8** %retval, align 4
  br label %return

if.end349:                                        ; preds = %if.end306
  %204 = load i32, i32* %how.addr, align 4
  %and350 = and i32 %204, 128
  %tobool351 = icmp ne i32 %and350, 0
  br i1 %tobool351, label %land.lhs.true352, label %if.end360

land.lhs.true352:                                 ; preds = %if.end349
  %205 = load i8*, i8** %s.addr, align 4
  %206 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast353 = ptrtoint i8* %205 to i32
  %sub.ptr.rhs.cast354 = ptrtoint i8* %206 to i32
  %sub.ptr.sub355 = sub i32 %sub.ptr.lhs.cast353, %sub.ptr.rhs.cast354
  %207 = load i32*, i32** %misc.addr, align 4
  %208 = load i32, i32* %207, align 4
  %cmp356 = icmp slt i32 %sub.ptr.sub355, %208
  br i1 %cmp356, label %if.then358, label %if.end360

if.then358:                                       ; preds = %land.lhs.true352
  %209 = load i32, i32* %count, align 4
  %210 = load i32*, i32** %misc.addr, align 4
  %211 = load i32, i32* %210, align 4
  %add359 = add i32 %211, %209
  store i32 %add359, i32* %210, align 4
  br label %if.end360

if.end360:                                        ; preds = %if.then358, %land.lhs.true352, %if.end349
  br label %if.end361

if.end361:                                        ; preds = %if.end360, %if.end252
  %212 = load i32, i32* %how.addr, align 4
  %and362 = and i32 %212, 16
  %tobool363 = icmp ne i32 %and362, 0
  br i1 %tobool363, label %if.then364, label %if.end386

if.then364:                                       ; preds = %if.end361
  %213 = load i8*, i8** %tbuf, align 4
  store i8* %213, i8** %t2, align 4
  br label %for.cond366

for.cond366:                                      ; preds = %for.inc383, %if.then364
  %214 = load i8*, i8** %t2, align 4
  %215 = load i8*, i8** %t, align 4
  %cmp367 = icmp ult i8* %214, %215
  br i1 %cmp367, label %for.body369, label %for.end385

for.body369:                                      ; preds = %for.cond366
  %216 = load i8*, i8** %t2, align 4
  %217 = load i8, i8* %216, align 1
  %idxprom370 = zext i8 %217 to i32
  %arrayidx371 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom370
  %218 = load i16, i16* %arrayidx371, align 2
  %conv372 = sext i16 %218 to i32
  %and373 = and i32 %conv372, 4096
  %tobool374 = icmp ne i32 %and373, 0
  br i1 %tobool374, label %if.then375, label %if.else380

if.then375:                                       ; preds = %for.body369
  %219 = load i8*, i8** %tdest, align 4
  %incdec.ptr376 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr376, i8** %tdest, align 4
  store i8 -125, i8* %219, align 1
  %220 = load i8*, i8** %t2, align 4
  %221 = load i8, i8* %220, align 1
  %conv377 = sext i8 %221 to i32
  %xor = xor i32 %conv377, 32
  %conv378 = trunc i32 %xor to i8
  %222 = load i8*, i8** %tdest, align 4
  %incdec.ptr379 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr379, i8** %tdest, align 4
  store i8 %conv378, i8* %222, align 1
  br label %if.end382

if.else380:                                       ; preds = %for.body369
  %223 = load i8*, i8** %t2, align 4
  %224 = load i8, i8* %223, align 1
  %225 = load i8*, i8** %tdest, align 4
  %incdec.ptr381 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr381, i8** %tdest, align 4
  store i8 %224, i8* %225, align 1
  br label %if.end382

if.end382:                                        ; preds = %if.else380, %if.then375
  br label %for.inc383

for.inc383:                                       ; preds = %if.end382
  %226 = load i8*, i8** %t2, align 4
  %incdec.ptr384 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %incdec.ptr384, i8** %t2, align 4
  br label %for.cond366

for.end385:                                       ; preds = %for.cond366
  %227 = load i8*, i8** %tbuf, align 4
  store i8* %227, i8** %t, align 4
  br label %if.end386

if.end386:                                        ; preds = %for.end385, %if.end361
  br label %for.inc666

sw.bb387:                                         ; preds = %if.end69, %if.end69
  %228 = load i32, i32* %how.addr, align 4
  %and388 = and i32 %228, 16
  %tobool389 = icmp ne i32 %and388, 0
  br i1 %tobool389, label %if.then390, label %if.end392

if.then390:                                       ; preds = %sw.bb387
  %229 = load i8*, i8** %s.addr, align 4
  %230 = load i8, i8* %229, align 1
  %231 = load i8*, i8** %t, align 4
  %incdec.ptr391 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %incdec.ptr391, i8** %t, align 4
  store i8 %230, i8* %231, align 1
  br label %sw.epilog

if.end392:                                        ; preds = %sw.bb387
  br label %sw.default

sw.default:                                       ; preds = %if.end69, %if.end392
  br label %def

def:                                              ; preds = %sw.default, %if.end156, %if.end148
  %232 = load i8*, i8** %s.addr, align 4
  %233 = load i8, i8* %232, align 1
  %idxprom393 = zext i8 %233 to i32
  %arrayidx394 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom393
  %234 = load i16, i16* %arrayidx394, align 2
  %conv395 = sext i16 %234 to i32
  %and396 = and i32 %conv395, 1
  %tobool397 = icmp ne i32 %and396, 0
  br i1 %tobool397, label %land.lhs.true398, label %lor.lhs.false402

land.lhs.true398:                                 ; preds = %def
  %235 = load i8*, i8** %s.addr, align 4
  %236 = load i8, i8* %235, align 1
  %conv399 = sext i8 %236 to i32
  %cmp400 = icmp slt i32 %conv399, 56
  br i1 %cmp400, label %if.then406, label %lor.lhs.false402

lor.lhs.false402:                                 ; preds = %land.lhs.true398, %def
  %237 = load i8*, i8** %s.addr, align 4
  %238 = load i8, i8* %237, align 1
  %conv403 = sext i8 %238 to i32
  %cmp404 = icmp eq i32 %conv403, 120
  br i1 %cmp404, label %if.then406, label %if.else466

if.then406:                                       ; preds = %lor.lhs.false402, %land.lhs.true398
  %239 = load i32, i32* %how.addr, align 4
  %and407 = and i32 %239, 1
  %tobool408 = icmp ne i32 %and407, 0
  br i1 %tobool408, label %if.end424, label %if.then409

if.then409:                                       ; preds = %if.then406
  %240 = load i8*, i8** %s.addr, align 4
  %241 = load i8, i8* %240, align 1
  %conv410 = sext i8 %241 to i32
  %cmp411 = icmp eq i32 %conv410, 48
  br i1 %cmp411, label %if.then413, label %if.else415

if.then413:                                       ; preds = %if.then409
  %242 = load i8*, i8** %s.addr, align 4
  %incdec.ptr414 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr414, i8** %s.addr, align 4
  br label %if.end423

if.else415:                                       ; preds = %if.then409
  %243 = load i8*, i8** %s.addr, align 4
  %244 = load i8, i8* %243, align 1
  %conv416 = sext i8 %244 to i32
  %cmp417 = icmp ne i32 %conv416, 120
  br i1 %cmp417, label %if.then419, label %if.end422

if.then419:                                       ; preds = %if.else415
  %245 = load i8*, i8** %t, align 4
  %incdec.ptr420 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %incdec.ptr420, i8** %t, align 4
  store i8 92, i8* %245, align 1
  %246 = load i8*, i8** %s.addr, align 4
  %incdec.ptr421 = getelementptr inbounds i8, i8* %246, i32 -1
  store i8* %incdec.ptr421, i8** %s.addr, align 4
  br label %for.inc666

if.end422:                                        ; preds = %if.else415
  br label %if.end423

if.end423:                                        ; preds = %if.end422, %if.then413
  br label %if.end424

if.end424:                                        ; preds = %if.end423, %if.then406
  %247 = load i8*, i8** %s.addr, align 4
  %arrayidx425 = getelementptr inbounds i8, i8* %247, i32 1
  %248 = load i8, i8* %arrayidx425, align 1
  %conv426 = sext i8 %248 to i32
  %tobool427 = icmp ne i32 %conv426, 0
  br i1 %tobool427, label %land.lhs.true428, label %if.end439

land.lhs.true428:                                 ; preds = %if.end424
  %249 = load i8*, i8** %s.addr, align 4
  %arrayidx429 = getelementptr inbounds i8, i8* %249, i32 2
  %250 = load i8, i8* %arrayidx429, align 1
  %conv430 = sext i8 %250 to i32
  %tobool431 = icmp ne i32 %conv430, 0
  br i1 %tobool431, label %land.lhs.true432, label %if.end439

land.lhs.true432:                                 ; preds = %land.lhs.true428
  %251 = load i8*, i8** %s.addr, align 4
  %arrayidx433 = getelementptr inbounds i8, i8* %251, i32 3
  %252 = load i8, i8* %arrayidx433, align 1
  %conv434 = sext i8 %252 to i32
  %tobool435 = icmp ne i32 %conv434, 0
  br i1 %tobool435, label %if.then436, label %if.end439

if.then436:                                       ; preds = %land.lhs.true432
  %253 = load i8*, i8** %s.addr, align 4
  %arrayidx437 = getelementptr inbounds i8, i8* %253, i32 3
  %254 = load i8, i8* %arrayidx437, align 1
  store i8 %254, i8* %svchar, align 1
  %255 = load i8*, i8** %s.addr, align 4
  %arrayidx438 = getelementptr inbounds i8, i8* %255, i32 3
  store i8 0, i8* %arrayidx438, align 1
  %256 = load i8*, i8** %s.addr, align 4
  store i8* %256, i8** %u, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.then436, %land.lhs.true432, %land.lhs.true428, %if.end424
  %257 = load i8*, i8** %s.addr, align 4
  %258 = load i8*, i8** %s.addr, align 4
  %259 = load i8, i8* %258, align 1
  %conv440 = sext i8 %259 to i32
  %cmp441 = icmp eq i32 %conv440, 120
  %conv442 = zext i1 %cmp441 to i32
  %add.ptr443 = getelementptr inbounds i8, i8* %257, i32 %conv442
  %260 = load i8*, i8** %s.addr, align 4
  %261 = load i8, i8* %260, align 1
  %conv444 = sext i8 %261 to i32
  %cmp445 = icmp eq i32 %conv444, 120
  %cond447 = select i1 %cmp445, i32 16, i32 8
  %call448 = call i32 @zstrtol(i8* %add.ptr443, i8** %s.addr, i32 %cond447)
  %conv449 = trunc i32 %call448 to i8
  %262 = load i8*, i8** %t, align 4
  %incdec.ptr450 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %incdec.ptr450, i8** %t, align 4
  store i8 %conv449, i8* %262, align 1
  %263 = load i32, i32* %how.addr, align 4
  %and451 = and i32 %263, 256
  %tobool452 = icmp ne i32 %and451, 0
  br i1 %tobool452, label %land.lhs.true453, label %if.end460

land.lhs.true453:                                 ; preds = %if.end439
  %264 = load i8*, i8** %t, align 4
  %arrayidx454 = getelementptr inbounds i8, i8* %264, i32 -1
  %265 = load i8, i8* %arrayidx454, align 1
  %conv455 = sext i8 %265 to i32
  %cmp456 = icmp eq i32 %conv455, 37
  br i1 %cmp456, label %if.then458, label %if.end460

if.then458:                                       ; preds = %land.lhs.true453
  %266 = load i8*, i8** %t, align 4
  %incdec.ptr459 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr459, i8** %t, align 4
  store i8 37, i8* %266, align 1
  br label %if.end460

if.end460:                                        ; preds = %if.then458, %land.lhs.true453, %if.end439
  %267 = load i8, i8* %svchar, align 1
  %tobool461 = icmp ne i8 %267, 0
  br i1 %tobool461, label %if.then462, label %if.end464

if.then462:                                       ; preds = %if.end460
  %268 = load i8, i8* %svchar, align 1
  %269 = load i8*, i8** %u, align 4
  %arrayidx463 = getelementptr inbounds i8, i8* %269, i32 3
  store i8 %268, i8* %arrayidx463, align 1
  store i8 0, i8* %svchar, align 1
  br label %if.end464

if.end464:                                        ; preds = %if.then462, %if.end460
  %270 = load i8*, i8** %s.addr, align 4
  %incdec.ptr465 = getelementptr inbounds i8, i8* %270, i32 -1
  store i8* %incdec.ptr465, i8** %s.addr, align 4
  br label %if.end481

if.else466:                                       ; preds = %lor.lhs.false402
  %271 = load i32, i32* %how.addr, align 4
  %and467 = and i32 %271, 2
  %tobool468 = icmp ne i32 %and467, 0
  br i1 %tobool468, label %if.end479, label %land.lhs.true469

land.lhs.true469:                                 ; preds = %if.else466
  %272 = load i8*, i8** %s.addr, align 4
  %273 = load i8, i8* %272, align 1
  %conv470 = sext i8 %273 to i32
  %cmp471 = icmp ne i32 %conv470, 92
  br i1 %cmp471, label %if.then473, label %if.end479

if.then473:                                       ; preds = %land.lhs.true469
  %274 = load i32, i32* %miscadded, align 4
  %tobool474 = icmp ne i32 %274, 0
  br i1 %tobool474, label %if.then475, label %if.end477

if.then475:                                       ; preds = %if.then473
  %275 = load i32*, i32** %misc.addr, align 4
  %276 = load i32, i32* %275, align 4
  %inc476 = add nsw i32 %276, 1
  store i32 %inc476, i32* %275, align 4
  br label %if.end477

if.end477:                                        ; preds = %if.then475, %if.then473
  %277 = load i8*, i8** %t, align 4
  %incdec.ptr478 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %incdec.ptr478, i8** %t, align 4
  store i8 92, i8* %277, align 1
  br label %if.end479

if.end479:                                        ; preds = %if.end477, %land.lhs.true469, %if.else466
  %278 = load i8*, i8** %s.addr, align 4
  %279 = load i8, i8* %278, align 1
  %280 = load i8*, i8** %t, align 4
  %incdec.ptr480 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %incdec.ptr480, i8** %t, align 4
  store i8 %279, i8* %280, align 1
  br label %if.end481

if.end481:                                        ; preds = %if.end479, %if.end464
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end481, %if.then390, %if.then147, %if.end141, %sw.bb96, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb
  br label %if.end587

if.else482:                                       ; preds = %land.lhs.true, %for.body53
  %281 = load i32, i32* %how.addr, align 4
  %and483 = and i32 %281, 16
  %tobool484 = icmp ne i32 %and483, 0
  br i1 %tobool484, label %land.lhs.true485, label %if.else494

land.lhs.true485:                                 ; preds = %if.else482
  %282 = load i8*, i8** %s.addr, align 4
  %283 = load i8, i8* %282, align 1
  %conv486 = sext i8 %283 to i32
  %cmp487 = icmp eq i32 %conv486, -99
  br i1 %cmp487, label %if.then489, label %if.else494

if.then489:                                       ; preds = %land.lhs.true485
  %284 = load i8*, i8** %s.addr, align 4
  %285 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast490 = ptrtoint i8* %284 to i32
  %sub.ptr.rhs.cast491 = ptrtoint i8* %285 to i32
  %sub.ptr.sub492 = sub i32 %sub.ptr.lhs.cast490, %sub.ptr.rhs.cast491
  %add493 = add nsw i32 %sub.ptr.sub492, 1
  %286 = load i32*, i32** %len.addr, align 4
  store i32 %add493, i32* %286, align 4
  %287 = load i8*, i8** %tdest, align 4
  store i8 0, i8* %287, align 1
  %288 = load i8*, i8** %buf, align 4
  store i8* %288, i8** %retval, align 4
  br label %return

if.else494:                                       ; preds = %land.lhs.true485, %if.else482
  %289 = load i8*, i8** %s.addr, align 4
  %290 = load i8, i8* %289, align 1
  %conv495 = sext i8 %290 to i32
  %cmp496 = icmp eq i32 %conv495, 94
  br i1 %cmp496, label %land.lhs.true498, label %if.else508

land.lhs.true498:                                 ; preds = %if.else494
  %291 = load i32, i32* %control, align 4
  %tobool499 = icmp ne i32 %291, 0
  br i1 %tobool499, label %if.else508, label %land.lhs.true500

land.lhs.true500:                                 ; preds = %land.lhs.true498
  %292 = load i32, i32* %how.addr, align 4
  %and501 = and i32 %292, 4
  %tobool502 = icmp ne i32 %and501, 0
  br i1 %tobool502, label %land.lhs.true503, label %if.else508

land.lhs.true503:                                 ; preds = %land.lhs.true500
  %293 = load i8*, i8** %s.addr, align 4
  %arrayidx504 = getelementptr inbounds i8, i8* %293, i32 1
  %294 = load i8, i8* %arrayidx504, align 1
  %conv505 = sext i8 %294 to i32
  %tobool506 = icmp ne i32 %conv505, 0
  br i1 %tobool506, label %if.then507, label %if.else508

if.then507:                                       ; preds = %land.lhs.true503
  store i32 1, i32* %control, align 4
  br label %for.inc666

if.else508:                                       ; preds = %land.lhs.true503, %land.lhs.true500, %land.lhs.true498, %if.else494
  %295 = load i32, i32* %how.addr, align 4
  %and509 = and i32 %295, 64
  %tobool510 = icmp ne i32 %and509, 0
  br i1 %tobool510, label %land.lhs.true511, label %if.else528

land.lhs.true511:                                 ; preds = %if.else508
  %296 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %conv512 = sext i8 %296 to i32
  %tobool513 = icmp ne i32 %conv512, 0
  br i1 %tobool513, label %land.lhs.true514, label %if.else528

land.lhs.true514:                                 ; preds = %land.lhs.true511
  %297 = load i8*, i8** %s.addr, align 4
  %298 = load i8, i8* %297, align 1
  %conv515 = zext i8 %298 to i32
  %cmp516 = icmp sgt i32 %conv515, 127
  br i1 %cmp516, label %if.then518, label %if.else528

if.then518:                                       ; preds = %land.lhs.true514
  %299 = load i8*, i8** %s.addr, align 4
  %call522 = call i32 @mb_metacharlenconv(i8* %299, i32* %wc)
  store i32 %call522, i32* %len521, align 4
  %300 = load i32, i32* %wc, align 4
  %cmp523 = icmp ne i32 %300, -1
  br i1 %cmp523, label %if.then525, label %if.end527

if.then525:                                       ; preds = %if.then518
  %301 = load i32, i32* %wc, align 4
  %302 = load i32*, i32** %misc.addr, align 4
  store i32 %301, i32* %302, align 4
  %303 = load i8*, i8** %s.addr, align 4
  %304 = load i32, i32* %len521, align 4
  %add.ptr526 = getelementptr inbounds i8, i8* %303, i32 %304
  store i8* %add.ptr526, i8** %retval, align 4
  br label %return

if.end527:                                        ; preds = %if.then518
  br label %if.end584

if.else528:                                       ; preds = %land.lhs.true514, %land.lhs.true511, %if.else508
  %305 = load i8*, i8** %s.addr, align 4
  %306 = load i8, i8* %305, align 1
  %conv529 = sext i8 %306 to i32
  %cmp530 = icmp eq i32 %conv529, -125
  br i1 %cmp530, label %if.then532, label %if.else538

if.then532:                                       ; preds = %if.else528
  %307 = load i8*, i8** %s.addr, align 4
  %incdec.ptr533 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr533, i8** %s.addr, align 4
  %308 = load i8, i8* %incdec.ptr533, align 1
  %conv534 = sext i8 %308 to i32
  %xor535 = xor i32 %conv534, 32
  %conv536 = trunc i32 %xor535 to i8
  %309 = load i8*, i8** %t, align 4
  %incdec.ptr537 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %incdec.ptr537, i8** %t, align 4
  store i8 %conv536, i8* %309, align 1
  br label %if.end583

if.else538:                                       ; preds = %if.else528
  %310 = load i8*, i8** %s.addr, align 4
  %311 = load i8, i8* %310, align 1
  %idxprom539 = zext i8 %311 to i32
  %arrayidx540 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom539
  %312 = load i16, i16* %arrayidx540, align 2
  %conv541 = sext i16 %312 to i32
  %and542 = and i32 %conv541, 16
  %tobool543 = icmp ne i32 %and542, 0
  br i1 %tobool543, label %if.then544, label %if.else580

if.then544:                                       ; preds = %if.else538
  %313 = load i32, i32* %meta, align 4
  %tobool545 = icmp ne i32 %313, 0
  br i1 %tobool545, label %if.then548, label %lor.lhs.false546

lor.lhs.false546:                                 ; preds = %if.then544
  %314 = load i32, i32* %control, align 4
  %tobool547 = icmp ne i32 %314, 0
  br i1 %tobool547, label %if.then548, label %if.else564

if.then548:                                       ; preds = %lor.lhs.false546, %if.then544
  %315 = load i32, i32* %how.addr, align 4
  %and549 = and i32 %315, 16
  %tobool550 = icmp ne i32 %and549, 0
  br i1 %tobool550, label %land.lhs.true551, label %if.else558

land.lhs.true551:                                 ; preds = %if.then548
  %316 = load i8*, i8** %s.addr, align 4
  %317 = load i8, i8* %316, align 1
  %conv552 = sext i8 %317 to i32
  %cmp553 = icmp eq i32 %conv552, -97
  br i1 %cmp553, label %if.then555, label %if.else558

if.then555:                                       ; preds = %land.lhs.true551
  %318 = load i8*, i8** %s.addr, align 4
  %incdec.ptr556 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %incdec.ptr556, i8** %s.addr, align 4
  %319 = load i8, i8* %incdec.ptr556, align 1
  %320 = load i8*, i8** %t, align 4
  %incdec.ptr557 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %incdec.ptr557, i8** %t, align 4
  store i8 %319, i8* %320, align 1
  br label %if.end563

if.else558:                                       ; preds = %land.lhs.true551, %if.then548
  %321 = load i8*, i8** %s.addr, align 4
  %322 = load i8, i8* %321, align 1
  %conv559 = sext i8 %322 to i32
  %sub560 = sub nsw i32 %conv559, -124
  %arrayidx561 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub560
  %323 = load i8, i8* %arrayidx561, align 1
  %324 = load i8*, i8** %t, align 4
  %incdec.ptr562 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr562, i8** %t, align 4
  store i8 %323, i8* %324, align 1
  br label %if.end563

if.end563:                                        ; preds = %if.else558, %if.then555
  br label %if.end579

if.else564:                                       ; preds = %lor.lhs.false546
  %325 = load i32, i32* %how.addr, align 4
  %and565 = and i32 %325, 16
  %tobool566 = icmp ne i32 %and565, 0
  br i1 %tobool566, label %if.then567, label %if.else576

if.then567:                                       ; preds = %if.else564
  %326 = load i8*, i8** %s.addr, align 4
  %327 = load i8, i8* %326, align 1
  %328 = load i8*, i8** %tdest, align 4
  %incdec.ptr568 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %incdec.ptr568, i8** %tdest, align 4
  store i8 %327, i8* %328, align 1
  %329 = load i8*, i8** %s.addr, align 4
  %330 = load i8, i8* %329, align 1
  %conv569 = sext i8 %330 to i32
  %cmp570 = icmp eq i32 %conv569, -97
  br i1 %cmp570, label %if.then572, label %if.end575

if.then572:                                       ; preds = %if.then567
  %331 = load i8*, i8** %s.addr, align 4
  %incdec.ptr573 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %incdec.ptr573, i8** %s.addr, align 4
  %332 = load i8, i8* %incdec.ptr573, align 1
  %333 = load i8*, i8** %tdest, align 4
  %incdec.ptr574 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %incdec.ptr574, i8** %tdest, align 4
  store i8 %332, i8* %333, align 1
  br label %if.end575

if.end575:                                        ; preds = %if.then572, %if.then567
  %334 = load i8*, i8** %tbuf, align 4
  store i8* %334, i8** %t, align 4
  br label %for.inc666

if.else576:                                       ; preds = %if.else564
  %335 = load i8*, i8** %s.addr, align 4
  %336 = load i8, i8* %335, align 1
  %337 = load i8*, i8** %t, align 4
  %incdec.ptr577 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr577, i8** %t, align 4
  store i8 %336, i8* %337, align 1
  br label %if.end578

if.end578:                                        ; preds = %if.else576
  br label %if.end579

if.end579:                                        ; preds = %if.end578, %if.end563
  br label %if.end582

if.else580:                                       ; preds = %if.else538
  %338 = load i8*, i8** %s.addr, align 4
  %339 = load i8, i8* %338, align 1
  %340 = load i8*, i8** %t, align 4
  %incdec.ptr581 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %incdec.ptr581, i8** %t, align 4
  store i8 %339, i8* %340, align 1
  br label %if.end582

if.end582:                                        ; preds = %if.else580, %if.end579
  br label %if.end583

if.end583:                                        ; preds = %if.end582, %if.then532
  br label %if.end584

if.end584:                                        ; preds = %if.end583, %if.end527
  br label %if.end585

if.end585:                                        ; preds = %if.end584
  br label %if.end586

if.end586:                                        ; preds = %if.end585
  br label %if.end587

if.end587:                                        ; preds = %if.end586, %sw.epilog
  %341 = load i32, i32* %meta, align 4
  %cmp588 = icmp eq i32 %341, 2
  br i1 %cmp588, label %if.then590, label %if.end594

if.then590:                                       ; preds = %if.end587
  %342 = load i8*, i8** %t, align 4
  %arrayidx591 = getelementptr inbounds i8, i8* %342, i32 -1
  %343 = load i8, i8* %arrayidx591, align 1
  %conv592 = sext i8 %343 to i32
  %or = or i32 %conv592, 128
  %conv593 = trunc i32 %or to i8
  store i8 %conv593, i8* %arrayidx591, align 1
  store i32 0, i32* %meta, align 4
  br label %if.end594

if.end594:                                        ; preds = %if.then590, %if.end587
  %344 = load i32, i32* %control, align 4
  %tobool595 = icmp ne i32 %344, 0
  br i1 %tobool595, label %if.then596, label %if.end609

if.then596:                                       ; preds = %if.end594
  %345 = load i8*, i8** %t, align 4
  %arrayidx597 = getelementptr inbounds i8, i8* %345, i32 -1
  %346 = load i8, i8* %arrayidx597, align 1
  %conv598 = sext i8 %346 to i32
  %cmp599 = icmp eq i32 %conv598, 63
  br i1 %cmp599, label %if.then601, label %if.else603

if.then601:                                       ; preds = %if.then596
  %347 = load i8*, i8** %t, align 4
  %arrayidx602 = getelementptr inbounds i8, i8* %347, i32 -1
  store i8 127, i8* %arrayidx602, align 1
  br label %if.end608

if.else603:                                       ; preds = %if.then596
  %348 = load i8*, i8** %t, align 4
  %arrayidx604 = getelementptr inbounds i8, i8* %348, i32 -1
  %349 = load i8, i8* %arrayidx604, align 1
  %conv605 = sext i8 %349 to i32
  %and606 = and i32 %conv605, 159
  %conv607 = trunc i32 %and606 to i8
  store i8 %conv607, i8* %arrayidx604, align 1
  br label %if.end608

if.end608:                                        ; preds = %if.else603, %if.then601
  store i32 0, i32* %control, align 4
  br label %if.end609

if.end609:                                        ; preds = %if.end608, %if.end594
  %350 = load i32, i32* %meta, align 4
  %tobool610 = icmp ne i32 %350, 0
  br i1 %tobool610, label %if.then611, label %if.end616

if.then611:                                       ; preds = %if.end609
  %351 = load i8*, i8** %t, align 4
  %arrayidx612 = getelementptr inbounds i8, i8* %351, i32 -1
  %352 = load i8, i8* %arrayidx612, align 1
  %conv613 = sext i8 %352 to i32
  %or614 = or i32 %conv613, 128
  %conv615 = trunc i32 %or614 to i8
  store i8 %conv615, i8* %arrayidx612, align 1
  store i32 0, i32* %meta, align 4
  br label %if.end616

if.end616:                                        ; preds = %if.then611, %if.end609
  %353 = load i32, i32* %how.addr, align 4
  %and617 = and i32 %353, 16
  %tobool618 = icmp ne i32 %and617, 0
  br i1 %tobool618, label %if.then619, label %if.end654

if.then619:                                       ; preds = %if.end616
  %354 = load i8*, i8** %tbuf, align 4
  store i8* %354, i8** %t2621, align 4
  br label %for.cond622

for.cond622:                                      ; preds = %for.inc651, %if.then619
  %355 = load i8*, i8** %t2621, align 4
  %356 = load i8*, i8** %t, align 4
  %cmp623 = icmp ult i8* %355, %356
  br i1 %cmp623, label %for.body625, label %for.end653

for.body625:                                      ; preds = %for.cond622
  %357 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 136), align 1
  %tobool626 = icmp ne i8 %357, 0
  br i1 %tobool626, label %if.then627, label %if.end636

if.then627:                                       ; preds = %for.body625
  %358 = load i8*, i8** %t2621, align 4
  %359 = load i8, i8* %358, align 1
  %conv628 = sext i8 %359 to i32
  %cmp629 = icmp eq i32 %conv628, 0
  br i1 %cmp629, label %if.then631, label %if.end632

if.then631:                                       ; preds = %if.then627
  store i32 1, i32* %ignoring, align 4
  br label %if.end632

if.end632:                                        ; preds = %if.then631, %if.then627
  %360 = load i32, i32* %ignoring, align 4
  %tobool633 = icmp ne i32 %360, 0
  br i1 %tobool633, label %if.then634, label %if.end635

if.then634:                                       ; preds = %if.end632
  br label %for.end653

if.end635:                                        ; preds = %if.end632
  br label %if.end636

if.end636:                                        ; preds = %if.end635, %for.body625
  %361 = load i8*, i8** %t2621, align 4
  %362 = load i8, i8* %361, align 1
  %idxprom637 = zext i8 %362 to i32
  %arrayidx638 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom637
  %363 = load i16, i16* %arrayidx638, align 2
  %conv639 = sext i16 %363 to i32
  %and640 = and i32 %conv639, 4096
  %tobool641 = icmp ne i32 %and640, 0
  br i1 %tobool641, label %if.then642, label %if.else648

if.then642:                                       ; preds = %if.end636
  %364 = load i8*, i8** %tdest, align 4
  %incdec.ptr643 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %incdec.ptr643, i8** %tdest, align 4
  store i8 -125, i8* %364, align 1
  %365 = load i8*, i8** %t2621, align 4
  %366 = load i8, i8* %365, align 1
  %conv644 = sext i8 %366 to i32
  %xor645 = xor i32 %conv644, 32
  %conv646 = trunc i32 %xor645 to i8
  %367 = load i8*, i8** %tdest, align 4
  %incdec.ptr647 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %incdec.ptr647, i8** %tdest, align 4
  store i8 %conv646, i8* %367, align 1
  br label %if.end650

if.else648:                                       ; preds = %if.end636
  %368 = load i8*, i8** %t2621, align 4
  %369 = load i8, i8* %368, align 1
  %370 = load i8*, i8** %tdest, align 4
  %incdec.ptr649 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %incdec.ptr649, i8** %tdest, align 4
  store i8 %369, i8* %370, align 1
  br label %if.end650

if.end650:                                        ; preds = %if.else648, %if.then642
  br label %for.inc651

for.inc651:                                       ; preds = %if.end650
  %371 = load i8*, i8** %t2621, align 4
  %incdec.ptr652 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %incdec.ptr652, i8** %t2621, align 4
  br label %for.cond622

for.end653:                                       ; preds = %if.then634, %for.cond622
  %372 = load i8*, i8** %tbuf, align 4
  store i8* %372, i8** %t, align 4
  br label %if.end654

if.end654:                                        ; preds = %for.end653, %if.end616
  %373 = load i32, i32* %how.addr, align 4
  %and655 = and i32 %373, 64
  %tobool656 = icmp ne i32 %and655, 0
  br i1 %tobool656, label %land.lhs.true657, label %if.end665

land.lhs.true657:                                 ; preds = %if.end654
  %374 = load i8*, i8** %t, align 4
  %arraydecay658 = getelementptr inbounds [1 x i8], [1 x i8]* %tmp, i32 0, i32 0
  %cmp659 = icmp ne i8* %374, %arraydecay658
  br i1 %cmp659, label %if.then661, label %if.end665

if.then661:                                       ; preds = %land.lhs.true657
  %arrayidx662 = getelementptr inbounds [1 x i8], [1 x i8]* %tmp, i32 0, i32 0
  %375 = load i8, i8* %arrayidx662, align 1
  %conv663 = zext i8 %375 to i32
  %376 = load i32*, i32** %misc.addr, align 4
  store i32 %conv663, i32* %376, align 4
  %377 = load i8*, i8** %s.addr, align 4
  %add.ptr664 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %add.ptr664, i8** %retval, align 4
  br label %return

if.end665:                                        ; preds = %land.lhs.true657, %if.end654
  br label %for.inc666

for.inc666:                                       ; preds = %if.end665, %if.end575, %if.then507, %if.then419, %if.end386, %if.end136, %if.end117, %if.end94
  %378 = load i8*, i8** %s.addr, align 4
  %incdec.ptr667 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %incdec.ptr667, i8** %s.addr, align 4
  br label %for.cond51

for.end668:                                       ; preds = %for.cond51
  %379 = load i8*, i8** %t, align 4
  store i8 0, i8* %379, align 1
  %380 = load i32, i32* %how.addr, align 4
  %and669 = and i32 %380, 16
  %tobool670 = icmp ne i32 %and669, 0
  br i1 %tobool670, label %if.then671, label %if.end672

if.then671:                                       ; preds = %for.end668
  %381 = load i8*, i8** %tdest, align 4
  store i8 0, i8* %381, align 1
  br label %if.end672

if.end672:                                        ; preds = %if.then671, %for.end668
  %382 = load i32, i32* %how.addr, align 4
  %and673 = and i32 %382, 64
  %tobool674 = icmp ne i32 %and673, 0
  br i1 %tobool674, label %if.then675, label %if.else676

if.then675:                                       ; preds = %if.end672
  %383 = load i32*, i32** %misc.addr, align 4
  store i32 0, i32* %383, align 4
  br label %if.end683

if.else676:                                       ; preds = %if.end672
  %384 = load i32, i32* %how.addr, align 4
  %and677 = and i32 %384, 16
  %tobool678 = icmp ne i32 %and677, 0
  br i1 %tobool678, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else676
  %385 = load i8*, i8** %tdest, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else676
  %386 = load i8*, i8** %t, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond679 = phi i8* [ %385, %cond.true ], [ %386, %cond.false ]
  %387 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast680 = ptrtoint i8* %cond679 to i32
  %sub.ptr.rhs.cast681 = ptrtoint i8* %387 to i32
  %sub.ptr.sub682 = sub i32 %sub.ptr.lhs.cast680, %sub.ptr.rhs.cast681
  %388 = load i32*, i32** %len.addr, align 4
  store i32 %sub.ptr.sub682, i32* %388, align 4
  br label %if.end683

if.end683:                                        ; preds = %cond.end, %if.then675
  %389 = load i8*, i8** %buf, align 4
  store i8* %389, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end683, %if.then661, %if.then525, %if.then489, %if.end345, %while.end341, %if.then335, %if.end302, %while.end, %if.then293, %if.then234, %if.then152
  %390 = load i8*, i8** %retval, align 4
  ret i8* %390
}

; Function Attrs: noinline nounwind
define void @freearray(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %t = alloca i8**, align 4
  store i8** %s, i8*** %s.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  store i8** %0, i8*** %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8**, i8*** %s.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8**, i8*** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  store i8** %incdec.ptr, i8*** %s.addr, align 4
  %4 = load i8*, i8** %3, align 4
  call void @zsfree(i8* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8**, i8*** %t, align 4
  %6 = bitcast i8** %5 to i8*
  call void @free(i8* %6)
  ret void
}

; Function Attrs: noinline nounwind
define i32 @equalsplit(i8* %s, i8** %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8**, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8** %t, i8*** %t.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv1, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 61
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load i8*, i8** %s.addr, align 4
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %s.addr, align 4
  store i8 0, i8* %8, align 1
  %9 = load i8*, i8** %s.addr, align 4
  %10 = load i8**, i8*** %t.addr, align 4
  store i8* %9, i8** %10, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind
define void @inittyptab() #0 {
entry:
  %t0 = alloca i32, align 4
  %s = alloca i8*, align 4
  %c = alloca i32, align 4
  %c125 = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp217 = alloca %struct.__sigset_t, align 4
  %0 = load i32, i32* @typtab_flags, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @typtab_flags, align 4
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv2 = sext i8 %2 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* @typtab_flags, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* @typtab_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  call void @llvm.memset.p0i8.i32(i8* bitcast ([256 x i16]* @typtab to i8*), i8 0, i32 512, i32 2, i1 false)
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load i32, i32* %t0, align 4
  %cmp = icmp ne i32 %5, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %t0, align 4
  %add = add nsw i32 %6, 128
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %add
  store i16 512, i16* %arrayidx, align 2
  %7 = load i32, i32* %t0, align 4
  %arrayidx7 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %7
  store i16 512, i16* %arrayidx7, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %t0, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %t0, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 512, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 127), align 2
  store i32 48, i32* %t0, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc14, %for.end
  %9 = load i32, i32* %t0, align 4
  %cmp10 = icmp sle i32 %9, 57
  br i1 %cmp10, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond9
  %10 = load i32, i32* %t0, align 4
  %arrayidx13 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %10
  store i16 1411, i16* %arrayidx13, align 2
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %11 = load i32, i32* %t0, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %t0, align 4
  br label %for.cond9

for.end16:                                        ; preds = %for.cond9
  store i32 97, i32* %t0, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc24, %for.end16
  %12 = load i32, i32* %t0, align 4
  %cmp18 = icmp sle i32 %12, 122
  br i1 %cmp18, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond17
  %13 = load i32, i32* %t0, align 4
  %sub = sub nsw i32 %13, 97
  %add21 = add nsw i32 %sub, 65
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %add21
  store i16 1474, i16* %arrayidx22, align 2
  %14 = load i32, i32* %t0, align 4
  %arrayidx23 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %14
  store i16 1474, i16* %arrayidx23, align 2
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  %15 = load i32, i32* %t0, align 4
  %inc25 = add nsw i32 %15, 1
  store i32 %inc25, i32* %t0, align 4
  br label %for.cond17

for.end26:                                        ; preds = %for.cond17
  store i16 384, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 95), align 2
  store i16 256, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 155), align 2
  store i16 256, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 46), align 2
  store i16 256, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 45), align 2
  %16 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 32), align 2
  %conv27 = sext i16 %16 to i32
  %or28 = or i32 %conv27, 12
  %conv29 = trunc i32 %or28 to i16
  store i16 %conv29, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 32), align 2
  %17 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 9), align 2
  %conv30 = sext i16 %17 to i32
  %or31 = or i32 %conv30, 12
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 9), align 2
  %18 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 10), align 2
  %conv33 = sext i16 %18 to i32
  %or34 = or i32 %conv33, 8
  %conv35 = trunc i32 %or34 to i16
  store i16 %conv35, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 10), align 2
  %19 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 0), align 2
  %conv36 = sext i16 %19 to i32
  %or37 = or i32 %conv36, 4096
  %conv38 = trunc i32 %or37 to i16
  store i16 %conv38, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 0), align 2
  %20 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 131), align 2
  %conv39 = sext i16 %20 to i32
  %or40 = or i32 %conv39, 4096
  %conv41 = trunc i32 %or40 to i16
  store i16 %conv41, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 131), align 2
  %21 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 162), align 2
  %conv42 = sext i16 %21 to i32
  %or43 = or i32 %conv42, 4096
  %conv44 = trunc i32 %or43 to i16
  store i16 %conv44, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 162), align 2
  store i32 132, i32* %t0, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end26
  %22 = load i32, i32* %t0, align 4
  %cmp46 = icmp sle i32 %22, 156
  br i1 %cmp46, label %for.body48, label %for.end55

for.body48:                                       ; preds = %for.cond45
  %23 = load i32, i32* %t0, align 4
  %arrayidx49 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %23
  %24 = load i16, i16* %arrayidx49, align 2
  %conv50 = sext i16 %24 to i32
  %or51 = or i32 %conv50, 4112
  %conv52 = trunc i32 %or51 to i16
  store i16 %conv52, i16* %arrayidx49, align 2
  br label %for.inc53

for.inc53:                                        ; preds = %for.body48
  %25 = load i32, i32* %t0, align 4
  %inc54 = add nsw i32 %25, 1
  store i32 %inc54, i32* %t0, align 4
  br label %for.cond45

for.end55:                                        ; preds = %for.cond45
  store i32 157, i32* %t0, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %for.end55
  %26 = load i32, i32* %t0, align 4
  %cmp57 = icmp sle i32 %26, 161
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond56
  %27 = load i32, i32* %t0, align 4
  %arrayidx60 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %27
  %28 = load i16, i16* %arrayidx60, align 2
  %conv61 = sext i16 %28 to i32
  %or62 = or i32 %conv61, 20496
  %conv63 = trunc i32 %or62 to i16
  store i16 %conv63, i16* %arrayidx60, align 2
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %29 = load i32, i32* %t0, align 4
  %inc65 = add nsw i32 %29, 1
  store i32 %inc65, i32* %t0, align 4
  br label %for.cond56

for.end66:                                        ; preds = %for.cond56
  %30 = load i8*, i8** @ifs, align 4
  %tobool67 = icmp ne i8* %30, null
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end66
  %31 = load i8*, i8** @ifs, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end66
  %32 = load i32, i32* @emulation, align 4
  %and68 = and i32 %32, 12
  %tobool69 = icmp ne i32 %and68, 0
  %cond = select i1 %tobool69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond70 = phi i8* [ %31, %cond.true ], [ %cond, %cond.false ]
  store i8* %cond70, i8** %s, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc114, %cond.end
  %33 = load i8*, i8** %s, align 4
  %34 = load i8, i8* %33, align 1
  %tobool72 = icmp ne i8 %34, 0
  br i1 %tobool72, label %for.body73, label %for.end116

for.body73:                                       ; preds = %for.cond71
  %35 = load i8*, i8** %s, align 4
  %36 = load i8, i8* %35, align 1
  %conv74 = sext i8 %36 to i32
  %cmp75 = icmp eq i32 %conv74, -125
  br i1 %cmp75, label %cond.true77, label %cond.false79

cond.true77:                                      ; preds = %for.body73
  %37 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  %38 = load i8, i8* %incdec.ptr, align 1
  %conv78 = sext i8 %38 to i32
  %xor = xor i32 %conv78, 32
  br label %cond.end81

cond.false79:                                     ; preds = %for.body73
  %39 = load i8*, i8** %s, align 4
  %40 = load i8, i8* %39, align 1
  %conv80 = sext i8 %40 to i32
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false79, %cond.true77
  %cond82 = phi i32 [ %xor, %cond.true77 ], [ %conv80, %cond.false79 ]
  %conv83 = trunc i32 %cond82 to i8
  %conv84 = zext i8 %conv83 to i32
  store i32 %conv84, i32* %c, align 4
  br i1 false, label %cond.true85, label %cond.false87

cond.true85:                                      ; preds = %cond.end81
  %41 = load i32, i32* %c, align 4
  %call = call i32 @isascii(i32 %41)
  %tobool86 = icmp ne i32 %call, 0
  br i1 %tobool86, label %if.end91, label %if.then90

cond.false87:                                     ; preds = %cond.end81
  %42 = load i32, i32* %c, align 4
  %cmp88 = icmp ult i32 %42, 128
  br i1 %cmp88, label %if.end91, label %if.then90

if.then90:                                        ; preds = %cond.false87, %cond.true85
  br label %for.inc114

if.end91:                                         ; preds = %cond.false87, %cond.true85
  %43 = load i32, i32* %c, align 4
  %conv92 = trunc i32 %43 to i8
  %idxprom = zext i8 %conv92 to i32
  %arrayidx93 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %44 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %44 to i32
  %and95 = and i32 %conv94, 8
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then97, label %if.end109

if.then97:                                        ; preds = %if.end91
  %45 = load i8*, i8** %s, align 4
  %arrayidx98 = getelementptr inbounds i8, i8* %45, i32 1
  %46 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %46 to i32
  %47 = load i32, i32* %c, align 4
  %cmp100 = icmp eq i32 %conv99, %47
  br i1 %cmp100, label %if.then102, label %if.else

if.then102:                                       ; preds = %if.then97
  %48 = load i8*, i8** %s, align 4
  %incdec.ptr103 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr103, i8** %s, align 4
  br label %if.end108

if.else:                                          ; preds = %if.then97
  %49 = load i32, i32* %c, align 4
  %arrayidx104 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %49
  %50 = load i16, i16* %arrayidx104, align 2
  %conv105 = sext i16 %50 to i32
  %or106 = or i32 %conv105, 8192
  %conv107 = trunc i32 %or106 to i16
  store i16 %conv107, i16* %arrayidx104, align 2
  br label %if.end108

if.end108:                                        ; preds = %if.else, %if.then102
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end91
  %51 = load i32, i32* %c, align 4
  %arrayidx110 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %51
  %52 = load i16, i16* %arrayidx110, align 2
  %conv111 = sext i16 %52 to i32
  %or112 = or i32 %conv111, 32
  %conv113 = trunc i32 %or112 to i16
  store i16 %conv113, i16* %arrayidx110, align 2
  br label %for.inc114

for.inc114:                                       ; preds = %if.end109, %if.then90
  %53 = load i8*, i8** %s, align 4
  %incdec.ptr115 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr115, i8** %s, align 4
  br label %for.cond71

for.end116:                                       ; preds = %for.cond71
  %54 = load i8*, i8** @wordchars, align 4
  %tobool117 = icmp ne i8* %54, null
  br i1 %tobool117, label %cond.true118, label %cond.false119

cond.true118:                                     ; preds = %for.end116
  %55 = load i8*, i8** @wordchars, align 4
  br label %cond.end120

cond.false119:                                    ; preds = %for.end116
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119, %cond.true118
  %cond121 = phi i8* [ %55, %cond.true118 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), %cond.false119 ]
  store i8* %cond121, i8** %s, align 4
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc151, %cond.end120
  %56 = load i8*, i8** %s, align 4
  %57 = load i8, i8* %56, align 1
  %tobool123 = icmp ne i8 %57, 0
  br i1 %tobool123, label %for.body124, label %for.end153

for.body124:                                      ; preds = %for.cond122
  %58 = load i8*, i8** %s, align 4
  %59 = load i8, i8* %58, align 1
  %conv126 = sext i8 %59 to i32
  %cmp127 = icmp eq i32 %conv126, -125
  br i1 %cmp127, label %cond.true129, label %cond.false133

cond.true129:                                     ; preds = %for.body124
  %60 = load i8*, i8** %s, align 4
  %incdec.ptr130 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr130, i8** %s, align 4
  %61 = load i8, i8* %incdec.ptr130, align 1
  %conv131 = sext i8 %61 to i32
  %xor132 = xor i32 %conv131, 32
  br label %cond.end135

cond.false133:                                    ; preds = %for.body124
  %62 = load i8*, i8** %s, align 4
  %63 = load i8, i8* %62, align 1
  %conv134 = sext i8 %63 to i32
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false133, %cond.true129
  %cond136 = phi i32 [ %xor132, %cond.true129 ], [ %conv134, %cond.false133 ]
  %conv137 = trunc i32 %cond136 to i8
  %conv138 = zext i8 %conv137 to i32
  store i32 %conv138, i32* %c125, align 4
  br i1 false, label %cond.true139, label %cond.false142

cond.true139:                                     ; preds = %cond.end135
  %64 = load i32, i32* %c125, align 4
  %call140 = call i32 @isascii(i32 %64)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.end146, label %if.then145

cond.false142:                                    ; preds = %cond.end135
  %65 = load i32, i32* %c125, align 4
  %cmp143 = icmp ult i32 %65, 128
  br i1 %cmp143, label %if.end146, label %if.then145

if.then145:                                       ; preds = %cond.false142, %cond.true139
  br label %for.inc151

if.end146:                                        ; preds = %cond.false142, %cond.true139
  %66 = load i32, i32* %c125, align 4
  %arrayidx147 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %66
  %67 = load i16, i16* %arrayidx147, align 2
  %conv148 = sext i16 %67 to i32
  %or149 = or i32 %conv148, 1024
  %conv150 = trunc i32 %or149 to i16
  store i16 %conv150, i16* %arrayidx147, align 2
  br label %for.inc151

for.inc151:                                       ; preds = %if.end146, %if.then145
  %68 = load i8*, i8** %s, align 4
  %incdec.ptr152 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr152, i8** %s, align 4
  br label %for.cond122

for.end153:                                       ; preds = %for.cond122
  %69 = load i8*, i8** @wordchars, align 4
  call void @set_widearray(i8* %69, %struct.widechar_array* @wordchars_wide)
  %70 = load i8*, i8** @ifs, align 4
  %tobool154 = icmp ne i8* %70, null
  br i1 %tobool154, label %cond.true155, label %cond.false156

cond.true155:                                     ; preds = %for.end153
  %71 = load i8*, i8** @ifs, align 4
  br label %cond.end160

cond.false156:                                    ; preds = %for.end153
  %72 = load i32, i32* @emulation, align 4
  %and157 = and i32 %72, 12
  %tobool158 = icmp ne i32 %and157, 0
  %cond159 = select i1 %tobool158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0)
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false156, %cond.true155
  %cond161 = phi i8* [ %71, %cond.true155 ], [ %cond159, %cond.false156 ]
  call void @set_widearray(i8* %cond161, %struct.widechar_array* @ifs_wide)
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0), i8** %s, align 4
  br label %for.cond162

for.cond162:                                      ; preds = %for.inc170, %cond.end160
  %73 = load i8*, i8** %s, align 4
  %74 = load i8, i8* %73, align 1
  %tobool163 = icmp ne i8 %74, 0
  br i1 %tobool163, label %for.body164, label %for.end172

for.body164:                                      ; preds = %for.cond162
  %75 = load i8*, i8** %s, align 4
  %76 = load i8, i8* %75, align 1
  %idxprom165 = zext i8 %76 to i32
  %arrayidx166 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom165
  %77 = load i16, i16* %arrayidx166, align 2
  %conv167 = sext i16 %77 to i32
  %or168 = or i32 %conv167, 2048
  %conv169 = trunc i32 %or168 to i16
  store i16 %conv169, i16* %arrayidx166, align 2
  br label %for.inc170

for.inc170:                                       ; preds = %for.body164
  %78 = load i8*, i8** %s, align 4
  %incdec.ptr171 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr171, i8** %s, align 4
  br label %for.cond162

for.end172:                                       ; preds = %for.cond162
  %79 = load i32, i32* @typtab_flags, align 4
  %and173 = and i32 %79, 4
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then175, label %if.end179

if.then175:                                       ; preds = %for.end172
  %80 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 44), align 2
  %conv176 = sext i16 %80 to i32
  %or177 = or i32 %conv176, 2048
  %conv178 = trunc i32 %or177 to i16
  store i16 %conv178, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 44), align 2
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %for.end172
  %81 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 18), align 1
  %conv180 = sext i8 %81 to i32
  %tobool181 = icmp ne i32 %conv180, 0
  br i1 %tobool181, label %land.lhs.true182, label %if.else195

land.lhs.true182:                                 ; preds = %if.end179
  %82 = load i8, i8* @bangchar, align 1
  %conv183 = zext i8 %82 to i32
  %tobool184 = icmp ne i32 %conv183, 0
  br i1 %tobool184, label %land.lhs.true185, label %if.else195

land.lhs.true185:                                 ; preds = %land.lhs.true182
  %83 = load i32, i32* @typtab_flags, align 4
  %and186 = and i32 %83, 2
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %if.then188, label %if.else195

if.then188:                                       ; preds = %land.lhs.true185
  %84 = load i32, i32* @typtab_flags, align 4
  %or189 = or i32 %84, 8
  store i32 %or189, i32* @typtab_flags, align 4
  %85 = load i8, i8* @bangchar, align 1
  %idxprom190 = zext i8 %85 to i32
  %arrayidx191 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom190
  %86 = load i16, i16* %arrayidx191, align 2
  %conv192 = sext i16 %86 to i32
  %or193 = or i32 %conv192, 2048
  %conv194 = trunc i32 %or193 to i16
  store i16 %conv194, i16* %arrayidx191, align 2
  br label %if.end197

if.else195:                                       ; preds = %land.lhs.true185, %land.lhs.true182, %if.end179
  %87 = load i32, i32* @typtab_flags, align 4
  %and196 = and i32 %87, -9
  store i32 %and196, i32* @typtab_flags, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.else195, %if.then188
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8** %s, align 4
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc206, %if.end197
  %88 = load i8*, i8** %s, align 4
  %89 = load i8, i8* %88, align 1
  %tobool199 = icmp ne i8 %89, 0
  br i1 %tobool199, label %for.body200, label %for.end208

for.body200:                                      ; preds = %for.cond198
  %90 = load i8*, i8** %s, align 4
  %91 = load i8, i8* %90, align 1
  %idxprom201 = zext i8 %91 to i32
  %arrayidx202 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom201
  %92 = load i16, i16* %arrayidx202, align 2
  %conv203 = sext i16 %92 to i32
  %or204 = or i32 %conv203, 32768
  %conv205 = trunc i32 %or204 to i16
  store i16 %conv205, i16* %arrayidx202, align 2
  br label %for.inc206

for.inc206:                                       ; preds = %for.body200
  %93 = load i8*, i8** %s, align 4
  %incdec.ptr207 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr207, i8** %s, align 4
  br label %for.cond198

for.end208:                                       ; preds = %for.cond198
  br label %do.body

do.body:                                          ; preds = %for.end208
  %94 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %94, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool209 = icmp ne i32 %dec, 0
  br i1 %tobool209, label %if.end218, label %if.then210

if.then210:                                       ; preds = %do.body
  br label %do.body211

do.body211:                                       ; preds = %if.then210
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body211
  %95 = load i32, i32* @queue_front, align 4
  %96 = load i32, i32* @queue_rear, align 4
  %cmp212 = icmp ne i32 %95, %96
  br i1 %cmp212, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %97 = load i32, i32* @queue_front, align 4
  %add214 = add nsw i32 %97, 1
  %rem = srem i32 %add214, 128
  store i32 %rem, i32* @queue_front, align 4
  %98 = load i32, i32* @queue_front, align 4
  %arrayidx215 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %98
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx215)
  %99 = bitcast %struct.__sigset_t* %oset to i8*
  %100 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %99, i8* %100, i32 128, i32 4, i1 false)
  %101 = load i32, i32* @queue_front, align 4
  %arrayidx216 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %101
  %102 = load i32, i32* %arrayidx216, align 4
  call void @zhandler(i32 %102)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp217, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end218

if.end218:                                        ; preds = %do.end, %do.body
  br label %do.end219

do.end219:                                        ; preds = %if.end218
  ret void
}

declare i32 @isascii(i32) #2

; Function Attrs: noinline nounwind
define internal void @set_widearray(i8* %mb_array, %struct.widechar_array* %wca) #0 {
entry:
  %mb_array.addr = alloca i8*, align 4
  %wca.addr = alloca %struct.widechar_array*, align 4
  %tmpwcs = alloca i32*, align 4
  %wcptr = alloca i32*, align 4
  %wci = alloca i32, align 4
  %mblen = alloca i32, align 4
  store i8* %mb_array, i8** %mb_array.addr, align 4
  store %struct.widechar_array* %wca, %struct.widechar_array** %wca.addr, align 4
  %0 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %chars = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %0, i32 0, i32 0
  %1 = load i32*, i32** %chars, align 4
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %chars1 = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %2, i32 0, i32 0
  %3 = load i32*, i32** %chars1, align 4
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4)
  %5 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %chars2 = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %5, i32 0, i32 0
  store i32* null, i32** %chars2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %len = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %6, i32 0, i32 1
  store i32 0, i32* %len, align 4
  %7 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool3 = icmp ne i8 %7, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  br label %if.end32

if.end5:                                          ; preds = %if.end
  %8 = load i8*, i8** %mb_array.addr, align 4
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %if.then7, label %if.end32

if.then7:                                         ; preds = %if.end5
  %9 = load i8*, i8** %mb_array.addr, align 4
  %call = call i32 @strlen(i8* %9)
  %mul = mul i32 4, %call
  %call8 = call i8* @zhalloc(i32 %mul)
  %10 = bitcast i8* %call8 to i32*
  store i32* %10, i32** %tmpwcs, align 4
  %11 = load i32*, i32** %tmpwcs, align 4
  store i32* %11, i32** %wcptr, align 4
  call void @mb_charinit()
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.then11, %if.then7
  %12 = load i8*, i8** %mb_array.addr, align 4
  %13 = load i8, i8* %12, align 1
  %tobool9 = icmp ne i8 %13, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %mb_array.addr, align 4
  %15 = load i8, i8* %14, align 1
  %conv = zext i8 %15 to i32
  %cmp = icmp sle i32 %conv, 127
  br i1 %cmp, label %if.then11, label %if.end14

if.then11:                                        ; preds = %while.body
  %16 = load i8*, i8** %mb_array.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %mb_array.addr, align 4
  %17 = load i8*, i8** %mb_array.addr, align 4
  %18 = load i8, i8* %17, align 1
  %conv12 = sext i8 %18 to i32
  %19 = load i32*, i32** %wcptr, align 4
  %incdec.ptr13 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr13, i32** %wcptr, align 4
  store i32 %conv12, i32* %19, align 4
  br label %while.cond

if.end14:                                         ; preds = %while.body
  %20 = load i8*, i8** %mb_array.addr, align 4
  %call15 = call i32 @mb_metacharlenconv(i8* %20, i32* %wci)
  store i32 %call15, i32* %mblen, align 4
  %21 = load i32, i32* %mblen, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  br label %while.end

if.end18:                                         ; preds = %if.end14
  %22 = load i32, i32* %wci, align 4
  %cmp19 = icmp eq i32 %22, -1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  br label %if.end32

if.end22:                                         ; preds = %if.end18
  %23 = load i32, i32* %wci, align 4
  %24 = load i32*, i32** %wcptr, align 4
  %incdec.ptr23 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr23, i32** %wcptr, align 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %mblen, align 4
  %26 = load i8*, i8** %mb_array.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %26, i32 %25
  store i8* %add.ptr, i8** %mb_array.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then17, %while.cond
  %27 = load i32*, i32** %wcptr, align 4
  %28 = load i32*, i32** %tmpwcs, align 4
  %sub.ptr.lhs.cast = ptrtoint i32* %27 to i32
  %sub.ptr.rhs.cast = ptrtoint i32* %28 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %29 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %len24 = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %29, i32 0, i32 1
  store i32 %sub.ptr.div, i32* %len24, align 4
  %30 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %len25 = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %30, i32 0, i32 1
  %31 = load i32, i32* %len25, align 4
  %mul26 = mul i32 %31, 4
  %call27 = call i8* @zalloc(i32 %mul26)
  %32 = bitcast i8* %call27 to i32*
  %33 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %chars28 = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %33, i32 0, i32 0
  store i32* %32, i32** %chars28, align 4
  %34 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %chars29 = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %34, i32 0, i32 0
  %35 = load i32*, i32** %chars29, align 4
  %36 = load i32*, i32** %tmpwcs, align 4
  %37 = load %struct.widechar_array*, %struct.widechar_array** %wca.addr, align 4
  %len30 = getelementptr inbounds %struct.widechar_array, %struct.widechar_array* %37, i32 0, i32 1
  %38 = load i32, i32* %len30, align 4
  %call31 = call i32* @wmemcpy(i32* %35, i32* %36, i32 %38)
  br label %if.end32

if.end32:                                         ; preds = %if.then4, %if.then21, %while.end, %if.end5
  ret void
}

; Function Attrs: noinline nounwind
define void @makecommaspecial(i32 %yesno) #0 {
entry:
  %yesno.addr = alloca i32, align 4
  store i32 %yesno, i32* %yesno.addr, align 4
  %0 = load i32, i32* %yesno.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @typtab_flags, align 4
  %or = or i32 %1, 4
  store i32 %or, i32* @typtab_flags, align 4
  %2 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 44), align 2
  %conv = sext i16 %2 to i32
  %or1 = or i32 %conv, 2048
  %conv2 = trunc i32 %or1 to i16
  store i16 %conv2, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 44), align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @typtab_flags, align 4
  %and = and i32 %3, -5
  store i32 %and, i32* @typtab_flags, align 4
  %4 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 44), align 2
  %conv3 = sext i16 %4 to i32
  %and4 = and i32 %conv3, -2049
  %conv5 = trunc i32 %and4 to i16
  store i16 %conv5, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 44), align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @makebangspecial(i32 %yesno) #0 {
entry:
  %yesno.addr = alloca i32, align 4
  store i32 %yesno, i32* %yesno.addr, align 4
  %0 = load i32, i32* %yesno.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, i8* @bangchar, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, -2049
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %arrayidx, align 2
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @typtab_flags, align 4
  %and2 = and i32 %3, 8
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %4 = load i8, i8* @bangchar, align 1
  %idxprom4 = zext i8 %4 to i32
  %arrayidx5 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom4
  %5 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %5 to i32
  %or = or i32 %conv6, 2048
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %arrayidx5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i32 @wcsiblank(i32 %wc) #0 {
entry:
  %retval = alloca i32, align 4
  %wc.addr = alloca i32, align 4
  store i32 %wc, i32* %wc.addr, align 4
  %0 = load i32, i32* %wc.addr, align 4
  %call = call i32 @iswspace(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %wc.addr, align 4
  %cmp = icmp ne i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare i32 @iswspace(i32) #2

declare i32 @iswalnum(i32) #2

declare i32* @wmemchr(i32*, i32, i32) #2

; Function Attrs: noinline nounwind
define i8** @arrdup_max(i8** %s, i32 %max) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %max.addr = alloca i32, align 4
  %x = alloca i8**, align 4
  %y = alloca i8**, align 4
  %send = alloca i8**, align 4
  %len = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 0, i32* %len, align 4
  %0 = load i32, i32* %max.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %s.addr, align 4
  %call = call i32 @arrlen(i8** %1)
  store i32 %call, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %max.addr, align 4
  %3 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %2, %3
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load i32, i32* %len, align 4
  store i32 %4, i32* %max.addr, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load i32, i32* %max.addr, align 4
  %add = add i32 %5, 1
  %mul = mul i32 4, %add
  %call3 = call i8* @zhalloc(i32 %mul)
  %6 = bitcast i8* %call3 to i8**
  store i8** %6, i8*** %x, align 4
  store i8** %6, i8*** %y, align 4
  %7 = load i8**, i8*** %s.addr, align 4
  %8 = load i32, i32* %max.addr, align 4
  %add.ptr = getelementptr inbounds i8*, i8** %7, i32 %8
  store i8** %add.ptr, i8*** %send, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end2
  %9 = load i8**, i8*** %s.addr, align 4
  %10 = load i8**, i8*** %send, align 4
  %cmp4 = icmp ult i8** %9, %10
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8**, i8*** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %s.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %call5 = call i8* @dupstring(i8* %12)
  %13 = load i8**, i8*** %x, align 4
  %incdec.ptr6 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr6, i8*** %x, align 4
  store i8* %call5, i8** %13, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i8**, i8*** %x, align 4
  store i8* null, i8** %14, align 4
  %15 = load i8**, i8*** %y, align 4
  ret i8** %15
}

; Function Attrs: noinline nounwind
define i8** @zarrdup(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %x = alloca i8**, align 4
  %y = alloca i8**, align 4
  store i8** %s, i8*** %s.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %call = call i32 @arrlen(i8** %0)
  %add = add nsw i32 %call, 1
  %mul = mul i32 4, %add
  %call1 = call i8* @zalloc(i32 %mul)
  %1 = bitcast i8* %call1 to i8**
  store i8** %1, i8*** %x, align 4
  store i8** %1, i8*** %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8**, i8*** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %2, i32 1
  store i8** %incdec.ptr, i8*** %s.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %call2 = call i8* @ztrdup(i8* %3)
  %4 = load i8**, i8*** %x, align 4
  %incdec.ptr3 = getelementptr inbounds i8*, i8** %4, i32 1
  store i8** %incdec.ptr3, i8*** %x, align 4
  store i8* %call2, i8** %4, align 4
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8**, i8*** %y, align 4
  ret i8** %5
}

; Function Attrs: noinline nounwind
define i32** @wcs_zarrdup(i32** %s) #0 {
entry:
  %s.addr = alloca i32**, align 4
  %x = alloca i32**, align 4
  %y = alloca i32**, align 4
  store i32** %s, i32*** %s.addr, align 4
  %0 = load i32**, i32*** %s.addr, align 4
  %1 = bitcast i32** %0 to i8**
  %call = call i32 @arrlen(i8** %1)
  %add = add nsw i32 %call, 1
  %mul = mul i32 4, %add
  %call1 = call i8* @zalloc(i32 %mul)
  %2 = bitcast i8* %call1 to i32**
  store i32** %2, i32*** %x, align 4
  store i32** %2, i32*** %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32**, i32*** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i32*, i32** %3, i32 1
  store i32** %incdec.ptr, i32*** %s.addr, align 4
  %4 = load i32*, i32** %3, align 4
  %call2 = call i32* @wcs_ztrdup(i32* %4)
  %5 = load i32**, i32*** %x, align 4
  %incdec.ptr3 = getelementptr inbounds i32*, i32** %5, i32 1
  store i32** %incdec.ptr3, i32*** %x, align 4
  store i32* %call2, i32** %5, align 4
  %tobool = icmp ne i32* %call2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32**, i32*** %y, align 4
  ret i32** %6
}

declare i32* @wcs_ztrdup(i32*) #2

; Function Attrs: noinline nounwind
define void @setcbreak() #0 {
entry:
  %ti = alloca %struct.ttyinfo, align 4
  %0 = bitcast %struct.ttyinfo* %ti to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.ttyinfo* @shttyinfo to i8*), i32 68, i32 4, i1 false)
  %tio = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %tio, i32 0, i32 3
  %1 = load i32, i32* %c_lflag, align 4
  %and = and i32 %1, -3
  store i32 %and, i32* %c_lflag, align 4
  %tio1 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %tio1, i32 0, i32 5
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i32 0, i32 6
  store i8 1, i8* %arrayidx, align 1
  %tio2 = getelementptr inbounds %struct.ttyinfo, %struct.ttyinfo* %ti, i32 0, i32 0
  %c_cc3 = getelementptr inbounds %struct.termios, %struct.termios* %tio2, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc3, i32 0, i32 5
  store i8 0, i8* %arrayidx4, align 1
  call void @settyinfo(%struct.ttyinfo* %ti)
  ret void
}

declare i32 @tcsetpgrp(i32, i32) #2

declare i32 @kill(i32, i32) #2

; Function Attrs: noinline nounwind
define i32 @gettygrp() #0 {
entry:
  %retval = alloca i32, align 4
  %arg = alloca i32, align 4
  %0 = load i32, i32* @SHTTY, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @SHTTY, align 4
  %call = call i32 @tcgetpgrp(i32 %1)
  store i32 %call, i32* %arg, align 4
  %2 = load i32, i32* %arg, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare i32 @tcgetpgrp(i32) #2

declare i8* @hrealloc(i8*, i32, i32) #2

; Function Attrs: noinline nounwind
define i8* @ztrdup_metafy(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i8* @metafy(i8* %1, i32 -1, i32 3)
  store i8* %call, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval, align 4
  ret i8* %2
}

; Function Attrs: noinline nounwind
define i32 @unmeta_one(i8* %in, i32* %sz) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i8*, align 4
  %sz.addr = alloca i32*, align 4
  %wc = alloca i32, align 4
  %newsz = alloca i32, align 4
  %wstate = alloca %struct.__mbstate_t, align 4
  store i8* %in, i8** %in.addr, align 4
  store i32* %sz, i32** %sz.addr, align 4
  %0 = load i32*, i32** %sz.addr, align 4
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* %newsz, i32** %sz.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32*, i32** %sz.addr, align 4
  store i32 0, i32* %1, align 4
  %2 = load i8*, i8** %in.addr, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %in.addr, align 4
  %4 = load i8, i8* %3, align 1
  %tobool2 = icmp ne i8 %4, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %5 = bitcast %struct.__mbstate_t* %wstate to i8*
  call void @llvm.memset.p0i8.i32(i8* %5, i8 0, i32 8, i32 4, i1 false)
  %6 = load i8*, i8** %in.addr, align 4
  %call = call i32 @mb_metacharlenconv_r(i8* %6, i32* %wc, %struct.__mbstate_t* %wstate)
  %7 = load i32*, i32** %sz.addr, align 4
  store i32 %call, i32* %7, align 4
  %8 = load i32, i32* %wc, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define i32 @mb_metacharlenconv_r(i8* %s, i32* %wcp, %struct.__mbstate_t* %mbsp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %wcp.addr = alloca i32*, align 4
  %mbsp.addr = alloca %struct.__mbstate_t*, align 4
  %ret = alloca i32, align 4
  %inchar = alloca i8, align 1
  %ptr = alloca i8*, align 4
  %wc = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %wcp, i32** %wcp.addr, align 4
  store %struct.__mbstate_t* %mbsp, %struct.__mbstate_t** %mbsp.addr, align 4
  store i32 -1, i32* %ret, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp sle i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %wcp.addr, align 4
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %s.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load i32*, i32** %wcp.addr, align 4
  store i32 %conv3, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %6 = load i8*, i8** %s.addr, align 4
  store i8* %6, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.then25, %if.end4
  %7 = load i8*, i8** %ptr, align 4
  %8 = load i8, i8* %7, align 1
  %tobool5 = icmp ne i8 %8, 0
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, -125
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %11 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  %12 = load i8, i8* %incdec.ptr, align 1
  %conv10 = sext i8 %12 to i32
  %xor = xor i32 %conv10, 32
  %conv11 = trunc i32 %xor to i8
  store i8 %conv11, i8* %inchar, align 1
  br label %if.end17

if.else:                                          ; preds = %for.body
  %13 = load i8*, i8** %ptr, align 4
  %14 = load i8, i8* %13, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %15 = load i16, i16* %arrayidx, align 2
  %conv12 = sext i16 %15 to i32
  %and = and i32 %conv12, 4096
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  br label %for.end

if.else15:                                        ; preds = %if.else
  %16 = load i8*, i8** %ptr, align 4
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %inchar, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else15
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then9
  %18 = load i8*, i8** %ptr, align 4
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %ptr, align 4
  %19 = load %struct.__mbstate_t*, %struct.__mbstate_t** %mbsp.addr, align 4
  %call = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* %19)
  store i32 %call, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp19 = icmp eq i32 %20, -1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  br label %for.end

if.end22:                                         ; preds = %if.end17
  %21 = load i32, i32* %ret, align 4
  %cmp23 = icmp eq i32 %21, -2
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  br label %for.cond

if.end26:                                         ; preds = %if.end22
  %22 = load i32*, i32** %wcp.addr, align 4
  %tobool27 = icmp ne i32* %22, null
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %23 = load i32, i32* %wc, align 4
  %24 = load i32*, i32** %wcp.addr, align 4
  store i32 %23, i32* %24, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  %25 = load i8*, i8** %ptr, align 4
  %26 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %retval, align 4
  br label %return

for.end:                                          ; preds = %if.then21, %if.then14, %for.cond
  %27 = load i32*, i32** %wcp.addr, align 4
  %tobool30 = icmp ne i32* %27, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end
  %28 = load i32*, i32** %wcp.addr, align 4
  store i32 -1, i32* %28, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.end
  %29 = load %struct.__mbstate_t*, %struct.__mbstate_t** %mbsp.addr, align 4
  %30 = bitcast %struct.__mbstate_t* %29 to i8*
  call void @llvm.memset.p0i8.i32(i8* %30, i8 0, i32 8, i32 4, i1 false)
  %31 = load i8*, i8** %ptr, align 4
  %32 = load i8*, i8** %s.addr, align 4
  %cmp33 = icmp ugt i8* %31, %32
  br i1 %cmp33, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.end32
  %33 = load i8*, i8** %s.addr, align 4
  %34 = load i8, i8* %33, align 1
  %conv36 = sext i8 %34 to i32
  %cmp37 = icmp eq i32 %conv36, -125
  %conv38 = zext i1 %cmp37 to i32
  %add = add nsw i32 1, %conv38
  store i32 %add, i32* %retval, align 4
  br label %return

if.else39:                                        ; preds = %if.end32
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else39, %if.then35, %if.end29, %if.end
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind
define i32 @ztrcmp(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s1.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s1.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %4 = load i8*, i8** %s2.addr, align 4
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s1.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 4
  %8 = load i8*, i8** %s2.addr, align 4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %s2.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %s1.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  store i32 %conv5, i32* %c1, align 4
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %c1, align 4
  br label %if.end12

if.else:                                          ; preds = %while.end
  %11 = load i32, i32* %c1, align 4
  %cmp7 = icmp eq i32 %11, 131
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %12 = load i8*, i8** %s1.addr, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %s1.addr, align 4
  %13 = load i8, i8* %incdec.ptr10, align 1
  %conv11 = sext i8 %13 to i32
  %xor = xor i32 %conv11, 32
  store i32 %xor, i32* %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %14 = load i8*, i8** %s2.addr, align 4
  %15 = load i8, i8* %14, align 1
  %conv13 = sext i8 %15 to i32
  store i32 %conv13, i32* %c2, align 4
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.end12
  store i32 -1, i32* %c2, align 4
  br label %if.end24

if.else16:                                        ; preds = %if.end12
  %16 = load i32, i32* %c2, align 4
  %cmp17 = icmp eq i32 %16, 131
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.else16
  %17 = load i8*, i8** %s2.addr, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr20, i8** %s2.addr, align 4
  %18 = load i8, i8* %incdec.ptr20, align 1
  %conv21 = sext i8 %18 to i32
  %xor22 = xor i32 %conv21, 32
  store i32 %xor22, i32* %c2, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.else16
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then15
  %19 = load i32, i32* %c1, align 4
  %20 = load i32, i32* %c2, align 4
  %cmp25 = icmp eq i32 %19, %20
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end24
  store i32 0, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.end24
  %21 = load i32, i32* %c1, align 4
  %22 = load i32, i32* %c2, align 4
  %cmp29 = icmp slt i32 %21, %22
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else28
  store i32 -1, i32* %retval, align 4
  br label %return

if.else32:                                        ; preds = %if.else28
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else32, %if.then31, %if.then27
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind
define i32 @ztrsub(i8* %t, i8* %s) #0 {
entry:
  %t.addr = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %l = alloca i32, align 4
  store i8* %t, i8** %t.addr, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %t.addr, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8*, i8** %t.addr, align 4
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, -125
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %s.addr, align 4
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %s.addr, align 4
  %7 = load i32, i32* %l, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %l, align 4
  ret i32 %8
}

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: noinline nounwind
define i8* @nicedupstring(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i8* @nicedup(i8* %0, i32 1)
  ret i8* %call
}

; Function Attrs: noinline nounwind
define i8* @nicedup(i8* %s, i32 %heap) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %heap.addr = alloca i32, align 4
  %retstr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i32, i32* %heap.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %call = call i32 @mb_niceformat(i8* %0, %struct._IO_FILE* null, i8** %retstr, i32 %cond)
  %2 = load i8*, i8** %retstr, align 4
  ret i8* %2
}

declare void @untokenize(i8*) #2

declare i32 @mbrtowc(i32*, i8*, i32, %struct.__mbstate_t*) #2

; Function Attrs: noinline nounwind
define i32 @is_mb_niceformat(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %umlen = alloca i32, align 4
  %eol = alloca i32, align 4
  %ret = alloca i32, align 4
  %c = alloca i32, align 4
  %ums = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %mbs = alloca %struct.__mbstate_t, align 4
  %cnt = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 0, i32* %eol, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i8* @ztrdup(i8* %0)
  store i8* %call, i8** %ums, align 4
  %1 = load i8*, i8** %ums, align 4
  call void @untokenize(i8* %1)
  %2 = load i8*, i8** %ums, align 4
  %call1 = call i8* @unmetafy(i8* %2, i32* %umlen)
  store i8* %call1, i8** %ptr, align 4
  %3 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 8, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %4 = load i32, i32* %umlen, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %eol, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %6 = load i8*, i8** %ptr, align 4
  %7 = load i32, i32* %umlen, align 4
  %call2 = call i32 @mbrtowc(i32* %c, i8* %6, i32 %7, %struct.__mbstate_t* %mbs)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, i32* %cnt, align 4
  %8 = load i32, i32* %cnt, align 4
  switch i32 %8, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb3
    i32 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 1, i32* %eol, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %cond.end, %sw.bb
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %call4 = call i32 @is_nicechar(i32 %conv)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  store i32 1, i32* %ret, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb3
  store i32 1, i32* %cnt, align 4
  %11 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %11, i8 0, i32 8, i32 4, i1 false)
  br label %sw.epilog

sw.bb6:                                           ; preds = %cond.end
  store i32 1, i32* %cnt, align 4
  br label %sw.default

sw.default:                                       ; preds = %cond.end, %sw.bb6
  %12 = load i32, i32* %c, align 4
  %call7 = call i32 @is_wcs_nicechar(i32 %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.default
  store i32 1, i32* %ret, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end10, %if.end, %if.then
  %13 = load i32, i32* %ret, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.epilog
  br label %while.end

if.end13:                                         ; preds = %sw.epilog
  %14 = load i32, i32* %cnt, align 4
  %15 = load i32, i32* %umlen, align 4
  %sub = sub i32 %15, %14
  store i32 %sub, i32* %umlen, align 4
  %16 = load i32, i32* %cnt, align 4
  %17 = load i8*, i8** %ptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %17, i32 %16
  store i8* %add.ptr, i8** %ptr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then12, %while.cond
  %18 = load i8*, i8** %ums, align 4
  call void @free(i8* %18)
  %19 = load i32, i32* %ret, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind
define i32 @mb_metastrlenend(i8* %ptr, i32 %width, i8* %eptr) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 4
  %width.addr = alloca i32, align 4
  %eptr.addr = alloca i8*, align 4
  %inchar = alloca i8, align 1
  %laststart = alloca i8*, align 4
  %ret = alloca i32, align 4
  %wc = alloca i32, align 4
  %num = alloca i32, align 4
  %num_in_char = alloca i32, align 4
  %complete = alloca i32, align 4
  %wcw = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i8* %eptr, i8** %eptr.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @__ctype_get_mb_cur_max()
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load i8*, i8** %eptr.addr, align 4
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i8*, i8** %eptr.addr, align 4
  %3 = load i8*, i8** %ptr.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load i8*, i8** %ptr.addr, align 4
  %call2 = call i32 @ztrlen(i8* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub.ptr.sub, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %ptr.addr, align 4
  store i8* %5, i8** %laststart, align 4
  store i32 -1, i32* %ret, align 4
  store i32 0, i32* %num_in_char, align 4
  store i32 0, i32* %num, align 4
  store i32 1, i32* %complete, align 4
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @mb_shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %if.then21, %if.end
  %6 = load i8*, i8** %ptr.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %land.rhs, label %land.end8

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %eptr.addr, align 4
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %land.rhs5, label %land.end

land.rhs5:                                        ; preds = %land.rhs
  %9 = load i8*, i8** %ptr.addr, align 4
  %10 = load i8*, i8** %eptr.addr, align 4
  %cmp6 = icmp uge i8* %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs5, %land.rhs
  %11 = phi i1 [ false, %land.rhs ], [ %cmp6, %land.rhs5 ]
  %lnot = xor i1 %11, true
  br label %land.end8

land.end8:                                        ; preds = %land.end, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end8
  %13 = load i8*, i8** %ptr.addr, align 4
  %14 = load i8, i8* %13, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, -125
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body
  %15 = load i8*, i8** %ptr.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 4
  %16 = load i8, i8* %incdec.ptr, align 1
  %conv13 = sext i8 %16 to i32
  %xor = xor i32 %conv13, 32
  %conv14 = trunc i32 %xor to i8
  store i8 %conv14, i8* %inchar, align 1
  br label %if.end15

if.else:                                          ; preds = %while.body
  %17 = load i8*, i8** %ptr.addr, align 4
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %inchar, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %19 = load i8*, i8** %ptr.addr, align 4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %ptr.addr, align 4
  %20 = load i32, i32* %complete, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %21 = load i8, i8* %inchar, align 1
  %conv18 = zext i8 %21 to i32
  %cmp19 = icmp sle i32 %conv18, 127
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  %22 = load i32, i32* %num, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %num, align 4
  %23 = load i8*, i8** %ptr.addr, align 4
  store i8* %23, i8** %laststart, align 4
  store i32 0, i32* %num_in_char, align 4
  br label %while.cond

if.end22:                                         ; preds = %land.lhs.true, %if.end15
  %call23 = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* @mb_shiftstate)
  store i32 %call23, i32* %ret, align 4
  %24 = load i32, i32* %ret, align 4
  %cmp24 = icmp eq i32 %24, -2
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.end22
  %25 = load i32, i32* %num_in_char, align 4
  %inc27 = add nsw i32 %25, 1
  store i32 %inc27, i32* %num_in_char, align 4
  store i32 0, i32* %complete, align 4
  br label %if.end55

if.else28:                                        ; preds = %if.end22
  %26 = load i32, i32* %ret, align 4
  %cmp29 = icmp eq i32 %26, -1
  br i1 %cmp29, label %if.then31, label %if.else37

if.then31:                                        ; preds = %if.else28
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @mb_shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  %27 = load i8*, i8** %laststart, align 4
  %28 = load i8*, i8** %laststart, align 4
  %29 = load i8, i8* %28, align 1
  %conv32 = sext i8 %29 to i32
  %cmp33 = icmp eq i32 %conv32, -125
  %conv34 = zext i1 %cmp33 to i32
  %add.ptr = getelementptr inbounds i8, i8* %27, i32 %conv34
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  store i8* %add.ptr35, i8** %ptr.addr, align 4
  %30 = load i32, i32* %num, align 4
  %inc36 = add nsw i32 %30, 1
  store i32 %inc36, i32* %num, align 4
  br label %if.end54

if.else37:                                        ; preds = %if.else28
  %31 = load i32, i32* %width.addr, align 4
  %tobool38 = icmp ne i32 %31, 0
  br i1 %tobool38, label %if.then39, label %if.else51

if.then39:                                        ; preds = %if.else37
  %32 = load i32, i32* %wc, align 4
  %call40 = call i32 @wcwidth(i32 %32)
  store i32 %call40, i32* %wcw, align 4
  %33 = load i32, i32* %wcw, align 4
  %cmp41 = icmp sgt i32 %33, 0
  br i1 %cmp41, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.then39
  %34 = load i32, i32* %width.addr, align 4
  %cmp44 = icmp eq i32 %34, 1
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.then43
  %35 = load i32, i32* %wcw, align 4
  %36 = load i32, i32* %num, align 4
  %add = add nsw i32 %36, %35
  store i32 %add, i32* %num, align 4
  br label %if.end49

if.else47:                                        ; preds = %if.then43
  %37 = load i32, i32* %num, align 4
  %inc48 = add nsw i32 %37, 1
  store i32 %inc48, i32* %num, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then46
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then39
  br label %if.end53

if.else51:                                        ; preds = %if.else37
  %38 = load i32, i32* %num, align 4
  %inc52 = add nsw i32 %38, 1
  store i32 %inc52, i32* %num, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.end50
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then31
  %39 = load i8*, i8** %ptr.addr, align 4
  store i8* %39, i8** %laststart, align 4
  store i32 0, i32* %num_in_char, align 4
  store i32 1, i32* %complete, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then26
  br label %while.cond

while.end:                                        ; preds = %land.end8
  %40 = load i32, i32* %num, align 4
  %41 = load i32, i32* %num_in_char, align 4
  %tobool56 = icmp ne i32 %41, 0
  %cond57 = select i1 %tobool56, i32 1, i32 0
  %add58 = add nsw i32 %40, %cond57
  store i32 %add58, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %cond.end
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind
define i32 @mb_charlenconv_r(i8* %s, i32 %slen, i32* %wcp, %struct.__mbstate_t* %mbsp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %slen.addr = alloca i32, align 4
  %wcp.addr = alloca i32*, align 4
  %mbsp.addr = alloca %struct.__mbstate_t*, align 4
  %ret = alloca i32, align 4
  %inchar = alloca i8, align 1
  %ptr = alloca i8*, align 4
  %wc = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %slen, i32* %slen.addr, align 4
  store i32* %wcp, i32** %wcp.addr, align 4
  store %struct.__mbstate_t* %mbsp, %struct.__mbstate_t** %mbsp.addr, align 4
  store i32 -1, i32* %ret, align 4
  %0 = load i32, i32* %slen.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp sle i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32*, i32** %wcp.addr, align 4
  %tobool2 = icmp ne i32* %3, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i32*, i32** %wcp.addr, align 4
  store i32 %conv4, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %s.addr, align 4
  store i8* %7, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.then13, %if.end5
  %8 = load i32, i32* %slen.addr, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %inchar, align 1
  %11 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  %12 = load i32, i32* %slen.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %slen.addr, align 4
  %13 = load %struct.__mbstate_t*, %struct.__mbstate_t** %mbsp.addr, align 4
  %call = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* %13)
  store i32 %call, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %14, -1
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  br label %for.end

if.end10:                                         ; preds = %for.body
  %15 = load i32, i32* %ret, align 4
  %cmp11 = icmp eq i32 %15, -2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  br label %for.cond

if.end14:                                         ; preds = %if.end10
  %16 = load i32*, i32** %wcp.addr, align 4
  %tobool15 = icmp ne i32* %16, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %17 = load i32, i32* %wc, align 4
  %18 = load i32*, i32** %wcp.addr, align 4
  store i32 %17, i32* %18, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %19 = load i8*, i8** %ptr, align 4
  %20 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %retval, align 4
  br label %return

for.end:                                          ; preds = %if.then9, %for.cond
  %21 = load i32*, i32** %wcp.addr, align 4
  %tobool18 = icmp ne i32* %21, null
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end
  %22 = load i32*, i32** %wcp.addr, align 4
  store i32 -1, i32* %22, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.end
  %23 = load %struct.__mbstate_t*, %struct.__mbstate_t** %mbsp.addr, align 4
  %24 = bitcast %struct.__mbstate_t* %23 to i8*
  call void @llvm.memset.p0i8.i32(i8* %24, i8 0, i32 8, i32 4, i1 false)
  %25 = load i8*, i8** %ptr, align 4
  %26 = load i8*, i8** %s.addr, align 4
  %cmp21 = icmp ugt i8* %25, %26
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then23, %if.end17, %if.end
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind
define i32 @mb_charlenconv(i8* %s, i32 %slen, i32* %wcp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %slen.addr = alloca i32, align 4
  %wcp.addr = alloca i32*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %slen, i32* %slen.addr, align 4
  store i32* %wcp, i32** %wcp.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp sle i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32*, i32** %wcp.addr, align 4
  %tobool2 = icmp ne i32* %3, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i32*, i32** %wcp.addr, align 4
  store i32 %conv4, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load i8*, i8** %s.addr, align 4
  %8 = load i32, i32* %slen.addr, align 4
  %9 = load i32*, i32** %wcp.addr, align 4
  %call = call i32 @mb_charlenconv_r(i8* %7, i32 %8, i32* %9, %struct.__mbstate_t* @mb_shiftstate)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind
define i32 @zexpandtabs(i8* %s, i32 %len, i32 %width, i32 %startpos, %struct._IO_FILE* %fout, i32 %all) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %startpos.addr = alloca i32, align 4
  %fout.addr = alloca %struct._IO_FILE*, align 4
  %all.addr = alloca i32, align 4
  %at_start = alloca i32, align 4
  %mbs = alloca %struct.__mbstate_t, align 4
  %ret = alloca i32, align 4
  %wc = alloca i32, align 4
  %sstart = alloca i8*, align 4
  %wcw = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %startpos, i32* %startpos.addr, align 4
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 4
  store i32 %all, i32* %all.addr, align 4
  store i32 1, i32* %at_start, align 4
  %0 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 8, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end74, %if.end72, %if.then33, %if.end24, %if.then12, %entry
  %1 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end80

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 9
  br i1 %cmp, label %if.then, label %if.else25

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %all.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* %at_start, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %7 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %len.addr, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp5 = icmp sle i32 %8, 0
  br i1 %cmp5, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.then4
  %9 = load i32, i32* %startpos.addr, align 4
  %10 = load i32, i32* %width.addr, align 4
  %rem = srem i32 %9, %10
  %tobool8 = icmp ne i32 %rem, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false7, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %call = call i32 @fputc(i32 32, %struct._IO_FILE* %11)
  %12 = load i32, i32* %startpos.addr, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %startpos.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %lor.lhs.false7
  %13 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp sle i32 %13, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %while.cond

if.end13:                                         ; preds = %if.end
  br label %while.cond14

while.cond14:                                     ; preds = %while.body17, %if.end13
  %14 = load i32, i32* %startpos.addr, align 4
  %15 = load i32, i32* %width.addr, align 4
  %rem15 = srem i32 %14, %15
  %tobool16 = icmp ne i32 %rem15, 0
  br i1 %tobool16, label %while.body17, label %while.end

while.body17:                                     ; preds = %while.cond14
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %call18 = call i32 @fputc(i32 32, %struct._IO_FILE* %16)
  %17 = load i32, i32* %startpos.addr, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %startpos.addr, align 4
  br label %while.cond14

while.end:                                        ; preds = %while.cond14
  br label %if.end24

if.else:                                          ; preds = %lor.lhs.false
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %startpos.addr, align 4
  %20 = load i32, i32* %width.addr, align 4
  %rem20 = srem i32 %19, %20
  %sub = sub nsw i32 %18, %rem20
  %21 = load i32, i32* %startpos.addr, align 4
  %add = add nsw i32 %21, %sub
  store i32 %add, i32* %startpos.addr, align 4
  %22 = load i8*, i8** %s.addr, align 4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr21, i8** %s.addr, align 4
  %23 = load i32, i32* %len.addr, align 4
  %dec22 = add nsw i32 %23, -1
  store i32 %dec22, i32* %len.addr, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %call23 = call i32 @fputc(i32 9, %struct._IO_FILE* %24)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %while.end
  br label %while.cond

if.else25:                                        ; preds = %while.body
  %25 = load i8*, i8** %s.addr, align 4
  %26 = load i8, i8* %25, align 1
  %conv26 = sext i8 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 10
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.else25
  %27 = load i8*, i8** %s.addr, align 4
  %28 = load i8, i8* %27, align 1
  %conv30 = sext i8 %28 to i32
  %cmp31 = icmp eq i32 %conv30, 13
  br i1 %cmp31, label %if.then33, label %if.end38

if.then33:                                        ; preds = %lor.lhs.false29, %if.else25
  %29 = load i8*, i8** %s.addr, align 4
  %30 = load i8, i8* %29, align 1
  %conv34 = sext i8 %30 to i32
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %call35 = call i32 @fputc(i32 %conv34, %struct._IO_FILE* %31)
  %32 = load i8*, i8** %s.addr, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr36, i8** %s.addr, align 4
  %33 = load i32, i32* %len.addr, align 4
  %dec37 = add nsw i32 %33, -1
  store i32 %dec37, i32* %len.addr, align 4
  store i32 0, i32* %startpos.addr, align 4
  store i32 1, i32* %at_start, align 4
  br label %while.cond

if.end38:                                         ; preds = %lor.lhs.false29
  br label %if.end39

if.end39:                                         ; preds = %if.end38
  store i32 0, i32* %at_start, align 4
  %34 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool40 = icmp ne i8 %34, 0
  br i1 %tobool40, label %if.then41, label %if.end74

if.then41:                                        ; preds = %if.end39
  %35 = load i8*, i8** %s.addr, align 4
  store i8* %35, i8** %sstart, align 4
  %36 = load i8*, i8** %s.addr, align 4
  %37 = load i32, i32* %len.addr, align 4
  %call42 = call i32 @mbrtowc(i32* %wc, i8* %36, i32 %37, %struct.__mbstate_t* %mbs)
  store i32 %call42, i32* %ret, align 4
  %38 = load i32, i32* %ret, align 4
  %cmp43 = icmp eq i32 %38, -1
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.then41
  %39 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i32(i8* %39, i8 0, i32 8, i32 4, i1 false)
  %40 = load i8*, i8** %s.addr, align 4
  %incdec.ptr46 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr46, i8** %s.addr, align 4
  %41 = load i32, i32* %len.addr, align 4
  %dec47 = add nsw i32 %41, -1
  store i32 %dec47, i32* %len.addr, align 4
  br label %if.end57

if.else48:                                        ; preds = %if.then41
  %42 = load i32, i32* %ret, align 4
  %cmp49 = icmp eq i32 %42, -2
  br i1 %cmp49, label %if.then51, label %if.else54

if.then51:                                        ; preds = %if.else48
  %43 = load i8*, i8** %s.addr, align 4
  %incdec.ptr52 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr52, i8** %s.addr, align 4
  %44 = load i32, i32* %len.addr, align 4
  %dec53 = add nsw i32 %44, -1
  store i32 %dec53, i32* %len.addr, align 4
  br label %if.end56

if.else54:                                        ; preds = %if.else48
  %45 = load i32, i32* %ret, align 4
  %46 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %46, i32 %45
  store i8* %add.ptr, i8** %s.addr, align 4
  %47 = load i32, i32* %ret, align 4
  %48 = load i32, i32* %len.addr, align 4
  %sub55 = sub nsw i32 %48, %47
  store i32 %sub55, i32* %len.addr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then51
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then45
  %49 = load i32, i32* %ret, align 4
  %cmp58 = icmp eq i32 %49, -1
  br i1 %cmp58, label %if.then63, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end57
  %50 = load i32, i32* %ret, align 4
  %cmp61 = icmp eq i32 %50, -2
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %lor.lhs.false60, %if.end57
  %51 = load i32, i32* %startpos.addr, align 4
  %inc64 = add nsw i32 %51, 1
  store i32 %inc64, i32* %startpos.addr, align 4
  br label %if.end72

if.else65:                                        ; preds = %lor.lhs.false60
  %52 = load i32, i32* %wc, align 4
  %call66 = call i32 @wcwidth(i32 %52)
  store i32 %call66, i32* %wcw, align 4
  %53 = load i32, i32* %wcw, align 4
  %cmp67 = icmp sgt i32 %53, 0
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.else65
  %54 = load i32, i32* %wcw, align 4
  %55 = load i32, i32* %startpos.addr, align 4
  %add70 = add nsw i32 %55, %54
  store i32 %add70, i32* %startpos.addr, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.else65
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then63
  %56 = load i8*, i8** %sstart, align 4
  %57 = load i8*, i8** %s.addr, align 4
  %58 = load i8*, i8** %sstart, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %57 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %58 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %call73 = call i32 @fwrite(i8* %56, i32 %sub.ptr.sub, i32 1, %struct._IO_FILE* %59)
  br label %while.cond

if.end74:                                         ; preds = %if.end39
  %60 = load i8*, i8** %s.addr, align 4
  %61 = load i8, i8* %60, align 1
  %conv75 = sext i8 %61 to i32
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %call76 = call i32 @fputc(i32 %conv75, %struct._IO_FILE* %62)
  %63 = load i8*, i8** %s.addr, align 4
  %incdec.ptr77 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr77, i8** %s.addr, align 4
  %64 = load i32, i32* %len.addr, align 4
  %dec78 = add nsw i32 %64, -1
  store i32 %dec78, i32* %len.addr, align 4
  %65 = load i32, i32* %startpos.addr, align 4
  %inc79 = add nsw i32 %65, 1
  store i32 %inc79, i32* %startpos.addr, align 4
  br label %while.cond

while.end80:                                      ; preds = %while.cond
  %66 = load i32, i32* %startpos.addr, align 4
  ret i32 %66
}

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind
define i32 @hasspecial(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv2 = sext i8 %5 to i32
  %xor = xor i32 %conv2, 32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i32 %cond to i8
  %idxprom = zext i8 %conv4 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv5 = sext i16 %8 to i32
  %and = and i32 %conv5, 2048
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8*, i8** %s.addr, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %s.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind
define internal i8* @addunprintable(i8* %v, i8* %u, i8* %uend) #0 {
entry:
  %v.addr = alloca i8*, align 4
  %u.addr = alloca i8*, align 4
  %uend.addr = alloca i8*, align 4
  %c = alloca i32, align 4
  store i8* %v, i8** %v.addr, align 4
  store i8* %u, i8** %u.addr, align 4
  store i8* %uend, i8** %uend.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %u.addr, align 4
  %1 = load i8*, i8** %uend.addr, align 4
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %u.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, -125
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %u.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %u.addr, align 4
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv3 = sext i8 %5 to i32
  %xor = xor i32 %conv3, 32
  %conv4 = trunc i32 %xor to i8
  %conv5 = zext i8 %conv4 to i32
  store i32 %conv5, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i8*, i8** %u.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv6 = zext i8 %7 to i32
  store i32 %conv6, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %c, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb20
    i32 8, label %sw.bb23
    i32 12, label %sw.bb26
    i32 10, label %sw.bb29
    i32 13, label %sw.bb32
    i32 9, label %sw.bb35
    i32 11, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load i8*, i8** %v.addr, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %v.addr, align 4
  store i8 92, i8* %9, align 1
  %10 = load i8*, i8** %v.addr, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %v.addr, align 4
  store i8 48, i8* %10, align 1
  %11 = load i8*, i8** %u.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %11, i32 1
  %12 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp sle i32 48, %conv9
  br i1 %cmp10, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %sw.bb
  %13 = load i8*, i8** %u.addr, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i32 1
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp sle i32 %conv13, 55
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  %15 = load i8*, i8** %v.addr, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr17, i8** %v.addr, align 4
  store i8 48, i8* %15, align 1
  %16 = load i8*, i8** %v.addr, align 4
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %v.addr, align 4
  store i8 48, i8* %16, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %17 = load i8*, i8** %v.addr, align 4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr21, i8** %v.addr, align 4
  store i8 92, i8* %17, align 1
  %18 = load i8*, i8** %v.addr, align 4
  %incdec.ptr22 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr22, i8** %v.addr, align 4
  store i8 97, i8* %18, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %19 = load i8*, i8** %v.addr, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr24, i8** %v.addr, align 4
  store i8 92, i8* %19, align 1
  %20 = load i8*, i8** %v.addr, align 4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr25, i8** %v.addr, align 4
  store i8 98, i8* %20, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %21 = load i8*, i8** %v.addr, align 4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr27, i8** %v.addr, align 4
  store i8 92, i8* %21, align 1
  %22 = load i8*, i8** %v.addr, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr28, i8** %v.addr, align 4
  store i8 102, i8* %22, align 1
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %23 = load i8*, i8** %v.addr, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr30, i8** %v.addr, align 4
  store i8 92, i8* %23, align 1
  %24 = load i8*, i8** %v.addr, align 4
  %incdec.ptr31 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr31, i8** %v.addr, align 4
  store i8 110, i8* %24, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %25 = load i8*, i8** %v.addr, align 4
  %incdec.ptr33 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr33, i8** %v.addr, align 4
  store i8 92, i8* %25, align 1
  %26 = load i8*, i8** %v.addr, align 4
  %incdec.ptr34 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr34, i8** %v.addr, align 4
  store i8 114, i8* %26, align 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %27 = load i8*, i8** %v.addr, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr36, i8** %v.addr, align 4
  store i8 92, i8* %27, align 1
  %28 = load i8*, i8** %v.addr, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr37, i8** %v.addr, align 4
  store i8 116, i8* %28, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end
  %29 = load i8*, i8** %v.addr, align 4
  %incdec.ptr39 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr39, i8** %v.addr, align 4
  store i8 92, i8* %29, align 1
  %30 = load i8*, i8** %v.addr, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr40, i8** %v.addr, align 4
  store i8 118, i8* %30, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %31 = load i8*, i8** %v.addr, align 4
  %incdec.ptr41 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr41, i8** %v.addr, align 4
  store i8 92, i8* %31, align 1
  %32 = load i32, i32* %c, align 4
  %shr = ashr i32 %32, 6
  %and = and i32 %shr, 7
  %add = add nsw i32 48, %and
  %conv42 = trunc i32 %add to i8
  %33 = load i8*, i8** %v.addr, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr43, i8** %v.addr, align 4
  store i8 %conv42, i8* %33, align 1
  %34 = load i32, i32* %c, align 4
  %shr44 = ashr i32 %34, 3
  %and45 = and i32 %shr44, 7
  %add46 = add nsw i32 48, %and45
  %conv47 = trunc i32 %add46 to i8
  %35 = load i8*, i8** %v.addr, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr48, i8** %v.addr, align 4
  store i8 %conv47, i8* %35, align 1
  %36 = load i32, i32* %c, align 4
  %and49 = and i32 %36, 7
  %add50 = add nsw i32 48, %and49
  %conv51 = trunc i32 %add50 to i8
  %37 = load i8*, i8** %v.addr, align 4
  %incdec.ptr52 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr52, i8** %v.addr, align 4
  store i8 %conv51, i8* %37, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb20, %if.end19
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %38 = load i8*, i8** %u.addr, align 4
  %incdec.ptr53 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr53, i8** %u.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i8*, i8** %v.addr, align 4
  ret i8* %39
}

; Function Attrs: noinline nounwind
define i8* @quotedzputs(i8* %s, %struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 4
  %inquote = alloca i32, align 4
  %c = alloca i32, align 4
  %outstr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %substr = alloca i8*, align 4
  %cptr = alloca i8*, align 4
  %l = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 4
  store i32 0, i32* %inquote, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool1 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0))
  store i8* %call, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %3)
  store i8* null, i8** %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 4
  %call5 = call i32 @is_mb_niceformat(i8* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool8 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load i8*, i8** %s.addr, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call11 = call i32 @mb_niceformat(i8* %7, %struct._IO_FILE* %8, i8** null, i32 2)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call12 = call i32 @fputc(i32 39, %struct._IO_FILE* %9)
  store i8* null, i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then7
  %10 = load i8*, i8** %s.addr, align 4
  %call13 = call i32 @mb_niceformat(i8* %10, %struct._IO_FILE* null, i8** %substr, i32 6)
  %11 = load i8*, i8** %substr, align 4
  %call14 = call i32 @strlen(i8* %11)
  %add = add i32 4, %call14
  %call15 = call i8* @zhalloc(i32 %add)
  store i8* %call15, i8** %outstr, align 4
  %12 = load i8*, i8** %outstr, align 4
  %13 = load i8*, i8** %substr, align 4
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %substr, align 4
  call void @free(i8* %14)
  %15 = load i8*, i8** %outstr, align 4
  store i8* %15, i8** %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end4
  %16 = load i8*, i8** %s.addr, align 4
  %call18 = call i32 @hasspecial(i8* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end26, label %if.then20

if.then20:                                        ; preds = %if.end17
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool21 = icmp ne %struct._IO_FILE* %17, null
  br i1 %tobool21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.then20
  %18 = load i8*, i8** %s.addr, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call23 = call i32 @zputs(i8* %18, %struct._IO_FILE* %19)
  store i8* null, i8** %retval, align 4
  br label %return

if.else24:                                        ; preds = %if.then20
  %20 = load i8*, i8** %s.addr, align 4
  %call25 = call i8* @dupstring(i8* %20)
  store i8* %call25, i8** %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool27 = icmp ne %struct._IO_FILE* %21, null
  br i1 %tobool27, label %if.else47, label %if.then28

if.then28:                                        ; preds = %if.end26
  %22 = load i8*, i8** %s.addr, align 4
  %call29 = call i32 @strlen(i8* %22)
  %add30 = add i32 %call29, 2
  store i32 %add30, i32* %l, align 4
  %23 = load i8*, i8** %s.addr, align 4
  store i8* %23, i8** %cptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then28
  %24 = load i8*, i8** %cptr, align 4
  %25 = load i8, i8* %24, align 1
  %tobool31 = icmp ne i8 %25, 0
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %cptr, align 4
  %27 = load i8, i8* %26, align 1
  %conv = sext i8 %27 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %if.then33, label %if.else34

if.then33:                                        ; preds = %for.body
  %28 = load i8*, i8** %cptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %cptr, align 4
  br label %if.end43

if.else34:                                        ; preds = %for.body
  %29 = load i8*, i8** %cptr, align 4
  %30 = load i8, i8* %29, align 1
  %conv35 = sext i8 %30 to i32
  %cmp36 = icmp eq i32 %conv35, 39
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.else34
  %31 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  %conv39 = sext i8 %31 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  %cond = select i1 %tobool40, i32 1, i32 3
  %32 = load i32, i32* %l, align 4
  %add41 = add nsw i32 %32, %cond
  store i32 %add41, i32* %l, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.else34
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then33
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %33 = load i8*, i8** %cptr, align 4
  %incdec.ptr44 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr44, i8** %cptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %l, align 4
  %add45 = add nsw i32 %34, 1
  %call46 = call i8* @zhalloc(i32 %add45)
  store i8* %call46, i8** %outstr, align 4
  store i8* %call46, i8** %ptr, align 4
  br label %if.end48

if.else47:                                        ; preds = %if.end26
  store i8* null, i8** %outstr, align 4
  store i8* null, i8** %ptr, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %for.end
  %35 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  %tobool49 = icmp ne i8 %35, 0
  br i1 %tobool49, label %if.then50, label %if.else140

if.then50:                                        ; preds = %if.end48
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool51 = icmp ne %struct._IO_FILE* %36, null
  br i1 %tobool51, label %if.then52, label %if.else58

if.then52:                                        ; preds = %if.then50
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call53 = call i32 @fputc(i32 39, %struct._IO_FILE* %37)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then52
  store i8* null, i8** %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.then52
  br label %if.end60

if.else58:                                        ; preds = %if.then50
  %38 = load i8*, i8** %ptr, align 4
  %incdec.ptr59 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr59, i8** %ptr, align 4
  store i8 39, i8* %38, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.end57
  br label %while.cond

while.cond:                                       ; preds = %if.end129, %if.end60
  %39 = load i8*, i8** %s.addr, align 4
  %40 = load i8, i8* %39, align 1
  %tobool61 = icmp ne i8 %40, 0
  br i1 %tobool61, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i8*, i8** %s.addr, align 4
  %42 = load i8, i8* %41, align 1
  %conv62 = sext i8 %42 to i32
  %cmp63 = icmp eq i32 %conv62, -101
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %while.body
  store i32 45, i32* %c, align 4
  br label %if.end76

if.else66:                                        ; preds = %while.body
  %43 = load i8*, i8** %s.addr, align 4
  %44 = load i8, i8* %43, align 1
  %conv67 = sext i8 %44 to i32
  %cmp68 = icmp eq i32 %conv67, -125
  br i1 %cmp68, label %if.then70, label %if.else73

if.then70:                                        ; preds = %if.else66
  %45 = load i8*, i8** %s.addr, align 4
  %incdec.ptr71 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr71, i8** %s.addr, align 4
  %46 = load i8, i8* %incdec.ptr71, align 1
  %conv72 = sext i8 %46 to i32
  %xor = xor i32 %conv72, 32
  store i32 %xor, i32* %c, align 4
  br label %if.end75

if.else73:                                        ; preds = %if.else66
  %47 = load i8*, i8** %s.addr, align 4
  %48 = load i8, i8* %47, align 1
  %conv74 = sext i8 %48 to i32
  store i32 %conv74, i32* %c, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then70
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then65
  %49 = load i8*, i8** %s.addr, align 4
  %incdec.ptr77 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr77, i8** %s.addr, align 4
  %50 = load i32, i32* %c, align 4
  %cmp78 = icmp eq i32 %50, 39
  br i1 %cmp78, label %if.then80, label %if.else91

if.then80:                                        ; preds = %if.end76
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool81 = icmp ne %struct._IO_FILE* %51, null
  br i1 %tobool81, label %if.then82, label %if.else88

if.then82:                                        ; preds = %if.then80
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call83 = call i32 @fputc(i32 39, %struct._IO_FILE* %52)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.then82
  store i8* null, i8** %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.then82
  br label %if.end90

if.else88:                                        ; preds = %if.then80
  %53 = load i8*, i8** %ptr, align 4
  %incdec.ptr89 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr89, i8** %ptr, align 4
  store i8 39, i8* %53, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.end87
  br label %if.end108

if.else91:                                        ; preds = %if.end76
  %54 = load i32, i32* %c, align 4
  %cmp92 = icmp eq i32 %54, 10
  br i1 %cmp92, label %land.lhs.true, label %if.end107

land.lhs.true:                                    ; preds = %if.else91
  %55 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %conv94 = sext i8 %55 to i32
  %tobool95 = icmp ne i32 %conv94, 0
  br i1 %tobool95, label %if.then96, label %if.end107

if.then96:                                        ; preds = %land.lhs.true
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool97 = icmp ne %struct._IO_FILE* %56, null
  br i1 %tobool97, label %if.then98, label %if.else104

if.then98:                                        ; preds = %if.then96
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call99 = call i32 @fputc(i32 92, %struct._IO_FILE* %57)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then98
  store i8* null, i8** %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.then98
  br label %if.end106

if.else104:                                       ; preds = %if.then96
  %58 = load i8*, i8** %ptr, align 4
  %incdec.ptr105 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr105, i8** %ptr, align 4
  store i8 92, i8* %58, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.end103
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %land.lhs.true, %if.else91
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end90
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool109 = icmp ne %struct._IO_FILE* %59, null
  br i1 %tobool109, label %if.then110, label %if.else116

if.then110:                                       ; preds = %if.end108
  %60 = load i32, i32* %c, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call111 = call i32 @fputc(i32 %60, %struct._IO_FILE* %61)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.then110
  store i8* null, i8** %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.then110
  br label %if.end129

if.else116:                                       ; preds = %if.end108
  %62 = load i32, i32* %c, align 4
  %conv117 = trunc i32 %62 to i8
  %idxprom = zext i8 %conv117 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %63 = load i16, i16* %arrayidx, align 2
  %conv118 = sext i16 %63 to i32
  %and = and i32 %conv118, 4096
  %tobool119 = icmp ne i32 %and, 0
  br i1 %tobool119, label %if.then120, label %if.else125

if.then120:                                       ; preds = %if.else116
  %64 = load i8*, i8** %ptr, align 4
  %incdec.ptr121 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr121, i8** %ptr, align 4
  store i8 -125, i8* %64, align 1
  %65 = load i32, i32* %c, align 4
  %xor122 = xor i32 %65, 32
  %conv123 = trunc i32 %xor122 to i8
  %66 = load i8*, i8** %ptr, align 4
  %incdec.ptr124 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr124, i8** %ptr, align 4
  store i8 %conv123, i8* %66, align 1
  br label %if.end128

if.else125:                                       ; preds = %if.else116
  %67 = load i32, i32* %c, align 4
  %conv126 = trunc i32 %67 to i8
  %68 = load i8*, i8** %ptr, align 4
  %incdec.ptr127 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr127, i8** %ptr, align 4
  store i8 %conv126, i8* %68, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.else125, %if.then120
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end115
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool130 = icmp ne %struct._IO_FILE* %69, null
  br i1 %tobool130, label %if.then131, label %if.else137

if.then131:                                       ; preds = %while.end
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call132 = call i32 @fputc(i32 39, %struct._IO_FILE* %70)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then131
  store i8* null, i8** %retval, align 4
  br label %return

if.end136:                                        ; preds = %if.then131
  br label %if.end139

if.else137:                                       ; preds = %while.end
  %71 = load i8*, i8** %ptr, align 4
  %incdec.ptr138 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr138, i8** %ptr, align 4
  store i8 39, i8* %71, align 1
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.end136
  br label %if.end258

if.else140:                                       ; preds = %if.end48
  br label %while.cond141

while.cond141:                                    ; preds = %if.end243, %if.else140
  %72 = load i8*, i8** %s.addr, align 4
  %73 = load i8, i8* %72, align 1
  %tobool142 = icmp ne i8 %73, 0
  br i1 %tobool142, label %while.body143, label %while.end244

while.body143:                                    ; preds = %while.cond141
  %74 = load i8*, i8** %s.addr, align 4
  %75 = load i8, i8* %74, align 1
  %conv144 = sext i8 %75 to i32
  %cmp145 = icmp eq i32 %conv144, -101
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %while.body143
  store i32 45, i32* %c, align 4
  br label %if.end159

if.else148:                                       ; preds = %while.body143
  %76 = load i8*, i8** %s.addr, align 4
  %77 = load i8, i8* %76, align 1
  %conv149 = sext i8 %77 to i32
  %cmp150 = icmp eq i32 %conv149, -125
  br i1 %cmp150, label %if.then152, label %if.else156

if.then152:                                       ; preds = %if.else148
  %78 = load i8*, i8** %s.addr, align 4
  %incdec.ptr153 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr153, i8** %s.addr, align 4
  %79 = load i8, i8* %incdec.ptr153, align 1
  %conv154 = sext i8 %79 to i32
  %xor155 = xor i32 %conv154, 32
  store i32 %xor155, i32* %c, align 4
  br label %if.end158

if.else156:                                       ; preds = %if.else148
  %80 = load i8*, i8** %s.addr, align 4
  %81 = load i8, i8* %80, align 1
  %conv157 = sext i8 %81 to i32
  store i32 %conv157, i32* %c, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.then152
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then147
  %82 = load i8*, i8** %s.addr, align 4
  %incdec.ptr160 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr160, i8** %s.addr, align 4
  %83 = load i32, i32* %c, align 4
  %cmp161 = icmp eq i32 %83, 39
  br i1 %cmp161, label %if.then163, label %if.else188

if.then163:                                       ; preds = %if.end159
  %84 = load i32, i32* %inquote, align 4
  %tobool164 = icmp ne i32 %84, 0
  br i1 %tobool164, label %if.then165, label %if.end176

if.then165:                                       ; preds = %if.then163
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool166 = icmp ne %struct._IO_FILE* %85, null
  br i1 %tobool166, label %if.then167, label %if.else173

if.then167:                                       ; preds = %if.then165
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call168 = call i32 @putc(i32 39, %struct._IO_FILE* %86)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.then167
  store i8* null, i8** %retval, align 4
  br label %return

if.end172:                                        ; preds = %if.then167
  br label %if.end175

if.else173:                                       ; preds = %if.then165
  %87 = load i8*, i8** %ptr, align 4
  %incdec.ptr174 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr174, i8** %ptr, align 4
  store i8 39, i8* %87, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.else173, %if.end172
  store i32 0, i32* %inquote, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.then163
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool177 = icmp ne %struct._IO_FILE* %88, null
  br i1 %tobool177, label %if.then178, label %if.else184

if.then178:                                       ; preds = %if.end176
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call179 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %89)
  %cmp180 = icmp slt i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.then178
  store i8* null, i8** %retval, align 4
  br label %return

if.end183:                                        ; preds = %if.then178
  br label %if.end187

if.else184:                                       ; preds = %if.end176
  %90 = load i8*, i8** %ptr, align 4
  %incdec.ptr185 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr185, i8** %ptr, align 4
  store i8 92, i8* %90, align 1
  %91 = load i8*, i8** %ptr, align 4
  %incdec.ptr186 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr186, i8** %ptr, align 4
  store i8 39, i8* %91, align 1
  br label %if.end187

if.end187:                                        ; preds = %if.else184, %if.end183
  br label %if.end243

if.else188:                                       ; preds = %if.end159
  %92 = load i32, i32* %inquote, align 4
  %tobool189 = icmp ne i32 %92, 0
  br i1 %tobool189, label %if.end201, label %if.then190

if.then190:                                       ; preds = %if.else188
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool191 = icmp ne %struct._IO_FILE* %93, null
  br i1 %tobool191, label %if.then192, label %if.else198

if.then192:                                       ; preds = %if.then190
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call193 = call i32 @fputc(i32 39, %struct._IO_FILE* %94)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.then192
  store i8* null, i8** %retval, align 4
  br label %return

if.end197:                                        ; preds = %if.then192
  br label %if.end200

if.else198:                                       ; preds = %if.then190
  %95 = load i8*, i8** %ptr, align 4
  %incdec.ptr199 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr199, i8** %ptr, align 4
  store i8 39, i8* %95, align 1
  br label %if.end200

if.end200:                                        ; preds = %if.else198, %if.end197
  store i32 1, i32* %inquote, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.else188
  %96 = load i32, i32* %c, align 4
  %cmp202 = icmp eq i32 %96, 10
  br i1 %cmp202, label %land.lhs.true204, label %if.end218

land.lhs.true204:                                 ; preds = %if.end201
  %97 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %conv205 = sext i8 %97 to i32
  %tobool206 = icmp ne i32 %conv205, 0
  br i1 %tobool206, label %if.then207, label %if.end218

if.then207:                                       ; preds = %land.lhs.true204
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool208 = icmp ne %struct._IO_FILE* %98, null
  br i1 %tobool208, label %if.then209, label %if.else215

if.then209:                                       ; preds = %if.then207
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call210 = call i32 @fputc(i32 92, %struct._IO_FILE* %99)
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.then209
  store i8* null, i8** %retval, align 4
  br label %return

if.end214:                                        ; preds = %if.then209
  br label %if.end217

if.else215:                                       ; preds = %if.then207
  %100 = load i8*, i8** %ptr, align 4
  %incdec.ptr216 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr216, i8** %ptr, align 4
  store i8 92, i8* %100, align 1
  br label %if.end217

if.end217:                                        ; preds = %if.else215, %if.end214
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %land.lhs.true204, %if.end201
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool219 = icmp ne %struct._IO_FILE* %101, null
  br i1 %tobool219, label %if.then220, label %if.else226

if.then220:                                       ; preds = %if.end218
  %102 = load i32, i32* %c, align 4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call221 = call i32 @fputc(i32 %102, %struct._IO_FILE* %103)
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.then220
  store i8* null, i8** %retval, align 4
  br label %return

if.end225:                                        ; preds = %if.then220
  br label %if.end242

if.else226:                                       ; preds = %if.end218
  %104 = load i32, i32* %c, align 4
  %conv227 = trunc i32 %104 to i8
  %idxprom228 = zext i8 %conv227 to i32
  %arrayidx229 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom228
  %105 = load i16, i16* %arrayidx229, align 2
  %conv230 = sext i16 %105 to i32
  %and231 = and i32 %conv230, 4096
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %if.then233, label %if.else238

if.then233:                                       ; preds = %if.else226
  %106 = load i8*, i8** %ptr, align 4
  %incdec.ptr234 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr234, i8** %ptr, align 4
  store i8 -125, i8* %106, align 1
  %107 = load i32, i32* %c, align 4
  %xor235 = xor i32 %107, 32
  %conv236 = trunc i32 %xor235 to i8
  %108 = load i8*, i8** %ptr, align 4
  %incdec.ptr237 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr237, i8** %ptr, align 4
  store i8 %conv236, i8* %108, align 1
  br label %if.end241

if.else238:                                       ; preds = %if.else226
  %109 = load i32, i32* %c, align 4
  %conv239 = trunc i32 %109 to i8
  %110 = load i8*, i8** %ptr, align 4
  %incdec.ptr240 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr240, i8** %ptr, align 4
  store i8 %conv239, i8* %110, align 1
  br label %if.end241

if.end241:                                        ; preds = %if.else238, %if.then233
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.end225
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end187
  br label %while.cond141

while.end244:                                     ; preds = %while.cond141
  %111 = load i32, i32* %inquote, align 4
  %tobool245 = icmp ne i32 %111, 0
  br i1 %tobool245, label %if.then246, label %if.end257

if.then246:                                       ; preds = %while.end244
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool247 = icmp ne %struct._IO_FILE* %112, null
  br i1 %tobool247, label %if.then248, label %if.else254

if.then248:                                       ; preds = %if.then246
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %call249 = call i32 @fputc(i32 39, %struct._IO_FILE* %113)
  %cmp250 = icmp slt i32 %call249, 0
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %if.then248
  store i8* null, i8** %retval, align 4
  br label %return

if.end253:                                        ; preds = %if.then248
  br label %if.end256

if.else254:                                       ; preds = %if.then246
  %114 = load i8*, i8** %ptr, align 4
  %incdec.ptr255 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr255, i8** %ptr, align 4
  store i8 39, i8* %114, align 1
  br label %if.end256

if.end256:                                        ; preds = %if.else254, %if.end253
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %while.end244
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.end139
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 4
  %tobool259 = icmp ne %struct._IO_FILE* %115, null
  br i1 %tobool259, label %if.end262, label %if.then260

if.then260:                                       ; preds = %if.end258
  %116 = load i8*, i8** %ptr, align 4
  %incdec.ptr261 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr261, i8** %ptr, align 4
  store i8 0, i8* %116, align 1
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end258
  %117 = load i8*, i8** %outstr, align 4
  store i8* %117, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end262, %if.then252, %if.then224, %if.then213, %if.then196, %if.then182, %if.then171, %if.then135, %if.then114, %if.then102, %if.then86, %if.then56, %if.else24, %if.then22, %if.else, %if.then9, %if.end, %if.then2
  %118 = load i8*, i8** %retval, align 4
  ret i8* %118
}

; Function Attrs: noinline nounwind
define i8* @dquotedztrdup(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len = alloca i32, align 4
  %buf = alloca i8*, align 4
  %p = alloca i8*, align 4
  %ret = alloca i8*, align 4
  %inquote = alloca i32, align 4
  %c = alloca i32, align 4
  %pending = alloca i32, align 4
  %c33 = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %0)
  %mul = mul i32 %call, 4
  %add = add i32 %mul, 2
  store i32 %add, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %call1 = call i8* @zalloc(i32 %1)
  store i8* %call1, i8** %buf, align 4
  %2 = load i8*, i8** %buf, align 4
  store i8* %2, i8** %p, align 4
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %inquote, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then
  %4 = load i8*, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %tobool2 = icmp ne i8 %5, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  store i32 %conv, i32* %c, align 4
  %8 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %8, -125
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %while.body
  %9 = load i8*, i8** %s.addr, align 4
  %incdec.ptr5 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr5, i8** %s.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %xor = xor i32 %conv6, 32
  store i32 %xor, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %while.body
  %11 = load i32, i32* %c, align 4
  switch i32 %11, label %sw.default [
    i32 34, label %sw.bb
    i32 36, label %sw.bb
    i32 96, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %12 = load i32, i32* %inquote, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %sw.bb
  %13 = load i8*, i8** %p, align 4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr9, i8** %p, align 4
  store i8 34, i8* %13, align 1
  store i32 0, i32* %inquote, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb
  %14 = load i8*, i8** %p, align 4
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %p, align 4
  store i8 92, i8* %14, align 1
  %15 = load i32, i32* %c, align 4
  %conv12 = trunc i32 %15 to i8
  %16 = load i8*, i8** %p, align 4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr13, i8** %p, align 4
  store i8 %conv12, i8* %16, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %17 = load i32, i32* %inquote, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %sw.default
  %18 = load i8*, i8** %p, align 4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr16, i8** %p, align 4
  store i8 34, i8* %18, align 1
  store i32 1, i32* %inquote, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %sw.default
  %19 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %19, 10
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %20 = load i8*, i8** %p, align 4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr21, i8** %p, align 4
  store i8 92, i8* %20, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  %21 = load i32, i32* %c, align 4
  %conv23 = trunc i32 %21 to i8
  %22 = load i8*, i8** %p, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr24, i8** %p, align 4
  store i8 %conv23, i8* %22, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end22, %if.end10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %inquote, align 4
  %tobool25 = icmp ne i32 %23, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.end
  %24 = load i8*, i8** %p, align 4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr27, i8** %p, align 4
  store i8 34, i8* %24, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.end
  br label %if.end65

if.else:                                          ; preds = %entry
  store i32 0, i32* %pending, align 4
  %25 = load i8*, i8** %p, align 4
  %incdec.ptr29 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr29, i8** %p, align 4
  store i8 34, i8* %25, align 1
  br label %while.cond30

while.cond30:                                     ; preds = %sw.epilog58, %if.else
  %26 = load i8*, i8** %s.addr, align 4
  %27 = load i8, i8* %26, align 1
  %tobool31 = icmp ne i8 %27, 0
  br i1 %tobool31, label %while.body32, label %while.end59

while.body32:                                     ; preds = %while.cond30
  %28 = load i8*, i8** %s.addr, align 4
  %incdec.ptr34 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr34, i8** %s.addr, align 4
  %29 = load i8, i8* %28, align 1
  %conv35 = sext i8 %29 to i32
  store i32 %conv35, i32* %c33, align 4
  %30 = load i32, i32* %c33, align 4
  %cmp36 = icmp eq i32 %30, -125
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %while.body32
  %31 = load i8*, i8** %s.addr, align 4
  %incdec.ptr39 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr39, i8** %s.addr, align 4
  %32 = load i8, i8* %31, align 1
  %conv40 = sext i8 %32 to i32
  %xor41 = xor i32 %conv40, 32
  store i32 %xor41, i32* %c33, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %while.body32
  %33 = load i32, i32* %c33, align 4
  switch i32 %33, label %sw.default55 [
    i32 92, label %sw.bb43
    i32 34, label %sw.bb49
    i32 36, label %sw.bb49
    i32 96, label %sw.bb49
  ]

sw.bb43:                                          ; preds = %if.end42
  %34 = load i32, i32* %pending, align 4
  %tobool44 = icmp ne i32 %34, 0
  br i1 %tobool44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %sw.bb43
  %35 = load i8*, i8** %p, align 4
  %incdec.ptr46 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr46, i8** %p, align 4
  store i8 92, i8* %35, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %sw.bb43
  %36 = load i8*, i8** %p, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr48, i8** %p, align 4
  store i8 92, i8* %36, align 1
  store i32 1, i32* %pending, align 4
  br label %sw.epilog58

sw.bb49:                                          ; preds = %if.end42, %if.end42, %if.end42
  %37 = load i32, i32* %pending, align 4
  %tobool50 = icmp ne i32 %37, 0
  br i1 %tobool50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %sw.bb49
  %38 = load i8*, i8** %p, align 4
  %incdec.ptr52 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr52, i8** %p, align 4
  store i8 92, i8* %38, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %sw.bb49
  %39 = load i8*, i8** %p, align 4
  %incdec.ptr54 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr54, i8** %p, align 4
  store i8 92, i8* %39, align 1
  br label %sw.default55

sw.default55:                                     ; preds = %if.end42, %if.end53
  %40 = load i32, i32* %c33, align 4
  %conv56 = trunc i32 %40 to i8
  %41 = load i8*, i8** %p, align 4
  %incdec.ptr57 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr57, i8** %p, align 4
  store i8 %conv56, i8* %41, align 1
  store i32 0, i32* %pending, align 4
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.default55, %if.end47
  br label %while.cond30

while.end59:                                      ; preds = %while.cond30
  %42 = load i32, i32* %pending, align 4
  %tobool60 = icmp ne i32 %42, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %while.end59
  %43 = load i8*, i8** %p, align 4
  %incdec.ptr62 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr62, i8** %p, align 4
  store i8 92, i8* %43, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %while.end59
  %44 = load i8*, i8** %p, align 4
  %incdec.ptr64 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr64, i8** %p, align 4
  store i8 34, i8* %44, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end28
  %45 = load i8*, i8** %buf, align 4
  %46 = load i8*, i8** %p, align 4
  %47 = load i8*, i8** %buf, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call66 = call i8* @metafy(i8* %45, i32 %sub.ptr.sub, i32 3)
  store i8* %call66, i8** %ret, align 4
  %48 = load i8*, i8** %buf, align 4
  %49 = load i32, i32* %len, align 4
  call void @zfree(i8* %48, i32 %49)
  %50 = load i8*, i8** %ret, align 4
  ret i8* %50
}

declare i8* @nl_langinfo(i32) #2

; Function Attrs: noinline nounwind
define internal i32 @ucs4toutf8(i8* %dest, i32 %wval) #0 {
entry:
  %dest.addr = alloca i8*, align 4
  %wval.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 4
  store i32 %wval, i32* %wval.addr, align 4
  %0 = load i32, i32* %wval.addr, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %wval.addr, align 4
  %cmp1 = icmp ult i32 %1, 2048
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 2, i32* %len, align 4
  br label %if.end15

if.else3:                                         ; preds = %if.else
  %2 = load i32, i32* %wval.addr, align 4
  %cmp4 = icmp ult i32 %2, 65536
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i32 3, i32* %len, align 4
  br label %if.end14

if.else6:                                         ; preds = %if.else3
  %3 = load i32, i32* %wval.addr, align 4
  %cmp7 = icmp ult i32 %3, 2097152
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  store i32 4, i32* %len, align 4
  br label %if.end13

if.else9:                                         ; preds = %if.else6
  %4 = load i32, i32* %wval.addr, align 4
  %cmp10 = icmp ult i32 %4, 67108864
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  store i32 5, i32* %len, align 4
  br label %if.end

if.else12:                                        ; preds = %if.else9
  store i32 6, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %5 = load i32, i32* %len, align 4
  switch i32 %5, label %sw.epilog [
    i32 6, label %sw.bb
    i32 5, label %sw.bb17
    i32 4, label %sw.bb23
    i32 3, label %sw.bb29
    i32 2, label %sw.bb35
    i32 1, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end16
  %6 = load i32, i32* %wval.addr, align 4
  %and = and i32 %6, 63
  %or = or i32 %and, 128
  %conv = trunc i32 %or to i8
  %7 = load i8*, i8** %dest.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 5
  store i8 %conv, i8* %arrayidx, align 1
  %8 = load i32, i32* %wval.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, i32* %wval.addr, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.end16, %sw.bb
  %9 = load i32, i32* %wval.addr, align 4
  %and18 = and i32 %9, 63
  %or19 = or i32 %and18, 128
  %conv20 = trunc i32 %or19 to i8
  %10 = load i8*, i8** %dest.addr, align 4
  %arrayidx21 = getelementptr inbounds i8, i8* %10, i32 4
  store i8 %conv20, i8* %arrayidx21, align 1
  %11 = load i32, i32* %wval.addr, align 4
  %shr22 = lshr i32 %11, 6
  store i32 %shr22, i32* %wval.addr, align 4
  br label %sw.bb23

sw.bb23:                                          ; preds = %if.end16, %sw.bb17
  %12 = load i32, i32* %wval.addr, align 4
  %and24 = and i32 %12, 63
  %or25 = or i32 %and24, 128
  %conv26 = trunc i32 %or25 to i8
  %13 = load i8*, i8** %dest.addr, align 4
  %arrayidx27 = getelementptr inbounds i8, i8* %13, i32 3
  store i8 %conv26, i8* %arrayidx27, align 1
  %14 = load i32, i32* %wval.addr, align 4
  %shr28 = lshr i32 %14, 6
  store i32 %shr28, i32* %wval.addr, align 4
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end16, %sw.bb23
  %15 = load i32, i32* %wval.addr, align 4
  %and30 = and i32 %15, 63
  %or31 = or i32 %and30, 128
  %conv32 = trunc i32 %or31 to i8
  %16 = load i8*, i8** %dest.addr, align 4
  %arrayidx33 = getelementptr inbounds i8, i8* %16, i32 2
  store i8 %conv32, i8* %arrayidx33, align 1
  %17 = load i32, i32* %wval.addr, align 4
  %shr34 = lshr i32 %17, 6
  store i32 %shr34, i32* %wval.addr, align 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %if.end16, %sw.bb29
  %18 = load i32, i32* %wval.addr, align 4
  %and36 = and i32 %18, 63
  %or37 = or i32 %and36, 128
  %conv38 = trunc i32 %or37 to i8
  %19 = load i8*, i8** %dest.addr, align 4
  %arrayidx39 = getelementptr inbounds i8, i8* %19, i32 1
  store i8 %conv38, i8* %arrayidx39, align 1
  %20 = load i32, i32* %wval.addr, align 4
  %shr40 = lshr i32 %20, 6
  store i32 %shr40, i32* %wval.addr, align 4
  %21 = load i32, i32* %wval.addr, align 4
  %22 = load i32, i32* %len, align 4
  %sub = sub i32 6, %22
  %shl = shl i32 252, %sub
  %and41 = and i32 %shl, 252
  %or42 = or i32 %21, %and41
  %conv43 = trunc i32 %or42 to i8
  %23 = load i8*, i8** %dest.addr, align 4
  store i8 %conv43, i8* %23, align 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end16
  %24 = load i32, i32* %wval.addr, align 4
  %conv45 = trunc i32 %24 to i8
  %25 = load i8*, i8** %dest.addr, align 4
  store i8 %conv45, i8* %25, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %if.end16, %sw.bb35
  %26 = load i32, i32* %len, align 4
  ret i32 %26
}

declare i8* @iconv_open(i8*, i8*) #2

declare i32 @iconv(i8*, i8**, i32*, i8**, i32*) #2

declare i32 @iconv_close(i8*) #2

; Function Attrs: noinline nounwind
define i32 @strpfx(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %4 = load i8*, i8** %t.addr, align 4
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %8 = load i8*, i8** %t.addr, align 4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %t.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %s.addr, align 4
  %10 = load i8, i8* %9, align 1
  %tobool5 = icmp ne i8 %10, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind
define i32 @strsfx(i8* %s, i8* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8*, align 4
  %ls = alloca i32, align 4
  %lt = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %ls, align 4
  %1 = load i8*, i8** %t.addr, align 4
  %call1 = call i32 @strlen(i8* %1)
  store i32 %call1, i32* %lt, align 4
  %2 = load i32, i32* %ls, align 4
  %3 = load i32, i32* %lt, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %t.addr, align 4
  %5 = load i32, i32* %lt, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 %5
  %6 = load i32, i32* %ls, align 4
  %idx.neg = sub i32 0, %6
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i32 %idx.neg
  %7 = load i8*, i8** %s.addr, align 4
  %call3 = call i32 @strcmp(i8* %add.ptr2, i8* %7)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind
define void @init_dirsav(%struct.dirsav* %d) #0 {
entry:
  %d.addr = alloca %struct.dirsav*, align 4
  store %struct.dirsav* %d, %struct.dirsav** %d.addr, align 4
  %0 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dev = getelementptr inbounds %struct.dirsav, %struct.dirsav* %0, i32 0, i32 3
  store i32 0, i32* %dev, align 4
  %1 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %ino = getelementptr inbounds %struct.dirsav, %struct.dirsav* %1, i32 0, i32 4
  store i32 0, i32* %ino, align 4
  %2 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname = getelementptr inbounds %struct.dirsav, %struct.dirsav* %2, i32 0, i32 2
  store i8* null, i8** %dirname, align 4
  %3 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %level = getelementptr inbounds %struct.dirsav, %struct.dirsav* %3, i32 0, i32 1
  store i32 -1, i32* %level, align 4
  %4 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd = getelementptr inbounds %struct.dirsav, %struct.dirsav* %4, i32 0, i32 0
  store i32 -1, i32* %dirfd, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @lchdir(i8* %path, %struct.dirsav* %d, i32 %hard) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 4
  %d.addr = alloca %struct.dirsav*, align 4
  %hard.addr = alloca i32, align 4
  %pptr = alloca i8*, align 4
  %level = alloca i32, align 4
  %st1 = alloca %struct.stat, align 8
  %ds = alloca %struct.dirsav, align 4
  %buf = alloca [4097 x i8], align 1
  %ptr = alloca i8*, align 4
  %err = alloca i32, align 4
  %st2 = alloca %struct.stat, align 8
  %close_dir = alloca i32, align 4
  %restoreerr = alloca i32, align 4
  %i = alloca i32, align 4
  %cdest = alloca i8*, align 4
  store i8* %path, i8** %path.addr, align 4
  store %struct.dirsav* %d, %struct.dirsav** %d.addr, align 4
  store i32 %hard, i32* %hard.addr, align 4
  store i32 0, i32* %close_dir, align 4
  %0 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %tobool = icmp ne %struct.dirsav* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @init_dirsav(%struct.dirsav* %ds)
  store %struct.dirsav* %ds, %struct.dirsav** %d.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %path.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %hard.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %4 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %cmp3 = icmp ne %struct.dirsav* %4, %ds
  br i1 %cmp3, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %hard.addr, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %lor.lhs.false5, %land.lhs.true
  store i32 -1, i32* %level, align 4
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false5, %lor.lhs.false
  store i32 0, i32* %level, align 4
  %6 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dev = getelementptr inbounds %struct.dirsav, %struct.dirsav* %6, i32 0, i32 3
  %7 = load i32, i32* %dev, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.end14, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.else
  %8 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %ino = getelementptr inbounds %struct.dirsav, %struct.dirsav* %8, i32 0, i32 4
  %9 = load i32, i32* %ino, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  %call = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct.stat* %st1)
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 0
  %10 = load i32, i32* %st_dev, align 8
  %11 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dev12 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %11, i32 0, i32 3
  store i32 %10, i32* %dev12, align 4
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 2
  %12 = load i32, i32* %st_ino, align 8
  %13 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %ino13 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %13, i32 0, i32 4
  store i32 %12, i32* %ino13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true9, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  %14 = load i32, i32* %hard.addr, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.end37, label %if.then17

if.then17:                                        ; preds = %if.end15
  %15 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %cmp18 = icmp ne %struct.dirsav* %15, %ds
  br i1 %cmp18, label %if.then20, label %if.end35

if.then20:                                        ; preds = %if.then17
  %16 = load i8*, i8** %path.addr, align 4
  store i8* %16, i8** %pptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then20
  %17 = load i8*, i8** %pptr, align 4
  %18 = load i8, i8* %17, align 1
  %tobool21 = icmp ne i8 %18, 0
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %19 = load i8*, i8** %pptr, align 4
  %20 = load i8, i8* %19, align 1
  %conv22 = sext i8 %20 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load i8*, i8** %pptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %pptr, align 4
  %22 = load i8, i8* %21, align 1
  %conv24 = sext i8 %22 to i32
  %cmp25 = icmp ne i32 %conv24, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp25, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond27

while.cond27:                                     ; preds = %while.body31, %while.end
  %24 = load i8*, i8** %pptr, align 4
  %25 = load i8, i8* %24, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp eq i32 %conv28, 47
  br i1 %cmp29, label %while.body31, label %while.end33

while.body31:                                     ; preds = %while.cond27
  %26 = load i8*, i8** %pptr, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr32, i8** %pptr, align 4
  br label %while.cond27

while.end33:                                      ; preds = %while.cond27
  br label %for.inc

for.inc:                                          ; preds = %while.end33
  %27 = load i32, i32* %level, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %level, align 4
  %29 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %level34 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %29, i32 0, i32 1
  store i32 %28, i32* %level34, align 4
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.then17
  %30 = load i8*, i8** %path.addr, align 4
  %call36 = call i32 @zchdir(i8* %30)
  store i32 %call36, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end15
  %31 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd = getelementptr inbounds %struct.dirsav, %struct.dirsav* %31, i32 0, i32 0
  %32 = load i32, i32* %dirfd, align 4
  %cmp38 = icmp slt i32 %32, 0
  br i1 %cmp38, label %if.then40, label %if.end56

if.then40:                                        ; preds = %if.end37
  store i32 1, i32* %close_dir, align 4
  %call41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 256)
  %33 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd42 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %33, i32 0, i32 0
  store i32 %call41, i32* %dirfd42, align 4
  %cmp43 = icmp slt i32 %call41, 0
  br i1 %cmp43, label %land.lhs.true45, label %if.end55

land.lhs.true45:                                  ; preds = %if.then40
  %34 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %call46 = call i8* @zgetdir(%struct.dirsav* %34)
  %tobool47 = icmp ne i8* %call46, null
  br i1 %tobool47, label %land.lhs.true48, label %if.end55

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %35 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname = getelementptr inbounds %struct.dirsav, %struct.dirsav* %35, i32 0, i32 2
  %36 = load i8*, i8** %dirname, align 4
  %37 = load i8, i8* %36, align 1
  %conv49 = sext i8 %37 to i32
  %cmp50 = icmp ne i32 %conv49, 47
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %land.lhs.true48
  %call53 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 256)
  %38 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd54 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %38, i32 0, i32 0
  store i32 %call53, i32* %dirfd54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %land.lhs.true48, %land.lhs.true45, %if.then40
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end37
  %39 = load i8*, i8** %path.addr, align 4
  %40 = load i8, i8* %39, align 1
  %conv57 = sext i8 %40 to i32
  %cmp58 = icmp eq i32 %conv57, 47
  br i1 %cmp58, label %if.then60, label %if.end67

if.then60:                                        ; preds = %if.end56
  %call61 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.then60
  %call65 = call i32* @__errno_location()
  %41 = load i32, i32* %call65, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i32 %41)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.then60
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end56
  br label %for.cond68

for.cond68:                                       ; preds = %if.end154, %if.end67
  br label %while.cond69

while.cond69:                                     ; preds = %while.body73, %for.cond68
  %42 = load i8*, i8** %path.addr, align 4
  %43 = load i8, i8* %42, align 1
  %conv70 = sext i8 %43 to i32
  %cmp71 = icmp eq i32 %conv70, 47
  br i1 %cmp71, label %while.body73, label %while.end75

while.body73:                                     ; preds = %while.cond69
  %44 = load i8*, i8** %path.addr, align 4
  %incdec.ptr74 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr74, i8** %path.addr, align 4
  br label %while.cond69

while.end75:                                      ; preds = %while.cond69
  %45 = load i8*, i8** %path.addr, align 4
  %46 = load i8, i8* %45, align 1
  %tobool76 = icmp ne i8 %46, 0
  br i1 %tobool76, label %if.end95, label %if.then77

if.then77:                                        ; preds = %while.end75
  %47 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %cmp78 = icmp eq %struct.dirsav* %47, %ds
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.then77
  %dirname81 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 2
  %48 = load i8*, i8** %dirname81, align 4
  call void @zsfree(i8* %48)
  br label %if.end84

if.else82:                                        ; preds = %if.then77
  %49 = load i32, i32* %level, align 4
  %50 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %level83 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %50, i32 0, i32 1
  store i32 %49, i32* %level83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then80
  %51 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd85 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %51, i32 0, i32 0
  %52 = load i32, i32* %dirfd85, align 4
  %cmp86 = icmp sge i32 %52, 0
  br i1 %cmp86, label %land.lhs.true88, label %if.end94

land.lhs.true88:                                  ; preds = %if.end84
  %53 = load i32, i32* %close_dir, align 4
  %tobool89 = icmp ne i32 %53, 0
  br i1 %tobool89, label %if.then90, label %if.end94

if.then90:                                        ; preds = %land.lhs.true88
  %54 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd91 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %54, i32 0, i32 0
  %55 = load i32, i32* %dirfd91, align 4
  %call92 = call i32 @close(i32 %55)
  %56 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd93 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %56, i32 0, i32 0
  store i32 -1, i32* %dirfd93, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %land.lhs.true88, %if.end84
  store i32 0, i32* %retval, align 4
  br label %return

if.end95:                                         ; preds = %while.end75
  %57 = load i8*, i8** %path.addr, align 4
  store i8* %57, i8** %pptr, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.body105, %if.end95
  %58 = load i8*, i8** %pptr, align 4
  %incdec.ptr97 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr97, i8** %pptr, align 4
  %59 = load i8, i8* %incdec.ptr97, align 1
  %conv98 = sext i8 %59 to i32
  %tobool99 = icmp ne i32 %conv98, 0
  br i1 %tobool99, label %land.rhs100, label %land.end104

land.rhs100:                                      ; preds = %for.cond96
  %60 = load i8*, i8** %pptr, align 4
  %61 = load i8, i8* %60, align 1
  %conv101 = sext i8 %61 to i32
  %cmp102 = icmp ne i32 %conv101, 47
  br label %land.end104

land.end104:                                      ; preds = %land.rhs100, %for.cond96
  %62 = phi i1 [ false, %for.cond96 ], [ %cmp102, %land.rhs100 ]
  br i1 %62, label %for.body105, label %for.end106

for.body105:                                      ; preds = %land.end104
  br label %for.cond96

for.end106:                                       ; preds = %land.end104
  %63 = load i8*, i8** %pptr, align 4
  %64 = load i8*, i8** %path.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %63 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %64 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp107 = icmp sgt i32 %sub.ptr.sub, 4096
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %for.end106
  store i32 36, i32* %err, align 4
  br label %for.end155

if.end110:                                        ; preds = %for.end106
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %ptr, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.body114, %if.end110
  %65 = load i8*, i8** %path.addr, align 4
  %66 = load i8*, i8** %pptr, align 4
  %cmp112 = icmp ne i8* %65, %66
  br i1 %cmp112, label %for.body114, label %for.end117

for.body114:                                      ; preds = %for.cond111
  %67 = load i8*, i8** %path.addr, align 4
  %incdec.ptr115 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr115, i8** %path.addr, align 4
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %ptr, align 4
  %incdec.ptr116 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr116, i8** %ptr, align 4
  store i8 %68, i8* %69, align 1
  br label %for.cond111

for.end117:                                       ; preds = %for.cond111
  %70 = load i8*, i8** %ptr, align 4
  store i8 0, i8* %70, align 1
  %arraydecay118 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call119 = call i32 @lstat(i8* %arraydecay118, %struct.stat* %st1)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then121, label %if.end123

if.then121:                                       ; preds = %for.end117
  %call122 = call i32* @__errno_location()
  %71 = load i32, i32* %call122, align 4
  store i32 %71, i32* %err, align 4
  br label %for.end155

if.end123:                                        ; preds = %for.end117
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 6
  %72 = load i32, i32* %st_mode, align 8
  %and = and i32 %72, 61440
  %cmp124 = icmp eq i32 %and, 16384
  br i1 %cmp124, label %if.end127, label %if.then126

if.then126:                                       ; preds = %if.end123
  store i32 20, i32* %err, align 4
  br label %for.end155

if.end127:                                        ; preds = %if.end123
  %arraydecay128 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call129 = call i32 @chdir(i8* %arraydecay128)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.end127
  %call132 = call i32* @__errno_location()
  %73 = load i32, i32* %call132, align 4
  store i32 %73, i32* %err, align 4
  br label %for.end155

if.end133:                                        ; preds = %if.end127
  %74 = load i32, i32* %level, align 4
  %cmp134 = icmp sge i32 %74, 0
  br i1 %cmp134, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.end133
  %75 = load i32, i32* %level, align 4
  %inc137 = add nsw i32 %75, 1
  store i32 %inc137, i32* %level, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end133
  %call139 = call i32 @lstat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct.stat* %st2)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end138
  %call142 = call i32* @__errno_location()
  %76 = load i32, i32* %call142, align 4
  store i32 %76, i32* %err, align 4
  br label %for.end155

if.end143:                                        ; preds = %if.end138
  %st_dev144 = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 0
  %77 = load i32, i32* %st_dev144, align 8
  %st_dev145 = getelementptr inbounds %struct.stat, %struct.stat* %st2, i32 0, i32 0
  %78 = load i32, i32* %st_dev145, align 8
  %cmp146 = icmp ne i32 %77, %78
  br i1 %cmp146, label %if.then153, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %if.end143
  %st_ino149 = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 2
  %79 = load i32, i32* %st_ino149, align 8
  %st_ino150 = getelementptr inbounds %struct.stat, %struct.stat* %st2, i32 0, i32 2
  %80 = load i32, i32* %st_ino150, align 8
  %cmp151 = icmp ne i32 %79, %80
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %lor.lhs.false148, %if.end143
  store i32 20, i32* %err, align 4
  br label %for.end155

if.end154:                                        ; preds = %lor.lhs.false148
  br label %for.cond68

for.end155:                                       ; preds = %if.then153, %if.then141, %if.then131, %if.then126, %if.then121, %if.then109
  %81 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %call156 = call i32 @restoredir(%struct.dirsav* %81)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then158, label %if.end202

if.then158:                                       ; preds = %for.end155
  %call159 = call i32* @__errno_location()
  %82 = load i32, i32* %call159, align 4
  store i32 %82, i32* %restoreerr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc177, %if.then158
  %83 = load i32, i32* %i, align 4
  %cmp161 = icmp slt i32 %83, 2
  br i1 %cmp161, label %for.body163, label %for.end179

for.body163:                                      ; preds = %for.cond160
  %84 = load i32, i32* %i, align 4
  %tobool164 = icmp ne i32 %84, 0
  br i1 %tobool164, label %if.then165, label %if.else166

if.then165:                                       ; preds = %for.body163
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %cdest, align 4
  br label %if.end170

if.else166:                                       ; preds = %for.body163
  %85 = load i8*, i8** @home, align 4
  %tobool167 = icmp ne i8* %85, null
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %if.else166
  br label %for.inc177

if.end169:                                        ; preds = %if.else166
  %86 = load i8*, i8** @home, align 4
  store i8* %86, i8** %cdest, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then165
  %87 = load i8*, i8** @pwd, align 4
  call void @zsfree(i8* %87)
  %88 = load i8*, i8** %cdest, align 4
  %call171 = call i8* @ztrdup(i8* %88)
  store i8* %call171, i8** @pwd, align 4
  %89 = load i8*, i8** @pwd, align 4
  %call172 = call i32 @chdir(i8* %89)
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end170
  br label %for.end179

if.end176:                                        ; preds = %if.end170
  br label %for.inc177

for.inc177:                                       ; preds = %if.end176, %if.then168
  %90 = load i32, i32* %i, align 4
  %inc178 = add nsw i32 %90, 1
  store i32 %inc178, i32* %i, align 4
  br label %for.cond160

for.end179:                                       ; preds = %if.then175, %for.cond160
  %91 = load i32, i32* %i, align 4
  %cmp180 = icmp eq i32 %91, 2
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %for.end179
  %call183 = call i32* @__errno_location()
  %92 = load i32, i32* %call183, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.76, i32 0, i32 0), i32 %92)
  br label %if.end185

if.else184:                                       ; preds = %for.end179
  %93 = load i32, i32* %restoreerr, align 4
  %94 = load i8*, i8** @pwd, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i32 0, i32 0), i32 %93, i8* %94)
  br label %if.end185

if.end185:                                        ; preds = %if.else184, %if.then182
  %95 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %cmp186 = icmp eq %struct.dirsav* %95, %ds
  br i1 %cmp186, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.end185
  %dirname189 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 2
  %96 = load i8*, i8** %dirname189, align 4
  call void @zsfree(i8* %96)
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.end185
  %97 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd191 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %97, i32 0, i32 0
  %98 = load i32, i32* %dirfd191, align 4
  %cmp192 = icmp sge i32 %98, 0
  br i1 %cmp192, label %land.lhs.true194, label %if.end200

land.lhs.true194:                                 ; preds = %if.end190
  %99 = load i32, i32* %close_dir, align 4
  %tobool195 = icmp ne i32 %99, 0
  br i1 %tobool195, label %if.then196, label %if.end200

if.then196:                                       ; preds = %land.lhs.true194
  %100 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd197 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %100, i32 0, i32 0
  %101 = load i32, i32* %dirfd197, align 4
  %call198 = call i32 @close(i32 %101)
  %102 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd199 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %102, i32 0, i32 0
  store i32 -1, i32* %dirfd199, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then196, %land.lhs.true194, %if.end190
  %103 = load i32, i32* %err, align 4
  %call201 = call i32* @__errno_location()
  store i32 %103, i32* %call201, align 4
  store i32 -2, i32* %retval, align 4
  br label %return

if.end202:                                        ; preds = %for.end155
  %104 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %cmp203 = icmp eq %struct.dirsav* %104, %ds
  br i1 %cmp203, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.end202
  %dirname206 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 2
  %105 = load i8*, i8** %dirname206, align 4
  call void @zsfree(i8* %105)
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end202
  %106 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd208 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %106, i32 0, i32 0
  %107 = load i32, i32* %dirfd208, align 4
  %cmp209 = icmp sge i32 %107, 0
  br i1 %cmp209, label %land.lhs.true211, label %if.end217

land.lhs.true211:                                 ; preds = %if.end207
  %108 = load i32, i32* %close_dir, align 4
  %tobool212 = icmp ne i32 %108, 0
  br i1 %tobool212, label %if.then213, label %if.end217

if.then213:                                       ; preds = %land.lhs.true211
  %109 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd214 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %109, i32 0, i32 0
  %110 = load i32, i32* %dirfd214, align 4
  %call215 = call i32 @close(i32 %110)
  %111 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd216 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %111, i32 0, i32 0
  store i32 -1, i32* %dirfd216, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.then213, %land.lhs.true211, %if.end207
  %112 = load i32, i32* %err, align 4
  %call218 = call i32* @__errno_location()
  store i32 %112, i32* %call218, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end217, %if.end200, %if.end94, %if.end35
  %113 = load i32, i32* %retval, align 4
  ret i32 %113
}

declare i32 @zchdir(i8*) #2

declare i32 @open(i8*, i32, ...) #2

declare i8* @zgetdir(%struct.dirsav*) #2

declare i32 @chdir(i8*) #2

declare i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind
define i32 @restoredir(%struct.dirsav* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.dirsav*, align 4
  %err = alloca i32, align 4
  %sbuf = alloca %struct.stat, align 8
  store %struct.dirsav* %d, %struct.dirsav** %d.addr, align 4
  store i32 0, i32* %err, align 4
  %0 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname = getelementptr inbounds %struct.dirsav, %struct.dirsav* %0, i32 0, i32 2
  %1 = load i8*, i8** %dirname, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname1 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %2, i32 0, i32 2
  %3 = load i8*, i8** %dirname1, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname3 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %5, i32 0, i32 2
  %6 = load i8*, i8** %dirname3, align 4
  %call = call i32 @chdir(i8* %6)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd = getelementptr inbounds %struct.dirsav, %struct.dirsav* %7, i32 0, i32 0
  %8 = load i32, i32* %dirfd, align 4
  %cmp4 = icmp sge i32 %8, 0
  br i1 %cmp4, label %if.then6, label %if.else28

if.then6:                                         ; preds = %if.end
  %9 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd7 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %9, i32 0, i32 0
  %10 = load i32, i32* %dirfd7, align 4
  %call8 = call i32 @fchdir(i32 %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else23, label %if.then10

if.then10:                                        ; preds = %if.then6
  %11 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname11 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %11, i32 0, i32 2
  %12 = load i8*, i8** %dirname11, align 4
  %tobool12 = icmp ne i8* %12, null
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then10
  %13 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname14 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %13, i32 0, i32 2
  %14 = load i8*, i8** %dirname14, align 4
  %call15 = call i32 @chdir(i8* %14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.else
  %15 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd18 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %15, i32 0, i32 0
  %16 = load i32, i32* %dirfd18, align 4
  %call19 = call i32 @close(i32 %16)
  %17 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd20 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %17, i32 0, i32 0
  store i32 -1, i32* %dirfd20, align 4
  store i32 -2, i32* %err, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %if.end27

if.else23:                                        ; preds = %if.then6
  %18 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd24 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %18, i32 0, i32 0
  %19 = load i32, i32* %dirfd24, align 4
  %call25 = call i32 @close(i32 %19)
  store i32 -1, i32* %err, align 4
  %20 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirfd26 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %20, i32 0, i32 0
  store i32 -1, i32* %dirfd26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.end22
  br label %if.end41

if.else28:                                        ; preds = %if.end
  %21 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %level = getelementptr inbounds %struct.dirsav, %struct.dirsav* %21, i32 0, i32 1
  %22 = load i32, i32* %level, align 4
  %cmp29 = icmp sgt i32 %22, 0
  br i1 %cmp29, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else28
  %23 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %level32 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %23, i32 0, i32 1
  %24 = load i32, i32* %level32, align 4
  %call33 = call i32 @upchdir(i32 %24)
  store i32 %call33, i32* %err, align 4
  br label %if.end40

if.else34:                                        ; preds = %if.else28
  %25 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %level35 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %25, i32 0, i32 1
  %26 = load i32, i32* %level35, align 4
  %cmp36 = icmp slt i32 %26, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else34
  store i32 -1, i32* %err, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.else34
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then31
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %27 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dev = getelementptr inbounds %struct.dirsav, %struct.dirsav* %27, i32 0, i32 3
  %28 = load i32, i32* %dev, align 4
  %tobool42 = icmp ne i32 %28, 0
  br i1 %tobool42, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end41
  %29 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %ino = getelementptr inbounds %struct.dirsav, %struct.dirsav* %29, i32 0, i32 4
  %30 = load i32, i32* %ino, align 4
  %tobool43 = icmp ne i32 %30, 0
  br i1 %tobool43, label %if.then44, label %if.end55

if.then44:                                        ; preds = %lor.lhs.false, %if.end41
  %call45 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct.stat* %sbuf)
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 2
  %31 = load i32, i32* %st_ino, align 8
  %32 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %ino46 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %32, i32 0, i32 4
  %33 = load i32, i32* %ino46, align 4
  %cmp47 = icmp ne i32 %31, %33
  br i1 %cmp47, label %if.then53, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.then44
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 0
  %34 = load i32, i32* %st_dev, align 8
  %35 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dev50 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %35, i32 0, i32 3
  %36 = load i32, i32* %dev50, align 4
  %cmp51 = icmp ne i32 %34, %36
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false49, %if.then44
  store i32 -2, i32* %err, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %lor.lhs.false49
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %lor.lhs.false
  %37 = load i32, i32* %err, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.then13, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

declare i32 @fchdir(i32) #2

; Function Attrs: noinline nounwind
define internal i32 @upchdir(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %buf = alloca [4097 x i8], align 1
  %s = alloca i8*, align 4
  %err = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 -1, i32* %err, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %1 = load i8*, i8** %s, align 4
  %arraydecay1 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i32 4096
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i32 -4
  %cmp3 = icmp ult i8* %1, %add.ptr2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  store i8 46, i8* %4, align 1
  %5 = load i8*, i8** %s, align 4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %s, align 4
  store i8 46, i8* %5, align 1
  %6 = load i8*, i8** %s, align 4
  %incdec.ptr5 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr5, i8** %s, align 4
  store i8 47, i8* %6, align 1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i8*, i8** %s, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 -1
  store i8 0, i8* %arrayidx, align 1
  %arraydecay6 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call = call i32 @chdir(i8* %arraydecay6)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load i32, i32* %err, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  store i32 -2, i32* %err, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define i32 @privasserted() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @geteuid()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

declare i32 @geteuid() #2

; Function Attrs: noinline nounwind
define i32 @mode_to_octal(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 0, i32* %m, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %and = and i32 %0, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %m, align 4
  %or = or i32 %1, 2048
  store i32 %or, i32* %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %mode.addr, align 4
  %and1 = and i32 %2, 1024
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %m, align 4
  %or4 = or i32 %3, 1024
  store i32 %or4, i32* %m, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %4 = load i32, i32* %mode.addr, align 4
  %and6 = and i32 %4, 512
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %5 = load i32, i32* %m, align 4
  %or9 = or i32 %5, 512
  store i32 %or9, i32* %m, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %6 = load i32, i32* %mode.addr, align 4
  %and11 = and i32 %6, 256
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %7 = load i32, i32* %m, align 4
  %or14 = or i32 %7, 256
  store i32 %or14, i32* %m, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %8 = load i32, i32* %mode.addr, align 4
  %and16 = and i32 %8, 128
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %9 = load i32, i32* %m, align 4
  %or19 = or i32 %9, 128
  store i32 %or19, i32* %m, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %10 = load i32, i32* %mode.addr, align 4
  %and21 = and i32 %10, 64
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %11 = load i32, i32* %m, align 4
  %or24 = or i32 %11, 64
  store i32 %or24, i32* %m, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %12 = load i32, i32* %mode.addr, align 4
  %and26 = and i32 %12, 32
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %13 = load i32, i32* %m, align 4
  %or29 = or i32 %13, 32
  store i32 %or29, i32* %m, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %14 = load i32, i32* %mode.addr, align 4
  %and31 = and i32 %14, 16
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %15 = load i32, i32* %m, align 4
  %or34 = or i32 %15, 16
  store i32 %or34, i32* %m, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %16 = load i32, i32* %mode.addr, align 4
  %and36 = and i32 %16, 8
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  %17 = load i32, i32* %m, align 4
  %or39 = or i32 %17, 8
  store i32 %or39, i32* %m, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35
  %18 = load i32, i32* %mode.addr, align 4
  %and41 = and i32 %18, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %19 = load i32, i32* %m, align 4
  %or44 = or i32 %19, 4
  store i32 %or44, i32* %m, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  %20 = load i32, i32* %mode.addr, align 4
  %and46 = and i32 %20, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end45
  %21 = load i32, i32* %m, align 4
  %or49 = or i32 %21, 2
  store i32 %or49, i32* %m, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45
  %22 = load i32, i32* %mode.addr, align 4
  %and51 = and i32 %22, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  %23 = load i32, i32* %m, align 4
  %or54 = or i32 %23, 1
  store i32 %or54, i32* %m, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50
  %24 = load i32, i32* %m, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind
define internal i8** @slashsplit(i8* %s) #0 {
entry:
  %retval = alloca i8**, align 4
  %s.addr = alloca i8*, align 4
  %t = alloca i8*, align 4
  %r = alloca i8**, align 4
  %q = alloca i8**, align 4
  %t0 = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @zshcalloc(i32 4)
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 4
  store i8* %3, i8** %t, align 4
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i8*, i8** %t, align 4
  %5 = load i8, i8* %4, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %t, align 4
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  %8 = load i32, i32* %t0, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %t0, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %9 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %t0, align 4
  %add = add nsw i32 %10, 2
  %mul = mul i32 4, %add
  %call5 = call i8* @zalloc(i32 %mul)
  %11 = bitcast i8* %call5 to i8**
  store i8** %11, i8*** %r, align 4
  store i8** %11, i8*** %q, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %for.end
  %12 = load i8*, i8** %s.addr, align 4
  %call6 = call i8* @strchr(i8* %12, i32 47)
  store i8* %call6, i8** %t, align 4
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %while.body, label %while.end19

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %s.addr, align 4
  %14 = load i8*, i8** %t, align 4
  %15 = load i8*, i8** %s.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call8 = call i8* @ztrduppfx(i8* %13, i32 %sub.ptr.sub)
  %16 = load i8**, i8*** %q, align 4
  %incdec.ptr9 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr9, i8*** %q, align 4
  store i8* %call8, i8** %16, align 4
  br label %while.cond10

while.cond10:                                     ; preds = %while.body14, %while.body
  %17 = load i8*, i8** %t, align 4
  %18 = load i8, i8* %17, align 1
  %conv11 = sext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 47
  br i1 %cmp12, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond10
  %19 = load i8*, i8** %t, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr15, i8** %t, align 4
  br label %while.cond10

while.end:                                        ; preds = %while.cond10
  %20 = load i8*, i8** %t, align 4
  %21 = load i8, i8* %20, align 1
  %tobool16 = icmp ne i8 %21, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %while.end
  %22 = load i8**, i8*** %q, align 4
  store i8* null, i8** %22, align 4
  %23 = load i8**, i8*** %r, align 4
  store i8** %23, i8*** %retval, align 4
  br label %return

if.end18:                                         ; preds = %while.end
  %24 = load i8*, i8** %t, align 4
  store i8* %24, i8** %s.addr, align 4
  br label %while.cond

while.end19:                                      ; preds = %while.cond
  %25 = load i8*, i8** %s.addr, align 4
  %call20 = call i8* @ztrdup(i8* %25)
  %26 = load i8**, i8*** %q, align 4
  %incdec.ptr21 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr21, i8*** %q, align 4
  store i8* %call20, i8** %26, align 4
  %27 = load i8**, i8*** %q, align 4
  store i8* null, i8** %27, align 4
  %28 = load i8**, i8*** %r, align 4
  store i8** %28, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %while.end19, %if.then17, %if.then
  %29 = load i8**, i8*** %retval, align 4
  ret i8** %29
}

declare i32 @readlink(i8*, i8*, i32) #2

declare i8* @strcat(i8*, i8*) #2

declare i8* @ztrduppfx(i8*, i32) #2

; Function Attrs: noinline nounwind
define internal i32 @dircmp(i8* %s, i8* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8*, i8** %t.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %s.addr, align 4
  %6 = load i8, i8* %5, align 1
  %tobool3 = icmp ne i8 %6, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %8 = load i8*, i8** %t.addr, align 4
  %incdec.ptr5 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr5, i8** %t.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %s.addr, align 4
  %10 = load i8, i8* %9, align 1
  %tobool6 = icmp ne i8 %10, 0
  br i1 %tobool6, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %11 = load i8*, i8** %t.addr, align 4
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %for.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then4
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare void @pushheap() #2

declare i32 @snprintf(i8*, i32, i8*, ...) #2

declare i8* @ugetnode(%union.linkroot*) #2

declare void @popheap() #2

declare void @setunderscore(i8*) #2

declare i32 @parsestr(i8**) #2

declare i32 @pattry(%struct.patprog*, i8*) #2

; Function Attrs: noinline nounwind
define internal i32 @spdist(i8* %s, i8* %t, i32 %thresh) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8*, align 4
  %thresh.addr = alloca i32, align 4
  %p = alloca i8*, align 4
  %q = alloca i8*, align 4
  %keymap = alloca i8*, align 4
  %t0 = alloca i32, align 4
  %z = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %t, i8** %t.addr, align 4
  store i32 %thresh, i32* %thresh.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 180), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([155 x i8], [155 x i8]* @spdist.dvorakkeymap, i32 0, i32 0), i8** %keymap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([155 x i8], [155 x i8]* @spdist.qwertykeymap, i32 0, i32 0), i8** %keymap, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8*, i8** %t.addr, align 4
  %call = call i32 @strcmp(i8* %1, i8* %2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %s.addr, align 4
  store i8* %3, i8** %p, align 4
  %4 = load i8*, i8** %t.addr, align 4
  store i8* %4, i8** %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load i8*, i8** %p, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i8*, i8** %p, align 4
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 @tulower(i32 %conv5)
  %9 = load i8*, i8** %q, align 4
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %call8 = call i32 @tulower(i32 %conv7)
  %cmp = icmp eq i32 %call6, %call8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  %13 = load i8*, i8** %q, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr10, i8** %q, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i8*, i8** %p, align 4
  %15 = load i8, i8* %14, align 1
  %tobool11 = icmp ne i8 %15, 0
  br i1 %tobool11, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %16 = load i8*, i8** %q, align 4
  %17 = load i8, i8* %16, align 1
  %tobool12 = icmp ne i8 %17, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %for.end
  %18 = load i32, i32* %thresh.addr, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  store i32 200, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end14
  %19 = load i8*, i8** %s.addr, align 4
  store i8* %19, i8** %p, align 4
  %20 = load i8*, i8** %t.addr, align 4
  store i8* %20, i8** %q, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc84, %if.end17
  %21 = load i8*, i8** %p, align 4
  %22 = load i8, i8* %21, align 1
  %conv19 = sext i8 %22 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  br i1 %tobool20, label %land.rhs21, label %land.end24

land.rhs21:                                       ; preds = %for.cond18
  %23 = load i8*, i8** %q, align 4
  %24 = load i8, i8* %23, align 1
  %conv22 = sext i8 %24 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br label %land.end24

land.end24:                                       ; preds = %land.rhs21, %for.cond18
  %25 = phi i1 [ false, %for.cond18 ], [ %tobool23, %land.rhs21 ]
  br i1 %25, label %for.body25, label %for.end87

for.body25:                                       ; preds = %land.end24
  %26 = load i8*, i8** %p, align 4
  %27 = load i8, i8* %26, align 1
  %conv26 = sext i8 %27 to i32
  %28 = load i8*, i8** %q, align 4
  %29 = load i8, i8* %28, align 1
  %conv27 = sext i8 %29 to i32
  %cmp28 = icmp eq i32 %conv26, %conv27
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %for.body25
  br label %for.inc84

if.else31:                                        ; preds = %for.body25
  %30 = load i8*, i8** %p, align 4
  %arrayidx = getelementptr inbounds i8, i8* %30, i32 1
  %31 = load i8, i8* %arrayidx, align 1
  %conv32 = sext i8 %31 to i32
  %32 = load i8*, i8** %q, align 4
  %arrayidx33 = getelementptr inbounds i8, i8* %32, i32 0
  %33 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %33 to i32
  %cmp35 = icmp eq i32 %conv32, %conv34
  br i1 %cmp35, label %land.lhs.true37, label %if.else47

land.lhs.true37:                                  ; preds = %if.else31
  %34 = load i8*, i8** %q, align 4
  %arrayidx38 = getelementptr inbounds i8, i8* %34, i32 1
  %35 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %35 to i32
  %36 = load i8*, i8** %p, align 4
  %arrayidx40 = getelementptr inbounds i8, i8* %36, i32 0
  %37 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %37 to i32
  %cmp42 = icmp eq i32 %conv39, %conv41
  br i1 %cmp42, label %if.then44, label %if.else47

if.then44:                                        ; preds = %land.lhs.true37
  %38 = load i8*, i8** %p, align 4
  %add.ptr = getelementptr inbounds i8, i8* %38, i32 2
  %39 = load i8*, i8** %q, align 4
  %add.ptr45 = getelementptr inbounds i8, i8* %39, i32 2
  %40 = load i32, i32* %thresh.addr, align 4
  %sub = sub nsw i32 %40, 1
  %call46 = call i32 @spdist(i8* %add.ptr, i8* %add.ptr45, i32 %sub)
  %add = add nsw i32 %call46, 1
  store i32 %add, i32* %retval, align 4
  br label %return

if.else47:                                        ; preds = %land.lhs.true37, %if.else31
  %41 = load i8*, i8** %p, align 4
  %arrayidx48 = getelementptr inbounds i8, i8* %41, i32 1
  %42 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %42 to i32
  %43 = load i8*, i8** %q, align 4
  %arrayidx50 = getelementptr inbounds i8, i8* %43, i32 0
  %44 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %44 to i32
  %cmp52 = icmp eq i32 %conv49, %conv51
  br i1 %cmp52, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.else47
  %45 = load i8*, i8** %p, align 4
  %add.ptr55 = getelementptr inbounds i8, i8* %45, i32 1
  %46 = load i8*, i8** %q, align 4
  %add.ptr56 = getelementptr inbounds i8, i8* %46, i32 0
  %47 = load i32, i32* %thresh.addr, align 4
  %sub57 = sub nsw i32 %47, 1
  %call58 = call i32 @spdist(i8* %add.ptr55, i8* %add.ptr56, i32 %sub57)
  %add59 = add nsw i32 %call58, 2
  store i32 %add59, i32* %retval, align 4
  br label %return

if.else60:                                        ; preds = %if.else47
  %48 = load i8*, i8** %p, align 4
  %arrayidx61 = getelementptr inbounds i8, i8* %48, i32 0
  %49 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %49 to i32
  %50 = load i8*, i8** %q, align 4
  %arrayidx63 = getelementptr inbounds i8, i8* %50, i32 1
  %51 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %51 to i32
  %cmp65 = icmp eq i32 %conv62, %conv64
  br i1 %cmp65, label %if.then67, label %if.else73

if.then67:                                        ; preds = %if.else60
  %52 = load i8*, i8** %p, align 4
  %add.ptr68 = getelementptr inbounds i8, i8* %52, i32 0
  %53 = load i8*, i8** %q, align 4
  %add.ptr69 = getelementptr inbounds i8, i8* %53, i32 1
  %54 = load i32, i32* %thresh.addr, align 4
  %sub70 = sub nsw i32 %54, 1
  %call71 = call i32 @spdist(i8* %add.ptr68, i8* %add.ptr69, i32 %sub70)
  %add72 = add nsw i32 %call71, 2
  store i32 %add72, i32* %retval, align 4
  br label %return

if.else73:                                        ; preds = %if.else60
  %55 = load i8*, i8** %p, align 4
  %56 = load i8, i8* %55, align 1
  %conv74 = sext i8 %56 to i32
  %57 = load i8*, i8** %q, align 4
  %58 = load i8, i8* %57, align 1
  %conv75 = sext i8 %58 to i32
  %cmp76 = icmp ne i32 %conv74, %conv75
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.else73
  br label %for.end87

if.end79:                                         ; preds = %if.else73
  br label %if.end80

if.end80:                                         ; preds = %if.end79
  br label %if.end81

if.end81:                                         ; preds = %if.end80
  br label %if.end82

if.end82:                                         ; preds = %if.end81
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83, %if.then30
  %59 = load i8*, i8** %p, align 4
  %incdec.ptr85 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr85, i8** %p, align 4
  %60 = load i8*, i8** %q, align 4
  %incdec.ptr86 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr86, i8** %q, align 4
  br label %for.cond18

for.end87:                                        ; preds = %if.then78, %land.end24
  %61 = load i8*, i8** %p, align 4
  %62 = load i8, i8* %61, align 1
  %tobool88 = icmp ne i8 %62, 0
  br i1 %tobool88, label %lor.lhs.false, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %for.end87
  %63 = load i8*, i8** %q, align 4
  %call90 = call i32 @strlen(i8* %63)
  %cmp91 = icmp eq i32 %call90, 1
  br i1 %cmp91, label %if.then98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true89, %for.end87
  %64 = load i8*, i8** %q, align 4
  %65 = load i8, i8* %64, align 1
  %tobool93 = icmp ne i8 %65, 0
  br i1 %tobool93, label %if.end99, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %lor.lhs.false
  %66 = load i8*, i8** %p, align 4
  %call95 = call i32 @strlen(i8* %66)
  %cmp96 = icmp eq i32 %call95, 1
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %land.lhs.true94, %land.lhs.true89
  store i32 2, i32* %retval, align 4
  br label %return

if.end99:                                         ; preds = %land.lhs.true94, %lor.lhs.false
  %67 = load i8*, i8** %s.addr, align 4
  store i8* %67, i8** %p, align 4
  %68 = load i8*, i8** %t.addr, align 4
  store i8* %68, i8** %q, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc211, %if.end99
  %69 = load i8*, i8** %p, align 4
  %70 = load i8, i8* %69, align 1
  %conv101 = sext i8 %70 to i32
  %tobool102 = icmp ne i32 %conv101, 0
  br i1 %tobool102, label %land.rhs103, label %land.end106

land.rhs103:                                      ; preds = %for.cond100
  %71 = load i8*, i8** %q, align 4
  %72 = load i8, i8* %71, align 1
  %conv104 = sext i8 %72 to i32
  %tobool105 = icmp ne i32 %conv104, 0
  br label %land.end106

land.end106:                                      ; preds = %land.rhs103, %for.cond100
  %73 = phi i1 [ false, %for.cond100 ], [ %tobool105, %land.rhs103 ]
  br i1 %73, label %for.body107, label %for.end214

for.body107:                                      ; preds = %land.end106
  %74 = load i8*, i8** %p, align 4
  %arrayidx108 = getelementptr inbounds i8, i8* %74, i32 0
  %75 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %75 to i32
  %76 = load i8*, i8** %q, align 4
  %arrayidx110 = getelementptr inbounds i8, i8* %76, i32 0
  %77 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %77 to i32
  %cmp112 = icmp ne i32 %conv109, %conv111
  br i1 %cmp112, label %land.lhs.true114, label %if.else203

land.lhs.true114:                                 ; preds = %for.body107
  %78 = load i8*, i8** %p, align 4
  %arrayidx115 = getelementptr inbounds i8, i8* %78, i32 1
  %79 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %79 to i32
  %80 = load i8*, i8** %q, align 4
  %arrayidx117 = getelementptr inbounds i8, i8* %80, i32 1
  %81 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %81 to i32
  %cmp119 = icmp eq i32 %conv116, %conv118
  br i1 %cmp119, label %if.then121, label %if.else203

if.then121:                                       ; preds = %land.lhs.true114
  %82 = load i8*, i8** %keymap, align 4
  %83 = load i8*, i8** %p, align 4
  %arrayidx122 = getelementptr inbounds i8, i8* %83, i32 0
  %84 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %84 to i32
  %call124 = call i8* @strchr(i8* %82, i32 %conv123)
  store i8* %call124, i8** %z, align 4
  %tobool125 = icmp ne i8* %call124, null
  br i1 %tobool125, label %lor.lhs.false126, label %if.then134

lor.lhs.false126:                                 ; preds = %if.then121
  %85 = load i8*, i8** %z, align 4
  %86 = load i8, i8* %85, align 1
  %conv127 = sext i8 %86 to i32
  %cmp128 = icmp eq i32 %conv127, 10
  br i1 %cmp128, label %if.then134, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %lor.lhs.false126
  %87 = load i8*, i8** %z, align 4
  %88 = load i8, i8* %87, align 1
  %conv131 = sext i8 %88 to i32
  %cmp132 = icmp eq i32 %conv131, 9
  br i1 %cmp132, label %if.then134, label %if.end140

if.then134:                                       ; preds = %lor.lhs.false130, %lor.lhs.false126, %if.then121
  %89 = load i8*, i8** %p, align 4
  %add.ptr135 = getelementptr inbounds i8, i8* %89, i32 1
  %90 = load i8*, i8** %q, align 4
  %add.ptr136 = getelementptr inbounds i8, i8* %90, i32 1
  %91 = load i32, i32* %thresh.addr, align 4
  %sub137 = sub nsw i32 %91, 1
  %call138 = call i32 @spdist(i8* %add.ptr135, i8* %add.ptr136, i32 %sub137)
  %add139 = add nsw i32 %call138, 1
  store i32 %add139, i32* %retval, align 4
  br label %return

if.end140:                                        ; preds = %lor.lhs.false130
  %92 = load i8*, i8** %z, align 4
  %93 = load i8*, i8** %keymap, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %92 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %93 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %t0, align 4
  %94 = load i8*, i8** %q, align 4
  %95 = load i8, i8* %94, align 1
  %conv141 = sext i8 %95 to i32
  %96 = load i8*, i8** %keymap, align 4
  %97 = load i32, i32* %t0, align 4
  %sub142 = sub nsw i32 %97, 15
  %arrayidx143 = getelementptr inbounds i8, i8* %96, i32 %sub142
  %98 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %98 to i32
  %cmp145 = icmp eq i32 %conv141, %conv144
  br i1 %cmp145, label %if.then196, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end140
  %99 = load i8*, i8** %q, align 4
  %100 = load i8, i8* %99, align 1
  %conv148 = sext i8 %100 to i32
  %101 = load i8*, i8** %keymap, align 4
  %102 = load i32, i32* %t0, align 4
  %sub149 = sub nsw i32 %102, 14
  %arrayidx150 = getelementptr inbounds i8, i8* %101, i32 %sub149
  %103 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %103 to i32
  %cmp152 = icmp eq i32 %conv148, %conv151
  br i1 %cmp152, label %if.then196, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false147
  %104 = load i8*, i8** %q, align 4
  %105 = load i8, i8* %104, align 1
  %conv155 = sext i8 %105 to i32
  %106 = load i8*, i8** %keymap, align 4
  %107 = load i32, i32* %t0, align 4
  %sub156 = sub nsw i32 %107, 13
  %arrayidx157 = getelementptr inbounds i8, i8* %106, i32 %sub156
  %108 = load i8, i8* %arrayidx157, align 1
  %conv158 = sext i8 %108 to i32
  %cmp159 = icmp eq i32 %conv155, %conv158
  br i1 %cmp159, label %if.then196, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %lor.lhs.false154
  %109 = load i8*, i8** %q, align 4
  %110 = load i8, i8* %109, align 1
  %conv162 = sext i8 %110 to i32
  %111 = load i8*, i8** %keymap, align 4
  %112 = load i32, i32* %t0, align 4
  %sub163 = sub nsw i32 %112, 1
  %arrayidx164 = getelementptr inbounds i8, i8* %111, i32 %sub163
  %113 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %113 to i32
  %cmp166 = icmp eq i32 %conv162, %conv165
  br i1 %cmp166, label %if.then196, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false161
  %114 = load i8*, i8** %q, align 4
  %115 = load i8, i8* %114, align 1
  %conv169 = sext i8 %115 to i32
  %116 = load i8*, i8** %keymap, align 4
  %117 = load i32, i32* %t0, align 4
  %add170 = add nsw i32 %117, 1
  %arrayidx171 = getelementptr inbounds i8, i8* %116, i32 %add170
  %118 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %118 to i32
  %cmp173 = icmp eq i32 %conv169, %conv172
  br i1 %cmp173, label %if.then196, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %lor.lhs.false168
  %119 = load i8*, i8** %q, align 4
  %120 = load i8, i8* %119, align 1
  %conv176 = sext i8 %120 to i32
  %121 = load i8*, i8** %keymap, align 4
  %122 = load i32, i32* %t0, align 4
  %add177 = add nsw i32 %122, 13
  %arrayidx178 = getelementptr inbounds i8, i8* %121, i32 %add177
  %123 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %123 to i32
  %cmp180 = icmp eq i32 %conv176, %conv179
  br i1 %cmp180, label %if.then196, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %lor.lhs.false175
  %124 = load i8*, i8** %q, align 4
  %125 = load i8, i8* %124, align 1
  %conv183 = sext i8 %125 to i32
  %126 = load i8*, i8** %keymap, align 4
  %127 = load i32, i32* %t0, align 4
  %add184 = add nsw i32 %127, 14
  %arrayidx185 = getelementptr inbounds i8, i8* %126, i32 %add184
  %128 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %128 to i32
  %cmp187 = icmp eq i32 %conv183, %conv186
  br i1 %cmp187, label %if.then196, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false182
  %129 = load i8*, i8** %q, align 4
  %130 = load i8, i8* %129, align 1
  %conv190 = sext i8 %130 to i32
  %131 = load i8*, i8** %keymap, align 4
  %132 = load i32, i32* %t0, align 4
  %add191 = add nsw i32 %132, 15
  %arrayidx192 = getelementptr inbounds i8, i8* %131, i32 %add191
  %133 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %133 to i32
  %cmp194 = icmp eq i32 %conv190, %conv193
  br i1 %cmp194, label %if.then196, label %if.end202

if.then196:                                       ; preds = %lor.lhs.false189, %lor.lhs.false182, %lor.lhs.false175, %lor.lhs.false168, %lor.lhs.false161, %lor.lhs.false154, %lor.lhs.false147, %if.end140
  %134 = load i8*, i8** %p, align 4
  %add.ptr197 = getelementptr inbounds i8, i8* %134, i32 1
  %135 = load i8*, i8** %q, align 4
  %add.ptr198 = getelementptr inbounds i8, i8* %135, i32 1
  %136 = load i32, i32* %thresh.addr, align 4
  %sub199 = sub nsw i32 %136, 1
  %call200 = call i32 @spdist(i8* %add.ptr197, i8* %add.ptr198, i32 %sub199)
  %add201 = add nsw i32 %call200, 2
  store i32 %add201, i32* %retval, align 4
  br label %return

if.end202:                                        ; preds = %lor.lhs.false189
  store i32 200, i32* %retval, align 4
  br label %return

if.else203:                                       ; preds = %land.lhs.true114, %for.body107
  %137 = load i8*, i8** %p, align 4
  %138 = load i8, i8* %137, align 1
  %conv204 = sext i8 %138 to i32
  %139 = load i8*, i8** %q, align 4
  %140 = load i8, i8* %139, align 1
  %conv205 = sext i8 %140 to i32
  %cmp206 = icmp ne i32 %conv204, %conv205
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.else203
  br label %for.end214

if.end209:                                        ; preds = %if.else203
  br label %if.end210

if.end210:                                        ; preds = %if.end209
  br label %for.inc211

for.inc211:                                       ; preds = %if.end210
  %141 = load i8*, i8** %p, align 4
  %incdec.ptr212 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr212, i8** %p, align 4
  %142 = load i8*, i8** %q, align 4
  %incdec.ptr213 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr213, i8** %q, align 4
  br label %for.cond100

for.end214:                                       ; preds = %if.then208, %land.end106
  store i32 200, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end214, %if.end202, %if.then196, %if.then134, %if.then98, %if.then67, %if.then54, %if.then44, %if.then16, %if.then13, %if.then2
  %143 = load i32, i32* %retval, align 4
  ret i32 %143
}

declare i32* @wmemcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
