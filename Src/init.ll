; ModuleID = 'init.c'
source_filename = "init.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.hookdef = type { %struct.hookdef*, i8*, i32 (%struct.hookdef*, i8*)*, i32, %union.linkroot* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.histent = type { %struct.hashnode, %struct.histent*, %struct.histent*, i8*, i32, i32, i16*, i32, i32 }
%struct._IO_FILE = type opaque
%struct.__sigset_t = type { [32 x i32] }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.mnumber = type { %union.anon.0, i32 }
%union.anon.0 = type { double }
%struct.timeval = type { i32, i32 }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.funcwrap = type { %struct.funcwrap*, i32, i32 (%struct.eprog*, %struct.funcwrap*, i8*)*, %struct.module* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%struct.rlimit = type { i64, i64 }
%struct.funcstack = type { %struct.funcstack*, i8*, i8*, i8*, i32, i32, i32 }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.timezone = type { i32, i32 }
%struct.param = type { %struct.hashnode, %union.anon.1, %union.anon.2, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.1 = type { double }
%union.anon.2 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.feature_enables = type { i8*, %struct.patprog* }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }

@noexitct = global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"before_trap\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"after_trap\00", align 1
@zshhooks = global [3 x %struct.hookdef] [%struct.hookdef { %struct.hookdef* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.hookdef*, i8*)* null, i32 1, %union.linkroot* null }, %struct.hookdef { %struct.hookdef* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.hookdef*, i8*)* null, i32 1, %union.linkroot* null }, %struct.hookdef { %struct.hookdef* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.hookdef*, i8*)* null, i32 1, %union.linkroot* null }], align 4
@queueing_enabled = external global i32, align 4
@stophist = external global i32, align 4
@opts = external global [181 x i8], align 1
@errflag = external global i32, align 4
@use_exit_printed = common global i32 0, align 4
@tok = external global i32, align 4
@exit_pending = external global i32, align 4
@stopmsg = external global i32, align 4
@lastval = external global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"preexec\00", align 1
@paramtab = external global %struct.hashtable*, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"preexec_functions\00", align 1
@hist_ring = external global %struct.histent*, align 4
@curline = external global %struct.histent, align 4
@curhist = external global i32, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"toplevel\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@subsh = external global i32, align 4
@sourcelevel = common global i32 0, align 4
@retflag = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@sigtrapped = external global [34 x i32], align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"zsh %s (%s-%s-%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"5.5.1-dev-0\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"linux-gnu\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"emulate\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"--emulate: argument required\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"--emulate: must precede other options\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"zsh\00", align 1
@scriptfilename = external global i8*, align 4
@scriptname = external global i8*, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"string expected after -o\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"no such option: %s\00", align 1
@restricted = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"can't change option: %s\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"bad option string: '%s'\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"bad option: -%c\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"can't change option: -%c\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"string expected after -%s\00", align 1
@init_io.outbuf = internal global [8092 x i8] zeroinitializer, align 1
@init_io.errbuf = internal global [8092 x i8] zeroinitializer, align 1
@stdout = external constant %struct._IO_FILE*, align 4
@shout = common global %struct._IO_FILE* null, align 4
@SHTTY = common global i32 0, align 4
@xtrerr = external global %struct._IO_FILE*, align 4
@ttystrname = external global i8*, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@mypid = external global i32, align 4
@origpgrp = external global i32, align 4
@init_shout.shoutbuf = internal global [8092 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@shttyinfo = external global %struct.ttyinfo, align 4
@tccapnams = internal global [34 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.224, i32 0, i32 0)], align 4
@term = external global i8*, align 4
@termflags = external global i32, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"can't find terminal definition for %s\00", align 1
@tcstr = common global [34 x i8*] zeroinitializer, align 4
@tclen = common global [34 x i32] zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@hasam = common global i32 0, align 4
@.str.33 = private unnamed_addr constant [3 x i8] c"bw\00", align 1
@hasbw = common global i32 0, align 4
@.str.34 = private unnamed_addr constant [3 x i8] c"xn\00", align 1
@hasxn = common global i32 0, align 4
@.str.35 = private unnamed_addr constant [3 x i8] c"YE\00", align 1
@hasye = common global i32 0, align 4
@.str.36 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@tclines = common global i32 0, align 4
@.str.37 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@tccolumns = common global i32 0, align 4
@.str.38 = private unnamed_addr constant [3 x i8] c"Co\00", align 1
@tccolours = common global i32 0, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@rprompt_indent = external global i32, align 4
@zero_mnumber = external global %struct.mnumber, align 8
@noeval = external global i32, align 4
@histsiz = external global i32, align 4
@cmdstack = external global i8*, align 4
@cmdsp = external global i32, align 4
@bangchar = external global i8, align 1
@hashchar = external global i8, align 1
@hatchar = external global i8, align 1
@coprocout = external global i32, align 4
@coprocin = external global i32, align 4
@prevjob = external global i32, align 4
@curjob = external global i32, align 4
@shtimer = external global %struct.timeval, align 4
@path = external global i8**, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"/bin\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"/usr/bin\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"/usr/ucb\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@cdpath = external global i8**, align 4
@manpath = external global i8**, align 4
@fignore = external global i8**, align 4
@fpath = external global i8**, align 4
@.str.45 = private unnamed_addr constant [36 x i8] c"/usr/local/share/zsh/site-functions\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"/usr/local/share/zsh/5.5.1-dev-0/functions\00", align 1
@mailpath = external global i8**, align 4
@watch = external global i8**, align 4
@psvar = external global i8**, align 4
@.str.47 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/zsh/5.5.1-dev-0\00", align 1
@module_path = external global i8**, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@modulestab = external global %struct.hashtable*, align 4
@linkedmodules = external global %union.linkroot*, align 4
@prompt = external global i8*, align 4
@prompt2 = external global i8*, align 4
@emulation = external global i32, align 4
@.str.49 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"$ \00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"%m%# \00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"%_> \00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"?# \00", align 1
@prompt3 = external global i8*, align 4
@.str.55 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"+%N:%i> \00", align 1
@prompt4 = external global i8*, align 4
@.str.57 = private unnamed_addr constant [35 x i8] c"zsh: correct '%R' to '%r' [nyae]? \00", align 1
@sprompt = external global i8*, align 4
@.str.58 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c" \09\0A\83 \00", align 1
@ifs = external global i8*, align 4
@.str.60 = private unnamed_addr constant [24 x i8] c"*?_-.[]~=/&;!#$%^(){}<>\00", align 1
@wordchars = external global i8*, align 4
@postedit = external global i8*, align 4
@underscorelen = common global i32 0, align 4
@zunderscore = common global i8* null, align 4
@underscoreused = common global i32 0, align 4
@zoptarg = external global i8*, align 4
@zoptind = external global i32, align 4
@ppid = external global i32, align 4
@.str.61 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@nullcmd = external global i8*, align 4
@.str.62 = private unnamed_addr constant [5 x i8] c"more\00", align 1
@readnullcmd = external global i8*, align 4
@cached_uid = external global i32, align 4
@home = external global i8*, align 4
@cached_username = external global i8*, align 4
@.str.63 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@pwd = external global i8*, align 4
@.str.65 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@oldpwd = external global i8*, align 4
@condtab = external global %struct.conddef*, align 4
@wrappers = external global %struct.funcwrap*, align 4
@current_limits = external global [15 x %struct.rlimit], align 8
@limits = external global [15 x %struct.rlimit], align 8
@loops = external global i32, align 4
@breaks = external global i32, align 4
@lastmailcheck = external global i32, align 4
@locallevel = external global i32, align 4
@sfcontext = external global i32, align 4
@trap_return = external global i32, align 4
@trap_state = external global i32, align 4
@noerrexit = external global i32, align 4
@nohistsave = external global i32, align 4
@dirstack = external global %union.linkroot*, align 4
@bufstack = external global %union.linkroot*, align 4
@hsubr = external global i8*, align 4
@hsubl = external global i8*, align 4
@lastpid = external global i32, align 4
@.str.66 = private unnamed_addr constant [21 x i8] c"ZSH_EXECUTION_STRING\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"ZSH_SCRIPT\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"ZSH_NAME\00", align 1
@sigchld_mask = common global %struct.__sigset_t zeroinitializer, align 4
@.str.69 = private unnamed_addr constant [13 x i8] c"/etc/profile\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c".profile\00", align 1
@noerrs = external global i32, align 4
@.str.71 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"/etc/suid_profile\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"/etc/zshenv\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"zsh/newuser\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c".zshenv\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"/etc/zprofile\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c".zprofile\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"/etc/zshrc\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c".zshrc\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"/etc/zlogin\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c".zlogin\00", align 1
@SHIN = external global i32, align 4
@bshin = external global %struct._IO_FILE*, align 4
@.str.82 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"cmdarg\00", align 1
@thisjob = external global i32, align 4
@lineno = external global i32, align 4
@.str.85 = private unnamed_addr constant [15 x i8] c"<sourcetrace>\0A\00", align 1
@funcstack = external global %struct.funcstack*, align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"filecode\00", align 1
@fdtable = external global i8*, align 4
@.str.87 = private unnamed_addr constant [8 x i8] c"ZDOTDIR\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"b:limit\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"b:ulimit\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"b:unlimit\00", align 1
@init_bltinmods.zsh_features = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i8* null], align 4
@init_bltinmods.emu_features = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null], align 4
@.str.92 = private unnamed_addr constant [12 x i8] c"zsh/rlimits\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"b:sched\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"p:zsh_scheduled_events\00", align 1
@init_bltinmods.features = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i32 0, i32 0), i8* null], align 4
@.str.95 = private unnamed_addr constant [10 x i8] c"zsh/sched\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"b:private\00", align 1
@init_bltinmods.features.97 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* null], align 4
@.str.98 = private unnamed_addr constant [18 x i8] c"zsh/param/private\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"p:parameters\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"p:commands\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"p:functions\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"p:dis_functions\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"p:funcfiletrace\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"p:funcsourcetrace\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"p:funcstack\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"p:functrace\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"p:builtins\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"p:dis_builtins\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"p:reswords\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"p:dis_reswords\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"p:patchars\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"p:dis_patchars\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"p:options\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"p:modules\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"p:dirstack\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"p:history\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"p:historywords\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"p:jobtexts\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"p:jobdirs\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"p:jobstates\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"p:nameddirs\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"p:userdirs\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"p:aliases\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"p:dis_aliases\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"p:galiases\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"p:dis_galiases\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"p:saliases\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"p:dis_saliases\00", align 1
@init_bltinmods.features.129 = private unnamed_addr constant [31 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i32 0, i32 0), i8* null], align 4
@.str.130 = private unnamed_addr constant [14 x i8] c"zsh/parameter\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"b:echotc\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"p:termcap\00", align 1
@init_bltinmods.features.133 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* null], align 4
@.str.134 = private unnamed_addr constant [12 x i8] c"zsh/termcap\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"b:zformat\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"b:zstyle\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"b:zregexparse\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"b:zparseopts\00", align 1
@init_bltinmods.features.139 = private unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i8* null], align 4
@.str.140 = private unnamed_addr constant [10 x i8] c"zsh/zutil\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"zsh/complete\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"b:compctl\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"b:compcall\00", align 1
@init_bltinmods.features.144 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* null], align 4
@.str.145 = private unnamed_addr constant [12 x i8] c"zsh/compctl\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"zsh/zle\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"b:compadd\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"b:compset\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"c:prefix\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"c:suffix\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"c:between\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"c:after\00", align 1
@init_bltinmods.features.153 = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0), i8* null], align 4
@.str.154 = private unnamed_addr constant [13 x i8] c"zsh/complist\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"b:compdescribe\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"b:comparguments\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"b:compvalues\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"b:compquote\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"b:comptags\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"b:comptry\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"b:compfiles\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"b:compgroups\00", align 1
@init_bltinmods.features.163 = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), i8* null], align 4
@.str.164 = private unnamed_addr constant [13 x i8] c"zsh/computil\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"b:bindkey\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"b:vared\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"b:zle\00", align 1
@init_bltinmods.features.168 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i8* null], align 4
@.str.169 = private unnamed_addr constant [10 x i8] c"p:widgets\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"p:keymaps\00", align 1
@init_bltinmods.features.171 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.170, i32 0, i32 0), i8* null], align 4
@.str.172 = private unnamed_addr constant [17 x i8] c"zsh/zleparameter\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"zsh/main\00", align 1
@zle_load_state = common global i32 0, align 4
@zle_entry_ptr = common global i8* (i32, i32*)* null, align 4
@compctlreadptr = global i32 (i8*, i8**, %struct.options*, i8*)* @fallback_compctlread, align 4
@.str.174 = private unnamed_addr constant [54 x i8] c"no loaded module provides read for completion context\00", align 1
@environ = external global i8**, align 4
@typtab = external global [256 x i16], align 2
@.str.175 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@fdtable_size = external global i32, align 4
@.str.177 = private unnamed_addr constant [20 x i8] c"use 'exit' to exit.\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"use 'logout' to logout.\00", align 1
@.str.179 = private unnamed_addr constant [40 x i8] c"Usage: %s [<options>] [<argument> ...]\0A\00", align 1
@argzero = external global i8*, align 4
@.str.180 = private unnamed_addr constant [19 x i8] c"\0ASpecial options:\0A\00", align 1
@.str.181 = private unnamed_addr constant [43 x i8] c"  --help     show this message, then exit\0A\00", align 1
@.str.182 = private unnamed_addr constant [49 x i8] c"  --version  show zsh version number, then exit\0A\00", align 1
@.str.183 = private unnamed_addr constant [45 x i8] c"  -b         end option processing, like --\0A\00", align 1
@.str.184 = private unnamed_addr constant [58 x i8] c"  -c         take first argument as a command to execute\0A\00", align 1
@.str.185 = private unnamed_addr constant [48 x i8] c"  -o OPTION  set an option by name (see below)\0A\00", align 1
@.str.186 = private unnamed_addr constant [59 x i8] c"\0ANormal options are named.  An option may be turned on by\0A\00", align 1
@.str.187 = private unnamed_addr constant [63 x i8] c"`-o OPTION', `--OPTION', `+o no_OPTION' or `+-no-OPTION'.  An\0A\00", align 1
@.str.188 = private unnamed_addr constant [60 x i8] c"option may be turned off by `-o no_OPTION', `--no-OPTION',\0A\00", align 1
@.str.189 = private unnamed_addr constant [62 x i8] c"`+o OPTION' or `+-OPTION'.  Options are listed below only in\0A\00", align 1
@.str.190 = private unnamed_addr constant [35 x i8] c"`--OPTION' or `--no-OPTION' form.\0A\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str.195 = private unnamed_addr constant [3 x i8] c"RI\00", align 1
@.str.196 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.200 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.202 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.203 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.204 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.208 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.211 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"ue\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"ku\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"kd\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"kl\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"kr\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.223 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.224 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@posixzero = external global i8*, align 4
@pparams = external global i8**, align 4
@.str.225 = private unnamed_addr constant [26 x i8] c"can't open input file: %s\00", align 1
@stdin = external constant %struct._IO_FILE*, align 4

; Function Attrs: noinline nounwind
define i32 @loop(i32 %toplevel, i32 %justonce) #0 {
entry:
  %retval = alloca i32, align 4
  %toplevel.addr = alloca i32, align 4
  %justonce.addr = alloca i32, align 4
  %prog = alloca %struct.eprog*, align 4
  %err = alloca i32, align 4
  %non_empty = alloca i32, align 4
  %hstop = alloca i32, align 4
  %toksav = alloca i32, align 4
  %args = alloca %union.linkroot*, align 4
  %cmdstr = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp113 = alloca %struct.__sigset_t, align 4
  %oset135 = alloca %struct.__sigset_t, align 4
  %tmp139 = alloca %struct.__sigset_t, align 4
  %tmp141 = alloca %struct.__sigset_t, align 4
  store i32 %toplevel, i32* %toplevel.addr, align 4
  store i32 %justonce, i32* %justonce.addr, align 4
  store i32 0, i32* %non_empty, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  call void @pushheap()
  %1 = load i32, i32* %toplevel.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @zcontext_save()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end121, %if.end41, %if.end
  call void @freeheap()
  %2 = load i32, i32* @stophist, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %for.cond
  %call = call i32 @hend(%struct.eprog* null)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %for.cond
  call void @hbegin(i32 1)
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool3 = icmp ne i8 %3, 0
  br i1 %tobool3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end2
  %call5 = call i32 @setblock_stdin()
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %4 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.then4
  %5 = load i32, i32* %toplevel.addr, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* @stophist, align 4
  store i32 %6, i32* %hstop, align 4
  store i32 3, i32* @stophist, align 4
  store i32 0, i32* @errflag, align 4
  call void @preprompt()
  %7 = load i32, i32* @stophist, align 4
  %cmp9 = icmp ne i32 %7, 3
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @hbegin(i32 1)
  br label %if.end12

if.else:                                          ; preds = %if.then8
  %8 = load i32, i32* %hstop, align 4
  store i32 %8, i32* @stophist, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  store i32 0, i32* @errflag, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end2
  store i32 0, i32* @use_exit_printed, align 4
  call void @intr()
  call void @lexinit()
  %call15 = call %struct.eprog* @parse_event(i32 37)
  store %struct.eprog* %call15, %struct.eprog** %prog, align 4
  %tobool16 = icmp ne %struct.eprog* %call15, null
  br i1 %tobool16, label %if.end42, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call18 = call i32 @hend(%struct.eprog* null)
  %9 = load i32, i32* @tok, align 4
  %cmp19 = icmp eq i32 %9, 37
  br i1 %cmp19, label %land.lhs.true21, label %lor.lhs.false

land.lhs.true21:                                  ; preds = %if.then17
  %10 = load i32, i32* @errflag, align 4
  %tobool22 = icmp ne i32 %10, 0
  br i1 %tobool22, label %lor.lhs.false, label %if.then31

lor.lhs.false:                                    ; preds = %land.lhs.true21, %if.then17
  %11 = load i32, i32* @tok, align 4
  %cmp23 = icmp eq i32 %11, 38
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false29

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %12 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool26 = icmp ne i8 %12, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then31

lor.lhs.false27:                                  ; preds = %land.lhs.true25
  %13 = load i32, i32* %toplevel.addr, align 4
  %tobool28 = icmp ne i32 %13, 0
  br i1 %tobool28, label %lor.lhs.false29, label %if.then31

lor.lhs.false29:                                  ; preds = %lor.lhs.false27, %lor.lhs.false
  %14 = load i32, i32* %justonce.addr, align 4
  %tobool30 = icmp ne i32 %14, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false29, %lor.lhs.false27, %land.lhs.true25, %land.lhs.true21
  br label %for.end

if.end32:                                         ; preds = %lor.lhs.false29
  %15 = load i32, i32* @exit_pending, align 4
  %tobool33 = icmp ne i32 %15, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  store i32 1, i32* @stopmsg, align 4
  %16 = load i32, i32* @exit_pending, align 4
  %shr = ashr i32 %16, 1
  call void @zexit(i32 %shr, i32 0)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32
  %17 = load i32, i32* @tok, align 4
  %cmp36 = icmp eq i32 %17, 38
  br i1 %cmp36, label %land.lhs.true38, label %if.end41

land.lhs.true38:                                  ; preds = %if.end35
  %18 = load i32, i32* @lastval, align 4
  %tobool39 = icmp ne i32 %18, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %land.lhs.true38
  store i32 1, i32* @lastval, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %land.lhs.true38, %if.end35
  br label %for.cond

if.end42:                                         ; preds = %if.end14
  %19 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %call43 = call i32 @hend(%struct.eprog* %19)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.end87

if.then45:                                        ; preds = %if.end42
  %20 = load i32, i32* @tok, align 4
  store i32 %20, i32* %toksav, align 4
  store i32 1, i32* %non_empty, align 4
  %21 = load i32, i32* %toplevel.addr, align 4
  %tobool46 = icmp ne i32 %21, 0
  br i1 %tobool46, label %land.lhs.true47, label %if.end79

land.lhs.true47:                                  ; preds = %if.then45
  %call48 = call %struct.shfunc* @getshfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %tobool49 = icmp ne %struct.shfunc* %call48, null
  br i1 %tobool49, label %if.then53, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true47
  %22 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 9
  %23 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %24 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call51 = call %struct.hashnode* %23(%struct.hashtable* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  %tobool52 = icmp ne %struct.hashnode* %call51, null
  br i1 %tobool52, label %if.then53, label %if.end79

if.then53:                                        ; preds = %lor.lhs.false50, %land.lhs.true47
  %call54 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call54, %union.linkroot** %args, align 4
  %25 = load %union.linkroot*, %union.linkroot** %args, align 4
  %26 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list = bitcast %union.linkroot* %26 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %27 = load %struct.linknode*, %struct.linknode** %last, align 4
  %call55 = call %struct.linknode* @insertlinknode(%union.linkroot* %25, %struct.linknode* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %28 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool56 = icmp ne %struct.histent* %28, null
  br i1 %tobool56, label %land.lhs.true57, label %if.else64

land.lhs.true57:                                  ; preds = %if.then53
  %29 = load i32, i32* getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 8), align 4
  %30 = load i32, i32* @curhist, align 4
  %cmp58 = icmp eq i32 %29, %30
  br i1 %cmp58, label %if.then60, label %if.else64

if.then60:                                        ; preds = %land.lhs.true57
  %31 = load %union.linkroot*, %union.linkroot** %args, align 4
  %32 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list61 = bitcast %union.linkroot* %32 to %struct.linklist*
  %last62 = getelementptr inbounds %struct.linklist, %struct.linklist* %list61, i32 0, i32 1
  %33 = load %struct.linknode*, %struct.linknode** %last62, align 4
  %34 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %34, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %35 = load i8*, i8** %nam, align 4
  %call63 = call %struct.linknode* @insertlinknode(%union.linkroot* %31, %struct.linknode* %33, i8* %35)
  br label %if.end68

if.else64:                                        ; preds = %land.lhs.true57, %if.then53
  %36 = load %union.linkroot*, %union.linkroot** %args, align 4
  %37 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list65 = bitcast %union.linkroot* %37 to %struct.linklist*
  %last66 = getelementptr inbounds %struct.linklist, %struct.linklist* %list65, i32 0, i32 1
  %38 = load %struct.linknode*, %struct.linknode** %last66, align 4
  %call67 = call %struct.linknode* @insertlinknode(%union.linkroot* %36, %struct.linknode* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then60
  %39 = load %union.linkroot*, %union.linkroot** %args, align 4
  %40 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list69 = bitcast %union.linkroot* %40 to %struct.linklist*
  %last70 = getelementptr inbounds %struct.linklist, %struct.linklist* %list69, i32 0, i32 1
  %41 = load %struct.linknode*, %struct.linknode** %last70, align 4
  %42 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %call71 = call i8* @getjobtext(%struct.eprog* %42, i32* null)
  %call72 = call i8* @dupstring(i8* %call71)
  %call73 = call %struct.linknode* @insertlinknode(%union.linkroot* %39, %struct.linknode* %41, i8* %call72)
  %43 = load %union.linkroot*, %union.linkroot** %args, align 4
  %44 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list74 = bitcast %union.linkroot* %44 to %struct.linklist*
  %last75 = getelementptr inbounds %struct.linklist, %struct.linklist* %list74, i32 0, i32 1
  %45 = load %struct.linknode*, %struct.linknode** %last75, align 4
  %46 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %call76 = call i8* @getpermtext(%struct.eprog* %46, i32* null, i32 0)
  store i8* %call76, i8** %cmdstr, align 4
  %call77 = call %struct.linknode* @insertlinknode(%union.linkroot* %43, %struct.linknode* %45, i8* %call76)
  %47 = load %union.linkroot*, %union.linkroot** %args, align 4
  %call78 = call i32 @callhookfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %union.linkroot* %47, i32 1, i32* null)
  %48 = load i8*, i8** %cmdstr, align 4
  call void @zsfree(i8* %48)
  %49 = load i32, i32* @errflag, align 4
  %and = and i32 %49, -2
  store i32 %and, i32* @errflag, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end68, %lor.lhs.false50, %if.then45
  %50 = load i32, i32* @stopmsg, align 4
  %tobool80 = icmp ne i32 %50, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end79
  %51 = load i32, i32* @stopmsg, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* @stopmsg, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end79
  %52 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %53 = load i32, i32* %toplevel.addr, align 4
  %tobool83 = icmp ne i32 %53, 0
  %cond = select i1 %tobool83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)
  call void @execode(%struct.eprog* %52, i32 0, i32 0, i8* %cond)
  %54 = load i32, i32* %toksav, align 4
  store i32 %54, i32* @tok, align 4
  %55 = load i32, i32* %toplevel.addr, align 4
  %tobool84 = icmp ne i32 %55, 0
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end82
  store i32 0, i32* @noexitct, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end82
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end42
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call88 = call i32 @ferror(%struct._IO_FILE* %56)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end87
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  call void @clearerr(%struct._IO_FILE* %57)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end87
  %58 = load i32, i32* @subsh, align 4
  %tobool92 = icmp ne i32 %58, 0
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end91
  %59 = load i32, i32* @lastval, align 4
  call void @exit(i32 %59) #6
  unreachable

if.end94:                                         ; preds = %if.end91
  %60 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool95 = icmp ne i8 %60, 0
  br i1 %tobool95, label %lor.lhs.false96, label %land.lhs.true98

lor.lhs.false96:                                  ; preds = %if.end94
  %61 = load i32, i32* @sourcelevel, align 4
  %tobool97 = icmp ne i32 %61, 0
  br i1 %tobool97, label %land.lhs.true98, label %lor.lhs.false100

land.lhs.true98:                                  ; preds = %lor.lhs.false96, %if.end94
  %62 = load i32, i32* @errflag, align 4
  %tobool99 = icmp ne i32 %62, 0
  br i1 %tobool99, label %if.then102, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %land.lhs.true98, %lor.lhs.false96
  %63 = load i32, i32* @retflag, align 4
  %tobool101 = icmp ne i32 %63, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %lor.lhs.false100, %land.lhs.true98
  br label %for.end

if.end103:                                        ; preds = %lor.lhs.false100
  %64 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 166), align 1
  %conv104 = sext i8 %64 to i32
  %tobool105 = icmp ne i32 %conv104, 0
  br i1 %tobool105, label %land.lhs.true106, label %if.end118

land.lhs.true106:                                 ; preds = %if.end103
  %65 = load i32, i32* %toplevel.addr, align 4
  %tobool107 = icmp ne i32 %65, 0
  br i1 %tobool107, label %if.then108, label %if.end118

if.then108:                                       ; preds = %land.lhs.true106
  br label %do.body

do.body:                                          ; preds = %if.then108
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body109

do.body109:                                       ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body109
  %66 = load i32, i32* @queue_front, align 4
  %67 = load i32, i32* @queue_rear, align 4
  %cmp110 = icmp ne i32 %66, %67
  br i1 %cmp110, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %68, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %69 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %69
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %70 = bitcast %struct.__sigset_t* %oset to i8*
  %71 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %70, i8* %71, i32 128, i32 4, i1 false)
  %72 = load i32, i32* @queue_front, align 4
  %arrayidx112 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %72
  %73 = load i32, i32* %arrayidx112, align 4
  call void @zhandler(i32 %73)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp113, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %do.end114

do.end114:                                        ; preds = %do.end
  %74 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 0), align 4
  %tobool115 = icmp ne i32 %74, 0
  br i1 %tobool115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %do.end114
  call void @dotrap(i32 0)
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %do.end114
  %75 = load i32, i32* @lastval, align 4
  call void @exit(i32 %75) #6
  unreachable

if.end118:                                        ; preds = %land.lhs.true106, %if.end103
  %76 = load i32, i32* %justonce.addr, align 4
  %tobool119 = icmp ne i32 %76, 0
  br i1 %tobool119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end118
  br label %for.end

if.end121:                                        ; preds = %if.end118
  br label %for.cond

for.end:                                          ; preds = %if.then120, %if.then102, %if.then31
  %77 = load i32, i32* @errflag, align 4
  store i32 %77, i32* %err, align 4
  %78 = load i32, i32* %toplevel.addr, align 4
  %tobool122 = icmp ne i32 %78, 0
  br i1 %tobool122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %for.end
  call void @zcontext_restore()
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %for.end
  call void @popheap()
  br label %do.body125

do.body125:                                       ; preds = %if.end124
  %79 = load i32, i32* @queueing_enabled, align 4
  %dec126 = add nsw i32 %79, -1
  store i32 %dec126, i32* @queueing_enabled, align 4
  %tobool127 = icmp ne i32 %dec126, 0
  br i1 %tobool127, label %if.end144, label %if.then128

if.then128:                                       ; preds = %do.body125
  br label %do.body129

do.body129:                                       ; preds = %if.then128
  br label %while.cond130

while.cond130:                                    ; preds = %while.body133, %do.body129
  %80 = load i32, i32* @queue_front, align 4
  %81 = load i32, i32* @queue_rear, align 4
  %cmp131 = icmp ne i32 %80, %81
  br i1 %cmp131, label %while.body133, label %while.end142

while.body133:                                    ; preds = %while.cond130
  %82 = load i32, i32* @queue_front, align 4
  %add136 = add nsw i32 %82, 1
  %rem137 = srem i32 %add136, 128
  store i32 %rem137, i32* @queue_front, align 4
  %83 = load i32, i32* @queue_front, align 4
  %arrayidx138 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %83
  call void @signal_setmask(%struct.__sigset_t* sret %tmp139, %struct.__sigset_t* byval align 4 %arrayidx138)
  %84 = bitcast %struct.__sigset_t* %oset135 to i8*
  %85 = bitcast %struct.__sigset_t* %tmp139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %84, i8* %85, i32 128, i32 4, i1 false)
  %86 = load i32, i32* @queue_front, align 4
  %arrayidx140 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %86
  %87 = load i32, i32* %arrayidx140, align 4
  call void @zhandler(i32 %87)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp141, %struct.__sigset_t* byval align 4 %oset135)
  br label %while.cond130

while.end142:                                     ; preds = %while.cond130
  br label %do.end143

do.end143:                                        ; preds = %while.end142
  br label %if.end144

if.end144:                                        ; preds = %do.end143, %do.body125
  br label %do.end145

do.end145:                                        ; preds = %if.end144
  %88 = load i32, i32* %err, align 4
  %tobool146 = icmp ne i32 %88, 0
  br i1 %tobool146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %do.end145
  store i32 2, i32* %retval, align 4
  br label %return

if.end148:                                        ; preds = %do.end145
  %89 = load i32, i32* %non_empty, align 4
  %tobool149 = icmp ne i32 %89, 0
  br i1 %tobool149, label %if.end151, label %if.then150

if.then150:                                       ; preds = %if.end148
  store i32 1, i32* %retval, align 4
  br label %return

if.end151:                                        ; preds = %if.end148
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end151, %if.then150, %if.then147
  %90 = load i32, i32* %retval, align 4
  ret i32 %90
}

declare void @pushheap() #1

declare void @zcontext_save() #1

declare void @freeheap() #1

declare i32 @hend(%struct.eprog*) #1

declare void @hbegin(i32) #1

declare i32 @setblock_stdin() #1

declare void @preprompt() #1

declare void @intr() #1

declare void @lexinit() #1

declare %struct.eprog* @parse_event(i32) #1

declare void @zexit(i32, i32) #1

declare %struct.shfunc* @getshfunc(i8*) #1

declare %union.linkroot* @newlinklist() #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare i8* @dupstring(i8*) #1

declare i8* @getjobtext(%struct.eprog*, i32*) #1

declare i8* @getpermtext(%struct.eprog*, i32*, i32) #1

declare i32 @callhookfunc(i8*, %union.linkroot*, i32, i32*) #1

declare void @zsfree(i8*) #1

declare void @execode(%struct.eprog*, i32, i32, i8*) #1

declare i32 @ferror(%struct._IO_FILE*) #1

declare void @zerr(i8*, ...) #1

declare void @clearerr(%struct._IO_FILE*) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

declare void @zhandler(i32) #1

declare void @dotrap(i32) #1

declare void @zcontext_restore() #1

declare void @popheap() #1

; Function Attrs: noinline nounwind
define i32 @parseopts(i8* %nam, i8*** %argvp, i8* %new_opts, i8** %cmdp, %union.linkroot* %optlist, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argvp.addr = alloca i8***, align 4
  %new_opts.addr = alloca i8*, align 4
  %cmdp.addr = alloca i8**, align 4
  %optlist.addr = alloca %union.linkroot*, align 4
  %flags.addr = alloca i32, align 4
  %optionbreak = alloca i32, align 4
  %action = alloca i32, align 4
  %optno = alloca i32, align 4
  %argv = alloca i8**, align 4
  %toplevel = alloca i32, align 4
  %emulate_required = alloca i32, align 4
  %top_emulation = alloca i8*, align 4
  %args = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8*** %argvp, i8**** %argvp.addr, align 4
  store i8* %new_opts, i8** %new_opts.addr, align 4
  store i8** %cmdp, i8*** %cmdp.addr, align 4
  store %union.linkroot* %optlist, %union.linkroot** %optlist.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %optionbreak, align 4
  %0 = load i8***, i8**** %argvp.addr, align 4
  %1 = load i8**, i8*** %0, align 4
  store i8** %1, i8*** %argv, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 1
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %toplevel, align 4
  %3 = load i32, i32* %toplevel, align 4
  store i32 %3, i32* %emulate_required, align 4
  %4 = load i8*, i8** %nam.addr, align 4
  store i8* %4, i8** %top_emulation, align 4
  %5 = load i8**, i8*** %cmdp.addr, align 4
  store i8* null, i8** %5, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end254, %entry
  %6 = load i32, i32* %optionbreak, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %7 = load i8**, i8*** %argv, align 4
  %8 = load i8*, i8** %7, align 4
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i8**, i8*** %argv, align 4
  %10 = load i8*, i8** %9, align 4
  %11 = load i8, i8* %10, align 1
  %conv2 = sext i8 %11 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %12 = load i8**, i8*** %argv, align 4
  %13 = load i8*, i8** %12, align 4
  %14 = load i8, i8* %13, align 1
  %conv5 = sext i8 %14 to i32
  %cmp6 = icmp eq i32 %conv5, 43
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %15 = phi i1 [ true, %land.rhs ], [ %cmp6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %while.cond
  %16 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %15, %lor.end ]
  br i1 %16, label %while.body, label %while.end256

while.body:                                       ; preds = %land.end
  %17 = load i8**, i8*** %argv, align 4
  %18 = load i8*, i8** %17, align 4
  store i8* %18, i8** %args, align 4
  %19 = load i8**, i8*** %argv, align 4
  %20 = load i8*, i8** %19, align 4
  %21 = load i8, i8* %20, align 1
  %conv8 = sext i8 %21 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %action, align 4
  %22 = load i8**, i8*** %argv, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %22, i32 0
  %23 = load i8*, i8** %arrayidx, align 4
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i32 1
  %24 = load i8, i8* %arrayidx11, align 1
  %tobool12 = icmp ne i8 %24, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %25 = load i8**, i8*** %argv, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8** %25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond13

while.cond13:                                     ; preds = %if.end253, %if.end
  %26 = load i8**, i8*** %argv, align 4
  %27 = load i8*, i8** %26, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %26, align 4
  %28 = load i8, i8* %incdec.ptr, align 1
  %tobool14 = icmp ne i8 %28, 0
  br i1 %tobool14, label %while.body15, label %while.end254

while.body15:                                     ; preds = %while.cond13
  %29 = load i8**, i8*** %argv, align 4
  %30 = load i8*, i8** %29, align 4
  %31 = load i8, i8* %30, align 1
  %conv16 = sext i8 %31 to i32
  %cmp17 = icmp eq i32 %conv16, 45
  br i1 %cmp17, label %if.then19, label %if.end77

if.then19:                                        ; preds = %while.body15
  %32 = load i8**, i8*** %argv, align 4
  %arrayidx20 = getelementptr inbounds i8*, i8** %32, i32 0
  %33 = load i8*, i8** %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds i8, i8* %33, i32 1
  %34 = load i8, i8* %arrayidx21, align 1
  %tobool22 = icmp ne i8 %34, 0
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.then19
  %35 = load i8**, i8*** %argv, align 4
  %incdec.ptr24 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr24, i8*** %argv, align 4
  br label %doneoptions

if.end25:                                         ; preds = %if.then19
  %36 = load i32, i32* %toplevel, align 4
  %tobool26 = icmp ne i32 %36, 0
  br i1 %tobool26, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %if.end25
  %37 = load i8**, i8*** %argv, align 4
  %38 = load i8*, i8** %37, align 4
  %39 = load i8*, i8** %args, align 4
  %add.ptr = getelementptr inbounds i8, i8* %39, i32 1
  %cmp27 = icmp ne i8* %38, %add.ptr
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %40 = load i8**, i8*** %argv, align 4
  %41 = load i8*, i8** %40, align 4
  %42 = load i8, i8* %41, align 1
  %conv30 = sext i8 %42 to i32
  %cmp31 = icmp ne i32 %conv30, 45
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false29, %lor.lhs.false, %if.end25
  br label %badoptionstring

if.end34:                                         ; preds = %lor.lhs.false29
  %43 = load i8**, i8*** %argv, align 4
  %44 = load i8*, i8** %43, align 4
  %incdec.ptr35 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr35, i8** %43, align 4
  %45 = load i8**, i8*** %argv, align 4
  %46 = load i8*, i8** %45, align 4
  %call = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call, 0
  br i1 %tobool36, label %if.end45, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then37
  %47 = load i32, i32* %toplevel, align 4
  %tobool39 = icmp ne i32 %47, 0
  br i1 %tobool39, label %if.else, label %if.then40

if.then40:                                        ; preds = %do.body
  %48 = load i8**, i8*** %argv, align 4
  %49 = load i8*, i8** %48, align 4
  %tobool41 = icmp ne i8* %49, null
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then40
  %50 = load i8**, i8*** %argv, align 4
  %incdec.ptr43 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %incdec.ptr43, i8*** %argv, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then40
  br label %doneargv

if.else:                                          ; preds = %do.body
  call void @exit(i32 0) #6
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end45

if.end45:                                         ; preds = %do.end, %if.end34
  %51 = load i8**, i8*** %argv, align 4
  %52 = load i8*, i8** %51, align 4
  %call46 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end58, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @printhelp()
  br label %do.body49

do.body49:                                        ; preds = %if.then48
  %53 = load i32, i32* %toplevel, align 4
  %tobool50 = icmp ne i32 %53, 0
  br i1 %tobool50, label %if.else56, label %if.then51

if.then51:                                        ; preds = %do.body49
  %54 = load i8**, i8*** %argv, align 4
  %55 = load i8*, i8** %54, align 4
  %tobool52 = icmp ne i8* %55, null
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then51
  %56 = load i8**, i8*** %argv, align 4
  %incdec.ptr54 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %incdec.ptr54, i8*** %argv, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then51
  br label %doneargv

if.else56:                                        ; preds = %do.body49
  call void @exit(i32 0) #6
  unreachable

do.end57:                                         ; No predecessors!
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.end45
  %57 = load i8**, i8*** %argv, align 4
  %58 = load i8*, i8** %57, align 4
  %call59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end69, label %if.then61

if.then61:                                        ; preds = %if.end58
  %59 = load i8**, i8*** %argv, align 4
  %incdec.ptr62 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %incdec.ptr62, i8*** %argv, align 4
  %60 = load i8**, i8*** %argv, align 4
  %61 = load i8*, i8** %60, align 4
  %tobool63 = icmp ne i8* %61, null
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.then61
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end65:                                         ; preds = %if.then61
  %62 = load i32, i32* %emulate_required, align 4
  %tobool66 = icmp ne i32 %62, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end65
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end68:                                         ; preds = %if.end65
  %63 = load i8**, i8*** %argv, align 4
  %64 = load i8*, i8** %63, align 4
  store i8* %64, i8** %top_emulation, align 4
  br label %while.end254

if.end69:                                         ; preds = %if.end58
  %65 = load i8**, i8*** %argv, align 4
  %66 = load i8*, i8** %65, align 4
  store i8* %66, i8** %args, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end69
  %67 = load i8*, i8** %args, align 4
  %68 = load i8, i8* %67, align 1
  %tobool70 = icmp ne i8 %68, 0
  br i1 %tobool70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i8*, i8** %args, align 4
  %70 = load i8, i8* %69, align 1
  %conv71 = sext i8 %70 to i32
  %cmp72 = icmp eq i32 %conv71, 45
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %for.body
  %71 = load i8*, i8** %args, align 4
  store i8 95, i8* %71, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end75
  %72 = load i8*, i8** %args, align 4
  %incdec.ptr76 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr76, i8** %args, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %longoptions

if.end77:                                         ; preds = %while.body15
  %73 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 163), align 1
  %tobool78 = icmp ne i8 %73, 0
  br i1 %tobool78, label %if.else87, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %if.end77
  %74 = load i8**, i8*** %argv, align 4
  %75 = load i8*, i8** %74, align 4
  %76 = load i8, i8* %75, align 1
  %conv80 = sext i8 %76 to i32
  %cmp81 = icmp eq i32 %conv80, 98
  br i1 %cmp81, label %if.then83, label %if.else87

if.then83:                                        ; preds = %land.lhs.true79
  %77 = load i32, i32* %emulate_required, align 4
  %tobool84 = icmp ne i32 %77, 0
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.then83
  %78 = load i8*, i8** %top_emulation, align 4
  %79 = load i32, i32* %flags.addr, align 4
  call void @parseopts_setemulate(i8* %78, i32 %79)
  store i32 0, i32* %emulate_required, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then83
  store i32 1, i32* %optionbreak, align 4
  br label %if.end253

if.else87:                                        ; preds = %land.lhs.true79, %if.end77
  %80 = load i8**, i8*** %argv, align 4
  %81 = load i8*, i8** %80, align 4
  %82 = load i8, i8* %81, align 1
  %conv88 = sext i8 %82 to i32
  %cmp89 = icmp eq i32 %conv88, 99
  br i1 %cmp89, label %if.then91, label %if.else100

if.then91:                                        ; preds = %if.else87
  %83 = load i32, i32* %emulate_required, align 4
  %tobool92 = icmp ne i32 %83, 0
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then91
  %84 = load i8*, i8** %top_emulation, align 4
  %85 = load i32, i32* %flags.addr, align 4
  call void @parseopts_setemulate(i8* %84, i32 %85)
  store i32 0, i32* %emulate_required, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.then91
  %86 = load i8**, i8*** %argv, align 4
  %87 = load i8*, i8** %86, align 4
  %88 = load i8**, i8*** %cmdp.addr, align 4
  store i8* %87, i8** %88, align 4
  %89 = load i8*, i8** %new_opts.addr, align 4
  %arrayidx95 = getelementptr inbounds i8, i8* %89, i32 94
  %90 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %90 to i32
  %and97 = and i32 %conv96, 1
  %conv98 = trunc i32 %and97 to i8
  store i8 %conv98, i8* %arrayidx95, align 1
  %call99 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  store i8* %call99, i8** @scriptfilename, align 4
  store i8* %call99, i8** @scriptname, align 4
  br label %if.end252

if.else100:                                       ; preds = %if.else87
  %91 = load i8**, i8*** %argv, align 4
  %92 = load i8*, i8** %91, align 4
  %93 = load i8, i8* %92, align 1
  %conv101 = sext i8 %93 to i32
  %cmp102 = icmp eq i32 %conv101, 111
  br i1 %cmp102, label %if.then104, label %if.else172

if.then104:                                       ; preds = %if.else100
  %94 = load i8**, i8*** %argv, align 4
  %95 = load i8*, i8** %94, align 4
  %incdec.ptr105 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr105, i8** %94, align 4
  %96 = load i8, i8* %incdec.ptr105, align 1
  %tobool106 = icmp ne i8 %96, 0
  br i1 %tobool106, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.then104
  %97 = load i8**, i8*** %argv, align 4
  %incdec.ptr108 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %incdec.ptr108, i8*** %argv, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then104
  %98 = load i8**, i8*** %argv, align 4
  %99 = load i8*, i8** %98, align 4
  %tobool110 = icmp ne i8* %99, null
  br i1 %tobool110, label %if.end118, label %if.then111

if.then111:                                       ; preds = %if.end109
  br label %do.body112

do.body112:                                       ; preds = %if.then111
  %100 = load i32, i32* %toplevel, align 4
  %tobool113 = icmp ne i32 %100, 0
  br i1 %tobool113, label %if.else115, label %if.then114

if.then114:                                       ; preds = %do.body112
  %101 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* null)
  br label %if.end116

if.else115:                                       ; preds = %do.body112
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* null)
  br label %if.end116

if.end116:                                        ; preds = %if.else115, %if.then114
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  store i32 1, i32* %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.end109
  br label %longoptions

longoptions:                                      ; preds = %if.end118, %for.end
  %102 = load i32, i32* %emulate_required, align 4
  %tobool119 = icmp ne i32 %102, 0
  br i1 %tobool119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %longoptions
  %103 = load i8*, i8** %top_emulation, align 4
  %104 = load i32, i32* %flags.addr, align 4
  call void @parseopts_setemulate(i8* %103, i32 %104)
  store i32 0, i32* %emulate_required, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %longoptions
  %105 = load i8**, i8*** %argv, align 4
  %106 = load i8*, i8** %105, align 4
  %call122 = call i32 @optlookup(i8* %106)
  store i32 %call122, i32* %optno, align 4
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.else131, label %if.then124

if.then124:                                       ; preds = %if.end121
  br label %do.body125

do.body125:                                       ; preds = %if.then124
  %107 = load i32, i32* %toplevel, align 4
  %tobool126 = icmp ne i32 %107, 0
  br i1 %tobool126, label %if.else128, label %if.then127

if.then127:                                       ; preds = %do.body125
  %108 = load i8*, i8** %nam.addr, align 4
  %109 = load i8**, i8*** %argv, align 4
  %110 = load i8*, i8** %109, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* %110)
  br label %if.end129

if.else128:                                       ; preds = %do.body125
  %111 = load i8**, i8*** %argv, align 4
  %112 = load i8*, i8** %111, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* %112)
  br label %if.end129

if.end129:                                        ; preds = %if.else128, %if.then127
  br label %do.end130

do.end130:                                        ; preds = %if.end129
  store i32 1, i32* %retval, align 4
  br label %return

if.else131:                                       ; preds = %if.end121
  %113 = load i32, i32* %optno, align 4
  %cmp132 = icmp eq i32 %113, 155
  br i1 %cmp132, label %land.lhs.true134, label %if.else137

land.lhs.true134:                                 ; preds = %if.else131
  %114 = load i32, i32* %toplevel, align 4
  %tobool135 = icmp ne i32 %114, 0
  br i1 %tobool135, label %if.then136, label %if.else137

if.then136:                                       ; preds = %land.lhs.true134
  %115 = load i32, i32* %action, align 4
  store i32 %115, i32* @restricted, align 4
  br label %if.end170

if.else137:                                       ; preds = %land.lhs.true134, %if.else131
  %116 = load i32, i32* %optno, align 4
  %cmp138 = icmp eq i32 %116, 49
  br i1 %cmp138, label %land.lhs.true143, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %if.else137
  %117 = load i32, i32* %optno, align 4
  %cmp141 = icmp eq i32 %117, 175
  br i1 %cmp141, label %land.lhs.true143, label %if.else152

land.lhs.true143:                                 ; preds = %lor.lhs.false140, %if.else137
  %118 = load i32, i32* %toplevel, align 4
  %tobool144 = icmp ne i32 %118, 0
  br i1 %tobool144, label %if.else152, label %if.then145

if.then145:                                       ; preds = %land.lhs.true143
  br label %do.body146

do.body146:                                       ; preds = %if.then145
  %119 = load i32, i32* %toplevel, align 4
  %tobool147 = icmp ne i32 %119, 0
  br i1 %tobool147, label %if.else149, label %if.then148

if.then148:                                       ; preds = %do.body146
  %120 = load i8*, i8** %nam.addr, align 4
  %121 = load i8**, i8*** %argv, align 4
  %122 = load i8*, i8** %121, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* %122)
  br label %if.end150

if.else149:                                       ; preds = %do.body146
  %123 = load i8**, i8*** %argv, align 4
  %124 = load i8*, i8** %123, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* %124)
  br label %if.end150

if.end150:                                        ; preds = %if.else149, %if.then148
  br label %do.end151

do.end151:                                        ; preds = %if.end150
  br label %if.end169

if.else152:                                       ; preds = %land.lhs.true143, %lor.lhs.false140
  %125 = load i32, i32* %optno, align 4
  %126 = load i32, i32* %action, align 4
  %127 = load i32, i32* %toplevel, align 4
  %128 = load i8*, i8** %new_opts.addr, align 4
  %call153 = call i32 @dosetopt(i32 %125, i32 %126, i32 %127, i8* %128)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %land.lhs.true155, label %if.else164

land.lhs.true155:                                 ; preds = %if.else152
  %129 = load i32, i32* %toplevel, align 4
  %tobool156 = icmp ne i32 %129, 0
  br i1 %tobool156, label %if.else164, label %if.then157

if.then157:                                       ; preds = %land.lhs.true155
  br label %do.body158

do.body158:                                       ; preds = %if.then157
  %130 = load i32, i32* %toplevel, align 4
  %tobool159 = icmp ne i32 %130, 0
  br i1 %tobool159, label %if.else161, label %if.then160

if.then160:                                       ; preds = %do.body158
  %131 = load i8*, i8** %nam.addr, align 4
  %132 = load i8**, i8*** %argv, align 4
  %133 = load i8*, i8** %132, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* %133)
  br label %if.end162

if.else161:                                       ; preds = %do.body158
  %134 = load i8**, i8*** %argv, align 4
  %135 = load i8*, i8** %134, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* %135)
  br label %if.end162

if.end162:                                        ; preds = %if.else161, %if.then160
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  br label %if.end168

if.else164:                                       ; preds = %land.lhs.true155, %if.else152
  %136 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %tobool165 = icmp ne %union.linkroot* %136, null
  br i1 %tobool165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.else164
  %137 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %138 = load i8*, i8** %new_opts.addr, align 4
  %139 = load i32, i32* %optno, align 4
  call void @parseopts_insert(%union.linkroot* %137, i8* %138, i32 %139)
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.else164
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %do.end163
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %do.end151
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then136
  br label %if.end171

if.end171:                                        ; preds = %if.end170
  br label %while.end254

if.else172:                                       ; preds = %if.else100
  %140 = load i8**, i8*** %argv, align 4
  %141 = load i8*, i8** %140, align 4
  %142 = load i8, i8* %141, align 1
  %conv173 = zext i8 %142 to i32
  %call174 = call i32 @isspace(i32 %conv173) #7
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then176, label %if.else192

if.then176:                                       ; preds = %if.else172
  br label %while.cond177

while.cond177:                                    ; preds = %if.end191, %if.then176
  %143 = load i8**, i8*** %argv, align 4
  %144 = load i8*, i8** %143, align 4
  %incdec.ptr178 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr178, i8** %143, align 4
  %145 = load i8, i8* %incdec.ptr178, align 1
  %tobool179 = icmp ne i8 %145, 0
  br i1 %tobool179, label %while.body180, label %while.end

while.body180:                                    ; preds = %while.cond177
  %146 = load i8**, i8*** %argv, align 4
  %147 = load i8*, i8** %146, align 4
  %148 = load i8, i8* %147, align 1
  %conv181 = zext i8 %148 to i32
  %call182 = call i32 @isspace(i32 %conv181) #7
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.end191, label %if.then184

if.then184:                                       ; preds = %while.body180
  br label %badoptionstring

badoptionstring:                                  ; preds = %if.then184, %if.then33
  br label %do.body185

do.body185:                                       ; preds = %badoptionstring
  %149 = load i32, i32* %toplevel, align 4
  %tobool186 = icmp ne i32 %149, 0
  br i1 %tobool186, label %if.else188, label %if.then187

if.then187:                                       ; preds = %do.body185
  %150 = load i8*, i8** %nam.addr, align 4
  %151 = load i8*, i8** %args, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* %151)
  br label %if.end189

if.else188:                                       ; preds = %do.body185
  %152 = load i8*, i8** %args, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* %152)
  br label %if.end189

if.end189:                                        ; preds = %if.else188, %if.then187
  br label %do.end190

do.end190:                                        ; preds = %if.end189
  store i32 1, i32* %retval, align 4
  br label %return

if.end191:                                        ; preds = %while.body180
  br label %while.cond177

while.end:                                        ; preds = %while.cond177
  br label %while.end254

if.else192:                                       ; preds = %if.else172
  %153 = load i32, i32* %emulate_required, align 4
  %tobool193 = icmp ne i32 %153, 0
  br i1 %tobool193, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.else192
  %154 = load i8*, i8** %top_emulation, align 4
  %155 = load i32, i32* %flags.addr, align 4
  call void @parseopts_setemulate(i8* %154, i32 %155)
  store i32 0, i32* %emulate_required, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.else192
  %156 = load i8**, i8*** %argv, align 4
  %157 = load i8*, i8** %156, align 4
  %158 = load i8, i8* %157, align 1
  %call196 = call i32 @optlookupc(i8 signext %158)
  store i32 %call196, i32* %optno, align 4
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.else207, label %if.then198

if.then198:                                       ; preds = %if.end195
  br label %do.body199

do.body199:                                       ; preds = %if.then198
  %159 = load i32, i32* %toplevel, align 4
  %tobool200 = icmp ne i32 %159, 0
  br i1 %tobool200, label %if.else203, label %if.then201

if.then201:                                       ; preds = %do.body199
  %160 = load i8*, i8** %nam.addr, align 4
  %161 = load i8**, i8*** %argv, align 4
  %162 = load i8*, i8** %161, align 4
  %163 = load i8, i8* %162, align 1
  %conv202 = sext i8 %163 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 %conv202)
  br label %if.end205

if.else203:                                       ; preds = %do.body199
  %164 = load i8**, i8*** %argv, align 4
  %165 = load i8*, i8** %164, align 4
  %166 = load i8, i8* %165, align 1
  %conv204 = sext i8 %166 to i32
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 %conv204)
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %if.then201
  br label %do.end206

do.end206:                                        ; preds = %if.end205
  store i32 1, i32* %retval, align 4
  br label %return

if.else207:                                       ; preds = %if.end195
  %167 = load i32, i32* %optno, align 4
  %cmp208 = icmp eq i32 %167, 155
  br i1 %cmp208, label %land.lhs.true210, label %if.else213

land.lhs.true210:                                 ; preds = %if.else207
  %168 = load i32, i32* %toplevel, align 4
  %tobool211 = icmp ne i32 %168, 0
  br i1 %tobool211, label %if.then212, label %if.else213

if.then212:                                       ; preds = %land.lhs.true210
  %169 = load i32, i32* %action, align 4
  store i32 %169, i32* @restricted, align 4
  br label %if.end248

if.else213:                                       ; preds = %land.lhs.true210, %if.else207
  %170 = load i32, i32* %optno, align 4
  %cmp214 = icmp eq i32 %170, 49
  br i1 %cmp214, label %land.lhs.true219, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %if.else213
  %171 = load i32, i32* %optno, align 4
  %cmp217 = icmp eq i32 %171, 175
  br i1 %cmp217, label %land.lhs.true219, label %if.else228

land.lhs.true219:                                 ; preds = %lor.lhs.false216, %if.else213
  %172 = load i32, i32* %toplevel, align 4
  %tobool220 = icmp ne i32 %172, 0
  br i1 %tobool220, label %if.else228, label %if.then221

if.then221:                                       ; preds = %land.lhs.true219
  br label %do.body222

do.body222:                                       ; preds = %if.then221
  %173 = load i32, i32* %toplevel, align 4
  %tobool223 = icmp ne i32 %173, 0
  br i1 %tobool223, label %if.else225, label %if.then224

if.then224:                                       ; preds = %do.body222
  %174 = load i8*, i8** %nam.addr, align 4
  %175 = load i8**, i8*** %argv, align 4
  %176 = load i8*, i8** %175, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* %176)
  br label %if.end226

if.else225:                                       ; preds = %do.body222
  %177 = load i8**, i8*** %argv, align 4
  %178 = load i8*, i8** %177, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), i8* %178)
  br label %if.end226

if.end226:                                        ; preds = %if.else225, %if.then224
  br label %do.end227

do.end227:                                        ; preds = %if.end226
  br label %if.end247

if.else228:                                       ; preds = %land.lhs.true219, %lor.lhs.false216
  %179 = load i32, i32* %optno, align 4
  %180 = load i32, i32* %action, align 4
  %181 = load i32, i32* %toplevel, align 4
  %182 = load i8*, i8** %new_opts.addr, align 4
  %call229 = call i32 @dosetopt(i32 %179, i32 %180, i32 %181, i8* %182)
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %land.lhs.true231, label %if.else242

land.lhs.true231:                                 ; preds = %if.else228
  %183 = load i32, i32* %toplevel, align 4
  %tobool232 = icmp ne i32 %183, 0
  br i1 %tobool232, label %if.else242, label %if.then233

if.then233:                                       ; preds = %land.lhs.true231
  br label %do.body234

do.body234:                                       ; preds = %if.then233
  %184 = load i32, i32* %toplevel, align 4
  %tobool235 = icmp ne i32 %184, 0
  br i1 %tobool235, label %if.else238, label %if.then236

if.then236:                                       ; preds = %do.body234
  %185 = load i8*, i8** %nam.addr, align 4
  %186 = load i8**, i8*** %argv, align 4
  %187 = load i8*, i8** %186, align 4
  %188 = load i8, i8* %187, align 1
  %conv237 = sext i8 %188 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %conv237)
  br label %if.end240

if.else238:                                       ; preds = %do.body234
  %189 = load i8**, i8*** %argv, align 4
  %190 = load i8*, i8** %189, align 4
  %191 = load i8, i8* %190, align 1
  %conv239 = sext i8 %191 to i32
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %conv239)
  br label %if.end240

if.end240:                                        ; preds = %if.else238, %if.then236
  br label %do.end241

do.end241:                                        ; preds = %if.end240
  br label %if.end246

if.else242:                                       ; preds = %land.lhs.true231, %if.else228
  %192 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %tobool243 = icmp ne %union.linkroot* %192, null
  br i1 %tobool243, label %if.then244, label %if.end245

if.then244:                                       ; preds = %if.else242
  %193 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %194 = load i8*, i8** %new_opts.addr, align 4
  %195 = load i32, i32* %optno, align 4
  call void @parseopts_insert(%union.linkroot* %193, i8* %194, i32 %195)
  br label %if.end245

if.end245:                                        ; preds = %if.then244, %if.else242
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %do.end241
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %do.end227
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.then212
  br label %if.end249

if.end249:                                        ; preds = %if.end248
  br label %if.end250

if.end250:                                        ; preds = %if.end249
  br label %if.end251

if.end251:                                        ; preds = %if.end250
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %if.end94
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.end86
  br label %while.cond13

while.end254:                                     ; preds = %while.end, %if.end171, %if.end68, %while.cond13
  %196 = load i8**, i8*** %argv, align 4
  %incdec.ptr255 = getelementptr inbounds i8*, i8** %196, i32 1
  store i8** %incdec.ptr255, i8*** %argv, align 4
  br label %while.cond

while.end256:                                     ; preds = %land.end
  br label %doneoptions

doneoptions:                                      ; preds = %while.end256, %if.then23
  %197 = load i8**, i8*** %cmdp.addr, align 4
  %198 = load i8*, i8** %197, align 4
  %tobool257 = icmp ne i8* %198, null
  br i1 %tobool257, label %if.then258, label %if.end269

if.then258:                                       ; preds = %doneoptions
  %199 = load i8**, i8*** %argv, align 4
  %200 = load i8*, i8** %199, align 4
  %tobool259 = icmp ne i8* %200, null
  br i1 %tobool259, label %if.end267, label %if.then260

if.then260:                                       ; preds = %if.then258
  br label %do.body261

do.body261:                                       ; preds = %if.then260
  %201 = load i32, i32* %toplevel, align 4
  %tobool262 = icmp ne i32 %201, 0
  br i1 %tobool262, label %if.else264, label %if.then263

if.then263:                                       ; preds = %do.body261
  %202 = load i8*, i8** %nam.addr, align 4
  %203 = load i8**, i8*** %cmdp.addr, align 4
  %204 = load i8*, i8** %203, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* %204)
  br label %if.end265

if.else264:                                       ; preds = %do.body261
  %205 = load i8**, i8*** %cmdp.addr, align 4
  %206 = load i8*, i8** %205, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* %206)
  br label %if.end265

if.end265:                                        ; preds = %if.else264, %if.then263
  br label %do.end266

do.end266:                                        ; preds = %if.end265
  store i32 1, i32* %retval, align 4
  br label %return

if.end267:                                        ; preds = %if.then258
  %207 = load i8**, i8*** %argv, align 4
  %incdec.ptr268 = getelementptr inbounds i8*, i8** %207, i32 1
  store i8** %incdec.ptr268, i8*** %argv, align 4
  %208 = load i8*, i8** %207, align 4
  %209 = load i8**, i8*** %cmdp.addr, align 4
  store i8* %208, i8** %209, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.end267, %doneoptions
  br label %doneargv

doneargv:                                         ; preds = %if.end269, %if.end55, %if.end44
  %210 = load i8**, i8*** %argv, align 4
  %211 = load i8***, i8**** %argvp.addr, align 4
  store i8** %210, i8*** %211, align 4
  %212 = load i32, i32* %emulate_required, align 4
  %tobool270 = icmp ne i32 %212, 0
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %doneargv
  %213 = load i8*, i8** %top_emulation, align 4
  %214 = load i32, i32* %flags.addr, align 4
  call void @parseopts_setemulate(i8* %213, i32 %214)
  store i32 0, i32* %emulate_required, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %doneargv
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end272, %do.end266, %do.end206, %do.end190, %do.end130, %do.end117
  %215 = load i32, i32* %retval, align 4
  ret i32 %215
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal void @printhelp() #0 {
entry:
  %0 = load i8*, i8** @argzero, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.179, i32 0, i32 0), i8* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.180, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.181, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.182, i32 0, i32 0))
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 163), align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.183, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.184, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.185, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.186, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.187, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.188, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.189, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.190, i32 0, i32 0))
  call void @printoptionlist()
  ret void
}

; Function Attrs: noinline nounwind
define internal void @parseopts_setemulate(i8* %nam, i32 %flags) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %nam.addr, align 4
  call void @emulate(i8* %0, i32 1, i32* @emulation, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 2
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 111), align 1
  %call = call i32 @getuid()
  %call2 = call i32 @geteuid()
  %cmp3 = icmp ne i32 %call, %call2
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call5 = call i32 @getgid()
  %call6 = call i32 @getegid()
  %cmp7 = icmp ne i32 %call5, %call6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  %conv9 = trunc i32 %lor.ext to i8
  store i8 %conv9, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %call10 = call i32 @isatty(i32 0)
  %tobool = icmp ne i32 %call10, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %conv11 = trunc i32 %cond to i8
  store i8 %conv11, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  store i8 2, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  store i8 2, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 69), align 1
  store i8 1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 166), align 1
  ret void
}

declare i8* @ztrdup(i8*) #1

declare void @zwarnnam(i8*, i8*, ...) #1

declare i32 @optlookup(i8*) #1

declare i32 @dosetopt(i32, i32, i32, i8*) #1

; Function Attrs: noinline nounwind
define internal void @parseopts_insert(%union.linkroot* %optlist, i8* %base, i32 %optno) #0 {
entry:
  %optlist.addr = alloca %union.linkroot*, align 4
  %base.addr = alloca i8*, align 4
  %optno.addr = alloca i32, align 4
  %node = alloca %struct.linknode*, align 4
  %ptr = alloca i8*, align 4
  store %union.linkroot* %optlist, %union.linkroot** %optlist.addr, align 4
  store i8* %base, i8** %base.addr, align 4
  store i32 %optno, i32* %optno.addr, align 4
  %0 = load i8*, i8** %base.addr, align 4
  %1 = load i32, i32* %optno.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %optno.addr, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %optno.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %3, %cond.false ]
  %add.ptr = getelementptr inbounds i8, i8* %0, i32 %cond
  store i8* %add.ptr, i8** %ptr, align 4
  %4 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %list = bitcast %union.linkroot* %4 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %5 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %5, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %ptr, align 4
  %8 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 2
  %9 = load i8*, i8** %dat, align 4
  %cmp1 = icmp ult i8* %7, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %11 = load %struct.linknode*, %struct.linknode** %node, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %11, i32 0, i32 1
  %12 = load %struct.linknode*, %struct.linknode** %prev, align 4
  %13 = load i8*, i8** %ptr, align 4
  %call = call %struct.linknode* @insertlinknode(%union.linkroot* %10, %struct.linknode* %12, i8* %13)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %14, i32 0, i32 0
  %15 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %15, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %17 = load %union.linkroot*, %union.linkroot** %optlist.addr, align 4
  %list2 = bitcast %union.linkroot* %17 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 1
  %18 = load %struct.linknode*, %struct.linknode** %last, align 4
  %19 = load i8*, i8** %ptr, align 4
  %call3 = call %struct.linknode* @insertlinknode(%union.linkroot* %16, %struct.linknode* %18, i8* %19)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #4

declare i32 @optlookupc(i8 signext) #1

; Function Attrs: noinline nounwind
define void @init_io(i8* %cmd) #0 {
entry:
  %cmd.addr = alloca i8*, align 4
  %fdflags = alloca i32, align 4
  store i8* %cmd, i8** %cmd.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @setvbuf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8092 x i8], [8092 x i8]* @init_io.outbuf, i32 0, i32 0), i32 0, i32 8092)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call1 = call i32 @setvbuf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([8092 x i8], [8092 x i8]* @init_io.errbuf, i32 0, i32 0), i32 0, i32 8092)
  %2 = load i8*, i8** %cmd.addr, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %cmp = icmp ne %struct._IO_FILE* %4, %5
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call3 = call i32 @fclose(%struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store %struct._IO_FILE* null, %struct._IO_FILE** @shout, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %7 = load i32, i32* @SHTTY, align 4
  %cmp5 = icmp ne i32 %7, -1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %8 = load i32, i32* @SHTTY, align 4
  %call7 = call i32 @zclose(i32 %8)
  store i32 -1, i32* @SHTTY, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  store %struct._IO_FILE* %9, %struct._IO_FILE** @xtrerr, align 4
  %call9 = call i32 @isatty(i32 0)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end33

if.then11:                                        ; preds = %if.end8
  %10 = load i8*, i8** @ttystrname, align 4
  call void @zsfree(i8* %10)
  %call12 = call i8* @ttyname(i32 0)
  %call13 = call i8* @ztrdup(i8* %call12)
  store i8* %call13, i8** @ttystrname, align 4
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %if.then15, label %if.end24

if.then15:                                        ; preds = %if.then11
  %11 = load i8*, i8** @ttystrname, align 4
  %call16 = call i32 (i8*, i32, ...) @open(i8* %11, i32 258)
  %call17 = call i32 @movefd(i32 %call16)
  store i32 %call17, i32* @SHTTY, align 4
  %12 = load i32, i32* @SHTTY, align 4
  %cmp18 = icmp eq i32 %12, -1
  br i1 %cmp18, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.then15
  %call19 = call i32* @__errno_location()
  %13 = load i32, i32* %call19, align 4
  %cmp20 = icmp eq i32 %13, 16
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  %call22 = call i32 (i32, i32, ...) @ioctl(i32 0, i32 21517, i32 0)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true, %if.then15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then11
  %14 = load i32, i32* @SHTTY, align 4
  %cmp25 = icmp eq i32 %14, -1
  br i1 %cmp25, label %land.lhs.true26, label %if.end32

land.lhs.true26:                                  ; preds = %if.end24
  %call27 = call i32 (i32, i32, ...) @fcntl(i32 0, i32 3, i32 0)
  %and = and i32 %call27, 2
  %cmp28 = icmp eq i32 %and, 2
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %land.lhs.true26
  %call30 = call i32 @dup(i32 0)
  %call31 = call i32 @movefd(i32 %call30)
  store i32 %call31, i32* @SHTTY, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true26, %if.end24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end8
  %15 = load i32, i32* @SHTTY, align 4
  %cmp34 = icmp eq i32 %15, -1
  br i1 %cmp34, label %land.lhs.true35, label %if.end49

land.lhs.true35:                                  ; preds = %if.end33
  %call36 = call i32 @isatty(i32 1)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.end49

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %call39 = call i32 (i32, i32, ...) @fcntl(i32 1, i32 3, i32 0)
  %and40 = and i32 %call39, 2
  %cmp41 = icmp eq i32 %and40, 2
  br i1 %cmp41, label %land.lhs.true42, label %if.end49

land.lhs.true42:                                  ; preds = %land.lhs.true38
  %call43 = call i32 @dup(i32 1)
  %call44 = call i32 @movefd(i32 %call43)
  store i32 %call44, i32* @SHTTY, align 4
  %cmp45 = icmp ne i32 %call44, -1
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %land.lhs.true42
  %16 = load i8*, i8** @ttystrname, align 4
  call void @zsfree(i8* %16)
  %call47 = call i8* @ttyname(i32 1)
  %call48 = call i8* @ztrdup(i8* %call47)
  store i8* %call48, i8** @ttystrname, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %land.lhs.true42, %land.lhs.true38, %land.lhs.true35, %if.end33
  %17 = load i32, i32* @SHTTY, align 4
  %cmp50 = icmp eq i32 %17, -1
  br i1 %cmp50, label %land.lhs.true51, label %if.end58

land.lhs.true51:                                  ; preds = %if.end49
  %call52 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 258)
  %call53 = call i32 @movefd(i32 %call52)
  store i32 %call53, i32* @SHTTY, align 4
  %cmp54 = icmp ne i32 %call53, -1
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %land.lhs.true51
  %18 = load i8*, i8** @ttystrname, align 4
  call void @zsfree(i8* %18)
  %19 = load i32, i32* @SHTTY, align 4
  %call56 = call i8* @ttyname(i32 %19)
  %call57 = call i8* @ztrdup(i8* %call56)
  store i8* %call57, i8** @ttystrname, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %land.lhs.true51, %if.end49
  %20 = load i32, i32* @SHTTY, align 4
  %cmp59 = icmp eq i32 %20, -1
  br i1 %cmp59, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end58
  %21 = load i8*, i8** @ttystrname, align 4
  call void @zsfree(i8* %21)
  %call61 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call61, i8** @ttystrname, align 4
  br label %if.end71

if.else:                                          ; preds = %if.end58
  %22 = load i32, i32* @SHTTY, align 4
  %call62 = call i32 (i32, i32, ...) @fcntl(i32 %22, i32 1, i32 0)
  store i32 %call62, i32* %fdflags, align 4
  %23 = load i32, i32* %fdflags, align 4
  %cmp63 = icmp ne i32 %23, -1
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.else
  %24 = load i32, i32* %fdflags, align 4
  %or = or i32 %24, 1
  store i32 %or, i32* %fdflags, align 4
  %25 = load i32, i32* @SHTTY, align 4
  %26 = load i32, i32* %fdflags, align 4
  %call65 = call i32 (i32, i32, ...) @fcntl(i32 %25, i32 2, i32 %26)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else
  %27 = load i8*, i8** @ttystrname, align 4
  %tobool67 = icmp ne i8* %27, null
  br i1 %tobool67, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end66
  %call69 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call69, i8** @ttystrname, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end66
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then60
  %28 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool72 = icmp ne i8 %28, 0
  br i1 %tobool72, label %if.then73, label %if.else78

if.then73:                                        ; preds = %if.end71
  call void @init_shout()
  %29 = load i32, i32* @SHTTY, align 4
  %tobool74 = icmp ne i32 %29, 0
  br i1 %tobool74, label %lor.lhs.false, label %if.then76

lor.lhs.false:                                    ; preds = %if.then73
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool75 = icmp ne %struct._IO_FILE* %30, null
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %lor.lhs.false, %if.then73
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %lor.lhs.false
  br label %if.end79

if.else78:                                        ; preds = %if.end71
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.end77
  %call80 = call i32 @getpid()
  store i32 %call80, i32* @mypid, align 4
  %31 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv = sext i8 %31 to i32
  %tobool81 = icmp ne i32 %conv, 0
  br i1 %tobool81, label %land.lhs.true82, label %if.else87

land.lhs.true82:                                  ; preds = %if.end79
  %32 = load i32, i32* @SHTTY, align 4
  %cmp83 = icmp ne i32 %32, -1
  br i1 %cmp83, label %if.then85, label %if.else87

if.then85:                                        ; preds = %land.lhs.true82
  %call86 = call i32 @getpgrp()
  store i32 %call86, i32* @origpgrp, align 4
  call void @acquire_pgrp()
  br label %if.end88

if.else87:                                        ; preds = %land.lhs.true82, %if.end79
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then85
  ret void
}

declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @zclose(i32) #1

declare i32 @isatty(i32) #1

declare i8* @ttyname(i32) #1

declare i32 @movefd(i32) #1

declare i32 @open(i8*, i32, ...) #1

declare i32* @__errno_location() #1

declare i32 @ioctl(i32, i32, ...) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @dup(i32) #1

; Function Attrs: noinline nounwind
define void @init_shout() #0 {
entry:
  %0 = load i32, i32* @SHTTY, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** @shout, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @SHTTY, align 4
  %call = call %struct._IO_FILE* @fdopen(i32 %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @shout, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call2 = call i32 @setvbuf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8092 x i8], [8092 x i8]* @init_shout.shoutbuf, i32 0, i32 0), i32 0, i32 8092)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  call void @gettyinfo(%struct.ttyinfo* @shttyinfo)
  br label %return

return:                                           ; preds = %if.end3, %if.then
  ret void
}

declare i32 @getpid() #1

declare i32 @getpgrp() #1

declare void @acquire_pgrp() #1

declare %struct._IO_FILE* @fdopen(i32, i8*) #1

declare void @gettyinfo(%struct.ttyinfo*) #1

; Function Attrs: noinline nounwind
define i8* @tccap_get_name(i32 %cap) #0 {
entry:
  %retval = alloca i8*, align 4
  %cap.addr = alloca i32, align 4
  store i32 %cap, i32* %cap.addr, align 4
  %0 = load i32, i32* %cap.addr, align 4
  %cmp = icmp sge i32 %0, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cap.addr, align 4
  %arrayidx = getelementptr inbounds [34 x i8*], [34 x i8*]* @tccapnams, i32 0, i32 %1
  %2 = load i8*, i8** %arrayidx, align 4
  store i8* %2, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 4
  ret i8* %3
}

; Function Attrs: noinline nounwind
define i32 @init_term() #0 {
entry:
  %retval = alloca i32, align 4
  %tbuf = alloca [1024 x i8], align 1
  %pp = alloca i8*, align 4
  %t0 = alloca i32, align 4
  %0 = load i8*, i8** @term, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @termflags, align 4
  %or = or i32 %2, 2
  store i32 %or, i32* @termflags, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @term, align 4
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i8*, i8** @term, align 4
  %call4 = call i32 @tgetent(i8* null, i8* %4)
  %cmp = icmp ne i32 %call4, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool6 = icmp ne i8 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %6 = load i8*, i8** @term, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), i8* %6)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %7 = load i32, i32* @errflag, align 4
  %and = and i32 %7, -2
  store i32 %and, i32* @errflag, align 4
  %8 = load i32, i32* @termflags, align 4
  %or9 = or i32 %8, 1
  store i32 %or9, i32* @termflags, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end3
  %9 = load i32, i32* @termflags, align 4
  %and10 = and i32 %9, -2
  store i32 %and10, i32* @termflags, align 4
  %10 = load i32, i32* @termflags, align 4
  %and11 = and i32 %10, -3
  store i32 %and11, i32* @termflags, align 4
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %t0, align 4
  %cmp12 = icmp ne i32 %11, 34
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %pp, align 4
  %12 = load i32, i32* %t0, align 4
  %arrayidx = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %12
  %13 = load i8*, i8** %arrayidx, align 4
  call void @zsfree(i8* %13)
  %14 = load i32, i32* %t0, align 4
  %arrayidx13 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tccapnams, i32 0, i32 %14
  %15 = load i8*, i8** %arrayidx13, align 4
  %call14 = call i8* @tgetstr(i8* %15, i8** %pp)
  store i8* %call14, i8** %pp, align 4
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.else19, label %if.then16

if.then16:                                        ; preds = %for.body
  %16 = load i32, i32* %t0, align 4
  %arrayidx17 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %16
  store i8* null, i8** %arrayidx17, align 4
  %17 = load i32, i32* %t0, align 4
  %arrayidx18 = getelementptr inbounds [34 x i32], [34 x i32]* @tclen, i32 0, i32 %17
  store i32 0, i32* %arrayidx18, align 4
  br label %if.end28

if.else19:                                        ; preds = %for.body
  %18 = load i8*, i8** %pp, align 4
  %call20 = call i32 @strlen(i8* %18)
  %19 = load i32, i32* %t0, align 4
  %arrayidx21 = getelementptr inbounds [34 x i32], [34 x i32]* @tclen, i32 0, i32 %19
  store i32 %call20, i32* %arrayidx21, align 4
  %20 = load i32, i32* %t0, align 4
  %arrayidx22 = getelementptr inbounds [34 x i32], [34 x i32]* @tclen, i32 0, i32 %20
  %21 = load i32, i32* %arrayidx22, align 4
  %add = add nsw i32 %21, 1
  %call23 = call i8* @zalloc(i32 %add)
  %22 = load i32, i32* %t0, align 4
  %arrayidx24 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %22
  store i8* %call23, i8** %arrayidx24, align 4
  %23 = load i32, i32* %t0, align 4
  %arrayidx25 = getelementptr inbounds [34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 %23
  %24 = load i8*, i8** %arrayidx25, align 4
  %25 = load i8*, i8** %pp, align 4
  %26 = load i32, i32* %t0, align 4
  %arrayidx26 = getelementptr inbounds [34 x i32], [34 x i32]* @tclen, i32 0, i32 %26
  %27 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %27, 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 %add27, i32 1, i1 false)
  br label %if.end28

if.end28:                                         ; preds = %if.else19, %if.then16
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %28 = load i32, i32* %t0, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %t0, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call29 = call i32 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  store i32 %call29, i32* @hasam, align 4
  %call30 = call i32 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0))
  store i32 %call30, i32* @hasbw, align 4
  %call31 = call i32 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  store i32 %call31, i32* @hasxn, align 4
  %call32 = call i32 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  store i32 %call32, i32* @hasye, align 4
  %call33 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  store i32 %call33, i32* @tclines, align 4
  %call34 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  store i32 %call34, i32* @tccolumns, align 4
  %call35 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  store i32 %call35, i32* @tccolours, align 4
  %29 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 5), align 4
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %for.end
  %30 = load i32, i32* @termflags, align 4
  %and38 = and i32 %30, -5
  store i32 %and38, i32* @termflags, align 4
  br label %if.end41

if.else39:                                        ; preds = %for.end
  %31 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 5), align 4
  call void @zsfree(i8* %31)
  store i8* null, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 5), align 4
  %32 = load i32, i32* @termflags, align 4
  %or40 = or i32 %32, 4
  store i32 %or40, i32* @termflags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then37
  %33 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 31), align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  %34 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 31), align 4
  call void @zsfree(i8* %34)
  %call44 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  store i8* %call44, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 31), align 4
  store i32 1, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 31), align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  %35 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 1), align 4
  %tobool46 = icmp ne i32 %35, 0
  br i1 %tobool46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end45
  %36 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 1), align 4
  call void @zsfree(i8* %36)
  %37 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 31), align 4
  %call48 = call i8* @ztrdup(i8* %37)
  store i8* %call48, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 1), align 4
  %38 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 31), align 4
  store i32 %38, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 1), align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  %39 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 29), align 4
  %tobool50 = icmp ne i32 %39, 0
  br i1 %tobool50, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.end49
  %40 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 30), align 4
  %tobool51 = icmp ne i32 %40, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  store i32 0, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 29), align 4
  %41 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 29), align 4
  call void @zsfree(i8* %41)
  store i8* null, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 29), align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %land.lhs.true, %if.end49
  %42 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 7), align 4
  %tobool54 = icmp ne i32 %42, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.end60

land.lhs.true55:                                  ; preds = %if.end53
  %43 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 7), align 4
  %arrayidx56 = getelementptr inbounds i8, i8* %43, i32 0
  %44 = load i8, i8* %arrayidx56, align 1
  %conv = sext i8 %44 to i32
  %cmp57 = icmp eq i32 %conv, 10
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %land.lhs.true55
  store i32 0, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 7), align 4
  %45 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 7), align 4
  call void @zsfree(i8* %45)
  store i8* null, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 7), align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %land.lhs.true55, %if.end53
  %46 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 0), align 4
  %tobool61 = icmp ne i32 %46, 0
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end60
  %47 = load i8*, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 0), align 4
  call void @zsfree(i8* %47)
  %call63 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  store i8* %call63, i8** getelementptr inbounds ([34 x i8*], [34 x i8*]* @tcstr, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @tclen, i32 0, i32 0), align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60
  store i32 1, i32* @rprompt_indent, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end64
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.end8, %if.then
  %48 = load i32, i32* %retval, align 4
  ret i32 %48
}

declare i32 @tgetent(i8*, i8*) #1

declare i8* @tgetstr(i8*, i8**) #1

declare i32 @strlen(i8*) #1

declare i8* @zalloc(i32) #1

declare i32 @tgetflag(i8*) #1

declare i32 @tgetnum(i8*) #1

; Function Attrs: noinline nounwind
define void @setupvals(i8* %cmd, i8* %runscript, i8* %zsh_name) #0 {
entry:
  %cmd.addr = alloca i8*, align 4
  %runscript.addr = alloca i8*, align 4
  %zsh_name.addr = alloca i8*, align 4
  %pswd = alloca %struct.passwd*, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %ptr = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fpathptr = alloca i8**, align 4
  %fpathlen = alloca i32, align 4
  %close_fds = alloca [10 x i32], align 4
  %tmppipe = alloca [2 x i32], align 4
  store i8* %cmd, i8** %cmd.addr, align 4
  store i8* %runscript, i8** %runscript.addr, align 4
  store i8* %zsh_name, i8** %zsh_name.addr, align 4
  store i32 1, i32* %fpathlen, align 4
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %close_fds, i32 0, i32 0
  %0 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 40, i32 4, i1 false)
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 0
  %call = call i32 @pipe(i32* %arraydecay1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  store i32 -1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 9
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 0
  %3 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 0
  %4 = load i32, i32* %arrayidx5, align 4
  store i32 %4, i32* %j, align 4
  br label %if.end15

if.else:                                          ; preds = %while.body
  %5 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 1
  %6 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 1
  %7 = load i32, i32* %arrayidx9, align 4
  store i32 %7, i32* %j, align 4
  br label %if.end14

if.else10:                                        ; preds = %if.else
  %call11 = call i32 @dup(i32 0)
  store i32 %call11, i32* %j, align 4
  %8 = load i32, i32* %j, align 4
  %cmp12 = icmp eq i32 %8, -1
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else10
  br label %while.end

if.end:                                           ; preds = %if.else10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then4
  %9 = load i32, i32* %j, align 4
  %cmp16 = icmp slt i32 %9, 10
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end15
  %10 = load i32, i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %close_fds, i32 0, i32 %10
  store i32 1, i32* %arrayidx18, align 4
  br label %if.end21

if.else19:                                        ; preds = %if.end15
  %11 = load i32, i32* %j, align 4
  %call20 = call i32 @close(i32 %11)
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %cmp22 = icmp slt i32 %12, %13
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  %14 = load i32, i32* %j, align 4
  store i32 %14, i32* %i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  br label %while.cond

while.end:                                        ; preds = %if.then13, %while.cond
  %15 = load i32, i32* %i, align 4
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 0
  %16 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp slt i32 %15, %16
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %while.end
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 0
  %17 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 @close(i32 %17)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %while.end
  %18 = load i32, i32* %i, align 4
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 1
  %19 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp slt i32 %18, %19
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %tmppipe, i32 0, i32 1
  %20 = load i32, i32* %arrayidx34, align 4
  %call35 = call i32 @close(i32 %20)
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %entry
  %call38 = call i32 @addhookdefs(%struct.module* null, %struct.hookdef* getelementptr inbounds ([3 x %struct.hookdef], [3 x %struct.hookdef]* @zshhooks, i32 0, i32 0), i32 3)
  call void @init_eprog()
  store i32 1, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @zero_mnumber, i32 0, i32 1), align 8
  store i32 0, i32* bitcast (%struct.mnumber* @zero_mnumber to i32*), align 8
  store i32 0, i32* @noeval, align 4
  store i32 0, i32* @curhist, align 4
  store i32 30, i32* @histsiz, align 4
  call void @inithist()
  %call39 = call i8* @zalloc(i32 256)
  store i8* %call39, i8** @cmdstack, align 4
  store i32 0, i32* @cmdsp, align 4
  store i8 33, i8* @bangchar, align 1
  store i8 35, i8* @hashchar, align 1
  store i8 94, i8* @hatchar, align 1
  store i32 2, i32* @termflags, align 4
  store i32 -1, i32* @coprocout, align 4
  store i32 -1, i32* @coprocin, align 4
  store i32 -1, i32* @prevjob, align 4
  store i32 -1, i32* @curjob, align 4
  %21 = bitcast %struct.timezone* %dummy_tz to i8*
  %call40 = call i32 @gettimeofday(%struct.timeval* @shtimer, i8* %21)
  %22 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 1), align 4
  %add = add nsw i32 %22, %23
  call void @srand(i32 %add)
  %call41 = call i8* @zalloc(i32 20)
  %24 = bitcast i8* %call41 to i8**
  store i8** %24, i8*** @path, align 4
  %call42 = call i8* @ztrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  %25 = load i8**, i8*** @path, align 4
  %arrayidx43 = getelementptr inbounds i8*, i8** %25, i32 0
  store i8* %call42, i8** %arrayidx43, align 4
  %call44 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0))
  %26 = load i8**, i8*** @path, align 4
  %arrayidx45 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8* %call44, i8** %arrayidx45, align 4
  %call46 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0))
  %27 = load i8**, i8*** @path, align 4
  %arrayidx47 = getelementptr inbounds i8*, i8** %27, i32 2
  store i8* %call46, i8** %arrayidx47, align 4
  %call48 = call i8* @ztrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0))
  %28 = load i8**, i8*** @path, align 4
  %arrayidx49 = getelementptr inbounds i8*, i8** %28, i32 3
  store i8* %call48, i8** %arrayidx49, align 4
  %29 = load i8**, i8*** @path, align 4
  %arrayidx50 = getelementptr inbounds i8*, i8** %29, i32 4
  store i8* null, i8** %arrayidx50, align 4
  %call51 = call i8** @mkarray(i8* null)
  store i8** %call51, i8*** @cdpath, align 4
  %call52 = call i8** @mkarray(i8* null)
  store i8** %call52, i8*** @manpath, align 4
  %call53 = call i8** @mkarray(i8* null)
  store i8** %call53, i8*** @fignore, align 4
  %30 = load i32, i32* %fpathlen, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %fpathlen, align 4
  %31 = load i32, i32* %fpathlen, align 4
  %add54 = add nsw i32 %31, 1
  %mul = mul i32 %add54, 4
  %call55 = call i8* @zalloc(i32 %mul)
  %32 = bitcast i8* %call55 to i8**
  store i8** %32, i8*** %fpathptr, align 4
  store i8** %32, i8*** @fpath, align 4
  %call56 = call i8* @ztrdup(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0))
  %33 = load i8**, i8*** %fpathptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr, i8*** %fpathptr, align 4
  store i8* %call56, i8** %33, align 4
  %34 = load i32, i32* %fpathlen, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %fpathlen, align 4
  %call57 = call i8* @ztrdup(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0))
  %35 = load i8**, i8*** %fpathptr, align 4
  %incdec.ptr58 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr58, i8*** %fpathptr, align 4
  store i8* %call57, i8** %35, align 4
  %36 = load i8**, i8*** %fpathptr, align 4
  store i8* null, i8** %36, align 4
  %call59 = call i8** @mkarray(i8* null)
  store i8** %call59, i8*** @mailpath, align 4
  %call60 = call i8** @mkarray(i8* null)
  store i8** %call60, i8*** @watch, align 4
  %call61 = call i8** @mkarray(i8* null)
  store i8** %call61, i8*** @psvar, align 4
  %call62 = call i8* @ztrdup(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0))
  %call63 = call i8** @mkarray(i8* %call62)
  store i8** %call63, i8*** @module_path, align 4
  %call64 = call %struct.hashtable* @newmoduletable(i32 17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0))
  store %struct.hashtable* %call64, %struct.hashtable** @modulestab, align 4
  %call65 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call65, %union.linkroot** @linkedmodules, align 4
  %37 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %37, 0
  br i1 %tobool, label %if.else69, label %if.then66

if.then66:                                        ; preds = %if.end37
  %call67 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call67, i8** @prompt, align 4
  %call68 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call68, i8** @prompt2, align 4
  br label %if.end80

if.else69:                                        ; preds = %if.end37
  %38 = load i32, i32* @emulation, align 4
  %and = and i32 %38, 12
  %tobool70 = icmp ne i32 %and, 0
  br i1 %tobool70, label %if.then71, label %if.else76

if.then71:                                        ; preds = %if.else69
  %call72 = call i32 @privasserted()
  %tobool73 = icmp ne i32 %call72, 0
  %cond = select i1 %tobool73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0)
  %call74 = call i8* @ztrdup(i8* %cond)
  store i8* %call74, i8** @prompt, align 4
  %call75 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  store i8* %call75, i8** @prompt2, align 4
  br label %if.end79

if.else76:                                        ; preds = %if.else69
  %call77 = call i8* @ztrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  store i8* %call77, i8** @prompt, align 4
  %call78 = call i8* @ztrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0))
  store i8* %call78, i8** @prompt2, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then71
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then66
  %call81 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0))
  store i8* %call81, i8** @prompt3, align 4
  %39 = load i32, i32* @emulation, align 4
  %and82 = and i32 %39, 12
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end80
  %call84 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.end80
  %call85 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond86 = phi i8* [ %call84, %cond.true ], [ %call85, %cond.false ]
  store i8* %cond86, i8** @prompt4, align 4
  %call87 = call i8* @ztrdup(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0))
  store i8* %call87, i8** @sprompt, align 4
  %40 = load i32, i32* @emulation, align 4
  %and88 = and i32 %40, 12
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %cond.true90, label %cond.false92

cond.true90:                                      ; preds = %cond.end
  %call91 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0))
  br label %cond.end94

cond.false92:                                     ; preds = %cond.end
  %call93 = call i8* @ztrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0))
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false92, %cond.true90
  %cond95 = phi i8* [ %call91, %cond.true90 ], [ %call93, %cond.false92 ]
  store i8* %cond95, i8** @ifs, align 4
  %call96 = call i8* @ztrdup(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0))
  store i8* %call96, i8** @wordchars, align 4
  %call97 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call97, i8** @postedit, align 4
  store i32 32, i32* @underscorelen, align 4
  %call98 = call i8* @zalloc(i32 32)
  store i8* %call98, i8** @zunderscore, align 4
  store i32 1, i32* @underscoreused, align 4
  %41 = load i8*, i8** @zunderscore, align 4
  store i8 0, i8* %41, align 1
  %call99 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call99, i8** @zoptarg, align 4
  store i32 1, i32* @zoptind, align 4
  %call100 = call i32 @getppid()
  store i32 %call100, i32* @ppid, align 4
  %call101 = call i32 @getpid()
  store i32 %call101, i32* @mypid, align 4
  %call102 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call102, i8** @term, align 4
  %call103 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0))
  store i8* %call103, i8** @nullcmd, align 4
  %call104 = call i8* @ztrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  store i8* %call104, i8** @readnullcmd, align 4
  %call105 = call i32 @getuid()
  store i32 %call105, i32* @cached_uid, align 4
  %42 = load i32, i32* @cached_uid, align 4
  %call106 = call %struct.passwd* @getpwuid(i32 %42)
  store %struct.passwd* %call106, %struct.passwd** %pswd, align 4
  %tobool107 = icmp ne %struct.passwd* %call106, null
  br i1 %tobool107, label %if.then108, label %if.else115

if.then108:                                       ; preds = %cond.end94
  %43 = load i32, i32* @emulation, align 4
  %and109 = and i32 %43, 16
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then108
  %44 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 5
  %45 = load i8*, i8** %pw_dir, align 4
  %call112 = call i8* @metafy(i8* %45, i32 -1, i32 3)
  store i8* %call112, i8** @home, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then108
  %46 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 0
  %47 = load i8*, i8** %pw_name, align 4
  %call114 = call i8* @ztrdup(i8* %47)
  store i8* %call114, i8** @cached_username, align 4
  br label %if.end122

if.else115:                                       ; preds = %cond.end94
  %48 = load i32, i32* @emulation, align 4
  %and116 = and i32 %48, 16
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then118, label %if.end120

if.then118:                                       ; preds = %if.else115
  %call119 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0))
  store i8* %call119, i8** @home, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.else115
  %call121 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call121, i8** @cached_username, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end120, %if.end113
  %49 = load i32, i32* @emulation, align 4
  %and123 = and i32 %49, 16
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then125, label %if.else126

if.then125:                                       ; preds = %if.end122
  %50 = load i8*, i8** @home, align 4
  store i8* %50, i8** %ptr, align 4
  br label %if.end128

if.else126:                                       ; preds = %if.end122
  %call127 = call i8* @zgetenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call127, i8** %ptr, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then125
  %51 = load i8*, i8** %ptr, align 4
  %tobool129 = icmp ne i8* %51, null
  br i1 %tobool129, label %land.lhs.true, label %if.else134

land.lhs.true:                                    ; preds = %if.end128
  %52 = load i8*, i8** %ptr, align 4
  %call130 = call i32 @ispwd(i8* %52)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then132, label %if.else134

if.then132:                                       ; preds = %land.lhs.true
  %53 = load i8*, i8** %ptr, align 4
  %call133 = call i8* @ztrdup(i8* %53)
  store i8* %call133, i8** @pwd, align 4
  br label %if.end150

if.else134:                                       ; preds = %land.lhs.true, %if.end128
  %call135 = call i8* @zgetenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0))
  store i8* %call135, i8** %ptr, align 4
  %tobool136 = icmp ne i8* %call135, null
  br i1 %tobool136, label %land.lhs.true137, label %if.else146

land.lhs.true137:                                 ; preds = %if.else134
  %54 = load i8*, i8** %ptr, align 4
  %call138 = call i32 @strlen(i8* %54)
  %cmp139 = icmp ult i32 %call138, 4096
  br i1 %cmp139, label %land.lhs.true140, label %if.else146

land.lhs.true140:                                 ; preds = %land.lhs.true137
  %55 = load i8*, i8** %ptr, align 4
  %call141 = call i8* @metafy(i8* %55, i32 -1, i32 2)
  store i8* %call141, i8** %ptr, align 4
  %56 = load i8*, i8** %ptr, align 4
  %call142 = call i32 @ispwd(i8* %56)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %if.else146

if.then144:                                       ; preds = %land.lhs.true140
  %57 = load i8*, i8** %ptr, align 4
  %call145 = call i8* @ztrdup(i8* %57)
  store i8* %call145, i8** @pwd, align 4
  br label %if.end149

if.else146:                                       ; preds = %land.lhs.true140, %land.lhs.true137, %if.else134
  store i8* null, i8** @pwd, align 4
  %call147 = call i8* @zgetcwd()
  %call148 = call i8* @metafy(i8* %call147, i32 -1, i32 3)
  store i8* %call148, i8** @pwd, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.else146, %if.then144
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then132
  %58 = load i8*, i8** @pwd, align 4
  %call151 = call i8* @ztrdup(i8* %58)
  store i8* %call151, i8** @oldpwd, align 4
  call void @inittyptab()
  call void @initlextabs()
  call void @createreswdtable()
  call void @createaliastables()
  call void @createcmdnamtable()
  call void @createshfunctable()
  call void @createbuiltintable()
  call void @createnameddirtable()
  call void @createparamtable()
  store %struct.conddef* null, %struct.conddef** @condtab, align 4
  store %struct.funcwrap* null, %struct.funcwrap** @wrappers, align 4
  call void @adjustwinsize(i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end150
  %59 = load i32, i32* %i, align 4
  %cmp152 = icmp ne i32 %59, 15
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %i, align 4
  %add.ptr = getelementptr inbounds %struct.rlimit, %struct.rlimit* getelementptr inbounds ([15 x %struct.rlimit], [15 x %struct.rlimit]* @current_limits, i32 0, i32 0), i32 %61
  %call153 = call i32 @getrlimit(i32 %60, %struct.rlimit* %add.ptr)
  %62 = load i32, i32* %i, align 4
  %arrayidx154 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %62
  %63 = load i32, i32* %i, align 4
  %arrayidx155 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @current_limits, i32 0, i32 %63
  %64 = bitcast %struct.rlimit* %arrayidx154 to i8*
  %65 = bitcast %struct.rlimit* %arrayidx155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %64, i8* %65, i32 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %66, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @loops, align 4
  store i32 0, i32* @breaks, align 4
  %call157 = call i32 @time(i32* null)
  store i32 %call157, i32* @lastmailcheck, align 4
  store i32 0, i32* @sourcelevel, align 4
  store i32 0, i32* @locallevel, align 4
  store i32 0, i32* @sfcontext, align 4
  store i32 0, i32* @trap_return, align 4
  store i32 0, i32* @trap_state, align 4
  store i32 11, i32* @noerrexit, align 4
  store i32 1, i32* @nohistsave, align 4
  %call158 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call158, %union.linkroot** @dirstack, align 4
  %call159 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call159, %union.linkroot** @bufstack, align 4
  store i8* null, i8** @hsubr, align 4
  store i8* null, i8** @hsubl, align 4
  store i32 0, i32* @lastpid, align 4
  call void @get_usage()
  store i32 0, i32* %i, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc168, %for.end
  %67 = load i32, i32* %i, align 4
  %cmp161 = icmp slt i32 %67, 10
  br i1 %cmp161, label %for.body162, label %for.end170

for.body162:                                      ; preds = %for.cond160
  %68 = load i32, i32* %i, align 4
  %arrayidx163 = getelementptr inbounds [10 x i32], [10 x i32]* %close_fds, i32 0, i32 %68
  %69 = load i32, i32* %arrayidx163, align 4
  %tobool164 = icmp ne i32 %69, 0
  br i1 %tobool164, label %if.then165, label %if.end167

if.then165:                                       ; preds = %for.body162
  %70 = load i32, i32* %i, align 4
  %call166 = call i32 @close(i32 %70)
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %for.body162
  br label %for.inc168

for.inc168:                                       ; preds = %if.end167
  %71 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %71, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond160

for.end170:                                       ; preds = %for.cond160
  call void @set_default_colour_sequences()
  %72 = load i8*, i8** %cmd.addr, align 4
  %tobool171 = icmp ne i8* %72, null
  br i1 %tobool171, label %if.then172, label %if.end175

if.then172:                                       ; preds = %for.end170
  %73 = load i8*, i8** %cmd.addr, align 4
  %call173 = call i8* @ztrdup(i8* %73)
  %call174 = call %struct.param* @setsparam(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i8* %call173)
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %for.end170
  %74 = load i8*, i8** %runscript.addr, align 4
  %tobool176 = icmp ne i8* %74, null
  br i1 %tobool176, label %if.then177, label %if.end180

if.then177:                                       ; preds = %if.end175
  %75 = load i8*, i8** %runscript.addr, align 4
  %call178 = call i8* @ztrdup(i8* %75)
  %call179 = call %struct.param* @setsparam(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* %call178)
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %if.end175
  %76 = load i8*, i8** %zsh_name.addr, align 4
  %call181 = call i8* @ztrdup(i8* %76)
  %call182 = call %struct.param* @setsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* %call181)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

declare i32 @pipe(i32*) #1

declare i32 @close(i32) #1

declare i32 @addhookdefs(%struct.module*, %struct.hookdef*, i32) #1

declare void @init_eprog() #1

declare void @inithist() #1

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare void @srand(i32) #1

declare i8** @mkarray(i8*) #1

declare %struct.hashtable* @newmoduletable(i32, i8*) #1

declare %union.linkroot* @znewlinklist() #1

declare i32 @privasserted() #1

declare i32 @getppid() #1

declare i32 @getuid() #1

declare %struct.passwd* @getpwuid(i32) #1

declare i8* @metafy(i8*, i32, i32) #1

declare i8* @zgetenv(i8*) #1

declare i32 @ispwd(i8*) #1

declare i8* @zgetcwd() #1

declare void @inittyptab() #1

declare void @initlextabs() #1

declare void @createreswdtable() #1

declare void @createaliastables() #1

declare void @createcmdnamtable() #1

declare void @createshfunctable() #1

declare void @createbuiltintable() #1

declare void @createnameddirtable() #1

declare void @createparamtable() #1

declare void @adjustwinsize(i32) #1

declare i32 @getrlimit(i32, %struct.rlimit*) #1

declare i32 @time(i32*) #1

declare void @get_usage() #1

declare void @set_default_colour_sequences() #1

declare %struct.param* @setsparam(i8*, i8*) #1

; Function Attrs: noinline nounwind
define void @init_signals() #0 {
entry:
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp1 = alloca %struct.__sigset_t, align 4
  %agg.tmp7 = alloca %struct.__sigset_t, align 4
  %tmp8 = alloca %struct.__sigset_t, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp, i32 0)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %agg.tmp)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 65
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call = call void (i32)* @signal(i32 %2, void (i32)* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  call void @signal_mask(%struct.__sigset_t* sret %tmp1, i32 17)
  %4 = bitcast %struct.__sigset_t* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.__sigset_t* @sigchld_mask to i8*), i8* %4, i32 128, i32 4, i1 false)
  call void @intr()
  %call2 = call void (i32)* @signal(i32 3, void (i32)* inttoptr (i32 1 to void (i32)*))
  %call3 = call void (i32)* @signal(i32 1, void (i32)* inttoptr (i32 1 to void (i32)*))
  %cmp4 = icmp eq void (i32)* %call3, inttoptr (i32 1 to void (i32)*)
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 88), align 1
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @install_handler(i32 1)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  call void @install_handler(i32 17)
  call void @install_handler(i32 28)
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp7, i32 28)
  call void @signal_block(%struct.__sigset_t* sret %tmp8, %struct.__sigset_t* byval align 4 %agg.tmp7)
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool9 = icmp ne i8 %5, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @install_handler(i32 13)
  call void @install_handler(i32 14)
  %call11 = call void (i32)* @signal(i32 15, void (i32)* inttoptr (i32 1 to void (i32)*))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6
  %6 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %tobool13 = icmp ne i8 %6, 0
  br i1 %tobool13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end12
  %call15 = call void (i32)* @signal(i32 22, void (i32)* inttoptr (i32 1 to void (i32)*))
  %call16 = call void (i32)* @signal(i32 20, void (i32)* inttoptr (i32 1 to void (i32)*))
  %call17 = call void (i32)* @signal(i32 21, void (i32)* inttoptr (i32 1 to void (i32)*))
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12
  ret void
}

declare void @signal_mask(%struct.__sigset_t* sret, i32) #1

declare void (i32)* @signal(i32, void (i32)*) #1

declare void @install_handler(i32) #1

declare void @signal_block(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: noinline nounwind
define void @run_init_scripts() #0 {
entry:
  %s = alloca i8*, align 4
  store i32 11, i32* @noerrexit, align 4
  %0 = load i32, i32* @emulation, align 4
  %and = and i32 %0, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 111), align 1
  %tobool1 = icmp ne i8 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call i32 @source(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %tobool3 = icmp ne i8 %2, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 111), align 1
  %tobool5 = icmp ne i8 %3, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @sourcehome(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool8 = icmp ne i8 %4, 0
  br i1 %tobool8, label %if.then9, label %if.end20

if.then9:                                         ; preds = %if.end7
  store i32 2, i32* @noerrs, align 4
  %call10 = call i8* @getsparam(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0))
  store i8* %call10, i8** %s, align 4
  %5 = load i8*, i8** %s, align 4
  %tobool11 = icmp ne i8* %5, null
  br i1 %tobool11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.then9
  %6 = load i8*, i8** %s, align 4
  %call13 = call i8* @dupstring(i8* %6)
  store i8* %call13, i8** %s, align 4
  %call14 = call i32 @parsestr(i8** %s)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.then12
  call void @singsub(i8** %s)
  store i32 0, i32* @noerrs, align 4
  %7 = load i8*, i8** %s, align 4
  %call17 = call i32 @source(i8* %7)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then9
  store i32 0, i32* @noerrs, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end7
  br label %if.end22

if.else:                                          ; preds = %if.end
  %call21 = call i32 @source(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end20
  br label %if.end88

if.else23:                                        ; preds = %entry
  %call24 = call i32 @source(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0))
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv = sext i8 %8 to i32
  %tobool25 = icmp ne i32 %conv, 0
  br i1 %tobool25, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.else23
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %tobool26 = icmp ne i8 %9, 0
  br i1 %tobool26, label %if.end36, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  %10 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool28 = icmp ne i8 %10, 0
  br i1 %tobool28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.then27
  %call30 = call i32 @load_module(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), %struct.feature_enables* null, i32 1)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.then29
  %call33 = call i32 @unload_named_module(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 1)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then27
  call void @sourcehome(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %land.lhs.true, %if.else23
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 111), align 1
  %tobool37 = icmp ne i8 %11, 0
  br i1 %tobool37, label %if.then38, label %if.end53

if.then38:                                        ; preds = %if.end36
  %12 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv39 = sext i8 %12 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  br i1 %tobool40, label %land.lhs.true41, label %if.end46

land.lhs.true41:                                  ; preds = %if.then38
  %13 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 62), align 1
  %conv42 = sext i8 %13 to i32
  %tobool43 = icmp ne i32 %conv42, 0
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = call i32 @source(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true41, %if.then38
  %14 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv47 = sext i8 %14 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.end52

land.lhs.true49:                                  ; preds = %if.end46
  %15 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %tobool50 = icmp ne i8 %15, 0
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %land.lhs.true49
  call void @sourcehome(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %land.lhs.true49, %if.end46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end36
  %16 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool54 = icmp ne i8 %16, 0
  br i1 %tobool54, label %if.then55, label %if.end70

if.then55:                                        ; preds = %if.end53
  %17 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv56 = sext i8 %17 to i32
  %tobool57 = icmp ne i32 %conv56, 0
  br i1 %tobool57, label %land.lhs.true58, label %if.end63

land.lhs.true58:                                  ; preds = %if.then55
  %18 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 62), align 1
  %conv59 = sext i8 %18 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %land.lhs.true58
  %call62 = call i32 @source(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true58, %if.then55
  %19 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv64 = sext i8 %19 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %land.lhs.true66, label %if.end69

land.lhs.true66:                                  ; preds = %if.end63
  %20 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %tobool67 = icmp ne i8 %20, 0
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %land.lhs.true66
  call void @sourcehome(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %land.lhs.true66, %if.end63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end53
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 111), align 1
  %tobool71 = icmp ne i8 %21, 0
  br i1 %tobool71, label %if.then72, label %if.end87

if.then72:                                        ; preds = %if.end70
  %22 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv73 = sext i8 %22 to i32
  %tobool74 = icmp ne i32 %conv73, 0
  br i1 %tobool74, label %land.lhs.true75, label %if.end80

land.lhs.true75:                                  ; preds = %if.then72
  %23 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 62), align 1
  %conv76 = sext i8 %23 to i32
  %tobool77 = icmp ne i32 %conv76, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %land.lhs.true75
  %call79 = call i32 @source(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %land.lhs.true75, %if.then72
  %24 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv81 = sext i8 %24 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  br i1 %tobool82, label %land.lhs.true83, label %if.end86

land.lhs.true83:                                  ; preds = %if.end80
  %25 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %tobool84 = icmp ne i8 %25, 0
  br i1 %tobool84, label %if.end86, label %if.then85

if.then85:                                        ; preds = %land.lhs.true83
  call void @sourcehome(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %land.lhs.true83, %if.end80
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end70
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end22
  store i32 0, i32* @noerrexit, align 4
  store i32 0, i32* @nohistsave, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @source(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %prog = alloca %struct.eprog*, align 4
  %tempfd = alloca i32, align 4
  %fd = alloca i32, align 4
  %cj = alloca i32, align 4
  %oldlineno = alloca i32, align 4
  %oldshst = alloca i32, align 4
  %osubsh = alloca i32, align 4
  %oloops = alloca i32, align 4
  %obshin = alloca %struct._IO_FILE*, align 4
  %old_scriptname = alloca i8*, align 4
  %us = alloca i8*, align 4
  %old_scriptfilename = alloca i8*, align 4
  %ocs = alloca i8*, align 4
  %ocsp = alloca i32, align 4
  %otrap_return = alloca i32, align 4
  %otrap_state = alloca i32, align 4
  %fstack = alloca %struct.funcstack, align 4
  %ret = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 -1, i32* %tempfd, align 4
  %0 = load i8*, i8** @scriptname, align 4
  store i8* %0, i8** %old_scriptname, align 4
  %1 = load i8*, i8** @scriptfilename, align 4
  store i8* %1, i8** %old_scriptfilename, align 4
  %2 = load i32, i32* @trap_return, align 4
  store i32 %2, i32* %otrap_return, align 4
  %3 = load i32, i32* @trap_state, align 4
  store i32 %3, i32* %otrap_state, align 4
  store i32 0, i32* %ret, align 4
  %4 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %s.addr, align 4
  %call = call i8* @unmeta(i8* %5)
  store i8* %call, i8** %us, align 4
  %call1 = call %struct.eprog* @try_source_file(i8* %call)
  store %struct.eprog* %call1, %struct.eprog** %prog, align 4
  %tobool2 = icmp ne %struct.eprog* %call1, null
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i8*, i8** %us, align 4
  %call3 = call i32 (i8*, i32, ...) @open(i8* %6, i32 256)
  %call4 = call i32 @movefd(i32 %call3)
  store i32 %call4, i32* %tempfd, align 4
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load i32, i32* @SHIN, align 4
  store i32 %7, i32* %fd, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @bshin, align 4
  store %struct._IO_FILE* %8, %struct._IO_FILE** %obshin, align 4
  %9 = load i32, i32* @subsh, align 4
  store i32 %9, i32* %osubsh, align 4
  %10 = load i32, i32* @thisjob, align 4
  store i32 %10, i32* %cj, align 4
  %11 = load i32, i32* @lineno, align 4
  store i32 %11, i32* %oldlineno, align 4
  %12 = load i32, i32* @loops, align 4
  store i32 %12, i32* %oloops, align 4
  %13 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv = sext i8 %13 to i32
  store i32 %conv, i32* %oldshst, align 4
  %14 = load i8*, i8** @cmdstack, align 4
  store i8* %14, i8** %ocs, align 4
  %15 = load i32, i32* @cmdsp, align 4
  store i32 %15, i32* %ocsp, align 4
  %call5 = call i8* @zalloc(i32 256)
  store i8* %call5, i8** @cmdstack, align 4
  store i32 0, i32* @cmdsp, align 4
  %16 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %tobool6 = icmp ne %struct.eprog* %16, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %17 = load i32, i32* %tempfd, align 4
  store i32 %17, i32* @SHIN, align 4
  %18 = load i32, i32* @SHIN, align 4
  %call8 = call %struct._IO_FILE* @fdopen(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** @bshin, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  store i32 0, i32* @subsh, align 4
  store i32 1, i32* @lineno, align 4
  store i32 0, i32* @loops, align 4
  %call10 = call i32 @dosetopt(i32 161, i32 0, i32 1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %19 = load i8*, i8** %s.addr, align 4
  store i8* %19, i8** @scriptname, align 4
  %20 = load i8*, i8** %s.addr, align 4
  store i8* %20, i8** @scriptfilename, align 4
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 168), align 1
  %tobool11 = icmp ne i8 %21, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @printprompt4()
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %tobool13 = icmp ne %struct._IO_FILE* %22, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %23, %cond.true ], [ %24, %cond.false ]
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %cond, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end15

if.end15:                                         ; preds = %cond.end, %if.end9
  store i32 0, i32* @trap_state, align 4
  %25 = load i32, i32* @sourcelevel, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* @sourcelevel, align 4
  %26 = load i8*, i8** @scriptfilename, align 4
  %name = getelementptr inbounds %struct.funcstack, %struct.funcstack* %fstack, i32 0, i32 1
  store i8* %26, i8** %name, align 4
  %27 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tobool16 = icmp ne %struct.funcstack* %27, null
  br i1 %tobool16, label %cond.true17, label %cond.false19

cond.true17:                                      ; preds = %if.end15
  %28 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %name18 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %28, i32 0, i32 1
  %29 = load i8*, i8** %name18, align 4
  br label %cond.end26

cond.false19:                                     ; preds = %if.end15
  %30 = load i8*, i8** %old_scriptfilename, align 4
  %tobool20 = icmp ne i8* %30, null
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false19
  %31 = load i8*, i8** %old_scriptfilename, align 4
  br label %cond.end23

cond.false22:                                     ; preds = %cond.false19
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i8* [ %31, %cond.true21 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %cond.false22 ]
  %call25 = call i8* @dupstring(i8* %cond24)
  br label %cond.end26

cond.end26:                                       ; preds = %cond.end23, %cond.true17
  %cond27 = phi i8* [ %29, %cond.true17 ], [ %call25, %cond.end23 ]
  %caller = getelementptr inbounds %struct.funcstack, %struct.funcstack* %fstack, i32 0, i32 3
  store i8* %cond27, i8** %caller, align 4
  %flineno = getelementptr inbounds %struct.funcstack, %struct.funcstack* %fstack, i32 0, i32 4
  store i32 0, i32* %flineno, align 4
  %32 = load i32, i32* %oldlineno, align 4
  %lineno = getelementptr inbounds %struct.funcstack, %struct.funcstack* %fstack, i32 0, i32 5
  store i32 %32, i32* %lineno, align 4
  %33 = load i8*, i8** @scriptfilename, align 4
  %filename = getelementptr inbounds %struct.funcstack, %struct.funcstack* %fstack, i32 0, i32 2
  store i8* %33, i8** %filename, align 4
  %34 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %prev = getelementptr inbounds %struct.funcstack, %struct.funcstack* %fstack, i32 0, i32 0
  store %struct.funcstack* %34, %struct.funcstack** %prev, align 4
  %tp = getelementptr inbounds %struct.funcstack, %struct.funcstack* %fstack, i32 0, i32 6
  store i32 0, i32* %tp, align 4
  store %struct.funcstack* %fstack, %struct.funcstack** @funcstack, align 4
  %35 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %tobool28 = icmp ne %struct.eprog* %35, null
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %cond.end26
  call void @pushheap()
  %36 = load i32, i32* @errflag, align 4
  %and = and i32 %36, -2
  store i32 %and, i32* @errflag, align 4
  %37 = load %struct.eprog*, %struct.eprog** %prog, align 4
  call void @execode(%struct.eprog* %37, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  call void @popheap()
  %38 = load i32, i32* @errflag, align 4
  %tobool30 = icmp ne i32 %38, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then29
  store i32 2, i32* %ret, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29
  br label %if.end36

if.else:                                          ; preds = %cond.end26
  %call33 = call i32 @loop(i32 0, i32 0)
  switch i32 %call33, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.else
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.else
  store i32 0, i32* @lastval, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.else
  store i32 2, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb35, %sw.bb34, %sw.bb
  br label %if.end36

if.end36:                                         ; preds = %sw.epilog, %if.end32
  %39 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %prev37 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %39, i32 0, i32 0
  %40 = load %struct.funcstack*, %struct.funcstack** %prev37, align 4
  store %struct.funcstack* %40, %struct.funcstack** @funcstack, align 4
  %41 = load i32, i32* @sourcelevel, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* @sourcelevel, align 4
  %42 = load i32, i32* %otrap_state, align 4
  store i32 %42, i32* @trap_state, align 4
  %43 = load i32, i32* %otrap_return, align 4
  store i32 %43, i32* @trap_return, align 4
  %44 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %tobool38 = icmp ne %struct.eprog* %44, null
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.end36
  %45 = load %struct.eprog*, %struct.eprog** %prog, align 4
  call void @freeeprog(%struct.eprog* %45)
  br label %if.end42

if.else40:                                        ; preds = %if.end36
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @bshin, align 4
  %call41 = call i32 @fclose(%struct._IO_FILE* %46)
  %47 = load i8*, i8** @fdtable, align 4
  %48 = load i32, i32* @SHIN, align 4
  %arrayidx = getelementptr inbounds i8, i8* %47, i32 %48
  store i8 0, i8* %arrayidx, align 1
  %49 = load i32, i32* %fd, align 4
  store i32 %49, i32* @SHIN, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %obshin, align 4
  store %struct._IO_FILE* %50, %struct._IO_FILE** @bshin, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  %51 = load i32, i32* %osubsh, align 4
  store i32 %51, i32* @subsh, align 4
  %52 = load i32, i32* %cj, align 4
  store i32 %52, i32* @thisjob, align 4
  %53 = load i32, i32* %oldlineno, align 4
  store i32 %53, i32* @lineno, align 4
  %54 = load i32, i32* %oloops, align 4
  store i32 %54, i32* @loops, align 4
  %55 = load i32, i32* %oldshst, align 4
  %call43 = call i32 @dosetopt(i32 161, i32 %55, i32 1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %56 = load i32, i32* @errflag, align 4
  %and44 = and i32 %56, -2
  store i32 %and44, i32* @errflag, align 4
  %57 = load i32, i32* @exit_pending, align 4
  %tobool45 = icmp ne i32 %57, 0
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end42
  store i32 0, i32* @retflag, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end42
  %58 = load i8*, i8** %old_scriptname, align 4
  store i8* %58, i8** @scriptname, align 4
  %59 = load i8*, i8** %old_scriptfilename, align 4
  store i8* %59, i8** @scriptfilename, align 4
  %60 = load i8*, i8** @cmdstack, align 4
  call void @zfree(i8* %60, i32 256)
  %61 = load i8*, i8** %ocs, align 4
  store i8* %61, i8** @cmdstack, align 4
  %62 = load i32, i32* %ocsp, align 4
  store i32 %62, i32* @cmdsp, align 4
  %63 = load i32, i32* %ret, align 4
  store i32 %63, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.then
  %64 = load i32, i32* %retval, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind
define void @sourcehome(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %h = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp8 = alloca %struct.__sigset_t, align 4
  %buf = alloca i8*, align 4
  %oset28 = alloca %struct.__sigset_t, align 4
  %tmp32 = alloca %struct.__sigset_t, align 4
  %tmp34 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32, i32* @emulation, align 4
  %and = and i32 %1, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i8* @getsparam_u(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0))
  store i8* %call, i8** %h, align 4
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.end11, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** @home, align 4
  store i8* %2, i8** %h, align 4
  %3 = load i8*, i8** %h, align 4
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then3
  %4 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool4 = icmp ne i32 %dec, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %do.body
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body6
  %5 = load i32, i32* @queue_front, align 4
  %6 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %7, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %8 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %8
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %9 = bitcast %struct.__sigset_t* %oset to i8*
  %10 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 128, i32 4, i1 false)
  %11 = load i32, i32* @queue_front, align 4
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %11
  %12 = load i32, i32* %arrayidx7, align 4
  call void @zhandler(i32 %12)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp8, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end9

do.end9:                                          ; preds = %if.end
  br label %return

if.end10:                                         ; preds = %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %lor.lhs.false
  %13 = load i8*, i8** %h, align 4
  %call13 = call i32 @strlen(i8* %13)
  %14 = load i8*, i8** %s.addr, align 4
  %call14 = call i32 @strlen(i8* %14)
  %add15 = add i32 %call13, %call14
  %add16 = add i32 %add15, 2
  %mul = mul i32 1, %add16
  %call17 = call i8* @zhalloc(i32 %mul)
  store i8* %call17, i8** %buf, align 4
  %15 = load i8*, i8** %buf, align 4
  %16 = load i8*, i8** %h, align 4
  %17 = load i8*, i8** %s.addr, align 4
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* %16, i8* %17)
  br label %do.body19

do.body19:                                        ; preds = %if.end11
  %18 = load i32, i32* @queueing_enabled, align 4
  %dec20 = add nsw i32 %18, -1
  store i32 %dec20, i32* @queueing_enabled, align 4
  %tobool21 = icmp ne i32 %dec20, 0
  br i1 %tobool21, label %if.end37, label %if.then22

if.then22:                                        ; preds = %do.body19
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %while.cond24

while.cond24:                                     ; preds = %while.body26, %do.body23
  %19 = load i32, i32* @queue_front, align 4
  %20 = load i32, i32* @queue_rear, align 4
  %cmp25 = icmp ne i32 %19, %20
  br i1 %cmp25, label %while.body26, label %while.end35

while.body26:                                     ; preds = %while.cond24
  %21 = load i32, i32* @queue_front, align 4
  %add29 = add nsw i32 %21, 1
  %rem30 = srem i32 %add29, 128
  store i32 %rem30, i32* @queue_front, align 4
  %22 = load i32, i32* @queue_front, align 4
  %arrayidx31 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %22
  call void @signal_setmask(%struct.__sigset_t* sret %tmp32, %struct.__sigset_t* byval align 4 %arrayidx31)
  %23 = bitcast %struct.__sigset_t* %oset28 to i8*
  %24 = bitcast %struct.__sigset_t* %tmp32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 128, i32 4, i1 false)
  %25 = load i32, i32* @queue_front, align 4
  %arrayidx33 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %25
  %26 = load i32, i32* %arrayidx33, align 4
  call void @zhandler(i32 %26)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp34, %struct.__sigset_t* byval align 4 %oset28)
  br label %while.cond24

while.end35:                                      ; preds = %while.cond24
  br label %do.end36

do.end36:                                         ; preds = %while.end35
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %do.body19
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %27 = load i8*, i8** %buf, align 4
  %call39 = call i32 @source(i8* %27)
  br label %return

return:                                           ; preds = %do.end38, %do.end9
  ret void
}

declare i8* @getsparam(i8*) #1

declare i32 @parsestr(i8**) #1

declare void @singsub(i8**) #1

declare i32 @load_module(i8*, %struct.feature_enables*, i32) #1

declare i32 @unload_named_module(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define void @init_misc(i8* %cmd, i8* %zsh_name) #0 {
entry:
  %cmd.addr = alloca i8*, align 4
  %zsh_name.addr = alloca i8*, align 4
  store i8* %cmd, i8** %cmd.addr, align 4
  store i8* %zsh_name, i8** %zsh_name.addr, align 4
  %0 = load i8*, i8** %zsh_name.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 114
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @restricted, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @dosetopt(i32 155, i32 1, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i8*, i8** %cmd.addr, align 4
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* @SHIN, align 4
  %cmp4 = icmp sge i32 %4, 10
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @bshin, align 4
  %call7 = call i32 @fclose(%struct._IO_FILE* %5)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3
  %call9 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 256)
  %call10 = call i32 @movefd(i32 %call9)
  store i32 %call10, i32* @SHIN, align 4
  %6 = load i32, i32* @SHIN, align 4
  %call11 = call %struct._IO_FILE* @fdopen(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0))
  store %struct._IO_FILE* %call11, %struct._IO_FILE** @bshin, align 4
  %7 = load i8*, i8** %cmd.addr, align 4
  call void @execstring(i8* %7, i32 0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0))
  store i32 1, i32* @stopmsg, align 4
  %8 = load i32, i32* @lastval, align 4
  call void @zexit(i32 %8, i32 0)
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.end
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv13 = sext i8 %9 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end12
  %10 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 152), align 1
  %conv15 = sext i8 %10 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  call void @readhistfile(i8* null, i32 0, i32 32768)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end12
  ret void
}

declare void @execstring(i8*, i32, i32, i8*) #1

declare void @readhistfile(i8*, i32, i32) #1

declare %struct.eprog* @try_source_file(i8*) #1

declare i8* @unmeta(i8*) #1

declare void @printprompt4() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @freeeprog(%struct.eprog*) #1

declare void @zfree(i8*, i32) #1

declare i8* @getsparam_u(i8*) #1

declare i8* @zhalloc(i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define void @init_bltinmods() #0 {
entry:
  %zsh_features = alloca [4 x i8*], align 4
  %emu_features = alloca [2 x i8*], align 4
  %features = alloca [3 x i8*], align 4
  %features9 = alloca [2 x i8*], align 4
  %features16 = alloca [31 x i8*], align 4
  %features23 = alloca [3 x i8*], align 4
  %features30 = alloca [5 x i8*], align 4
  %features37 = alloca [3 x i8*], align 4
  %features44 = alloca [7 x i8*], align 4
  %features51 = alloca [9 x i8*], align 4
  %features58 = alloca [4 x i8*], align 4
  %features65 = alloca [3 x i8*], align 4
  %0 = bitcast [4 x i8*]* %zsh_features to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast ([4 x i8*]* @init_bltinmods.zsh_features to i8*), i32 16, i32 4, i1 false)
  %1 = bitcast [2 x i8*]* %emu_features to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* bitcast ([2 x i8*]* @init_bltinmods.emu_features to i8*), i32 8, i32 4, i1 false)
  %2 = load i32, i32* @emulation, align 4
  %and = and i32 %2, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %zsh_features, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %arraydecay1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %emu_features, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %arraydecay, %cond.true ], [ %arraydecay1, %cond.false ]
  %call = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i8** %cond, i32 0, i32 1)
  %3 = load i32, i32* @emulation, align 4
  %and2 = and i32 %3, 16
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = bitcast [3 x i8*]* %features to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* bitcast ([3 x i8*]* @init_bltinmods.features to i8*), i32 12, i32 4, i1 false)
  %arraydecay4 = getelementptr inbounds [3 x i8*], [3 x i8*]* %features, i32 0, i32 0
  %call5 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i8** %arraydecay4, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %5 = load i32, i32* @emulation, align 4
  %and6 = and i32 %5, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %6 = bitcast [2 x i8*]* %features9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* bitcast ([2 x i8*]* @init_bltinmods.features.97 to i8*), i32 8, i32 4, i1 false)
  %arraydecay10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %features9, i32 0, i32 0
  %call11 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i32 0, i32 0), i8** %arraydecay10, i32 0, i32 1)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  %7 = load i32, i32* @emulation, align 4
  %and13 = and i32 %7, 16
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end12
  %8 = bitcast [31 x i8*]* %features16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* bitcast ([31 x i8*]* @init_bltinmods.features.129 to i8*), i32 124, i32 4, i1 false)
  %arraydecay17 = getelementptr inbounds [31 x i8*], [31 x i8*]* %features16, i32 0, i32 0
  %call18 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0), i8** %arraydecay17, i32 0, i32 1)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12
  %9 = load i32, i32* @emulation, align 4
  %and20 = and i32 %9, 16
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end19
  %10 = bitcast [3 x i8*]* %features23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* bitcast ([3 x i8*]* @init_bltinmods.features.133 to i8*), i32 12, i32 4, i1 false)
  %arraydecay24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %features23, i32 0, i32 0
  %call25 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.134, i32 0, i32 0), i8** %arraydecay24, i32 0, i32 1)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end19
  %11 = load i32, i32* @emulation, align 4
  %and27 = and i32 %11, 16
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end26
  %12 = bitcast [5 x i8*]* %features30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* bitcast ([5 x i8*]* @init_bltinmods.features.139 to i8*), i32 20, i32 4, i1 false)
  %arraydecay31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %features30, i32 0, i32 0
  %call32 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8** %arraydecay31, i32 0, i32 1)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26
  call void @add_dep(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0))
  %13 = load i32, i32* @emulation, align 4
  %and34 = and i32 %13, 16
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end33
  %14 = bitcast [3 x i8*]* %features37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* bitcast ([3 x i8*]* @init_bltinmods.features.144 to i8*), i32 12, i32 4, i1 false)
  %arraydecay38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %features37, i32 0, i32 0
  %call39 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), i8** %arraydecay38, i32 0, i32 1)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end33
  call void @add_dep(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0))
  call void @add_dep(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0))
  %15 = load i32, i32* @emulation, align 4
  %and41 = and i32 %15, 16
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end40
  %16 = bitcast [7 x i8*]* %features44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* bitcast ([7 x i8*]* @init_bltinmods.features.153 to i8*), i32 28, i32 4, i1 false)
  %arraydecay45 = getelementptr inbounds [7 x i8*], [7 x i8*]* %features44, i32 0, i32 0
  %call46 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i8** %arraydecay45, i32 0, i32 1)
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end40
  call void @add_dep(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0))
  call void @add_dep(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0))
  call void @add_dep(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0))
  %17 = load i32, i32* @emulation, align 4
  %and48 = and i32 %17, 16
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end47
  %18 = bitcast [9 x i8*]* %features51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* bitcast ([9 x i8*]* @init_bltinmods.features.163 to i8*), i32 36, i32 4, i1 false)
  %arraydecay52 = getelementptr inbounds [9 x i8*], [9 x i8*]* %features51, i32 0, i32 0
  %call53 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i8** %arraydecay52, i32 0, i32 1)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end47
  call void @add_dep(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0))
  call void @add_dep(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0))
  %19 = load i32, i32* @emulation, align 4
  %and55 = and i32 %19, 16
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end54
  %20 = bitcast [4 x i8*]* %features58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* bitcast ([4 x i8*]* @init_bltinmods.features.168 to i8*), i32 16, i32 4, i1 false)
  %arraydecay59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %features58, i32 0, i32 0
  %call60 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i8** %arraydecay59, i32 0, i32 1)
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end54
  %21 = load i32, i32* @emulation, align 4
  %and62 = and i32 %21, 16
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then64, label %if.end68

if.then64:                                        ; preds = %if.end61
  %22 = bitcast [3 x i8*]* %features65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* bitcast ([3 x i8*]* @init_bltinmods.features.171 to i8*), i32 12, i32 4, i1 false)
  %arraydecay66 = getelementptr inbounds [3 x i8*], [3 x i8*]* %features65, i32 0, i32 0
  %call67 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), i8** %arraydecay66, i32 0, i32 1)
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end61
  call void @add_dep(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0))
  call void @register_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i32 (%struct.module*)* @setup_zshQsmain, i32 (%struct.module*, i8***)* @features_zshQsmain, i32 (%struct.module*, i32**)* @enables_zshQsmain, i32 (%struct.module*)* @boot_zshQsmain, i32 (%struct.module*)* @cleanup_zshQsmain, i32 (%struct.module*)* @finish_zshQsmain)
  %call69 = call i32 @load_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), %struct.feature_enables* null, i32 0)
  ret void
}

declare i32 @autofeatures(i8*, i8*, i8**, i32, i32) #1

declare void @add_dep(i8*, i8*) #1

declare void @register_module(i8*, i32 (%struct.module*)*, i32 (%struct.module*, i8***)*, i32 (%struct.module*, i32**)*, i32 (%struct.module*)*, i32 (%struct.module*)*, i32 (%struct.module*)*) #1

declare i32 @setup_zshQsmain(%struct.module*) #1

declare i32 @features_zshQsmain(%struct.module*, i8***) #1

declare i32 @enables_zshQsmain(%struct.module*, i32**) #1

declare i32 @boot_zshQsmain(%struct.module*) #1

declare i32 @cleanup_zshQsmain(%struct.module*) #1

declare i32 @finish_zshQsmain(%struct.module*) #1

; Function Attrs: noinline nounwind
define void @noop_function() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind
define void @noop_function_int(i32 %nothing) #0 {
entry:
  %nothing.addr = alloca i32, align 4
  store i32 %nothing, i32* %nothing.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i8* @zleentry(i32 %cmd, ...) #0 {
entry:
  %cmd.addr = alloca i32, align 4
  %ret = alloca i8*, align 4
  %ap = alloca [4 x i32], align 4
  %pptbuf = alloca i8*, align 4
  %lp = alloca i8**, align 4
  %pptlen = alloca i32, align 4
  %varet = alloca i8**, align 4
  %ll = alloca i32*, align 4
  %cs = alloca i32*, align 4
  %varet23 = alloca i32*, align 4
  %varet25 = alloca i32*, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  store i8* null, i8** %ret, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast i32* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* @zle_load_state, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %cmd.addr, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load i32, i32* %cmd.addr, align 4
  %cmp2 = icmp ne i32 %2, 4
  br i1 %cmp2, label %land.lhs.true3, label %if.end10

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %cmd.addr, align 4
  %cmp4 = icmp ne i32 %3, 5
  br i1 %cmp4, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true3
  %call = call i32 @load_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), %struct.feature_enables* null, i32 0)
  %cmp5 = icmp ne i32 %call, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %call7 = call i32 @load_module(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), %struct.feature_enables* null, i32 0)
  %4 = load i8* (i32, i32*)*, i8* (i32, i32*)** @zle_entry_ptr, align 4
  %5 = load i32, i32* %cmd.addr, align 4
  %arraydecay8 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %call9 = call i8* %4(i32 %5, i32* %arraydecay8)
  store i8* %call9, i8** %ret, align 4
  store i32 -1, i32* %cmd.addr, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 2, i32* @zle_load_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true3, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %6 = load i8* (i32, i32*)*, i8* (i32, i32*)** @zle_entry_ptr, align 4
  %7 = load i32, i32* %cmd.addr, align 4
  %arraydecay12 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %call13 = call i8* %6(i32 %7, i32* %arraydecay12)
  store i8* %call13, i8** %ret, align 4
  store i32 -1, i32* %cmd.addr, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb14, %sw.bb11, %if.end10
  %8 = load i32, i32* %cmd.addr, align 4
  switch i32 %8, label %sw.epilog27 [
    i32 1, label %sw.bb15
    i32 0, label %sw.bb21
  ]

sw.bb15:                                          ; preds = %sw.epilog
  %arraydecay16 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %9 = va_arg i32* %arraydecay16, i8**
  store i8** %9, i8*** %varet, align 4
  %10 = load i8**, i8*** %varet, align 4
  store i8** %10, i8*** %lp, align 4
  %11 = load i8**, i8*** %lp, align 4
  %tobool = icmp ne i8** %11, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb15
  %12 = load i8**, i8*** %lp, align 4
  %13 = load i8*, i8** %12, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ null, %cond.false ]
  %call17 = call i8* @promptexpand(i8* %cond, i32 0, i8* null, i8* null, i32* null)
  %call18 = call i8* @unmetafy(i8* %call17, i32* %pptlen)
  store i8* %call18, i8** %pptbuf, align 4
  %14 = load i8*, i8** %pptbuf, align 4
  %15 = load i32, i32* %pptlen, align 4
  %call19 = call i32 @write_loop(i32 2, i8* %14, i32 %15)
  %16 = load i8*, i8** %pptbuf, align 4
  call void @free(i8* %16)
  %call20 = call i8* @shingetline()
  store i8* %call20, i8** %ret, align 4
  br label %sw.epilog27

sw.bb21:                                          ; preds = %sw.epilog
  %arraydecay22 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %17 = va_arg i32* %arraydecay22, i32*
  store i32* %17, i32** %varet23, align 4
  %18 = load i32*, i32** %varet23, align 4
  store i32* %18, i32** %ll, align 4
  %arraydecay24 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %19 = va_arg i32* %arraydecay24, i32*
  store i32* %19, i32** %varet25, align 4
  %20 = load i32*, i32** %varet25, align 4
  store i32* %20, i32** %cs, align 4
  %21 = load i32*, i32** %cs, align 4
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %ll, align 4
  store i32 0, i32* %22, align 4
  %call26 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call26, i8** %ret, align 4
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.epilog, %sw.bb21, %cond.end
  %arraydecay28 = getelementptr inbounds [4 x i32], [4 x i32]* %ap, i32 0, i32 0
  %arraydecay2829 = bitcast i32* %arraydecay28 to i8*
  call void @llvm.va_end(i8* %arraydecay2829)
  %23 = load i8*, i8** %ret, align 4
  ret i8* %23
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare i8* @unmetafy(i8*, i32*) #1

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*) #1

declare i32 @write_loop(i32, i8*, i32) #1

declare void @free(i8*) #1

declare i8* @shingetline() #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind
define i32 @fallback_compctlread(i8* %name, i8** %args, %struct.options* %ops, i8* %reply) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %reply.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i8* %reply, i8** %reply.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.174, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind
define i32 @zsh_main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %t = alloca i8**, align 4
  %runscript = alloca i8*, align 4
  %zsh_name = alloca i8*, align 4
  %cmd = alloca i8*, align 4
  %t0 = alloca i32, align 4
  %arg0 = alloca i8*, align 4
  %sh = alloca i8*, align 4
  %errexit = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i8* null, i8** %runscript, align 4
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %0 = load i8**, i8*** %argv.addr, align 4
  %1 = load i8**, i8*** @environ, align 4
  call void @init_jobs(i8** %0, i8** %1)
  %2 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 0), align 2
  %conv = sext i16 %2 to i32
  %or = or i32 %conv, 4096
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 0), align 2
  %3 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 131), align 2
  %conv2 = sext i16 %3 to i32
  %or3 = or i32 %conv2, 4096
  %conv4 = trunc i32 %or3 to i16
  store i16 %conv4, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 131), align 2
  %4 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 162), align 2
  %conv5 = sext i16 %4 to i32
  %or6 = or i32 %conv5, 4096
  %conv7 = trunc i32 %or6 to i16
  store i16 %conv7, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @typtab, i32 0, i32 162), align 2
  store i32 132, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %t0, align 4
  %cmp = icmp sle i32 %5, 161
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %t0, align 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %6
  %7 = load i16, i16* %arrayidx, align 2
  %conv9 = sext i16 %7 to i32
  %or10 = or i32 %conv9, 4112
  %conv11 = trunc i32 %or10 to i16
  store i16 %conv11, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %t0, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %t0, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8**, i8*** %argv.addr, align 4
  store i8** %9, i8*** %t, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc14, %for.end
  %10 = load i8**, i8*** %t, align 4
  %11 = load i8*, i8** %10, align 4
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %for.body13, label %for.end16

for.body13:                                       ; preds = %for.cond12
  br label %for.inc14

for.inc14:                                        ; preds = %for.body13
  %12 = load i8**, i8*** %t, align 4
  %13 = load i8*, i8** %12, align 4
  %call15 = call i8* @metafy(i8* %13, i32 -1, i32 4)
  %14 = load i8**, i8*** %t, align 4
  store i8* %call15, i8** %14, align 4
  %15 = load i8**, i8*** %t, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %t, align 4
  br label %for.cond12

for.end16:                                        ; preds = %for.cond12
  %16 = load i8**, i8*** %argv.addr, align 4
  %arrayidx17 = getelementptr inbounds i8*, i8** %16, i32 0
  %17 = load i8*, i8** %arrayidx17, align 4
  store i8* %17, i8** %zsh_name, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end16
  %18 = load i8*, i8** %zsh_name, align 4
  store i8* %18, i8** %arg0, align 4
  %19 = load i8*, i8** %arg0, align 4
  %call18 = call i8* @strrchr(i8* %19, i32 47)
  store i8* %call18, i8** %zsh_name, align 4
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %20 = load i8*, i8** %arg0, align 4
  store i8* %20, i8** %zsh_name, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %21 = load i8*, i8** %zsh_name, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr20, i8** %zsh_name, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i8*, i8** %zsh_name, align 4
  %23 = load i8, i8* %22, align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp eq i32 %conv21, 45
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end
  %24 = load i8*, i8** %zsh_name, align 4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr25, i8** %zsh_name, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end
  %25 = load i8*, i8** %zsh_name, align 4
  %call27 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0))
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.else41

if.then30:                                        ; preds = %if.end26
  %call31 = call i8* @zgetenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0))
  store i8* %call31, i8** %sh, align 4
  %26 = load i8*, i8** %sh, align 4
  %tobool32 = icmp ne i8* %26, null
  br i1 %tobool32, label %land.lhs.true, label %if.else39

land.lhs.true:                                    ; preds = %if.then30
  %27 = load i8*, i8** %sh, align 4
  %28 = load i8, i8* %27, align 1
  %conv33 = sext i8 %28 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %land.lhs.true35, label %if.else39

land.lhs.true35:                                  ; preds = %land.lhs.true
  %29 = load i8*, i8** %arg0, align 4
  %30 = load i8*, i8** %sh, align 4
  %cmp36 = icmp ne i8* %29, %30
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %land.lhs.true35
  %31 = load i8*, i8** %sh, align 4
  store i8* %31, i8** %zsh_name, align 4
  br label %if.end40

if.else39:                                        ; preds = %land.lhs.true35, %land.lhs.true, %if.then30
  br label %do.end

if.end40:                                         ; preds = %if.then38
  br label %if.end42

if.else41:                                        ; preds = %if.end26
  br label %do.end

if.end42:                                         ; preds = %if.end40
  br label %do.cond

do.cond:                                          ; preds = %if.end42
  %32 = load i8*, i8** %zsh_name, align 4
  %tobool43 = icmp ne i8* %32, null
  br i1 %tobool43, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else41, %if.else39
  %call44 = call i32 @zopenmax()
  store i32 %call44, i32* @fdtable_size, align 4
  %33 = load i32, i32* @fdtable_size, align 4
  %mul = mul i32 %33, 1
  %call45 = call i8* @zshcalloc(i32 %mul)
  store i8* %call45, i8** @fdtable, align 4
  %34 = load i8*, i8** @fdtable, align 4
  %arrayidx46 = getelementptr inbounds i8, i8* %34, i32 2
  store i8 2, i8* %arrayidx46, align 1
  %35 = load i8*, i8** @fdtable, align 4
  %arrayidx47 = getelementptr inbounds i8, i8* %35, i32 1
  store i8 2, i8* %arrayidx47, align 1
  %36 = load i8*, i8** @fdtable, align 4
  %arrayidx48 = getelementptr inbounds i8, i8* %36, i32 0
  store i8 2, i8* %arrayidx48, align 1
  call void @createoptiontable()
  %37 = load i8*, i8** %zsh_name, align 4
  %38 = load i8**, i8*** %argv.addr, align 4
  call void @parseargs(i8* %37, i8** %38, i8** %runscript, i8** %cmd)
  store i32 -1, i32* @SHTTY, align 4
  %39 = load i8*, i8** %cmd, align 4
  call void @init_io(i8* %39)
  %40 = load i8*, i8** %cmd, align 4
  %41 = load i8*, i8** %runscript, align 4
  %42 = load i8*, i8** %zsh_name, align 4
  call void @setupvals(i8* %40, i8* %41, i8* %42)
  call void @init_signals()
  call void @init_bltinmods()
  call void @init_builtins()
  call void @run_init_scripts()
  %43 = load i8*, i8** %runscript, align 4
  call void @setupshin(i8* %43)
  %44 = load i8*, i8** %cmd, align 4
  %45 = load i8*, i8** %zsh_name, align 4
  call void @init_misc(i8* %44, i8* %45)
  br label %for.cond49

for.cond49:                                       ; preds = %if.end90, %if.then80, %do.end
  store i32 0, i32* %errexit, align 4
  call void @maybeshrinkjobtab()
  br label %do.body50

do.body50:                                        ; preds = %land.end, %for.cond49
  store i32 0, i32* @retflag, align 4
  %call51 = call i32 @loop(i32 1, i32 0)
  %46 = load i32, i32* @errflag, align 4
  %tobool52 = icmp ne i32 %46, 0
  br i1 %tobool52, label %land.lhs.true53, label %if.end58

land.lhs.true53:                                  ; preds = %do.body50
  %47 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool54 = icmp ne i8 %47, 0
  br i1 %tobool54, label %if.end58, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %land.lhs.true53
  %48 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 41), align 1
  %tobool56 = icmp ne i8 %48, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %land.lhs.true55
  store i32 1, i32* %errexit, align 4
  br label %do.end66

if.end58:                                         ; preds = %land.lhs.true55, %land.lhs.true53, %do.body50
  br label %do.cond59

do.cond59:                                        ; preds = %if.end58
  %49 = load i32, i32* @tok, align 4
  %cmp60 = icmp ne i32 %49, 37
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond59
  %50 = load i32, i32* @tok, align 4
  %cmp62 = icmp ne i32 %50, 38
  br i1 %cmp62, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %51 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv64 = sext i8 %51 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %52 = phi i1 [ true, %land.rhs ], [ %tobool65, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %do.cond59
  %53 = phi i1 [ false, %do.cond59 ], [ %52, %lor.end ]
  br i1 %53, label %do.body50, label %do.end66

do.end66:                                         ; preds = %land.end, %if.then57
  %54 = load i32, i32* @tok, align 4
  %cmp67 = icmp eq i32 %54, 38
  br i1 %cmp67, label %if.then70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end66
  %55 = load i32, i32* %errexit, align 4
  %tobool69 = icmp ne i32 %55, 0
  br i1 %tobool69, label %if.then70, label %if.end74

if.then70:                                        ; preds = %lor.lhs.false, %do.end66
  %56 = load i32, i32* @lastval, align 4
  %tobool71 = icmp ne i32 %56, 0
  br i1 %tobool71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.then70
  store i32 1, i32* @lastval, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.then70
  store i32 1, i32* @stopmsg, align 4
  %57 = load i32, i32* @lastval, align 4
  call void @zexit(i32 %57, i32 0)
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %lor.lhs.false
  %58 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 91), align 1
  %conv75 = sext i8 %58 to i32
  %tobool76 = icmp ne i32 %conv75, 0
  br i1 %tobool76, label %land.lhs.true77, label %if.then80

land.lhs.true77:                                  ; preds = %if.end74
  %59 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv78 = sext i8 %59 to i32
  %tobool79 = icmp ne i32 %conv78, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %land.lhs.true77, %if.end74
  %60 = load i32, i32* @lastval, align 4
  call void @zexit(i32 %60, i32 0)
  br label %for.cond49

if.end81:                                         ; preds = %land.lhs.true77
  %61 = load i32, i32* @noexitct, align 4
  %inc82 = add nsw i32 %61, 1
  store i32 %inc82, i32* @noexitct, align 4
  %62 = load i32, i32* @noexitct, align 4
  %cmp83 = icmp sge i32 %62, 10
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end81
  store i32 1, i32* @stopmsg, align 4
  %63 = load i32, i32* @lastval, align 4
  call void @zexit(i32 %63, i32 0)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end81
  %64 = load i32, i32* @use_exit_printed, align 4
  %tobool87 = icmp ne i32 %64, 0
  br i1 %tobool87, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.end86
  %65 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 111), align 1
  %tobool89 = icmp ne i8 %65, 0
  %lnot = xor i1 %tobool89, true
  %cond = select i1 %lnot, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.178, i32 0, i32 0)
  call void (i8*, i8*, ...) @zerrnam(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* %cond)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86
  br label %for.cond49

return:                                           ; No predecessors!
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

declare i8* @setlocale(i32, i8*) #1

declare void @init_jobs(i8**, i8**) #1

declare i8* @strrchr(i8*, i32) #1

declare i32 @zopenmax() #1

declare i8* @zshcalloc(i32) #1

declare void @createoptiontable() #1

; Function Attrs: noinline nounwind
define internal void @parseargs(i8* %zsh_name, i8** %argv, i8** %runscript, i8** %cmdptr) #0 {
entry:
  %zsh_name.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %runscript.addr = alloca i8**, align 4
  %cmdptr.addr = alloca i8**, align 4
  %x = alloca i8**, align 4
  %paramlist = alloca %union.linkroot*, align 4
  %flags = alloca i32, align 4
  store i8* %zsh_name, i8** %zsh_name.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i8** %runscript, i8*** %runscript.addr, align 4
  store i8** %cmdptr, i8*** %cmdptr.addr, align 4
  store i32 1, i32* %flags, align 4
  %0 = load i8**, i8*** %argv.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %4, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 4
  %5 = load i8*, i8** %4, align 4
  store i8* %5, i8** @posixzero, align 4
  store i8* %5, i8** @argzero, align 4
  store i32 0, i32* @SHIN, align 4
  %6 = load i8*, i8** %zsh_name.addr, align 4
  %7 = load i8**, i8*** %cmdptr.addr, align 4
  %8 = load i32, i32* %flags, align 4
  %call = call i32 @parseopts(i8* %6, i8*** %argv.addr, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0), i8** %7, %union.linkroot* null, i32 %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @exit(i32 1) #6
  unreachable

if.end3:                                          ; preds = %if.end
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool4 = icmp ne i8 %9, 0
  br i1 %tobool4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end3
  %10 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  %conv6 = sext i8 %10 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then5
  %call8 = call i32 @isatty(i32 0)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then5
  %11 = phi i1 [ false, %if.then5 ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %conv10 = trunc i32 %land.ext to i8
  store i8 %conv10, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  br label %if.end11

if.end11:                                         ; preds = %land.end, %if.end3
  %call12 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call12, %union.linkroot** %paramlist, align 4
  %12 = load i8**, i8*** %argv.addr, align 4
  %13 = load i8*, i8** %12, align 4
  %tobool13 = icmp ne i8* %13, null
  br i1 %tobool13, label %if.then14, label %if.else28

if.then14:                                        ; preds = %if.end11
  %14 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool15 = icmp ne i8 %14, 0
  br i1 %tobool15, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.then14
  %15 = load i8**, i8*** %argv.addr, align 4
  %16 = load i8*, i8** %15, align 4
  store i8* %16, i8** @posixzero, align 4
  %17 = load i8**, i8*** %cmdptr.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %tobool17 = icmp ne i8* %18, null
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  %19 = load i8**, i8*** %argv.addr, align 4
  %20 = load i8*, i8** %19, align 4
  store i8* %20, i8** @argzero, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then16
  %21 = load i8**, i8*** %argv.addr, align 4
  %22 = load i8*, i8** %21, align 4
  %23 = load i8**, i8*** %runscript.addr, align 4
  store i8* %22, i8** %23, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %24 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv20 = sext i8 %24 to i32
  %and = and i32 %conv20, 1
  %conv21 = trunc i32 %and to i8
  store i8 %conv21, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %25 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr22 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr22, i8*** %argv.addr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %if.then14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %26 = load i8**, i8*** %argv.addr, align 4
  %27 = load i8*, i8** %26, align 4
  %tobool24 = icmp ne i8* %27, null
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %union.linkroot*, %union.linkroot** %paramlist, align 4
  %29 = load %union.linkroot*, %union.linkroot** %paramlist, align 4
  %list = bitcast %union.linkroot* %29 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %30 = load %struct.linknode*, %struct.linknode** %last, align 4
  %31 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr25 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %incdec.ptr25, i8*** %argv.addr, align 4
  %32 = load i8*, i8** %31, align 4
  %call26 = call i8* @ztrdup(i8* %32)
  %call27 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %28, %struct.linknode* %30, i8* %call26)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end32

if.else28:                                        ; preds = %if.end11
  %33 = load i8**, i8*** %cmdptr.addr, align 4
  %34 = load i8*, i8** %33, align 4
  %tobool29 = icmp ne i8* %34, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.else28
  store i8 1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.else28
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %while.end
  %35 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 166), align 1
  %tobool33 = icmp ne i8 %35, 0
  br i1 %tobool33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end32
  %36 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv35 = sext i8 %36 to i32
  %and36 = and i32 %conv35, 1
  %conv37 = trunc i32 %and36 to i8
  store i8 %conv37, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end32
  %37 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool39 = icmp ne i8 %37, 0
  %lnot = xor i1 %tobool39, true
  %lnot40 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot40 to i32
  %conv41 = trunc i32 %lnot.ext to i8
  store i8 %conv41, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %38 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv42 = sext i8 %38 to i32
  %cmp43 = icmp eq i32 %conv42, 2
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end38
  %39 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  store i8 %39, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end38
  %40 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 69), align 1
  %conv47 = sext i8 %40 to i32
  %cmp48 = icmp eq i32 %conv47, 2
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  %41 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  store i8 %41, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 69), align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46
  %42 = load %union.linkroot*, %union.linkroot** %paramlist, align 4
  %call52 = call i32 @countlinknodes(%union.linkroot* %42)
  %add = add nsw i32 %call52, 1
  %mul = mul i32 %add, 4
  %call53 = call i8* @zshcalloc(i32 %mul)
  %43 = bitcast i8* %call53 to i8**
  store i8** %43, i8*** %x, align 4
  store i8** %43, i8*** @pparams, align 4
  br label %while.cond54

while.cond54:                                     ; preds = %while.body58, %if.end51
  %44 = load %union.linkroot*, %union.linkroot** %paramlist, align 4
  %call55 = call i8* @getlinknode(%union.linkroot* %44)
  %45 = load i8**, i8*** %x, align 4
  %incdec.ptr56 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr56, i8*** %x, align 4
  store i8* %call55, i8** %45, align 4
  %tobool57 = icmp ne i8* %call55, null
  br i1 %tobool57, label %while.body58, label %while.end59

while.body58:                                     ; preds = %while.cond54
  br label %while.cond54

while.end59:                                      ; preds = %while.cond54
  %46 = load %union.linkroot*, %union.linkroot** %paramlist, align 4
  %47 = bitcast %union.linkroot* %46 to i8*
  call void @free(i8* %47)
  %48 = load i8*, i8** @argzero, align 4
  %call60 = call i8* @ztrdup(i8* %48)
  store i8* %call60, i8** @argzero, align 4
  %49 = load i8*, i8** @posixzero, align 4
  %call61 = call i8* @ztrdup(i8* %49)
  store i8* %call61, i8** @posixzero, align 4
  ret void
}

declare void @init_builtins() #1

; Function Attrs: noinline nounwind
define internal void @setupshin(i8* %runscript) #0 {
entry:
  %runscript.addr = alloca i8*, align 4
  %funmeta = alloca i8*, align 4
  %sfname = alloca i8*, align 4
  %st = alloca %struct.stat, align 8
  store i8* %runscript, i8** %runscript.addr, align 4
  %0 = load i8*, i8** %runscript.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  store i8* null, i8** %sfname, align 4
  %1 = load i8*, i8** %runscript.addr, align 4
  %call = call i8* @unmeta(i8* %1)
  store i8* %call, i8** %funmeta, align 4
  %2 = load i8*, i8** %funmeta, align 4
  %call1 = call i32 @access(i8* %2, i32 0)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %3 = load i8*, i8** %funmeta, align 4
  %call2 = call i32 @stat(i8* %3, %struct.stat* %st)
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %4 = load i32, i32* %st_mode, align 8
  %and = and i32 %4, 61440
  %cmp5 = icmp eq i32 %and, 16384
  br i1 %cmp5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %5 = load i8*, i8** %runscript.addr, align 4
  store i8* %5, i8** %sfname, align 4
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.then
  %6 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 128), align 1
  %conv = sext i8 %6 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %if.else
  %7 = load i8*, i8** %runscript.addr, align 4
  %call9 = call i8* @strchr(i8* %7, i32 47)
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %8 = load i8*, i8** %runscript.addr, align 4
  %call12 = call i8* @pathprog(i8* %8, i8** %sfname)
  store i8* %call12, i8** %funmeta, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true8, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  %9 = load i8*, i8** %sfname, align 4
  %tobool14 = icmp ne i8* %9, null
  br i1 %tobool14, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %if.end13
  %10 = load i8*, i8** %funmeta, align 4
  %call15 = call i32 (i8*, i32, ...) @open(i8* %10, i32 256)
  %call16 = call i32 @movefd(i32 %call15)
  store i32 %call16, i32* @SHIN, align 4
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  %11 = load i8*, i8** %runscript.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.225, i32 0, i32 0), i8* %11)
  call void @exit(i32 127) #6
  unreachable

if.end20:                                         ; preds = %lor.lhs.false
  %12 = load i8*, i8** %sfname, align 4
  store i8* %12, i8** @scriptfilename, align 4
  %13 = load i8*, i8** @argzero, align 4
  store i8* %13, i8** %sfname, align 4
  %14 = load i8*, i8** %runscript.addr, align 4
  %call21 = call i8* @ztrdup(i8* %14)
  store i8* %call21, i8** @argzero, align 4
  %15 = load i8*, i8** %sfname, align 4
  call void @zsfree(i8* %15)
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %entry
  store i32 1, i32* @lineno, align 4
  %16 = load i32, i32* @SHIN, align 4
  %tobool23 = icmp ne i32 %16, 0
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end22
  %17 = load i32, i32* @SHIN, align 4
  %call24 = call %struct._IO_FILE* @fdopen(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %call24, %cond.true ], [ %18, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** @bshin, align 4
  %19 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv25 = sext i8 %19 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br i1 %tobool26, label %land.lhs.true27, label %if.end33

land.lhs.true27:                                  ; preds = %cond.end
  %20 = load i32, i32* @SHIN, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.end33, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool30 = icmp ne i8 %21, 0
  br i1 %tobool30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %land.lhs.true29
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 4
  %call32 = call i32 @setvbuf(%struct._IO_FILE* %22, i8* null, i32 2, i32 0)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true29, %land.lhs.true27, %cond.end
  ret void
}

declare void @maybeshrinkjobtab() #1

declare void @zerrnam(i8*, i8*, ...) #1

declare void @emulate(i8*, i32, i32*, i8*) #1

declare i32 @geteuid() #1

declare i32 @getgid() #1

declare i32 @getegid() #1

declare void @printoptionlist() #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare i32 @countlinknodes(%union.linkroot*) #1

declare i8* @getlinknode(%union.linkroot*) #1

declare i32 @access(i8*, i32) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare i8* @strchr(i8*, i32) #1

declare i8* @pathprog(i8*, i8**) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
