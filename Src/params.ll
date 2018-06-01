; ModuleID = 'params.c'
source_filename = "params.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { double }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { {}*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.gsu_integer = type { i32 (%struct.param*)*, void (%struct.param*, i32)*, void (%struct.param*, i32)* }
%struct.gsu_float = type { double (%struct.param*)*, void (%struct.param*, double)*, void (%struct.param*, i32)* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.__sigset_t = type { [32 x i32] }
%struct.timeval = type { i32, i32 }
%struct.localename = type { i8*, i32 }
%struct.paramtypes = type { i32, i8*, i32, i32 }
%struct._IO_FILE = type opaque
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.funcstack = type { %struct.funcstack*, i8*, i8*, i8*, i32, i32, i32 }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.mnumber = type { %union.anon.1, i32 }
%union.anon.1 = type { double }
%struct.tieddata = type { i8***, i32 }
%struct.timezone = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.nameddir = type { %struct.hashnode, i8*, i32 }
%union.anon.2 = type { float }
%union.anon.3 = type { double }

@zsh_funcnest = global i32 500, align 4
@keyboardhackchar = global i8 0, align 1
@stdscalar_gsu = constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @strsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@varscalar_gsu = constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strvargetfn, void (%struct.param*, i8*)* @strvarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@nullsetscalar_gsu = constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @nullstrsetfn, void (%struct.param*, i32)* null }, align 4
@stdinteger_gsu = constant %struct.gsu_integer { i32 (%struct.param*)* @intgetfn, void (%struct.param*, i32)* @intsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@varinteger_gsu = constant %struct.gsu_integer { i32 (%struct.param*)* @intvargetfn, void (%struct.param*, i32)* @intvarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@nullsetinteger_gsu = constant %struct.gsu_integer { i32 (%struct.param*)* @intgetfn, void (%struct.param*, i32)* null, void (%struct.param*, i32)* null }, align 4
@stdfloat_gsu = constant %struct.gsu_float { double (%struct.param*)* @floatgetfn, void (%struct.param*, double)* @floatsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@stdarray_gsu = constant %struct.gsu_array { i8** (%struct.param*)* @arrgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@vararray_gsu = constant %struct.gsu_array { i8** (%struct.param*)* @arrvargetfn, void (%struct.param*, i8**)* @arrvarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@stdhash_gsu = constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @hashsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@nullsethash_gsu = constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @nullsethashfn, void (%struct.param*, i32)* @nullunsetfn }, align 4
@outtable = internal global %struct.hashtable* null, align 4
@delunset = internal global i32 0, align 4
@numparamvals = internal global i32 0, align 4
@paramvals = internal global i8** null, align 4
@opts = external global [181 x i8], align 1
@.str = private unnamed_addr constant [9 x i8] c"paramtab\00", align 1
@realparamtab = common global %struct.hashtable* null, align 4
@paramtab = common global %struct.hashtable* null, align 4
@emulation = external global i32, align 4
@argvparam = internal global %struct.param* null, align 4
@noerrs = external global i32, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MAILCHECK\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LOGCHECK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"KEYTIMEOUT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LISTMAX\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"TMPPREFIX\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/tmp/zsh\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"TIMEFMT\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%J  %U user %S system %P cpu %*E total\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"WATCHFMT\00", align 1
@default_watchfmt = external constant i8*, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@cached_username = external global i8*, align 4
@environ = external global i8**, align 4
@typtab = external global [256 x i16], align 2
@.str.12 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@home = common global i8* null, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"SHLVL\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@shlvl = common global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"CPUTYPE\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"MACHTYPE\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"OSTYPE\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"linux-gnu\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"TTY\00", align 1
@ttystrname = common global i8* null, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"VENDOR\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"ZSH_ARGZERO\00", align 1
@posixzero = common global i8* null, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"ZSH_VERSION\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"5.5.1-dev-0\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"ZSH_PATCHLEVEL\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"zsh-5.5.1-40-gd5e840672\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@sigs = external global [35 x i8*], align 4
@nulstring = external global [0 x i8], align 1
@locallevel = common global i32 0, align 4
@.str.30 = private unnamed_addr constant [23 x i8] c"read-only variable: %s\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"%s: restricted\00", align 1
@ztokens = external global [0 x i8], align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"invalid subscript\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"[0]\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nular = internal global [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), i8* null], align 4
@.str.36 = private unnamed_addr constant [46 x i8] c"%s: attempt to set slice of associative array\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"%s: assignment to invalid subscript range\00", align 1
@lastbase = external global i32, align 4
@foundparam = internal global %struct.param* null, align 4
@.str.38 = private unnamed_addr constant [47 x i8] c"%s: attempt to set associative array to scalar\00", align 1
@outputradix = external global i32, align 4
@outputunderscore = external global i32, align 4
@.str.39 = private unnamed_addr constant [47 x i8] c"%s: attempt to assign array value to non-array\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"not an identifier: %s\00", align 1
@errflag = external global i32, align 4
@queueing_enabled = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"attempt to add to slice of a numeric variable\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"bad subscript for direct array assignment: %s\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"array too large\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"bad [key]=value syntax for associative array\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"invalid use of [key]=value assignment syntax\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"nested associative arrays not yet supported\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"%s: can't change type of a special parameter\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"associative array\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@nullarray = internal global i8* null, align 4
@zterm_lines = common global i32 0, align 4
@zterm_columns = common global i32 0, align 4
@path = common global i8** null, align 4
@pathchecked = external global i8**, align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"arrayuniq\00", align 1
@pparams = common global i8** null, align 4
@shtimer = common global %struct.timeval zeroinitializer, align 4
@.str.53 = private unnamed_addr constant [32 x i8] c"SECONDS truncated on assignment\00", align 1
@floatseconds_gsu = internal constant %struct.gsu_float { double (%struct.param*)* @floatsecondsgetfn, void (%struct.param*, double)* @floatsecondssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@intseconds_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @intsecondsgetfn, void (%struct.param*, i32)* @intsecondssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@cached_uid = external global i32, align 4
@.str.54 = private unnamed_addr constant [30 x i8] c"failed to change group ID: %e\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"failed to change user ID: %e\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"failed to change effective user ID: %e\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"failed to change effective group ID: %e\00", align 1
@SHTTY = external global i32, align 4
@ifs = common global i8* null, align 4
@.str.58 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@lc_names = internal global [6 x %struct.localename] [%struct.localename { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i32 3 }, %struct.localename { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i32 0 }, %struct.localename { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i32 5 }, %struct.localename { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), i32 1 }, %struct.localename { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i32 2 }, %struct.localename zeroinitializer], align 4
@histsiz = external global i32, align 4
@savehistsiz = external global i32, align 4
@.str.60 = private unnamed_addr constant [30 x i8] c"errno truncated on assignment\00", align 1
@keyboardhackgetfn.buf = internal global [2 x i8] zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"Only one KEYBOARD_HACK character can be defined\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"KEYBOARD_HACK can only contain ASCII characters\00", align 1
@histcharsgetfn.buf = internal global [4 x i8] zeroinitializer, align 1
@bangchar = common global i8 0, align 1
@hatchar = common global i8 0, align 1
@hashchar = common global i8 0, align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"HISTCHARS can only contain ASCII characters\00", align 1
@wordchars = common global i8* null, align 4
@zunderscore = external global i8*, align 4
@term = common global i8* null, align 4
@zsh_terminfo = common global i8* null, align 4
@zsh_terminfodirs = common global i8* null, align 4
@cmdnamtab = external global %struct.hashtable*, align 4
@.str.64 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%d#\00", align 1
@convfloat.fmt = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"typeset \00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"export \00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"typeset -g \00", align 1
@pmtypes = internal constant [15 x %struct.paramtypes] [%struct.paramtypes { i32 134217728, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.190, i32 0, i32 0), i32 0, i32 0 }, %struct.paramtypes { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i32 0, i32 0), i32 105, i32 1 }, %struct.paramtypes { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0), i32 69, i32 0 }, %struct.paramtypes { i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0), i32 70, i32 0 }, %struct.paramtypes { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 97, i32 0 }, %struct.paramtypes { i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.193, i32 0, i32 0), i32 65, i32 0 }, %struct.paramtypes { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i32 0, i32 4 }, %struct.paramtypes { i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.195, i32 0, i32 0), i32 76, i32 2 }, %struct.paramtypes { i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.196, i32 0, i32 0), i32 82, i32 2 }, %struct.paramtypes { i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i32 0, i32 0), i32 90, i32 2 }, %struct.paramtypes { i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.198, i32 0, i32 0), i32 108, i32 0 }, %struct.paramtypes { i32 512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.199, i32 0, i32 0), i32 117, i32 0 }, %struct.paramtypes { i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.200, i32 0, i32 0), i32 114, i32 0 }, %struct.paramtypes { i32 2048, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.201, i32 0, i32 0), i32 116, i32 0 }, %struct.paramtypes { i32 4096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i32 120, i32 0 }], align 4
@.str.74 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.76 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"]=\00", align 1
@cdpath = common global i8** null, align 4
@fpath = common global i8** null, align 4
@mailpath = common global i8** null, align 4
@manpath = common global i8** null, align 4
@psvar = common global i8** null, align 4
@watch = common global i8** null, align 4
@zsh_eval_context = common global i8** null, align 4
@fignore = common global i8** null, align 4
@argzero = common global i8* null, align 4
@nullcmd = common global i8* null, align 4
@oldpwd = common global i8* null, align 4
@zoptarg = common global i8* null, align 4
@prompt = common global i8* null, align 4
@prompt2 = common global i8* null, align 4
@prompt3 = common global i8* null, align 4
@prompt4 = common global i8* null, align 4
@readnullcmd = common global i8* null, align 4
@rprompt = common global i8* null, align 4
@rprompt2 = common global i8* null, align 4
@sprompt = common global i8* null, align 4
@postedit = common global i8* null, align 4
@pwd = common global i8* null, align 4
@lastval = common global i32 0, align 4
@mypid = common global i32 0, align 4
@lastpid = common global i32 0, align 4
@rprompt_indent = common global i32 0, align 4
@ppid = common global i32 0, align 4
@zsh_subshell = common global i32 0, align 4
@lineno = common global i32 0, align 4
@zoptind = common global i32 0, align 4
@termflags = common global i32 0, align 4
@.str.78 = private unnamed_addr constant [3 x i8] c"p:\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"autoloading module %s failed to define parameter: %s\00", align 1
@scanstr = internal global i8* null, align 4
@scanprog = internal global %struct.patprog* null, align 4
@.str.80 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@pound_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @poundgetfn, void (%struct.param*, i32)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.81 = private unnamed_addr constant [6 x i8] c"ERRNO\00", align 1
@errno_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @errnogetfn, void (%struct.param*, i32)* @errnosetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.82 = private unnamed_addr constant [4 x i8] c"GID\00", align 1
@gid_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @gidgetfn, void (%struct.param*, i32)* @gidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.83 = private unnamed_addr constant [5 x i8] c"EGID\00", align 1
@egid_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @egidgetfn, void (%struct.param*, i32)* @egidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.84 = private unnamed_addr constant [9 x i8] c"HISTSIZE\00", align 1
@histsize_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @histsizegetfn, void (%struct.param*, i32)* @histsizesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.85 = private unnamed_addr constant [7 x i8] c"RANDOM\00", align 1
@random_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @randomgetfn, void (%struct.param*, i32)* @randomsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"SAVEHIST\00", align 1
@savehist_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @savehistsizegetfn, void (%struct.param*, i32)* @savehistsizesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.87 = private unnamed_addr constant [8 x i8] c"SECONDS\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@uid_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @uidgetfn, void (%struct.param*, i32)* @uidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.89 = private unnamed_addr constant [5 x i8] c"EUID\00", align 1
@euid_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @euidgetfn, void (%struct.param*, i32)* @euidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.90 = private unnamed_addr constant [8 x i8] c"TTYIDLE\00", align 1
@ttyidle_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @ttyidlegetfn, void (%struct.param*, i32)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.91 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"histchars\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"TERMINFO\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"TERMINFO_DIRS\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"WORDCHARS\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"KEYBOARD_HACK\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@varint_readonly_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @intvargetfn, void (%struct.param*, i32)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.107 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"HISTCMD\00", align 1
@curhist = external global i32, align 4
@.str.110 = private unnamed_addr constant [7 x i8] c"LINENO\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"PPID\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"ZSH_SUBSHELL\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@zlevar_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @intvargetfn, void (%struct.param*, i32)* @zlevarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.114 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"ZLE_RPROMPT_INDENT\00", align 1
@rprompt_indent_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @intvargetfn, void (%struct.param*, i32)* @zlevarsetfn, void (%struct.param*, i32)* @rprompt_indent_unsetfn }, align 4
@.str.116 = private unnamed_addr constant [9 x i8] c"FUNCNEST\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"OPTIND\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"TRY_BLOCK_ERROR\00", align 1
@try_errflag = external global i32, align 4
@.str.119 = private unnamed_addr constant [20 x i8] c"TRY_BLOCK_INTERRUPT\00", align 1
@try_interrupt = external global i32, align 4
@.str.120 = private unnamed_addr constant [7 x i8] c"OPTARG\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"NULLCMD\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"POSTEDIT\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"READNULLCMD\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"PS1\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"RPS1\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"RPROMPT\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"PS2\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"RPS2\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"RPROMPT2\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"PS3\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"PS4\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"SPROMPT\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"cdpath\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"FIGNORE\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"fignore\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"FPATH\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"fpath\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"MAILPATH\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"mailpath\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"WATCH\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"watch\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"PSVAR\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"psvar\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"ZSH_EVAL_CONTEXT\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"zsh_eval_context\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"MODULE_PATH\00", align 1
@module_path = external global i8**, align 4
@.str.152 = private unnamed_addr constant [12 x i8] c"module_path\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"ARGC\00", align 1
@argc_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @poundgetfn, void (%struct.param*, i32)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.154 = private unnamed_addr constant [10 x i8] c"HISTCHARS\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"PROMPT\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"PROMPT2\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"PROMPT3\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"PROMPT4\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"MANPATH\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"manpath\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"pipestatus\00", align 1
@pipestatus_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @pipestatgetfn, void (%struct.param*, i8**)* @pipestatsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@special_params = internal global <{ { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } }> <{ { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @pound_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 37748738 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @errno_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 29360130 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @gid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 29360130 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @egid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i32 20971522 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @histsize_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 4194306 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @random_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 20971522 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @savehist_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 4194306 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @intseconds_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 29360130 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @uid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i32 29360130 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @euid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @ttyidle_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i32 29360128 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @username_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i32 4195328 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @dash_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 12582912 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @histchars_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @home_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @term_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @terminfo_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @terminfodirs_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @wordchars_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i32 29360128 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @ifs_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0), i32 12582912 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @underscore_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i32 12582912 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @keyboard_hack_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @argzero_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lang_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_all_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @lastpid to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @mypid to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @lastval to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @curhist to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @lineno to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @ppid to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @zsh_subshell to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i32 4194306 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @zterm_columns to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @zlevar_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i32 4194306 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @zterm_lines to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @zlevar_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0), i32 37748738 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @rprompt_indent to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @rprompt_indent_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 4194306 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @shlvl to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i32 4194306 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @zsh_funcnest to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i32 12582914 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @zoptind to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0), i32 12582914 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @try_errflag to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.119, i32 0, i32 0), i32 12582914 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @try_interrupt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @zoptarg to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @nullcmd to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @postedit to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @readnullcmd to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i32 37748736 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt3 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i32 4718592 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt4 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @sprompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0), i32 12583937 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i32 0, i32 0), i32 12583937 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode zeroinitializer, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 zeroinitializer, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @cdpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @fignore to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @fpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @mailpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @watch to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), i32 20971520 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @psvar to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.149, i32 0, i32 0), i32 4195328 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @zsh_eval_context to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.150, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), i32 29360128 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @module_path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @argc_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i32 12582912 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @histchars_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i32 4195330 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i32* @lastval to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.156, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt3 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.160, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt4 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @manpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @fignore to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @cdpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @fpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @mailpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @manpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @psvar to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @watch to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.150, i32 0, i32 0), i32 12583937 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @zsh_eval_context to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.149, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i32 29360129 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @module_path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), i32 29360129 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0), i32 4194305 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @pipestatus_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode zeroinitializer, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 zeroinitializer, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef } }>, align 8
@username_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @usernamegetfn, void (%struct.param*, i8*)* @usernamesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@dash_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @dashgetfn, void (%struct.param*, i8*)* @nullstrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@histchars_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @histcharsgetfn, void (%struct.param*, i8*)* @histcharssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@home_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @homegetfn, void (%struct.param*, i8*)* @homesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@term_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @termgetfn, void (%struct.param*, i8*)* @termsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@terminfo_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @terminfogetfn, void (%struct.param*, i8*)* @terminfosetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@terminfodirs_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @terminfodirsgetfn, void (%struct.param*, i8*)* @terminfodirssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@wordchars_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @wordcharsgetfn, void (%struct.param*, i8*)* @wordcharssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@ifs_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @ifsgetfn, void (%struct.param*, i8*)* @ifssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@underscore_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @underscoregetfn, void (%struct.param*, i8*)* @nullstrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@keyboard_hack_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @keyboardhackgetfn, void (%struct.param*, i8*)* @keyboardhacksetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@argzero_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @argzerogetfn, void (%struct.param*, i8*)* @argzerosetfn, void (%struct.param*, i32)* @nullunsetfn }, align 4
@.str.178 = private unnamed_addr constant [22 x i8] c"read-only variable: 0\00", align 1
@lang_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @langsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@lc_all_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @lc_allsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@lc_blah_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @lcsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@colonarr_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @colonarrgetfn, void (%struct.param*, i8*)* @colonarrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@numpipestats = external global i32, align 4
@pipestats = external global [256 x i32], align 4
@special_params_sh = internal global <{ { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } }> <{ { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @cdpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @fignore to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @fpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @mailpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @watch to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), i32 20971520 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i32 0, i32 0), i32 4194304 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @psvar to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.149, i32 0, i32 0), i32 4195328 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @zsh_eval_context to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), i32 29360128 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @module_path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode zeroinitializer, [4 x i8] undef, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 zeroinitializer, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef } }>, align 8
@argvparam_pm = internal global { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), i32 12582913 }, [4 x i8] undef, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0, [4 x i8] undef }, align 8
@.str.185 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@forklevel = external global i32, align 4
@funcstack = external global %struct.funcstack*, align 4
@.str.186 = private unnamed_addr constant [48 x i8] c"%s parameter %s created globally in function %s\00", align 1
@.str.187 = private unnamed_addr constant [54 x i8] c"%s parameter %s set in enclosing scope in function %s\00", align 1
@.str.188 = private unnamed_addr constant [49 x i8] c"bad set of key/value pairs for associative array\00", align 1
@.str.189 = private unnamed_addr constant [27 x i8] c"out of memory in arrayuniq\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"association\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"left justified\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"right justified\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"zero filled\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"lowercase\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"uppercase\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"tagged\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"exported\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.204 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind
define i8* @strgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 1
  %str2 = bitcast %union.anon* %u1 to i8**
  %3 = load i8*, i8** %str2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @hcalloc(i32 1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ %call, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind
define void @strsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %str, align 8
  call void @zsfree(i8* %1)
  %2 = load i8*, i8** %x.addr, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u1 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 1
  %str2 = bitcast %union.anon* %u1 to i8**
  store i8* %2, i8** %str2, align 8
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 536870912
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node3 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 0
  %flags4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  %7 = load i32, i32* %flags4, align 8
  %and5 = and i32 %7, 1073741824
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 11), align 1
  %conv = sext i8 %8 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %10 = load i32, i32* %flags9, align 8
  %or = or i32 %10, 1073741824
  store i32 %or, i32* %flags9, align 8
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node10 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 1
  %12 = load i8*, i8** %nam, align 4
  %13 = load i8*, i8** %x.addr, align 4
  call void @adduserdir(i8* %12, i8* %13, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @stdunsetfn(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 31
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 16, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %3 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %setfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %3, i32 0, i32 1
  %4 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn, align 4
  %tobool = icmp ne void (%struct.param*, i8*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu1 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 2
  %s2 = bitcast %union.anon.0* %gsu1 to %struct.gsu_scalar**
  %6 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s2, align 8
  %setfn3 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %6, i32 0, i32 1
  %7 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn3, align 4
  %8 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void %7(%struct.param* %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu5 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu5 to %struct.gsu_array**
  %10 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %setfn6 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %10, i32 0, i32 1
  %11 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn6, align 4
  %tobool7 = icmp ne void (%struct.param*, i8**)* %11, null
  br i1 %tobool7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %sw.bb4
  %12 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu9 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 2
  %a10 = bitcast %union.anon.0* %gsu9 to %struct.gsu_array**
  %13 = load %struct.gsu_array*, %struct.gsu_array** %a10, align 8
  %setfn11 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %13, i32 0, i32 1
  %14 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn11, align 4
  %15 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void %14(%struct.param* %15, i8** null)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %sw.bb4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %16 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu14 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu14 to %struct.gsu_hash**
  %17 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %setfn15 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %17, i32 0, i32 1
  %18 = load void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, %struct.hashtable*)** %setfn15, align 4
  %tobool16 = icmp ne void (%struct.param*, %struct.hashtable*)* %18, null
  br i1 %tobool16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %sw.bb13
  %19 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu18 = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 2
  %h19 = bitcast %union.anon.0* %gsu18 to %struct.gsu_hash**
  %20 = load %struct.gsu_hash*, %struct.gsu_hash** %h19, align 8
  %setfn20 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %20, i32 0, i32 1
  %21 = load void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, %struct.hashtable*)** %setfn20, align 4
  %22 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void %21(%struct.param* %22, %struct.hashtable* null)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %sw.bb13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 0
  %flags23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 2
  %24 = load i32, i32* %flags23, align 8
  %and24 = and i32 %24, 4194304
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.default
  %25 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %25, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  store i8* null, i8** %str, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end27, %if.end21, %if.end12, %if.end
  %26 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node28 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 0
  %flags29 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node28, i32 0, i32 2
  %27 = load i32, i32* %flags29, align 8
  %and30 = and i32 %27, 4259840
  %cmp = icmp eq i32 %and30, 65536
  br i1 %cmp, label %if.then31, label %if.end40

if.then31:                                        ; preds = %sw.epilog
  %28 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %28, i32 0, i32 6
  %29 = load i8*, i8** %ename, align 8
  %tobool32 = icmp ne i8* %29, null
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.then31
  %30 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename34 = getelementptr inbounds %struct.param, %struct.param* %30, i32 0, i32 6
  %31 = load i8*, i8** %ename34, align 8
  call void @zsfree(i8* %31)
  %32 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename35 = getelementptr inbounds %struct.param, %struct.param* %32, i32 0, i32 6
  store i8* null, i8** %ename35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then31
  %33 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node37 = getelementptr inbounds %struct.param, %struct.param* %33, i32 0, i32 0
  %flags38 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node37, i32 0, i32 2
  %34 = load i32, i32* %flags38, align 8
  %and39 = and i32 %34, -65537
  store i32 %and39, i32* %flags38, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %sw.epilog
  %35 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node41 = getelementptr inbounds %struct.param, %struct.param* %35, i32 0, i32 0
  %flags42 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node41, i32 0, i32 2
  %36 = load i32, i32* %flags42, align 8
  %or = or i32 %36, 33554432
  store i32 %or, i32* %flags42, align 8
  ret void
}

; Function Attrs: noinline nounwind
define i8* @strvargetfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca i8*, align 4
  %pm.addr = alloca %struct.param*, align 4
  %s = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to i8**
  %3 = load i8*, i8** %2, align 4
  store i8* %3, i8** %s, align 4
  %4 = load i8*, i8** %s, align 4
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @hcalloc(i32 1)
  store i8* %call, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %s, align 4
  store i8* %5, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 4
  ret i8* %6
}

; Function Attrs: noinline nounwind
define void @strvarsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %q = alloca i8**, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to i8**
  store i8** %2, i8*** %q, align 4
  %3 = load i8**, i8*** %q, align 4
  %4 = load i8*, i8** %3, align 4
  call void @zsfree(i8* %4)
  %5 = load i8*, i8** %x.addr, align 4
  %6 = load i8**, i8*** %q, align 4
  store i8* %5, i8** %6, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @nullstrsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** %x.addr, align 4
  call void @zsfree(i8* %0)
  ret void
}

; Function Attrs: noinline nounwind
define i32 @intgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %val = bitcast %union.anon* %u to i32*
  %1 = load i32, i32* %val, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal void @intsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 1
  %val = bitcast %union.anon* %u to i32*
  store i32 %0, i32* %val, align 8
  ret void
}

; Function Attrs: noinline nounwind
define i32 @intvargetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %valptr = bitcast %union.anon* %u to i32**
  %1 = load i32*, i32** %valptr, align 8
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind
define void @intvarsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 1
  %valptr = bitcast %union.anon* %u to i32**
  %2 = load i32*, i32** %valptr, align 8
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal double @floatgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %dval = bitcast %union.anon* %u to double*
  %1 = load double, double* %dval, align 8
  ret double %1
}

; Function Attrs: noinline nounwind
define internal void @floatsetfn(%struct.param* %pm, double %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca double, align 8
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 1
  %dval = bitcast %union.anon* %u to double*
  store double %0, double* %dval, align 8
  ret void
}

; Function Attrs: noinline nounwind
define i8** @arrgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %arr = bitcast %union.anon* %u to i8***
  %1 = load i8**, i8*** %arr, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 1
  %arr2 = bitcast %union.anon* %u1 to i8***
  %3 = load i8**, i8*** %arr2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %3, %cond.true ], [ @nullarray, %cond.false ]
  ret i8** %cond
}

; Function Attrs: noinline nounwind
define void @arrsetfn(%struct.param* %pm, i8** %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8**, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %arr = bitcast %union.anon* %u to i8***
  %1 = load i8**, i8*** %arr, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 1
  %arr2 = bitcast %union.anon* %u1 to i8***
  %3 = load i8**, i8*** %arr2, align 8
  %4 = load i8**, i8*** %x.addr, align 4
  %cmp = icmp ne i8** %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u3 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 1
  %arr4 = bitcast %union.anon* %u3 to i8***
  %6 = load i8**, i8*** %arr4, align 8
  call void @freearray(i8** %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags, align 8
  %and = and i32 %8, 8192
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load i8**, i8*** %x.addr, align 4
  call void @uniqarray(i8** %9)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load i8**, i8*** %x.addr, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u8 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 1
  %arr9 = bitcast %union.anon* %u8 to i8***
  store i8** %10, i8*** %arr9, align 8
  %12 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 6
  %13 = load i8*, i8** %ename, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %if.end7
  %14 = load i8**, i8*** %x.addr, align 4
  %tobool12 = icmp ne i8** %14, null
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  %15 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename14 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 6
  %16 = load i8*, i8** %ename14, align 8
  %17 = load i8**, i8*** %x.addr, align 4
  call void @arrfixenv(i8* %16, i8** %17)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11, %if.end7
  ret void
}

; Function Attrs: noinline nounwind
define i8** @arrvargetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %arrptr = alloca i8**, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to i8***
  %3 = load i8**, i8*** %2, align 4
  store i8** %3, i8*** %arrptr, align 4
  %4 = load i8**, i8*** %arrptr, align 4
  %tobool = icmp ne i8** %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8**, i8*** %arrptr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %5, %cond.true ], [ @nullarray, %cond.false ]
  ret i8** %cond
}

; Function Attrs: noinline nounwind
define void @arrvarsetfn(%struct.param* %pm, i8** %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8**, align 4
  %dptr = alloca i8***, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to i8***
  store i8*** %2, i8**** %dptr, align 4
  %3 = load i8***, i8**** %dptr, align 4
  %4 = load i8**, i8*** %3, align 4
  %5 = load i8**, i8*** %x.addr, align 4
  %cmp = icmp ne i8** %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8***, i8**** %dptr, align 4
  %7 = load i8**, i8*** %6, align 4
  call void @freearray(i8** %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %9 = load i32, i32* %flags, align 8
  %and = and i32 %9, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %10 = load i8**, i8*** %x.addr, align 4
  call void @uniqarray(i8** %10)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node3 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 0
  %flags4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  %12 = load i32, i32* %flags4, align 8
  %and5 = and i32 %12, 4194304
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end2
  %13 = load i8**, i8*** %x.addr, align 4
  %tobool7 = icmp ne i8** %13, null
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %call = call i8** @mkarray(i8* null)
  %14 = load i8***, i8**** %dptr, align 4
  store i8** %call, i8*** %14, align 4
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %if.end2
  %15 = load i8**, i8*** %x.addr, align 4
  %16 = load i8***, i8**** %dptr, align 4
  store i8** %15, i8*** %16, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %17 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 6
  %18 = load i8*, i8** %ename, align 8
  %tobool10 = icmp ne i8* %18, null
  br i1 %tobool10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.end9
  %19 = load i8**, i8*** %x.addr, align 4
  %tobool12 = icmp ne i8** %19, null
  br i1 %tobool12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.then11
  %20 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename14 = getelementptr inbounds %struct.param, %struct.param* %20, i32 0, i32 6
  %21 = load i8*, i8** %ename14, align 8
  %22 = load i8**, i8*** %x.addr, align 4
  call void @arrfixenv(i8* %21, i8** %22)
  br label %if.end19

if.else15:                                        ; preds = %if.then11
  %23 = load i8***, i8**** %dptr, align 4
  %24 = load i8**, i8*** %23, align 4
  %25 = load i8**, i8*** @path, align 4
  %cmp16 = icmp eq i8** %24, %25
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else15
  %26 = load i8**, i8*** @path, align 4
  store i8** %26, i8*** @pathchecked, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end9
  ret void
}

; Function Attrs: noinline nounwind
define %struct.hashtable* @hashgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %hash = bitcast %union.anon* %u to %struct.hashtable**
  %1 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  ret %struct.hashtable* %1
}

; Function Attrs: noinline nounwind
define void @hashsetfn(%struct.param* %pm, %struct.hashtable* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %x, %struct.hashtable** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %hash = bitcast %union.anon* %u to %struct.hashtable**
  %1 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  %tobool = icmp ne %struct.hashtable* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 1
  %hash2 = bitcast %union.anon* %u1 to %struct.hashtable**
  %3 = load %struct.hashtable*, %struct.hashtable** %hash2, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %x.addr, align 4
  %cmp = icmp ne %struct.hashtable* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u3 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 1
  %hash4 = bitcast %union.anon* %u3 to %struct.hashtable**
  %6 = load %struct.hashtable*, %struct.hashtable** %hash4, align 8
  call void @deleteparamtable(%struct.hashtable* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.hashtable*, %struct.hashtable** %x.addr, align 4
  %8 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u5 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 1
  %hash6 = bitcast %union.anon* %u5 to %struct.hashtable**
  store %struct.hashtable* %7, %struct.hashtable** %hash6, align 8
  ret void
}

; Function Attrs: noinline nounwind
define void @nullsethashfn(%struct.param* %pm, %struct.hashtable* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %x, %struct.hashtable** %x.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %x.addr, align 4
  call void @deleteparamtable(%struct.hashtable* %0)
  ret void
}

; Function Attrs: noinline nounwind
define void @nullunsetfn(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind
define %struct.hashtable* @newparamtable(i32 %size, i8* %name) #0 {
entry:
  %size.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %ht = alloca %struct.hashtable*, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 17, i32* %size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashtable* @newhashtable(i32 %1, i8* %2, void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** %ht, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4
  %12 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4
  %13 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %13, i32 0, i32 14
  store void (%struct.hashnode*)* @freeparamnode, void (%struct.hashnode*)** %freenode, align 4
  %14 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode, align 4
  %15 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  ret %struct.hashtable* %15
}

declare %struct.hashtable* @newhashtable(i32, i8*, void (%struct.hashtable*)*) #1

declare i32 @hasher(i8*) #1

declare void @emptyhashtable(%struct.hashtable*) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @addhashnode(%struct.hashtable*, i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getparamnode(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hn = alloca %struct.hashnode*, align 4
  %pm = alloca %struct.param*, align 4
  %mn = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* @gethashnode2(%struct.hashtable* %0, i8* %1)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %2 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %3 = bitcast %struct.hashnode* %2 to %struct.param*
  store %struct.param* %3, %struct.param** %pm, align 4
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  %6 = load i8*, i8** %str, align 8
  %tobool1 = icmp ne i8* %6, null
  br i1 %tobool1, label %land.lhs.true2, label %if.end15

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags, align 8
  %and = and i32 %8, 134217728
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true2
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %u4 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 1
  %str5 = bitcast %union.anon* %u4 to i8**
  %10 = load i8*, i8** %str5, align 8
  %call6 = call i8* @dupstring(i8* %10)
  store i8* %call6, i8** %mn, align 4
  %11 = load i8*, i8** %mn, align 4
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %13 = load i32, i32* %flags8, align 8
  %and9 = and i32 %13, 268435456
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load i8*, i8** %nam.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %14, %cond.false ]
  %call11 = call i32 @ensurefeature(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* %cond)
  %15 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %16 = load i8*, i8** %nam.addr, align 4
  %call12 = call %struct.hashnode* @gethashnode2(%struct.hashtable* %15, i8* %16)
  store %struct.hashnode* %call12, %struct.hashnode** %hn, align 4
  %17 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool13 = icmp ne %struct.hashnode* %17, null
  br i1 %tobool13, label %if.end, label %if.then14

if.then14:                                        ; preds = %cond.end
  %18 = load i8*, i8** %mn, align 4
  %19 = load i8*, i8** %nam.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.79, i32 0, i32 0), i8* %18, i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.then14, %cond.end
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true2, %land.lhs.true, %entry
  %20 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  ret %struct.hashnode* %20
}

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*) #1

declare %struct.hashnode* @removehashnode(%struct.hashtable*, i8*) #1

; Function Attrs: noinline nounwind
define void @freeparamnode(%struct.hashnode* %hn) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %pm, align 4
  %2 = load i32, i32* @delunset, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %4 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %unsetfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %4, i32 0, i32 2
  %5 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %6 = load %struct.param*, %struct.param** %pm, align 4
  call void %5(%struct.param* %6, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %8 = load i8*, i8** %nam, align 4
  call void @zsfree(i8* %8)
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  %10 = load i32, i32* %flags, align 8
  %and = and i32 %10, 65536
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 6
  %12 = load i8*, i8** %ename, align 8
  call void @zsfree(i8* %12)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %14 = bitcast %struct.param* %13 to i8*
  call void @zfree(i8* %14, i32 56)
  ret void
}

; Function Attrs: noinline nounwind
define void @printparamnode(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %p = alloca %struct.param*, align 4
  %doneminus = alloca i32, align 4
  %i = alloca i32, align 4
  %pmptr = alloca %struct.paramtypes*, align 4
  %doprint = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %p, align 4
  %2 = load %struct.param*, %struct.param** %p, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 132), align 1
  %conv = sext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.param*, %struct.param** %p, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  %6 = load i32, i32* %flags3, align 8
  %and4 = and i32 %6, 1024
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load i32, i32* %printflags.addr, align 4
  %and7 = and i32 %7, 32
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true6
  %8 = load i32, i32* %printflags.addr, align 4
  %or = or i32 %8, 1
  store i32 %or, i32* %printflags.addr, align 4
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.then
  %9 = load %struct.param*, %struct.param** %p, align 4
  %node10 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 2
  %10 = load i32, i32* %flags11, align 8
  %and12 = and i32 %10, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %11 = load i32, i32* %printflags.addr, align 4
  %or15 = or i32 %11, 1
  store i32 %or15, i32* %printflags.addr, align 4
  br label %if.end

if.else16:                                        ; preds = %if.else
  br label %if.end173

if.end:                                           ; preds = %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
  %12 = load %struct.param*, %struct.param** %p, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %13 = load i32, i32* %flags20, align 8
  %and21 = and i32 %13, 134217728
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end18
  %14 = load i32, i32* %printflags.addr, align 4
  %or24 = or i32 %14, 1
  store i32 %or24, i32* %printflags.addr, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end18
  %15 = load i32, i32* %printflags.addr, align 4
  %and26 = and i32 %15, 32
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end65

if.then28:                                        ; preds = %if.end25
  %16 = load %struct.param*, %struct.param** %p, align 4
  %node29 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 0
  %flags30 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node29, i32 0, i32 2
  %17 = load i32, i32* %flags30, align 8
  %and31 = and i32 %17, 4195328
  %cmp = icmp eq i32 %and31, 4195328
  br i1 %cmp, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then28
  %18 = load %struct.param*, %struct.param** %p, align 4
  %node33 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 0
  %flags34 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node33, i32 0, i32 2
  %19 = load i32, i32* %flags34, align 8
  %and35 = and i32 %19, 134217728
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false, %if.then28
  br label %if.end173

if.end38:                                         ; preds = %lor.lhs.false
  %20 = load i32, i32* @locallevel, align 4
  %tobool39 = icmp ne i32 %20, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.else44

land.lhs.true40:                                  ; preds = %if.end38
  %21 = load %struct.param*, %struct.param** %p, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 8
  %22 = load i32, i32* %level, align 8
  %23 = load i32, i32* @locallevel, align 4
  %cmp41 = icmp sge i32 %22, %23
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %land.lhs.true40
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end64

if.else44:                                        ; preds = %land.lhs.true40, %if.end38
  %24 = load %struct.param*, %struct.param** %p, align 4
  %node45 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  %flags46 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node45, i32 0, i32 2
  %25 = load i32, i32* %flags46, align 8
  %and47 = and i32 %25, 4096
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.else56

land.lhs.true49:                                  ; preds = %if.else44
  %26 = load %struct.param*, %struct.param** %p, align 4
  %node50 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 0
  %flags51 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node50, i32 0, i32 2
  %27 = load i32, i32* %flags51, align 8
  %and52 = and i32 %27, 17
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.else56, label %if.then54

if.then54:                                        ; preds = %land.lhs.true49
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end63

if.else56:                                        ; preds = %land.lhs.true49, %if.else44
  %28 = load i32, i32* @locallevel, align 4
  %tobool57 = icmp ne i32 %28, 0
  br i1 %tobool57, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.else56
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end62

if.else60:                                        ; preds = %if.else56
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.then58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then54
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then43
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end25
  %29 = load i32, i32* %printflags.addr, align 4
  %and66 = and i32 %29, 34
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.end139

if.then68:                                        ; preds = %if.end65
  store i32 0, i32* %doneminus, align 4
  store %struct.paramtypes* getelementptr inbounds ([15 x %struct.paramtypes], [15 x %struct.paramtypes]* @pmtypes, i32 0, i32 0), %struct.paramtypes** %pmptr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then68
  %30 = load i32, i32* %i, align 4
  %cmp69 = icmp slt i32 %30, 15
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %doprint, align 4
  %31 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %flags71 = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %31, i32 0, i32 3
  %32 = load i32, i32* %flags71, align 4
  %and72 = and i32 %32, 4
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then74, label %if.else79

if.then74:                                        ; preds = %for.body
  %33 = load %struct.param*, %struct.param** %p, align 4
  %level75 = getelementptr inbounds %struct.param, %struct.param* %33, i32 0, i32 8
  %34 = load i32, i32* %level75, align 8
  %tobool76 = icmp ne i32 %34, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then74
  store i32 1, i32* %doprint, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then74
  br label %if.end98

if.else79:                                        ; preds = %for.body
  %35 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %binflag = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %35, i32 0, i32 0
  %36 = load i32, i32* %binflag, align 4
  %cmp80 = icmp ne i32 %36, 4096
  br i1 %cmp80, label %land.lhs.true90, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.else79
  %37 = load %struct.param*, %struct.param** %p, align 4
  %level83 = getelementptr inbounds %struct.param, %struct.param* %37, i32 0, i32 8
  %38 = load i32, i32* %level83, align 8
  %tobool84 = icmp ne i32 %38, 0
  br i1 %tobool84, label %land.lhs.true90, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %39 = load %struct.param*, %struct.param** %p, align 4
  %node86 = getelementptr inbounds %struct.param, %struct.param* %39, i32 0, i32 0
  %flags87 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node86, i32 0, i32 2
  %40 = load i32, i32* %flags87, align 8
  %and88 = and i32 %40, 2097169
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %land.lhs.true90, label %if.end97

land.lhs.true90:                                  ; preds = %lor.lhs.false85, %lor.lhs.false82, %if.else79
  %41 = load %struct.param*, %struct.param** %p, align 4
  %node91 = getelementptr inbounds %struct.param, %struct.param* %41, i32 0, i32 0
  %flags92 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node91, i32 0, i32 2
  %42 = load i32, i32* %flags92, align 8
  %43 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %binflag93 = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %43, i32 0, i32 0
  %44 = load i32, i32* %binflag93, align 4
  %and94 = and i32 %42, %44
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %land.lhs.true90
  store i32 1, i32* %doprint, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %land.lhs.true90, %lor.lhs.false85
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end78
  %45 = load i32, i32* %doprint, align 4
  %tobool99 = icmp ne i32 %45, 0
  br i1 %tobool99, label %if.then100, label %if.end134

if.then100:                                       ; preds = %if.end98
  %46 = load i32, i32* %printflags.addr, align 4
  %and101 = and i32 %46, 32
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.else113

if.then103:                                       ; preds = %if.then100
  %47 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %typeflag = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %47, i32 0, i32 2
  %48 = load i32, i32* %typeflag, align 4
  %tobool104 = icmp ne i32 %48, 0
  br i1 %tobool104, label %if.then105, label %if.end112

if.then105:                                       ; preds = %if.then103
  %49 = load i32, i32* %doneminus, align 4
  %tobool106 = icmp ne i32 %49, 0
  br i1 %tobool106, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.then105
  %call108 = call i32 @putchar(i32 45)
  store i32 1, i32* %doneminus, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then105
  %50 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %typeflag110 = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %50, i32 0, i32 2
  %51 = load i32, i32* %typeflag110, align 4
  %call111 = call i32 @putchar(i32 %51)
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %if.then103
  br label %if.end115

if.else113:                                       ; preds = %if.then100
  %52 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %string = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %52, i32 0, i32 1
  %53 = load i8*, i8** %string, align 4
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* %53)
  br label %if.end115

if.end115:                                        ; preds = %if.else113, %if.end112
  %54 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %flags116 = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %54, i32 0, i32 3
  %55 = load i32, i32* %flags116, align 4
  %and117 = and i32 %55, 1
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %land.lhs.true119, label %if.end124

land.lhs.true119:                                 ; preds = %if.end115
  %56 = load %struct.param*, %struct.param** %p, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %56, i32 0, i32 3
  %57 = load i32, i32* %base, align 4
  %tobool120 = icmp ne i32 %57, 0
  br i1 %tobool120, label %if.then121, label %if.end124

if.then121:                                       ; preds = %land.lhs.true119
  %58 = load %struct.param*, %struct.param** %p, align 4
  %base122 = getelementptr inbounds %struct.param, %struct.param* %58, i32 0, i32 3
  %59 = load i32, i32* %base122, align 4
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32 %59)
  store i32 0, i32* %doneminus, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %land.lhs.true119, %if.end115
  %60 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %flags125 = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %60, i32 0, i32 3
  %61 = load i32, i32* %flags125, align 4
  %and126 = and i32 %61, 2
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %land.lhs.true128, label %if.end133

land.lhs.true128:                                 ; preds = %if.end124
  %62 = load %struct.param*, %struct.param** %p, align 4
  %width = getelementptr inbounds %struct.param, %struct.param* %62, i32 0, i32 4
  %63 = load i32, i32* %width, align 8
  %tobool129 = icmp ne i32 %63, 0
  br i1 %tobool129, label %if.then130, label %if.end133

if.then130:                                       ; preds = %land.lhs.true128
  %64 = load %struct.param*, %struct.param** %p, align 4
  %width131 = getelementptr inbounds %struct.param, %struct.param* %64, i32 0, i32 4
  %65 = load i32, i32* %width131, align 8
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32 %65)
  store i32 0, i32* %doneminus, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %land.lhs.true128, %if.end124
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end98
  br label %for.inc

for.inc:                                          ; preds = %if.end134
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  %67 = load %struct.paramtypes*, %struct.paramtypes** %pmptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.paramtypes, %struct.paramtypes* %67, i32 1
  store %struct.paramtypes* %incdec.ptr, %struct.paramtypes** %pmptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* %doneminus, align 4
  %tobool135 = icmp ne i32 %68, 0
  br i1 %tobool135, label %if.then136, label %if.end138

if.then136:                                       ; preds = %for.end
  %call137 = call i32 @putchar(i32 32)
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %for.end
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end65
  %69 = load i32, i32* %printflags.addr, align 4
  %and140 = and i32 %69, 1
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then150, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.end139
  %70 = load %struct.param*, %struct.param** %p, align 4
  %node143 = getelementptr inbounds %struct.param, %struct.param* %70, i32 0, i32 0
  %flags144 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node143, i32 0, i32 2
  %71 = load i32, i32* %flags144, align 8
  %and145 = and i32 %71, 32768
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %land.lhs.true147, label %if.else154

land.lhs.true147:                                 ; preds = %lor.lhs.false142
  %72 = load i32, i32* %printflags.addr, align 4
  %and148 = and i32 %72, 16
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.else154, label %if.then150

if.then150:                                       ; preds = %land.lhs.true147, %if.end139
  %73 = load %struct.param*, %struct.param** %p, align 4
  %node151 = getelementptr inbounds %struct.param, %struct.param* %73, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node151, i32 0, i32 1
  %74 = load i8*, i8** %nam, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call152 = call i32 @zputs(i8* %74, %struct._IO_FILE* %75)
  %call153 = call i32 @putchar(i32 10)
  br label %if.end173

if.else154:                                       ; preds = %land.lhs.true147, %lor.lhs.false142
  %76 = load i32, i32* %printflags.addr, align 4
  %and155 = and i32 %76, 8
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then157, label %if.end164

if.then157:                                       ; preds = %if.else154
  %77 = load i32, i32* %printflags.addr, align 4
  %and158 = and i32 %77, 64
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then160, label %if.end162

if.then160:                                       ; preds = %if.then157
  %call161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %if.then157
  %call163 = call i32 @putchar(i32 91)
  br label %if.end164

if.end164:                                        ; preds = %if.end162, %if.else154
  %78 = load %struct.param*, %struct.param** %p, align 4
  %node165 = getelementptr inbounds %struct.param, %struct.param* %78, i32 0, i32 0
  %nam166 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node165, i32 0, i32 1
  %79 = load i8*, i8** %nam166, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call167 = call i8* @quotedzputs(i8* %79, %struct._IO_FILE* %80)
  %81 = load i32, i32* %printflags.addr, align 4
  %and168 = and i32 %81, 8
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.end164
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.end164
  %82 = load %struct.param*, %struct.param** %p, align 4
  %83 = load i32, i32* %printflags.addr, align 4
  call void @printparamvalue(%struct.param* %82, i32 %83)
  br label %if.end173

if.end173:                                        ; preds = %if.else16, %if.then37, %if.end172, %if.then150
  ret void
}

; Function Attrs: noinline nounwind
define %struct.hashtable* @copyparamtable(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %nht = alloca %struct.hashtable*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.hashtable* null, %struct.hashtable** %nht, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 0
  %2 = load i32, i32* %hsize, align 4
  %3 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashtable* @newparamtable(i32 %2, i8* %3)
  store %struct.hashtable* %call, %struct.hashtable** %nht, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** %nht, align 4
  store %struct.hashtable* %4, %struct.hashtable** @outtable, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %call1 = call i32 @scanhashtable(%struct.hashtable* %5, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @scancopyparams, i32 0)
  store %struct.hashtable* null, %struct.hashtable** @outtable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.hashtable*, %struct.hashtable** %nht, align 4
  ret %struct.hashtable* %6
}

declare i32 @scanhashtable(%struct.hashtable*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32) #1

; Function Attrs: noinline nounwind
define internal void @scancopyparams(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %tpm = alloca %struct.param*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %pm, align 4
  %call = call i8* @zshcalloc(i32 56)
  %2 = bitcast i8* %call to %struct.param*
  store %struct.param* %2, %struct.param** %tpm, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call1 = call i8* @ztrdup(i8* %4)
  %5 = load %struct.param*, %struct.param** %tpm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %nam3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 1
  store i8* %call1, i8** %nam3, align 4
  %6 = load %struct.param*, %struct.param** %tpm, align 4
  %7 = load %struct.param*, %struct.param** %pm, align 4
  call void @copyparam(%struct.param* %6, %struct.param* %7, i32 0)
  %8 = load %struct.hashtable*, %struct.hashtable** @outtable, align 4
  %9 = load %struct.param*, %struct.param** %tpm, align 4
  %node4 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %nam5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %10 = load i8*, i8** %nam5, align 4
  %11 = load %struct.param*, %struct.param** %tpm, align 4
  %12 = bitcast %struct.param* %11 to i8*
  call void @addhashnode(%struct.hashtable* %8, i8* %10, i8* %12)
  ret void
}

; Function Attrs: noinline nounwind
define void @deleteparamtable(%struct.hashtable* %t) #0 {
entry:
  %t.addr = alloca %struct.hashtable*, align 4
  %odelunset = alloca i32, align 4
  store %struct.hashtable* %t, %struct.hashtable** %t.addr, align 4
  %0 = load i32, i32* @delunset, align 4
  store i32 %0, i32* %odelunset, align 4
  store i32 1, i32* @delunset, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %t.addr, align 4
  call void @deletehashtable(%struct.hashtable* %1)
  %2 = load i32, i32* %odelunset, align 4
  store i32 %2, i32* @delunset, align 4
  ret void
}

declare void @deletehashtable(%struct.hashtable*) #1

; Function Attrs: noinline nounwind
define void @scancountparams(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @numparamvals, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @numparamvals, align 4
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %2, 1
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @numparamvals, align 4
  %inc3 = add i32 %3, 1
  store i32 %inc3, i32* @numparamvals, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define i8** @paramvalarr(%struct.hashtable* %ht, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* @numparamvals, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %call = call i32 @scanhashtable(%struct.hashtable* %1, i32 0, i32 0, i32 33554432, void (%struct.hashnode*, i32)* @scancountparams, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @numparamvals, align 4
  %add = add i32 %3, 1
  %mul = mul i32 %add, 4
  %call1 = call i8* @zhalloc(i32 %mul)
  %4 = bitcast i8* %call1 to i8**
  store i8** %4, i8*** @paramvals, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool2 = icmp ne %struct.hashtable* %5, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 0, i32* @numparamvals, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %7 = load i32, i32* %flags.addr, align 4
  %call4 = call i32 @scanhashtable(%struct.hashtable* %6, i32 0, i32 0, i32 33554432, void (%struct.hashnode*, i32)* @scanparamvals, i32 %7)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load i8**, i8*** @paramvals, align 4
  %9 = load i32, i32* @numparamvals, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %8, i32 %9
  store i8* null, i8** %arrayidx, align 4
  %10 = load i8**, i8*** @paramvals, align 4
  ret i8** %10
}

declare i8* @zhalloc(i32) #1

; Function Attrs: noinline nounwind
define internal void @scanparamvals(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %v = alloca %struct.value, align 4
  %prog = alloca %struct.patprog*, align 4
  %tmp = alloca i8*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @numparamvals, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 32
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %flags.addr, align 4
  %and3 = and i32 %2, 152
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %3 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %4 = bitcast %struct.hashnode* %3 to %struct.param*
  %pm = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* %4, %struct.param** %pm, align 4
  %5 = load i32, i32* %flags.addr, align 4
  %and5 = and i32 %5, 128
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %pm8 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  %6 = load %struct.param*, %struct.param** %pm8, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %7 = load i8*, i8** %nam, align 4
  %call = call i8* @dupstring(i8* %7)
  store i8* %call, i8** %tmp, align 4
  %8 = load i8*, i8** %tmp, align 4
  call void @tokenize(i8* %8)
  %9 = load i8*, i8** %tmp, align 4
  call void @remnulargs(i8* %9)
  %10 = load i8*, i8** %tmp, align 4
  %call9 = call %struct.patprog* @patcompile(i8* %10, i32 0, i8** null)
  store %struct.patprog* %call9, %struct.patprog** %prog, align 4
  %tobool10 = icmp ne %struct.patprog* %call9, null
  br i1 %tobool10, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.then7
  %11 = load %struct.patprog*, %struct.patprog** %prog, align 4
  %12 = load i8*, i8** @scanstr, align 4
  %call11 = call i32 @pattry(%struct.patprog* %11, i8* %12)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.then7
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  br label %if.end25

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %13, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %land.lhs.true17, label %if.end24

land.lhs.true17:                                  ; preds = %if.else
  %14 = load %struct.patprog*, %struct.patprog** @scanprog, align 4
  %pm18 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  %15 = load %struct.param*, %struct.param** %pm18, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %nam20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 1
  %16 = load i8*, i8** %nam20, align 4
  %call21 = call i32 @pattry(%struct.patprog* %14, i8* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %land.lhs.true17
  br label %return

if.end24:                                         ; preds = %land.lhs.true17, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  %pm26 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  %17 = load %struct.param*, %struct.param** %pm26, align 4
  store %struct.param* %17, %struct.param** @foundparam, align 4
  %18 = load i32, i32* %flags.addr, align 4
  %and27 = and i32 %18, 2
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end25
  %pm30 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  %19 = load %struct.param*, %struct.param** %pm30, align 4
  %node31 = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 0
  %nam32 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node31, i32 0, i32 1
  %20 = load i8*, i8** %nam32, align 4
  %21 = load i8**, i8*** @paramvals, align 4
  %22 = load i32, i32* @numparamvals, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* @numparamvals, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %21, i32 %22
  store i8* %20, i8** %arrayidx, align 4
  %23 = load i32, i32* %flags.addr, align 4
  %and33 = and i32 %23, 17
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.then29
  br label %return

if.end36:                                         ; preds = %if.then29
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end25
  %pm38 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  %24 = load %struct.param*, %struct.param** %pm38, align 4
  %node39 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  %flags40 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node39, i32 0, i32 2
  %25 = load i32, i32* %flags40, align 8
  %and41 = and i32 %25, 31
  %and42 = and i32 %and41, 17
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 %and42, i32* %isarr, align 4
  %flags43 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags43, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %call44 = call i8* @getstrvalue(%struct.value* %v)
  %26 = load i8**, i8*** @paramvals, align 4
  %27 = load i32, i32* @numparamvals, align 4
  %arrayidx45 = getelementptr inbounds i8*, i8** %26, i32 %27
  store i8* %call44, i8** %arrayidx45, align 4
  %28 = load i32, i32* %flags.addr, align 4
  %and46 = and i32 %28, 16
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.else63

if.then48:                                        ; preds = %if.end37
  %29 = load %struct.patprog*, %struct.patprog** @scanprog, align 4
  %30 = load i8**, i8*** @paramvals, align 4
  %31 = load i32, i32* @numparamvals, align 4
  %arrayidx49 = getelementptr inbounds i8*, i8** %30, i32 %31
  %32 = load i8*, i8** %arrayidx49, align 4
  %call50 = call i32 @pattry(%struct.patprog* %29, i8* %32)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else57

if.then52:                                        ; preds = %if.then48
  %33 = load i32, i32* %flags.addr, align 4
  %and53 = and i32 %33, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then52
  br label %cond.end

cond.false:                                       ; preds = %if.then52
  %34 = load i32, i32* %flags.addr, align 4
  %and55 = and i32 %34, 2
  %tobool56 = icmp ne i32 %and55, 0
  %lnot = xor i1 %tobool56, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %lnot.ext, %cond.false ]
  %35 = load i32, i32* @numparamvals, align 4
  %add = add i32 %35, %cond
  store i32 %add, i32* @numparamvals, align 4
  br label %if.end62

if.else57:                                        ; preds = %if.then48
  %36 = load i32, i32* %flags.addr, align 4
  %and58 = and i32 %36, 2
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.else57
  %37 = load i32, i32* @numparamvals, align 4
  %dec = add i32 %37, -1
  store i32 %dec, i32* @numparamvals, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.else57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %cond.end
  br label %if.end65

if.else63:                                        ; preds = %if.end37
  %38 = load i32, i32* @numparamvals, align 4
  %inc64 = add i32 %38, 1
  store i32 %inc64, i32* @numparamvals, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.end62
  store %struct.param* null, %struct.param** @foundparam, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then35, %if.then23, %if.then13, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i32 @issetvar(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %slice = alloca i32, align 4
  %arr = alloca i8**, align 4
  store i8* %name, i8** %name.addr, align 4
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %name.addr, i32 1)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool = icmp ne %struct.value* %call, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.value*, %struct.value** %v, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %2, i32 0, i32 0
  %3 = load i32, i32* %isarr, align 4
  %and = and i32 %3, -513
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load %struct.value*, %struct.value** %v, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %4, i32 0, i32 4
  %5 = load i32, i32* %end, align 4
  %cmp = icmp sgt i32 %5, 1
  %conv4 = zext i1 %cmp to i32
  store i32 %conv4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load %struct.value*, %struct.value** %v, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %6, i32 0, i32 3
  %7 = load i32, i32* %start, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end5
  %8 = load %struct.value*, %struct.value** %v, align 4
  %end8 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 4
  %9 = load i32, i32* %end8, align 4
  %cmp9 = icmp ne i32 %9, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end5
  %10 = phi i1 [ true, %if.end5 ], [ %cmp9, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  store i32 %lor.ext, i32* %slice, align 4
  %11 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags, align 8
  %and11 = and i32 %13, 31
  %cmp12 = icmp ne i32 %and11, 1
  br i1 %cmp12, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.end
  %14 = load i32, i32* %slice, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %if.end23, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false14, %lor.end
  %15 = load i32, i32* %slice, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then16
  %16 = load %struct.value*, %struct.value** %v, align 4
  %pm18 = getelementptr inbounds %struct.value, %struct.value* %16, i32 0, i32 1
  %17 = load %struct.param*, %struct.param** %pm18, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %18 = load i32, i32* %flags20, align 8
  %and21 = and i32 %18, 33554432
  %tobool22 = icmp ne i32 %and21, 0
  %lnot = xor i1 %tobool22, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then16
  %19 = phi i1 [ false, %if.then16 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %lor.lhs.false14
  %20 = load %struct.value*, %struct.value** %v, align 4
  %end24 = getelementptr inbounds %struct.value, %struct.value* %20, i32 0, i32 4
  %21 = load i32, i32* %end24, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end23
  %22 = load %struct.value*, %struct.value** %v, align 4
  %call28 = call i8** @getvaluearr(%struct.value* %22)
  store i8** %call28, i8*** %arr, align 4
  %tobool29 = icmp ne i8** %call28, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end27
  %23 = load i8**, i8*** %arr, align 4
  %24 = load %struct.value*, %struct.value** %v, align 4
  %end32 = getelementptr inbounds %struct.value, %struct.value* %24, i32 0, i32 4
  %25 = load i32, i32* %end32, align 4
  %cmp33 = icmp slt i32 %25, 0
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end31
  %26 = load %struct.value*, %struct.value** %v, align 4
  %end35 = getelementptr inbounds %struct.value, %struct.value* %26, i32 0, i32 4
  %27 = load i32, i32* %end35, align 4
  %sub = sub nsw i32 0, %27
  br label %cond.end

cond.false:                                       ; preds = %if.end31
  %28 = load %struct.value*, %struct.value** %v, align 4
  %end36 = getelementptr inbounds %struct.value, %struct.value* %28, i32 0, i32 4
  %29 = load i32, i32* %end36, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %29, %cond.false ]
  %call37 = call signext i8 @arrlen_ge(i8** %23, i32 %cond)
  %conv38 = sext i8 %call37 to i32
  store i32 %conv38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then30, %if.then26, %land.end, %if.then3, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind
define %struct.value* @getvalue(%struct.value* %v, i8** %pptr, i32 %bracks) #0 {
entry:
  %v.addr = alloca %struct.value*, align 4
  %pptr.addr = alloca i8**, align 4
  %bracks.addr = alloca i32, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  store i8** %pptr, i8*** %pptr.addr, align 4
  store i32 %bracks, i32* %bracks.addr, align 4
  %0 = load %struct.value*, %struct.value** %v.addr, align 4
  %1 = load i8**, i8*** %pptr.addr, align 4
  %2 = load i32, i32* %bracks.addr, align 4
  %call = call %struct.value* @fetchvalue(%struct.value* %0, i8** %1, i32 %2, i32 0)
  ret %struct.value* %call
}

; Function Attrs: noinline nounwind
define internal i8** @getvaluearr(%struct.value* %v) #0 {
entry:
  %retval = alloca i8**, align 4
  %v.addr = alloca %struct.value*, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  %0 = load %struct.value*, %struct.value** %v.addr, align 4
  %arr = getelementptr inbounds %struct.value, %struct.value* %0, i32 0, i32 5
  %1 = load i8**, i8*** %arr, align 4
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.value*, %struct.value** %v.addr, align 4
  %arr1 = getelementptr inbounds %struct.value, %struct.value* %2, i32 0, i32 5
  %3 = load i8**, i8*** %arr1, align 4
  store i8** %3, i8*** %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %4, i32 0, i32 1
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %6 = load i32, i32* %flags, align 8
  %and = and i32 %6, 31
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  %7 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm3 = getelementptr inbounds %struct.value, %struct.value* %7, i32 0, i32 1
  %8 = load %struct.param*, %struct.param** %pm3, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %9 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %getfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %9, i32 0, i32 0
  %10 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn, align 4
  %11 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm4 = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm4, align 4
  %call = call i8** %10(%struct.param* %12)
  %13 = load %struct.value*, %struct.value** %v.addr, align 4
  %arr5 = getelementptr inbounds %struct.value, %struct.value* %13, i32 0, i32 5
  store i8** %call, i8*** %arr5, align 4
  store i8** %call, i8*** %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %14 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm7 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 1
  %15 = load %struct.param*, %struct.param** %pm7, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %16 = load i32, i32* %flags9, align 8
  %and10 = and i32 %16, 31
  %cmp11 = icmp eq i32 %and10, 16
  br i1 %cmp11, label %if.then12, label %if.else21

if.then12:                                        ; preds = %if.else6
  %17 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm13 = getelementptr inbounds %struct.value, %struct.value* %17, i32 0, i32 1
  %18 = load %struct.param*, %struct.param** %pm13, align 4
  %gsu14 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu14 to %struct.gsu_hash**
  %19 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn15 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %19, i32 0, i32 0
  %20 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn15, align 4
  %21 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm16 = getelementptr inbounds %struct.value, %struct.value* %21, i32 0, i32 1
  %22 = load %struct.param*, %struct.param** %pm16, align 4
  %call17 = call %struct.hashtable* %20(%struct.param* %22)
  %23 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %23, i32 0, i32 0
  %24 = load i32, i32* %isarr, align 4
  %call18 = call i8** @paramvalarr(%struct.hashtable* %call17, i32 %24)
  %25 = load %struct.value*, %struct.value** %v.addr, align 4
  %arr19 = getelementptr inbounds %struct.value, %struct.value* %25, i32 0, i32 5
  store i8** %call18, i8*** %arr19, align 4
  %26 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %26, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %27 = load i32, i32* @numparamvals, align 4
  %add = add i32 %27, 1
  %28 = load %struct.value*, %struct.value** %v.addr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %28, i32 0, i32 4
  store i32 %add, i32* %end, align 4
  %29 = load %struct.value*, %struct.value** %v.addr, align 4
  %arr20 = getelementptr inbounds %struct.value, %struct.value* %29, i32 0, i32 5
  %30 = load i8**, i8*** %arr20, align 4
  store i8** %30, i8*** %retval, align 4
  br label %return

if.else21:                                        ; preds = %if.else6
  store i8** null, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %if.else21, %if.then12, %if.then2, %if.then
  %31 = load i8**, i8*** %retval, align 4
  ret i8** %31
}

declare signext i8 @arrlen_ge(i8**, i32) #1

; Function Attrs: noinline nounwind
define void @createparamtable() #0 {
entry:
  %ip = alloca %struct.param*, align 4
  %pm = alloca %struct.param*, align 4
  %envp2 = alloca i8**, align 4
  %sigptr = alloca i8**, align 4
  %t = alloca i8**, align 4
  %buf = alloca [50 x i8], align 1
  %str = alloca i8*, align 4
  %iname = alloca i8*, align 4
  %ivalue = alloca i8*, align 4
  %hostnam = alloca i8*, align 4
  %oae = alloca i32, align 4
  %unamebuf = alloca %struct.utsname, align 1
  %machinebuf = alloca i8*, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 3), align 1
  %conv = sext i8 %0 to i32
  store i32 %conv, i32* %oae, align 4
  %call = call %struct.hashtable* @newparamtable(i32 151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store %struct.hashtable* %call, %struct.hashtable** @realparamtab, align 4
  store %struct.hashtable* %call, %struct.hashtable** @paramtab, align 4
  store %struct.param* getelementptr inbounds ([92 x %struct.param], [92 x %struct.param]* bitcast (<{ { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } }>* @special_params to [92 x %struct.param]*), i32 0, i32 0), %struct.param** %ip, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.param*, %struct.param** %ip, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %2 = load i8*, i8** %nam, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 8
  %4 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %6 = load %struct.param*, %struct.param** %ip, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 0
  %nam2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %7 = load i8*, i8** %nam2, align 4
  %call3 = call i8* @ztrdup(i8* %7)
  %8 = load %struct.param*, %struct.param** %ip, align 4
  %9 = bitcast %struct.param* %8 to i8*
  call void %4(%struct.hashtable* %5, i8* %call3, i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.param*, %struct.param** %ip, align 4
  %incdec.ptr = getelementptr inbounds %struct.param, %struct.param* %10, i32 1
  store %struct.param* %incdec.ptr, %struct.param** %ip, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* @emulation, align 4
  %and = and i32 %11, 12
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store %struct.param* getelementptr inbounds ([10 x %struct.param], [10 x %struct.param]* bitcast (<{ { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }, { %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] } }>* @special_params_sh to [10 x %struct.param]*), i32 0, i32 0), %struct.param** %ip, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %if.then
  %12 = load %struct.param*, %struct.param** %ip, align 4
  %node6 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %nam7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 1
  %13 = load i8*, i8** %nam7, align 4
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond5
  %14 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %addnode10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 8
  %15 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode10, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %17 = load %struct.param*, %struct.param** %ip, align 4
  %node11 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %nam12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 1
  %18 = load i8*, i8** %nam12, align 4
  %call13 = call i8* @ztrdup(i8* %18)
  %19 = load %struct.param*, %struct.param** %ip, align 4
  %20 = bitcast %struct.param* %19 to i8*
  call void %15(%struct.hashtable* %16, i8* %call13, i8* %20)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %21 = load %struct.param*, %struct.param** %ip, align 4
  %incdec.ptr15 = getelementptr inbounds %struct.param, %struct.param* %21, i32 1
  store %struct.param* %incdec.ptr15, %struct.param** %ip, align 4
  br label %for.cond5

for.end16:                                        ; preds = %for.cond5
  br label %if.end

if.else:                                          ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %22 = load %struct.param*, %struct.param** %ip, align 4
  %incdec.ptr17 = getelementptr inbounds %struct.param, %struct.param* %22, i32 1
  store %struct.param* %incdec.ptr17, %struct.param** %ip, align 4
  %node18 = getelementptr inbounds %struct.param, %struct.param* %incdec.ptr17, i32 0, i32 0
  %nam19 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node18, i32 0, i32 1
  %23 = load i8*, i8** %nam19, align 4
  %tobool20 = icmp ne i8* %23, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %addnode21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %24, i32 0, i32 8
  %25 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode21, align 4
  %26 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %27 = load %struct.param*, %struct.param** %ip, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %27, i32 0, i32 0
  %nam23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 1
  %28 = load i8*, i8** %nam23, align 4
  %call24 = call i8* @ztrdup(i8* %28)
  %29 = load %struct.param*, %struct.param** %ip, align 4
  %30 = bitcast %struct.param* %29 to i8*
  call void %25(%struct.hashtable* %26, i8* %call24, i8* %30)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %for.end16
  store %struct.param* bitcast ({ %struct.hashnode, [4 x i8], { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32, [4 x i8] }* @argvparam_pm to %struct.param*), %struct.param** @argvparam, align 4
  store i32 2, i32* @noerrs, align 4
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 3), align 1
  %call25 = call %struct.param* @setiparam(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 60)
  %call26 = call %struct.param* @setiparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 60)
  %call27 = call %struct.param* @setiparam(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 40)
  %call28 = call %struct.param* @setiparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 100)
  %call29 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %call30 = call %struct.param* @setsparam(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %call29)
  %call31 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0))
  %call32 = call %struct.param* @setsparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %call31)
  %31 = load i8*, i8** @default_watchfmt, align 4
  %call33 = call i8* @ztrdup_metafy(i8* %31)
  %call34 = call %struct.param* @setsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %call33)
  %call35 = call i8* @zalloc(i32 256)
  store i8* %call35, i8** %hostnam, align 4
  %32 = load i8*, i8** %hostnam, align 4
  %call36 = call i32 @gethostname(i8* %32, i32 256)
  %33 = load i8*, i8** %hostnam, align 4
  %call37 = call i8* @ztrdup_metafy(i8* %33)
  %call38 = call %struct.param* @setsparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %call37)
  %34 = load i8*, i8** %hostnam, align 4
  call void @zfree(i8* %34, i32 256)
  %call39 = call i8* @getlogin()
  store i8* %call39, i8** %str, align 4
  %tobool40 = icmp ne i8* %call39, null
  br i1 %tobool40, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %35 = load i8*, i8** %str, align 4
  %36 = load i8, i8* %35, align 1
  %conv41 = sext i8 %36 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %37 = load i8*, i8** %str, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %38 = load i8*, i8** @cached_username, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %37, %cond.true ], [ %38, %cond.false ]
  %call43 = call i8* @ztrdup_metafy(i8* %cond)
  %call44 = call %struct.param* @setsparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %call43)
  call void @pushheap()
  %39 = load i8**, i8*** @environ, align 4
  store i8** %39, i8*** %envp2, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc93, %cond.end
  %40 = load i8**, i8*** %envp2, align 4
  %41 = load i8*, i8** %40, align 4
  %tobool46 = icmp ne i8* %41, null
  br i1 %tobool46, label %for.body47, label %for.end95

for.body47:                                       ; preds = %for.cond45
  %42 = load i8**, i8*** %envp2, align 4
  %43 = load i8*, i8** %42, align 4
  %call48 = call i32 @split_env_string(i8* %43, i8** %iname, i8** %ivalue)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end92

if.then50:                                        ; preds = %for.body47
  %44 = load i8*, i8** %iname, align 4
  %45 = load i8, i8* %44, align 1
  %idxprom = zext i8 %45 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %46 = load i16, i16* %arrayidx, align 2
  %conv51 = sext i16 %46 to i32
  %and52 = and i32 %conv51, 1
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.end91, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.then50
  %47 = load i8*, i8** %iname, align 4
  %call55 = call i32 @isident(i8* %47)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %land.lhs.true57, label %if.end91

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %48 = load i8*, i8** %iname, align 4
  %call58 = call i8* @strchr(i8* %48, i32 91)
  %tobool59 = icmp ne i8* %call58, null
  br i1 %tobool59, label %if.end91, label %if.then60

if.then60:                                        ; preds = %land.lhs.true57
  %49 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %49, i32 0, i32 9
  %50 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %51 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %52 = load i8*, i8** %iname, align 4
  %call61 = call %struct.hashnode* %50(%struct.hashtable* %51, i8* %52)
  %53 = bitcast %struct.hashnode* %call61 to %struct.param*
  store %struct.param* %53, %struct.param** %pm, align 4
  %tobool62 = icmp ne %struct.param* %53, null
  br i1 %tobool62, label %lor.lhs.false, label %land.lhs.true66

lor.lhs.false:                                    ; preds = %if.then60
  %54 = load %struct.param*, %struct.param** %pm, align 4
  %node63 = getelementptr inbounds %struct.param, %struct.param* %54, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node63, i32 0, i32 2
  %55 = load i32, i32* %flags, align 8
  %call64 = call i32 @dontimport(i32 %55)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end90, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %lor.lhs.false, %if.then60
  %56 = load i8*, i8** %iname, align 4
  %57 = load i8*, i8** %ivalue, align 4
  %call67 = call i8* @metafy(i8* %57, i32 -1, i32 3)
  %call68 = call %struct.param* @assignsparam(i8* %56, i8* %call67, i32 8)
  store %struct.param* %call68, %struct.param** %pm, align 4
  %tobool69 = icmp ne %struct.param* %call68, null
  br i1 %tobool69, label %if.then70, label %if.end90

if.then70:                                        ; preds = %land.lhs.true66
  %58 = load %struct.param*, %struct.param** %pm, align 4
  %node71 = getelementptr inbounds %struct.param, %struct.param* %58, i32 0, i32 0
  %flags72 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node71, i32 0, i32 2
  %59 = load i32, i32* %flags72, align 8
  %or = or i32 %59, 4096
  store i32 %or, i32* %flags72, align 8
  %60 = load %struct.param*, %struct.param** %pm, align 4
  %node73 = getelementptr inbounds %struct.param, %struct.param* %60, i32 0, i32 0
  %flags74 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node73, i32 0, i32 2
  %61 = load i32, i32* %flags74, align 8
  %and75 = and i32 %61, 4194304
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then77, label %if.else86

if.then77:                                        ; preds = %if.then70
  %62 = load %struct.param*, %struct.param** %pm, align 4
  %node78 = getelementptr inbounds %struct.param, %struct.param* %62, i32 0, i32 0
  %nam79 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node78, i32 0, i32 1
  %63 = load i8*, i8** %nam79, align 4
  %64 = load %struct.param*, %struct.param** %pm, align 4
  %node80 = getelementptr inbounds %struct.param, %struct.param* %64, i32 0, i32 0
  %nam81 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node80, i32 0, i32 1
  %65 = load i8*, i8** %nam81, align 4
  %call82 = call i8* @getsparam(i8* %65)
  %66 = load %struct.param*, %struct.param** %pm, align 4
  %node83 = getelementptr inbounds %struct.param, %struct.param* %66, i32 0, i32 0
  %flags84 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node83, i32 0, i32 2
  %67 = load i32, i32* %flags84, align 8
  %call85 = call i8* @mkenvstr(i8* %63, i8* %call82, i32 %67)
  %68 = load %struct.param*, %struct.param** %pm, align 4
  %env = getelementptr inbounds %struct.param, %struct.param* %68, i32 0, i32 5
  store i8* %call85, i8** %env, align 4
  br label %if.end89

if.else86:                                        ; preds = %if.then70
  %69 = load i8**, i8*** %envp2, align 4
  %70 = load i8*, i8** %69, align 4
  %call87 = call i8* @ztrdup(i8* %70)
  %71 = load %struct.param*, %struct.param** %pm, align 4
  %env88 = getelementptr inbounds %struct.param, %struct.param* %71, i32 0, i32 5
  store i8* %call87, i8** %env88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then77
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %land.lhs.true66, %lor.lhs.false
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %land.lhs.true57, %land.lhs.true54, %if.then50
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %for.body47
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %72 = load i8**, i8*** %envp2, align 4
  %incdec.ptr94 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %incdec.ptr94, i8*** %envp2, align 4
  br label %for.cond45

for.end95:                                        ; preds = %for.cond45
  call void @popheap()
  %73 = load i32, i32* %oae, align 4
  %conv96 = trunc i32 %73 to i8
  store i8 %conv96, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 3), align 1
  %74 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode97 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %74, i32 0, i32 9
  %75 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode97, align 4
  %76 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call98 = call %struct.hashnode* %75(%struct.hashtable* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  %77 = bitcast %struct.hashnode* %call98 to %struct.param*
  store %struct.param* %77, %struct.param** %pm, align 4
  %78 = load i32, i32* @emulation, align 4
  %and99 = and i32 %78, 16
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.else111

if.then101:                                       ; preds = %for.end95
  %79 = load %struct.param*, %struct.param** %pm, align 4
  %node102 = getelementptr inbounds %struct.param, %struct.param* %79, i32 0, i32 0
  %flags103 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node102, i32 0, i32 2
  %80 = load i32, i32* %flags103, align 8
  %and104 = and i32 %80, -33554433
  store i32 %and104, i32* %flags103, align 8
  %81 = load %struct.param*, %struct.param** %pm, align 4
  %node105 = getelementptr inbounds %struct.param, %struct.param* %81, i32 0, i32 0
  %flags106 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node105, i32 0, i32 2
  %82 = load i32, i32* %flags106, align 8
  %and107 = and i32 %82, 4096
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.then101
  %83 = load %struct.param*, %struct.param** %pm, align 4
  %84 = load i8*, i8** @home, align 4
  call void @addenv(%struct.param* %83, i8* %84)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.then101
  br label %if.end118

if.else111:                                       ; preds = %for.end95
  %85 = load i8*, i8** @home, align 4
  %tobool112 = icmp ne i8* %85, null
  br i1 %tobool112, label %if.end117, label %if.then113

if.then113:                                       ; preds = %if.else111
  %86 = load %struct.param*, %struct.param** %pm, align 4
  %node114 = getelementptr inbounds %struct.param, %struct.param* %86, i32 0, i32 0
  %flags115 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node114, i32 0, i32 2
  %87 = load i32, i32* %flags115, align 8
  %or116 = or i32 %87, 33554432
  store i32 %or116, i32* %flags115, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %if.else111
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end110
  %88 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode119 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %88, i32 0, i32 9
  %89 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode119, align 4
  %90 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call120 = call %struct.hashnode* %89(%struct.hashtable* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  %91 = bitcast %struct.hashnode* %call120 to %struct.param*
  store %struct.param* %91, %struct.param** %pm, align 4
  %92 = load %struct.param*, %struct.param** %pm, align 4
  %node121 = getelementptr inbounds %struct.param, %struct.param* %92, i32 0, i32 0
  %flags122 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node121, i32 0, i32 2
  %93 = load i32, i32* %flags122, align 8
  %and123 = and i32 %93, 4096
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.end127, label %if.then125

if.then125:                                       ; preds = %if.end118
  %94 = load %struct.param*, %struct.param** %pm, align 4
  %95 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %95, i32 0, i32 1
  %str126 = bitcast %union.anon* %u to i8**
  %96 = load i8*, i8** %str126, align 8
  call void @addenv(%struct.param* %94, i8* %96)
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end118
  %97 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode128 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %97, i32 0, i32 9
  %98 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode128, align 4
  %99 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call129 = call %struct.hashnode* %98(%struct.hashtable* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %100 = bitcast %struct.hashnode* %call129 to %struct.param*
  store %struct.param* %100, %struct.param** %pm, align 4
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %101 = load i32, i32* @shlvl, align 4
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* @shlvl, align 4
  %call130 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %inc)
  %102 = load %struct.param*, %struct.param** %pm, align 4
  %arraydecay131 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  call void @addenv(%struct.param* %102, i8* %arraydecay131)
  call void @set_pwd_env()
  %call132 = call i32 @uname(%struct.utsname* %unamebuf)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.then134, label %if.else137

if.then134:                                       ; preds = %if.end127
  %call135 = call i8* @ztrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %call136 = call %struct.param* @setsparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* %call135)
  br label %if.end141

if.else137:                                       ; preds = %if.end127
  %machine = getelementptr inbounds %struct.utsname, %struct.utsname* %unamebuf, i32 0, i32 4
  %arraydecay138 = getelementptr inbounds [65 x i8], [65 x i8]* %machine, i32 0, i32 0
  %call139 = call i8* @ztrdup_metafy(i8* %arraydecay138)
  store i8* %call139, i8** %machinebuf, align 4
  %103 = load i8*, i8** %machinebuf, align 4
  %call140 = call %struct.param* @setsparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* %103)
  br label %if.end141

if.end141:                                        ; preds = %if.else137, %if.then134
  %call142 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  %call143 = call %struct.param* @setsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* %call142)
  %call144 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0))
  %call145 = call %struct.param* @setsparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* %call144)
  %104 = load i8*, i8** @ttystrname, align 4
  %call146 = call i8* @ztrdup_metafy(i8* %104)
  %call147 = call %struct.param* @setsparam(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %call146)
  %call148 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  %call149 = call %struct.param* @setsparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %call148)
  %105 = load i8*, i8** @posixzero, align 4
  %call150 = call i8* @ztrdup(i8* %105)
  %call151 = call %struct.param* @setsparam(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %call150)
  %call152 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0))
  %call153 = call %struct.param* @setsparam(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* %call152)
  %call154 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0))
  %call155 = call %struct.param* @setsparam(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* %call154)
  %call156 = call i8* @zalloc(i32 140)
  %106 = bitcast i8* %call156 to i8**
  store i8** %106, i8*** %sigptr, align 4
  %call157 = call %struct.param* @setaparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8** %106)
  store i8** getelementptr inbounds ([35 x i8*], [35 x i8*]* @sigs, i32 0, i32 0), i8*** %t, align 4
  br label %for.cond158

for.cond158:                                      ; preds = %for.body163, %if.end141
  %107 = load i8**, i8*** %t, align 4
  %incdec.ptr159 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %incdec.ptr159, i8*** %t, align 4
  %108 = load i8*, i8** %107, align 4
  %call160 = call i8* @ztrdup_metafy(i8* %108)
  %109 = load i8**, i8*** %sigptr, align 4
  %incdec.ptr161 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %incdec.ptr161, i8*** %sigptr, align 4
  store i8* %call160, i8** %109, align 4
  %tobool162 = icmp ne i8* %call160, null
  br i1 %tobool162, label %for.body163, label %for.end164

for.body163:                                      ; preds = %for.cond158
  br label %for.cond158

for.end164:                                       ; preds = %for.cond158
  store i32 0, i32* @noerrs, align 4
  ret void
}

declare i8* @ztrdup(i8*) #1

; Function Attrs: noinline nounwind
define %struct.param* @setiparam(i8* %s, i32 %val) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %val.addr = alloca i32, align 4
  %mnval = alloca %struct.mnumber, align 8
  store i8* %s, i8** %s.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mnval, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %0 = load i32, i32* %val.addr, align 4
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mnval, i32 0, i32 0
  %l = bitcast %union.anon.1* %u to i32*
  store i32 %0, i32* %l, align 8
  %1 = load i8*, i8** %s.addr, align 4
  %call = call %struct.param* @assignnparam(i8* %1, %struct.mnumber* byval align 8 %mnval, i32 6)
  ret %struct.param* %call
}

; Function Attrs: noinline nounwind
define %struct.param* @setsparam(i8* %s, i8* %val) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %val.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %val, i8** %val.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8*, i8** %val.addr, align 4
  %call = call %struct.param* @assignsparam(i8* %0, i8* %1, i32 6)
  ret %struct.param* %call
}

declare i8* @ztrdup_metafy(i8*) #1

declare i8* @zalloc(i32) #1

declare i32 @gethostname(i8*, i32) #1

declare void @zfree(i8*, i32) #1

declare i8* @getlogin() #1

declare void @pushheap() #1

; Function Attrs: noinline nounwind
define internal i32 @split_env_string(i8* %env, i8** %name, i8** %value) #0 {
entry:
  %retval = alloca i32, align 4
  %env.addr = alloca i8*, align 4
  %name.addr = alloca i8**, align 4
  %value.addr = alloca i8**, align 4
  %str = alloca i8*, align 4
  %tenv = alloca i8*, align 4
  store i8* %env, i8** %env.addr, align 4
  store i8** %name, i8*** %name.addr, align 4
  store i8** %value, i8*** %value.addr, align 4
  %0 = load i8*, i8** %env.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %name.addr, align 4
  %tobool1 = icmp ne i8** %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8**, i8*** %value.addr, align 4
  %tobool3 = icmp ne i8** %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %env.addr, align 4
  %call = call i32 @strlen(i8* %3)
  %add = add i32 %call, 1
  %call4 = call i8* @zhalloc(i32 %add)
  %4 = load i8*, i8** %env.addr, align 4
  %call5 = call i8* @strcpy(i8* %call4, i8* %4)
  store i8* %call5, i8** %tenv, align 4
  %5 = load i8*, i8** %tenv, align 4
  store i8* %5, i8** %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8*, i8** %str, align 4
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i8*, i8** %str, align 4
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv7, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load i8*, i8** %str, align 4
  %12 = load i8, i8* %11, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp sge i32 %conv9, 128
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %13 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %str, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i8*, i8** %str, align 4
  %15 = load i8*, i8** %tenv, align 4
  %cmp14 = icmp ne i8* %14, %15
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %16 = load i8*, i8** %str, align 4
  %17 = load i8, i8* %16, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 61
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %18 = load i8*, i8** %str, align 4
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %tenv, align 4
  %20 = load i8**, i8*** %name.addr, align 4
  store i8* %19, i8** %20, align 4
  %21 = load i8*, i8** %str, align 4
  %add.ptr = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8**, i8*** %value.addr, align 4
  store i8* %add.ptr, i8** %22, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then19, %if.then12, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind
define i32 @isident(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %ss = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  store i8* %incdec.ptr, i8** %ss, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %6 = load i8*, i8** %ss, align 4
  %7 = load i8, i8* %6, align 1
  %tobool3 = icmp ne i8 %7, 0
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %ss, align 4
  %9 = load i8, i8* %8, align 1
  %idxprom4 = zext i8 %9 to i32
  %arrayidx5 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom4
  %10 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %10 to i32
  %and7 = and i32 %conv6, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.body
  br label %for.end

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %11 = load i8*, i8** %ss, align 4
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %ss, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then9, %for.cond
  br label %if.end12

if.else:                                          ; preds = %if.end
  %12 = load i8*, i8** %s.addr, align 4
  %call = call i8* @itype_end(i8* %12, i32 128, i32 0)
  store i8* %call, i8** %ss, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %for.end
  %13 = load i8*, i8** %ss, align 4
  %14 = load i8, i8* %13, align 1
  %tobool13 = icmp ne i8 %14, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  store i32 1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end12
  %15 = load i8*, i8** %s.addr, align 4
  %16 = load i8*, i8** %ss, align 4
  %cmp = icmp eq i8* %15, %16
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end15
  %17 = load i8*, i8** %ss, align 4
  %18 = load i8, i8* %17, align 1
  %conv19 = sext i8 %18 to i32
  %cmp20 = icmp ne i32 %conv19, 91
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %19 = load i8*, i8** %ss, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr24, i8** %ss, align 4
  %call25 = call i8* @parse_subscript(i8* %incdec.ptr24, i32 1, i32 93)
  store i8* %call25, i8** %ss, align 4
  %tobool26 = icmp ne i8* %call25, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end23
  store i32 0, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end23
  %20 = load i8*, i8** %s.addr, align 4
  call void @untokenize(i8* %20)
  %21 = load i8*, i8** %ss, align 4
  %arrayidx29 = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8, i8* %arrayidx29, align 1
  %tobool30 = icmp ne i8 %22, 0
  %lnot = xor i1 %tobool30, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then22, %if.then17, %if.then14, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @dontimport(i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 8388608
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %1, 4096
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* %flags.addr, align 4
  %and5 = and i32 %2, 524288
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %conv = sext i8 %3 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind
define %struct.param* @assignsparam(i8* %s, i8* %val, i32 %flags) #0 {
entry:
  %retval = alloca %struct.param*, align 4
  %s.addr = alloca i8*, align 4
  %val.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %t = alloca i8*, align 4
  %ss = alloca i8*, align 4
  %copy = alloca i8*, align 4
  %var = alloca i8*, align 4
  %lvar = alloca i32, align 4
  %lhs = alloca %struct.mnumber, align 8
  %rhs = alloca %struct.mnumber, align 8
  %sstart = alloca i32, align 4
  %created = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp17 = alloca %struct.__sigset_t, align 4
  %oset68 = alloca %struct.__sigset_t, align 4
  %tmp72 = alloca %struct.__sigset_t, align 4
  %tmp74 = alloca %struct.__sigset_t, align 4
  %tmp98 = alloca %struct.mnumber, align 8
  %tmp99 = alloca %struct.mnumber, align 8
  %oset151 = alloca %struct.__sigset_t, align 4
  %tmp155 = alloca %struct.__sigset_t, align 4
  %tmp157 = alloca %struct.__sigset_t, align 4
  %oset215 = alloca %struct.__sigset_t, align 4
  %tmp219 = alloca %struct.__sigset_t, align 4
  %tmp221 = alloca %struct.__sigset_t, align 4
  %oset255 = alloca %struct.__sigset_t, align 4
  %tmp259 = alloca %struct.__sigset_t, align 4
  %tmp261 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %val, i8** %val.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %t, align 4
  store i32 0, i32* %created, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @isident(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* %2)
  %3 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %3)
  %4 = load i32, i32* @errflag, align 4
  %or = or i32 %4, 1
  store i32 %or, i32* @errflag, align 4
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %6 = load i8*, i8** %s.addr, align 4
  %call1 = call i8* @strchr(i8* %6, i32 91)
  store i8* %call1, i8** %ss, align 4
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then3, label %if.else23

if.then3:                                         ; preds = %if.end
  %7 = load i8*, i8** %ss, align 4
  store i8 0, i8* %7, align 1
  %call4 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 1)
  store %struct.value* %call4, %struct.value** %v, align 4
  %tobool5 = icmp ne %struct.value* %call4, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  %8 = load i8*, i8** %t, align 4
  %call7 = call %struct.param* @createparam(i8* %8, i32 1)
  store i32 1, i32* %created, align 4
  br label %if.end22

if.else:                                          ; preds = %if.then3
  %9 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %9, i32 0, i32 1
  %10 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %11 = load i32, i32* %flags8, align 8
  %and = and i32 %11, 1024
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.else
  %12 = load %struct.value*, %struct.value** %v, align 4
  %pm11 = getelementptr inbounds %struct.value, %struct.value* %12, i32 0, i32 1
  %13 = load %struct.param*, %struct.param** %pm11, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 1
  %14 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* %14)
  %15 = load i8*, i8** %ss, align 4
  store i8 91, i8* %15, align 1
  %16 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %16)
  br label %do.body

do.body:                                          ; preds = %if.then10
  %17 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool13 = icmp ne i32 %dec, 0
  br i1 %tobool13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %do.body
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body15
  %18 = load i32, i32* @queue_front, align 4
  %19 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %18, %19
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %20, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %21 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %21
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %22 = bitcast %struct.__sigset_t* %oset to i8*
  %23 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 128, i32 4, i1 false)
  %24 = load i32, i32* @queue_front, align 4
  %arrayidx16 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %24
  %25 = load i32, i32* %arrayidx16, align 4
  call void @zhandler(i32 %25)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp17, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else
  %26 = load i32, i32* %flags.addr, align 4
  %and21 = and i32 %26, -7
  store i32 %and21, i32* %flags.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.then6
  %27 = load i8*, i8** %ss, align 4
  store i8 91, i8* %27, align 1
  store %struct.value* null, %struct.value** %v, align 4
  br label %if.end53

if.else23:                                        ; preds = %if.end
  %call24 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 1)
  store %struct.value* %call24, %struct.value** %v, align 4
  %tobool25 = icmp ne %struct.value* %call24, null
  br i1 %tobool25, label %if.else28, label %if.then26

if.then26:                                        ; preds = %if.else23
  %28 = load i8*, i8** %t, align 4
  %call27 = call %struct.param* @createparam(i8* %28, i32 0)
  store i32 1, i32* %created, align 4
  br label %if.end52

if.else28:                                        ; preds = %if.else23
  %29 = load %struct.value*, %struct.value** %v, align 4
  %pm29 = getelementptr inbounds %struct.value, %struct.value* %29, i32 0, i32 1
  %30 = load %struct.param*, %struct.param** %pm29, align 4
  %node30 = getelementptr inbounds %struct.param, %struct.param* %30, i32 0, i32 0
  %flags31 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node30, i32 0, i32 2
  %31 = load i32, i32* %flags31, align 8
  %and32 = and i32 %31, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else28
  %32 = load i32, i32* %flags.addr, align 4
  %and34 = and i32 %32, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %lor.lhs.false, label %land.lhs.true41

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else28
  %33 = load %struct.value*, %struct.value** %v, align 4
  %pm36 = getelementptr inbounds %struct.value, %struct.value* %33, i32 0, i32 1
  %34 = load %struct.param*, %struct.param** %pm36, align 4
  %node37 = getelementptr inbounds %struct.param, %struct.param* %34, i32 0, i32 0
  %flags38 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node37, i32 0, i32 2
  %35 = load i32, i32* %flags38, align 8
  %and39 = and i32 %35, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %land.lhs.true41, label %if.end51

land.lhs.true41:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %36 = load %struct.value*, %struct.value** %v, align 4
  %pm42 = getelementptr inbounds %struct.value, %struct.value* %36, i32 0, i32 1
  %37 = load %struct.param*, %struct.param** %pm42, align 4
  %node43 = getelementptr inbounds %struct.param, %struct.param* %37, i32 0, i32 0
  %flags44 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node43, i32 0, i32 2
  %38 = load i32, i32* %flags44, align 8
  %and45 = and i32 %38, 4259840
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.end51, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true41
  %39 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool48 = icmp ne i8 %39, 0
  br i1 %tobool48, label %if.end51, label %if.then49

if.then49:                                        ; preds = %land.lhs.true47
  %40 = load i8*, i8** %t, align 4
  call void @unsetparam(i8* %40)
  %41 = load i8*, i8** %t, align 4
  %call50 = call %struct.param* @createparam(i8* %41, i32 0)
  store %struct.value* null, %struct.value** %v, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true47, %land.lhs.true41, %lor.lhs.false
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then26
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end22
  %42 = load %struct.value*, %struct.value** %v, align 4
  %tobool54 = icmp ne %struct.value* %42, null
  br i1 %tobool54, label %if.end79, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end53
  %call56 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %t, i32 1)
  store %struct.value* %call56, %struct.value** %v, align 4
  %tobool57 = icmp ne %struct.value* %call56, null
  br i1 %tobool57, label %if.end79, label %if.then58

if.then58:                                        ; preds = %land.lhs.true55
  br label %do.body59

do.body59:                                        ; preds = %if.then58
  %43 = load i32, i32* @queueing_enabled, align 4
  %dec60 = add nsw i32 %43, -1
  store i32 %dec60, i32* @queueing_enabled, align 4
  %tobool61 = icmp ne i32 %dec60, 0
  br i1 %tobool61, label %if.end77, label %if.then62

if.then62:                                        ; preds = %do.body59
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  br label %while.cond64

while.cond64:                                     ; preds = %while.body66, %do.body63
  %44 = load i32, i32* @queue_front, align 4
  %45 = load i32, i32* @queue_rear, align 4
  %cmp65 = icmp ne i32 %44, %45
  br i1 %cmp65, label %while.body66, label %while.end75

while.body66:                                     ; preds = %while.cond64
  %46 = load i32, i32* @queue_front, align 4
  %add69 = add nsw i32 %46, 1
  %rem70 = srem i32 %add69, 128
  store i32 %rem70, i32* @queue_front, align 4
  %47 = load i32, i32* @queue_front, align 4
  %arrayidx71 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %47
  call void @signal_setmask(%struct.__sigset_t* sret %tmp72, %struct.__sigset_t* byval align 4 %arrayidx71)
  %48 = bitcast %struct.__sigset_t* %oset68 to i8*
  %49 = bitcast %struct.__sigset_t* %tmp72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 128, i32 4, i1 false)
  %50 = load i32, i32* @queue_front, align 4
  %arrayidx73 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %50
  %51 = load i32, i32* %arrayidx73, align 4
  call void @zhandler(i32 %51)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp74, %struct.__sigset_t* byval align 4 %oset68)
  br label %while.cond64

while.end75:                                      ; preds = %while.cond64
  br label %do.end76

do.end76:                                         ; preds = %while.end75
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.body59
  br label %do.end78

do.end78:                                         ; preds = %if.end77
  %52 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %52)
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end79:                                         ; preds = %land.lhs.true55, %if.end53
  %53 = load i32, i32* %flags.addr, align 4
  %and80 = and i32 %53, 6
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end79
  %54 = load %struct.value*, %struct.value** %v, align 4
  %pm83 = getelementptr inbounds %struct.value, %struct.value* %54, i32 0, i32 1
  %55 = load %struct.param*, %struct.param** %pm83, align 4
  %56 = load i32, i32* %created, align 4
  call void @check_warn_pm(%struct.param* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %56, i32 1)
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end79
  %57 = load i32, i32* %flags.addr, align 4
  %and85 = and i32 %57, 1
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.end244

if.then87:                                        ; preds = %if.end84
  %58 = load %struct.value*, %struct.value** %v, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %58, i32 0, i32 3
  %59 = load i32, i32* %start, align 4
  %cmp88 = icmp eq i32 %59, 0
  br i1 %cmp88, label %land.lhs.true89, label %if.else177

land.lhs.true89:                                  ; preds = %if.then87
  %60 = load %struct.value*, %struct.value** %v, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %60, i32 0, i32 4
  %61 = load i32, i32* %end, align 4
  %cmp90 = icmp eq i32 %61, -1
  br i1 %cmp90, label %if.then91, label %if.else177

if.then91:                                        ; preds = %land.lhs.true89
  %62 = load %struct.value*, %struct.value** %v, align 4
  %pm92 = getelementptr inbounds %struct.value, %struct.value* %62, i32 0, i32 1
  %63 = load %struct.param*, %struct.param** %pm92, align 4
  %node93 = getelementptr inbounds %struct.param, %struct.param* %63, i32 0, i32 0
  %flags94 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node93, i32 0, i32 2
  %64 = load i32, i32* %flags94, align 8
  %and95 = and i32 %64, 31
  switch i32 %and95, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb97
    i32 4, label %sw.bb97
    i32 8, label %sw.bb97
    i32 1, label %sw.bb163
  ]

sw.bb:                                            ; preds = %if.then91
  %65 = load %struct.value*, %struct.value** %v, align 4
  %start96 = getelementptr inbounds %struct.value, %struct.value* %65, i32 0, i32 3
  store i32 2147483647, i32* %start96, align 4
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.then91, %if.then91, %if.then91
  %66 = load i8*, i8** %val.addr, align 4
  call void @matheval(%struct.mnumber* sret %tmp98, i8* %66)
  %67 = bitcast %struct.mnumber* %rhs to i8*
  %68 = bitcast %struct.mnumber* %tmp98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %67, i8* %68, i32 16, i32 8, i1 false)
  %69 = load %struct.value*, %struct.value** %v, align 4
  call void @getnumvalue(%struct.mnumber* sret %tmp99, %struct.value* %69)
  %70 = bitcast %struct.mnumber* %lhs to i8*
  %71 = bitcast %struct.mnumber* %tmp99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %70, i8* %71, i32 16, i32 8, i1 false)
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 1
  %72 = load i32, i32* %type, align 8
  %cmp100 = icmp eq i32 %72, 2
  br i1 %cmp100, label %if.then101, label %if.else118

if.then101:                                       ; preds = %sw.bb97
  %type102 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %rhs, i32 0, i32 1
  %73 = load i32, i32* %type102, align 8
  %cmp103 = icmp eq i32 %73, 2
  br i1 %cmp103, label %if.then104, label %if.else110

if.then104:                                       ; preds = %if.then101
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %d = bitcast %union.anon.1* %u to double*
  %74 = load double, double* %d, align 8
  %u105 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %rhs, i32 0, i32 0
  %d106 = bitcast %union.anon.1* %u105 to double*
  %75 = load double, double* %d106, align 8
  %add107 = fadd double %74, %75
  %u108 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %d109 = bitcast %union.anon.1* %u108 to double*
  store double %add107, double* %d109, align 8
  br label %if.end117

if.else110:                                       ; preds = %if.then101
  %u111 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %d112 = bitcast %union.anon.1* %u111 to double*
  %76 = load double, double* %d112, align 8
  %u113 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %rhs, i32 0, i32 0
  %l = bitcast %union.anon.1* %u113 to i32*
  %77 = load i32, i32* %l, align 8
  %conv = sitofp i32 %77 to double
  %add114 = fadd double %76, %conv
  %u115 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %d116 = bitcast %union.anon.1* %u115 to double*
  store double %add114, double* %d116, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.else110, %if.then104
  br label %if.end140

if.else118:                                       ; preds = %sw.bb97
  %type119 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %rhs, i32 0, i32 1
  %78 = load i32, i32* %type119, align 8
  %cmp120 = icmp eq i32 %78, 1
  br i1 %cmp120, label %if.then122, label %if.else130

if.then122:                                       ; preds = %if.else118
  %u123 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %l124 = bitcast %union.anon.1* %u123 to i32*
  %79 = load i32, i32* %l124, align 8
  %u125 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %rhs, i32 0, i32 0
  %l126 = bitcast %union.anon.1* %u125 to i32*
  %80 = load i32, i32* %l126, align 8
  %add127 = add nsw i32 %79, %80
  %u128 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %l129 = bitcast %union.anon.1* %u128 to i32*
  store i32 %add127, i32* %l129, align 8
  br label %if.end139

if.else130:                                       ; preds = %if.else118
  %u131 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %l132 = bitcast %union.anon.1* %u131 to i32*
  %81 = load i32, i32* %l132, align 8
  %u133 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %rhs, i32 0, i32 0
  %d134 = bitcast %union.anon.1* %u133 to double*
  %82 = load double, double* %d134, align 8
  %conv135 = fptosi double %82 to i32
  %add136 = add nsw i32 %81, %conv135
  %u137 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %lhs, i32 0, i32 0
  %l138 = bitcast %union.anon.1* %u137 to i32*
  store i32 %add136, i32* %l138, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.else130, %if.then122
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end117
  %83 = load %struct.value*, %struct.value** %v, align 4
  call void @setnumvalue(%struct.value* %83, %struct.mnumber* byval align 8 %lhs)
  br label %do.body141

do.body141:                                       ; preds = %if.end140
  %84 = load i32, i32* @queueing_enabled, align 4
  %dec142 = add nsw i32 %84, -1
  store i32 %dec142, i32* @queueing_enabled, align 4
  %tobool143 = icmp ne i32 %dec142, 0
  br i1 %tobool143, label %if.end160, label %if.then144

if.then144:                                       ; preds = %do.body141
  br label %do.body145

do.body145:                                       ; preds = %if.then144
  br label %while.cond146

while.cond146:                                    ; preds = %while.body149, %do.body145
  %85 = load i32, i32* @queue_front, align 4
  %86 = load i32, i32* @queue_rear, align 4
  %cmp147 = icmp ne i32 %85, %86
  br i1 %cmp147, label %while.body149, label %while.end158

while.body149:                                    ; preds = %while.cond146
  %87 = load i32, i32* @queue_front, align 4
  %add152 = add nsw i32 %87, 1
  %rem153 = srem i32 %add152, 128
  store i32 %rem153, i32* @queue_front, align 4
  %88 = load i32, i32* @queue_front, align 4
  %arrayidx154 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %88
  call void @signal_setmask(%struct.__sigset_t* sret %tmp155, %struct.__sigset_t* byval align 4 %arrayidx154)
  %89 = bitcast %struct.__sigset_t* %oset151 to i8*
  %90 = bitcast %struct.__sigset_t* %tmp155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %90, i32 128, i32 4, i1 false)
  %91 = load i32, i32* @queue_front, align 4
  %arrayidx156 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %91
  %92 = load i32, i32* %arrayidx156, align 4
  call void @zhandler(i32 %92)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp157, %struct.__sigset_t* byval align 4 %oset151)
  br label %while.cond146

while.end158:                                     ; preds = %while.cond146
  br label %do.end159

do.end159:                                        ; preds = %while.end158
  br label %if.end160

if.end160:                                        ; preds = %do.end159, %do.body141
  br label %do.end161

do.end161:                                        ; preds = %if.end160
  %93 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %93)
  %94 = load %struct.value*, %struct.value** %v, align 4
  %pm162 = getelementptr inbounds %struct.value, %struct.value* %94, i32 0, i32 1
  %95 = load %struct.param*, %struct.param** %pm162, align 4
  store %struct.param* %95, %struct.param** %retval, align 4
  br label %return

sw.bb163:                                         ; preds = %if.then91
  %96 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool164 = icmp ne i8 %96, 0
  br i1 %tobool164, label %if.else174, label %if.then165

if.then165:                                       ; preds = %sw.bb163
  %97 = load %struct.value*, %struct.value** %v, align 4
  %pm166 = getelementptr inbounds %struct.value, %struct.value* %97, i32 0, i32 1
  %98 = load %struct.param*, %struct.param** %pm166, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %98, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %99 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %getfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %99, i32 0, i32 0
  %100 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn, align 4
  %101 = load %struct.value*, %struct.value** %v, align 4
  %pm167 = getelementptr inbounds %struct.value, %struct.value* %101, i32 0, i32 1
  %102 = load %struct.param*, %struct.param** %pm167, align 4
  %call168 = call i8** %100(%struct.param* %102)
  %call169 = call i32 @arrlen(i8** %call168)
  %103 = load %struct.value*, %struct.value** %v, align 4
  %start170 = getelementptr inbounds %struct.value, %struct.value* %103, i32 0, i32 3
  store i32 %call169, i32* %start170, align 4
  %104 = load %struct.value*, %struct.value** %v, align 4
  %start171 = getelementptr inbounds %struct.value, %struct.value* %104, i32 0, i32 3
  %105 = load i32, i32* %start171, align 4
  %add172 = add nsw i32 %105, 1
  %106 = load %struct.value*, %struct.value** %v, align 4
  %end173 = getelementptr inbounds %struct.value, %struct.value* %106, i32 0, i32 4
  store i32 %add172, i32* %end173, align 4
  br label %if.end176

if.else174:                                       ; preds = %sw.bb163
  %107 = load %struct.value*, %struct.value** %v, align 4
  %end175 = getelementptr inbounds %struct.value, %struct.value* %107, i32 0, i32 4
  store i32 1, i32* %end175, align 4
  br label %kshappend

if.end176:                                        ; preds = %if.then165
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then91, %if.end176, %sw.bb
  br label %if.end243

if.else177:                                       ; preds = %land.lhs.true89, %if.then87
  %108 = load %struct.value*, %struct.value** %v, align 4
  %pm178 = getelementptr inbounds %struct.value, %struct.value* %108, i32 0, i32 1
  %109 = load %struct.param*, %struct.param** %pm178, align 4
  %node179 = getelementptr inbounds %struct.param, %struct.param* %109, i32 0, i32 0
  %flags180 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node179, i32 0, i32 2
  %110 = load i32, i32* %flags180, align 8
  %and181 = and i32 %110, 31
  switch i32 %and181, label %sw.epilog242 [
    i32 0, label %sw.bb182
    i32 2, label %sw.bb204
    i32 4, label %sw.bb204
    i32 8, label %sw.bb204
    i32 1, label %sw.bb226
  ]

sw.bb182:                                         ; preds = %if.else177
  %111 = load %struct.value*, %struct.value** %v, align 4
  %end183 = getelementptr inbounds %struct.value, %struct.value* %111, i32 0, i32 4
  %112 = load i32, i32* %end183, align 4
  %cmp184 = icmp sgt i32 %112, 0
  br i1 %cmp184, label %if.then186, label %if.else189

if.then186:                                       ; preds = %sw.bb182
  %113 = load %struct.value*, %struct.value** %v, align 4
  %end187 = getelementptr inbounds %struct.value, %struct.value* %113, i32 0, i32 4
  %114 = load i32, i32* %end187, align 4
  %115 = load %struct.value*, %struct.value** %v, align 4
  %start188 = getelementptr inbounds %struct.value, %struct.value* %115, i32 0, i32 3
  store i32 %114, i32* %start188, align 4
  br label %if.end203

if.else189:                                       ; preds = %sw.bb182
  %116 = load %struct.value*, %struct.value** %v, align 4
  %pm190 = getelementptr inbounds %struct.value, %struct.value* %116, i32 0, i32 1
  %117 = load %struct.param*, %struct.param** %pm190, align 4
  %gsu191 = getelementptr inbounds %struct.param, %struct.param* %117, i32 0, i32 2
  %s192 = bitcast %union.anon.0* %gsu191 to %struct.gsu_scalar**
  %118 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s192, align 8
  %getfn193 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %118, i32 0, i32 0
  %getfn194 = bitcast {}** %getfn193 to i8* (%struct.param*)**
  %119 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn194, align 4
  %120 = load %struct.value*, %struct.value** %v, align 4
  %pm195 = getelementptr inbounds %struct.value, %struct.value* %120, i32 0, i32 1
  %121 = load %struct.param*, %struct.param** %pm195, align 4
  %call196 = call i8* %119(%struct.param* %121)
  %call197 = call i32 @strlen(i8* %call196)
  %122 = load %struct.value*, %struct.value** %v, align 4
  %end198 = getelementptr inbounds %struct.value, %struct.value* %122, i32 0, i32 4
  %123 = load i32, i32* %end198, align 4
  %add199 = add i32 %call197, %123
  %add200 = add i32 %add199, 1
  %124 = load %struct.value*, %struct.value** %v, align 4
  %end201 = getelementptr inbounds %struct.value, %struct.value* %124, i32 0, i32 4
  store i32 %add200, i32* %end201, align 4
  %125 = load %struct.value*, %struct.value** %v, align 4
  %start202 = getelementptr inbounds %struct.value, %struct.value* %125, i32 0, i32 3
  store i32 %add200, i32* %start202, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.else189, %if.then186
  br label %sw.epilog242

sw.bb204:                                         ; preds = %if.else177, %if.else177, %if.else177
  br label %do.body205

do.body205:                                       ; preds = %sw.bb204
  %126 = load i32, i32* @queueing_enabled, align 4
  %dec206 = add nsw i32 %126, -1
  store i32 %dec206, i32* @queueing_enabled, align 4
  %tobool207 = icmp ne i32 %dec206, 0
  br i1 %tobool207, label %if.end224, label %if.then208

if.then208:                                       ; preds = %do.body205
  br label %do.body209

do.body209:                                       ; preds = %if.then208
  br label %while.cond210

while.cond210:                                    ; preds = %while.body213, %do.body209
  %127 = load i32, i32* @queue_front, align 4
  %128 = load i32, i32* @queue_rear, align 4
  %cmp211 = icmp ne i32 %127, %128
  br i1 %cmp211, label %while.body213, label %while.end222

while.body213:                                    ; preds = %while.cond210
  %129 = load i32, i32* @queue_front, align 4
  %add216 = add nsw i32 %129, 1
  %rem217 = srem i32 %add216, 128
  store i32 %rem217, i32* @queue_front, align 4
  %130 = load i32, i32* @queue_front, align 4
  %arrayidx218 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %130
  call void @signal_setmask(%struct.__sigset_t* sret %tmp219, %struct.__sigset_t* byval align 4 %arrayidx218)
  %131 = bitcast %struct.__sigset_t* %oset215 to i8*
  %132 = bitcast %struct.__sigset_t* %tmp219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %131, i8* %132, i32 128, i32 4, i1 false)
  %133 = load i32, i32* @queue_front, align 4
  %arrayidx220 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %133
  %134 = load i32, i32* %arrayidx220, align 4
  call void @zhandler(i32 %134)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp221, %struct.__sigset_t* byval align 4 %oset215)
  br label %while.cond210

while.end222:                                     ; preds = %while.cond210
  br label %do.end223

do.end223:                                        ; preds = %while.end222
  br label %if.end224

if.end224:                                        ; preds = %do.end223, %do.body205
  br label %do.end225

do.end225:                                        ; preds = %if.end224
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0))
  %135 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %135)
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

sw.bb226:                                         ; preds = %if.else177
  br label %kshappend

kshappend:                                        ; preds = %sw.bb226, %if.else174
  %136 = load %struct.value*, %struct.value** %v, align 4
  %end227 = getelementptr inbounds %struct.value, %struct.value* %136, i32 0, i32 4
  %137 = load i32, i32* %end227, align 4
  %cmp228 = icmp sgt i32 %137, 0
  br i1 %cmp228, label %cond.true, label %cond.false

cond.true:                                        ; preds = %kshappend
  %138 = load %struct.value*, %struct.value** %v, align 4
  %end230 = getelementptr inbounds %struct.value, %struct.value* %138, i32 0, i32 4
  %139 = load i32, i32* %end230, align 4
  %sub = sub nsw i32 %139, 1
  br label %cond.end

cond.false:                                       ; preds = %kshappend
  %140 = load %struct.value*, %struct.value** %v, align 4
  %end231 = getelementptr inbounds %struct.value, %struct.value* %140, i32 0, i32 4
  %141 = load i32, i32* %end231, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %141, %cond.false ]
  store i32 %cond, i32* %sstart, align 4
  %142 = load %struct.value*, %struct.value** %v, align 4
  %start232 = getelementptr inbounds %struct.value, %struct.value* %142, i32 0, i32 3
  store i32 %cond, i32* %start232, align 4
  %143 = load %struct.value*, %struct.value** %v, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %143, i32 0, i32 0
  store i32 0, i32* %isarr, align 4
  %144 = load %struct.value*, %struct.value** %v, align 4
  %call233 = call i8* @getstrvalue(%struct.value* %144)
  store i8* %call233, i8** %var, align 4
  %145 = load i32, i32* %sstart, align 4
  %146 = load %struct.value*, %struct.value** %v, align 4
  %start234 = getelementptr inbounds %struct.value, %struct.value* %146, i32 0, i32 3
  store i32 %145, i32* %start234, align 4
  %147 = load i8*, i8** %val.addr, align 4
  store i8* %147, i8** %copy, align 4
  %148 = load i8*, i8** %var, align 4
  %call235 = call i32 @strlen(i8* %148)
  store i32 %call235, i32* %lvar, align 4
  %149 = load i32, i32* %lvar, align 4
  %150 = load i8*, i8** %val.addr, align 4
  %call236 = call i32 @strlen(i8* %150)
  %add237 = add i32 %149, %call236
  %add238 = add i32 %add237, 1
  %call239 = call i8* @zalloc(i32 %add238)
  store i8* %call239, i8** %val.addr, align 4
  %151 = load i8*, i8** %val.addr, align 4
  %152 = load i8*, i8** %var, align 4
  %call240 = call i8* @strcpy(i8* %151, i8* %152)
  %153 = load i8*, i8** %val.addr, align 4
  %154 = load i32, i32* %lvar, align 4
  %add.ptr = getelementptr inbounds i8, i8* %153, i32 %154
  %155 = load i8*, i8** %copy, align 4
  %call241 = call i8* @strcpy(i8* %add.ptr, i8* %155)
  %156 = load i8*, i8** %copy, align 4
  call void @zsfree(i8* %156)
  br label %sw.epilog242

sw.epilog242:                                     ; preds = %if.else177, %cond.end, %if.end203
  br label %if.end243

if.end243:                                        ; preds = %sw.epilog242, %sw.epilog
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.end84
  %157 = load %struct.value*, %struct.value** %v, align 4
  %158 = load i8*, i8** %val.addr, align 4
  %159 = load i32, i32* %flags.addr, align 4
  call void @assignstrvalue(%struct.value* %157, i8* %158, i32 %159)
  br label %do.body245

do.body245:                                       ; preds = %if.end244
  %160 = load i32, i32* @queueing_enabled, align 4
  %dec246 = add nsw i32 %160, -1
  store i32 %dec246, i32* @queueing_enabled, align 4
  %tobool247 = icmp ne i32 %dec246, 0
  br i1 %tobool247, label %if.end264, label %if.then248

if.then248:                                       ; preds = %do.body245
  br label %do.body249

do.body249:                                       ; preds = %if.then248
  br label %while.cond250

while.cond250:                                    ; preds = %while.body253, %do.body249
  %161 = load i32, i32* @queue_front, align 4
  %162 = load i32, i32* @queue_rear, align 4
  %cmp251 = icmp ne i32 %161, %162
  br i1 %cmp251, label %while.body253, label %while.end262

while.body253:                                    ; preds = %while.cond250
  %163 = load i32, i32* @queue_front, align 4
  %add256 = add nsw i32 %163, 1
  %rem257 = srem i32 %add256, 128
  store i32 %rem257, i32* @queue_front, align 4
  %164 = load i32, i32* @queue_front, align 4
  %arrayidx258 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %164
  call void @signal_setmask(%struct.__sigset_t* sret %tmp259, %struct.__sigset_t* byval align 4 %arrayidx258)
  %165 = bitcast %struct.__sigset_t* %oset255 to i8*
  %166 = bitcast %struct.__sigset_t* %tmp259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %165, i8* %166, i32 128, i32 4, i1 false)
  %167 = load i32, i32* @queue_front, align 4
  %arrayidx260 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %167
  %168 = load i32, i32* %arrayidx260, align 4
  call void @zhandler(i32 %168)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp261, %struct.__sigset_t* byval align 4 %oset255)
  br label %while.cond250

while.end262:                                     ; preds = %while.cond250
  br label %do.end263

do.end263:                                        ; preds = %while.end262
  br label %if.end264

if.end264:                                        ; preds = %do.end263, %do.body245
  br label %do.end265

do.end265:                                        ; preds = %if.end264
  %169 = load %struct.value*, %struct.value** %v, align 4
  %pm266 = getelementptr inbounds %struct.value, %struct.value* %169, i32 0, i32 1
  %170 = load %struct.param*, %struct.param** %pm266, align 4
  store %struct.param* %170, %struct.param** %retval, align 4
  br label %return

return:                                           ; preds = %do.end265, %do.end225, %do.end161, %do.end78, %do.end19, %if.then
  %171 = load %struct.param*, %struct.param** %retval, align 4
  ret %struct.param* %171
}

declare i8* @metafy(i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define internal i8* @mkenvstr(i8* %name, i8* %value, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %value.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %str = alloca i8*, align 4
  %s = alloca i8*, align 4
  %len_name = alloca i32, align 4
  %len_value = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %value.addr, align 4
  store i8* %0, i8** %s, align 4
  store i32 0, i32* %len_value, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call i32 @strlen(i8* %1)
  store i32 %call, i32* %len_name, align 4
  %2 = load i8*, i8** %s, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i8*, i8** %s, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv2, -125
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load i8*, i8** %s, align 4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %s, align 4
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp6, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %9, %lor.end ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %len_value, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %len_value, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %12 = load i32, i32* %len_name, align 4
  %13 = load i32, i32* %len_value, align 4
  %add = add nsw i32 %12, %13
  %add8 = add nsw i32 %add, 2
  %call9 = call i8* @zalloc(i32 %add8)
  store i8* %call9, i8** %str, align 4
  store i8* %call9, i8** %s, align 4
  %14 = load i8*, i8** %s, align 4
  %15 = load i8*, i8** %name.addr, align 4
  %call10 = call i8* @strcpy(i8* %14, i8* %15)
  %16 = load i32, i32* %len_name, align 4
  %17 = load i8*, i8** %s, align 4
  %add.ptr = getelementptr inbounds i8, i8* %17, i32 %16
  store i8* %add.ptr, i8** %s, align 4
  %18 = load i8*, i8** %s, align 4
  store i8 61, i8* %18, align 1
  %19 = load i8*, i8** %value.addr, align 4
  %tobool11 = icmp ne i8* %19, null
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %20 = load i8*, i8** %s, align 4
  %21 = load i8*, i8** %value.addr, align 4
  %22 = load i32, i32* %flags.addr, align 4
  call void @copyenvstr(i8* %20, i8* %21, i32 %22)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %23 = load i8*, i8** %s, align 4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr13, i8** %s, align 4
  store i8 0, i8* %incdec.ptr13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %24 = load i8*, i8** %str, align 4
  ret i8* %24
}

; Function Attrs: noinline nounwind
define i8* @getsparam(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  store i8* %s, i8** %s.addr, align 4
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 0)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool = icmp ne %struct.value* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.value*, %struct.value** %v, align 4
  %call1 = call i8* @getstrvalue(%struct.value* %0)
  store i8* %call1, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i8*, i8** %retval, align 4
  ret i8* %1
}

declare void @popheap() #1

; Function Attrs: noinline nounwind
define void @addenv(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  %newenv = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  store i8* null, i8** %newenv, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %2 = load i8*, i8** %value.addr, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  %4 = load i32, i32* %flags, align 8
  %call = call i8* @mkenvstr(i8* %1, i8* %2, i32 %4)
  store i8* %call, i8** %newenv, align 4
  %5 = load i8*, i8** %newenv, align 4
  %call2 = call i32 @zputenv(i8* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %newenv, align 4
  call void @zsfree(i8* %6)
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %env = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 5
  store i8* null, i8** %env, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.param*, %struct.param** %pm.addr, align 4
  %env3 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 5
  %9 = load i8*, i8** %env3, align 4
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load %struct.param*, %struct.param** %pm.addr, align 4
  %env6 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 5
  %11 = load i8*, i8** %env6, align 4
  call void @zsfree(i8* %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %12 = load i8*, i8** %newenv, align 4
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %env8 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 5
  store i8* %12, i8** %env8, align 4
  %14 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node9 = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 0
  %flags10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 2
  %15 = load i32, i32* %flags10, align 8
  %or = or i32 %15, 4096
  store i32 %or, i32* %flags10, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then
  ret void
}

declare i32 @sprintf(i8*, i8*, ...) #1

declare void @set_pwd_env() #1

declare i32 @uname(%struct.utsname*) #1

; Function Attrs: noinline nounwind
define %struct.param* @setaparam(i8* %s, i8** %aval) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %aval.addr = alloca i8**, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8** %aval, i8*** %aval.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8**, i8*** %aval.addr, align 4
  %call = call %struct.param* @assignaparam(i8* %0, i8** %1, i32 6)
  ret %struct.param* %call
}

; Function Attrs: noinline nounwind
define void @assigngetset(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 31
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb3
    i32 8, label %sw.bb3
    i32 1, label %sw.bb5
    i32 16, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @stdscalar_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %s, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu2 to %struct.gsu_integer**
  store %struct.gsu_integer* @stdinteger_gsu, %struct.gsu_integer** %i, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu4 = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu4 to %struct.gsu_float**
  store %struct.gsu_float* @stdfloat_gsu, %struct.gsu_float** %f, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu6 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu6 to %struct.gsu_array**
  store %struct.gsu_array* @stdarray_gsu, %struct.gsu_array** %a, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu8 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu8 to %struct.gsu_hash**
  store %struct.gsu_hash* @stdhash_gsu, %struct.gsu_hash** %h, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind
define %struct.param* @createparam(i8* %name, i32 %flags) #0 {
entry:
  %retval = alloca %struct.param*, align 4
  %name.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %oldpm = alloca %struct.param*, align 4
  %altpm = alloca %struct.param*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %cmp = icmp ne %struct.hashtable* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, -4097
  %or = or i32 %and, 536870912
  store i32 %or, i32* %flags.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %name.addr, align 4
  %cmp1 = icmp ne i8* %3, getelementptr inbounds ([0 x i8], [0 x i8]* @nulstring, i32 0, i32 0)
  br i1 %cmp1, label %if.then2, label %if.else83

if.then2:                                         ; preds = %if.end
  %4 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %cmp3 = icmp eq %struct.hashtable* %4, %5
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %6 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @gethashnode2(%struct.hashtable* %6, i8* %7)
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %8 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 9
  %9 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %11 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %9(%struct.hashtable* %10, i8* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hashnode* [ %call, %cond.true ], [ %call4, %cond.false ]
  %12 = bitcast %struct.hashnode* %cond to %struct.param*
  store %struct.param* %12, %struct.param** %oldpm, align 4
  %13 = load %struct.param*, %struct.param** %oldpm, align 4
  %tobool = icmp ne %struct.param* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %14 = load %struct.param*, %struct.param** %oldpm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 8
  %15 = load i32, i32* %level, align 8
  %16 = load i32, i32* @locallevel, align 4
  %cmp5 = icmp eq i32 %15, %16
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %17, 2097152
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 132), align 1
  %conv = sext i8 %18 to i32
  %tobool9 = icmp ne i32 %conv, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.end15

land.lhs.true10:                                  ; preds = %if.then8
  %19 = load %struct.param*, %struct.param** %oldpm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %20 = load i32, i32* %flags11, align 8
  %and12 = and i32 %20, 1024
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true10
  %21 = load i8*, i8** %name.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* %21)
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true10, %if.then8
  %22 = load %struct.param*, %struct.param** %oldpm, align 4
  %node16 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 0
  %flags17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node16, i32 0, i32 2
  %23 = load i32, i32* %flags17, align 8
  %and18 = and i32 %23, 16777216
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true20, label %if.end24

land.lhs.true20:                                  ; preds = %if.end15
  %24 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %conv21 = sext i8 %24 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  %25 = load i8*, i8** %name.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* %25)
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end24:                                         ; preds = %land.lhs.true20, %if.end15
  %26 = load %struct.param*, %struct.param** %oldpm, align 4
  %node25 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 0
  %flags26 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node25, i32 0, i32 2
  %27 = load i32, i32* %flags26, align 8
  %and27 = and i32 %27, 33554432
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %lor.lhs.false29, label %if.then42

lor.lhs.false29:                                  ; preds = %if.end24
  %28 = load %struct.param*, %struct.param** %oldpm, align 4
  %node30 = getelementptr inbounds %struct.param, %struct.param* %28, i32 0, i32 0
  %flags31 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node30, i32 0, i32 2
  %29 = load i32, i32* %flags31, align 8
  %and32 = and i32 %29, 4194304
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then42, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false29
  %30 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 132), align 1
  %conv35 = sext i8 %30 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  br i1 %tobool36, label %land.lhs.true37, label %if.end63

land.lhs.true37:                                  ; preds = %lor.lhs.false34
  %31 = load %struct.param*, %struct.param** %oldpm, align 4
  %node38 = getelementptr inbounds %struct.param, %struct.param* %31, i32 0, i32 0
  %flags39 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node38, i32 0, i32 2
  %32 = load i32, i32* %flags39, align 8
  %and40 = and i32 %32, 4096
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end63

if.then42:                                        ; preds = %land.lhs.true37, %lor.lhs.false29, %if.end24
  %33 = load %struct.param*, %struct.param** %oldpm, align 4
  %node43 = getelementptr inbounds %struct.param, %struct.param* %33, i32 0, i32 0
  %flags44 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node43, i32 0, i32 2
  %34 = load i32, i32* %flags44, align 8
  %and45 = and i32 %34, -33554433
  store i32 %and45, i32* %flags44, align 8
  %35 = load %struct.param*, %struct.param** %oldpm, align 4
  %node46 = getelementptr inbounds %struct.param, %struct.param* %35, i32 0, i32 0
  %flags47 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node46, i32 0, i32 2
  %36 = load i32, i32* %flags47, align 8
  %and48 = and i32 %36, 4194304
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %land.lhs.true50, label %if.end62

land.lhs.true50:                                  ; preds = %if.then42
  %37 = load %struct.param*, %struct.param** %oldpm, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %37, i32 0, i32 6
  %38 = load i8*, i8** %ename, align 8
  %tobool51 = icmp ne i8* %38, null
  br i1 %tobool51, label %if.then52, label %if.end62

if.then52:                                        ; preds = %land.lhs.true50
  %39 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode53 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %39, i32 0, i32 9
  %40 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode53, align 4
  %41 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %42 = load %struct.param*, %struct.param** %oldpm, align 4
  %ename54 = getelementptr inbounds %struct.param, %struct.param* %42, i32 0, i32 6
  %43 = load i8*, i8** %ename54, align 8
  %call55 = call %struct.hashnode* %40(%struct.hashtable* %41, i8* %43)
  %44 = bitcast %struct.hashnode* %call55 to %struct.param*
  store %struct.param* %44, %struct.param** %altpm, align 4
  %45 = load %struct.param*, %struct.param** %altpm, align 4
  %tobool56 = icmp ne %struct.param* %45, null
  br i1 %tobool56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.then52
  %46 = load %struct.param*, %struct.param** %altpm, align 4
  %node58 = getelementptr inbounds %struct.param, %struct.param* %46, i32 0, i32 0
  %flags59 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node58, i32 0, i32 2
  %47 = load i32, i32* %flags59, align 8
  %and60 = and i32 %47, -33554433
  store i32 %and60, i32* %flags59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.then52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.lhs.true50, %if.then42
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end63:                                         ; preds = %land.lhs.true37, %lor.lhs.false34
  %48 = load %struct.param*, %struct.param** %oldpm, align 4
  store %struct.param* %48, %struct.param** %pm, align 4
  %49 = load %struct.param*, %struct.param** %pm, align 4
  %width = getelementptr inbounds %struct.param, %struct.param* %49, i32 0, i32 4
  store i32 0, i32* %width, align 8
  %50 = load %struct.param*, %struct.param** %pm, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %50, i32 0, i32 3
  store i32 0, i32* %base, align 4
  %51 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %51, i32 0, i32 7
  %52 = load %struct.param*, %struct.param** %old, align 4
  store %struct.param* %52, %struct.param** %oldpm, align 4
  br label %if.end74

if.else:                                          ; preds = %lor.lhs.false, %cond.end
  %call64 = call i8* @zshcalloc(i32 56)
  %53 = bitcast i8* %call64 to %struct.param*
  store %struct.param* %53, %struct.param** %pm, align 4
  %54 = load %struct.param*, %struct.param** %oldpm, align 4
  %55 = load %struct.param*, %struct.param** %pm, align 4
  %old65 = getelementptr inbounds %struct.param, %struct.param* %55, i32 0, i32 7
  store %struct.param* %54, %struct.param** %old65, align 4
  %tobool66 = icmp ne %struct.param* %54, null
  br i1 %tobool66, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.else
  %56 = load %struct.param*, %struct.param** %oldpm, align 4
  %env = getelementptr inbounds %struct.param, %struct.param* %56, i32 0, i32 5
  %57 = load i8*, i8** %env, align 4
  %tobool68 = icmp ne i8* %57, null
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then67
  %58 = load %struct.param*, %struct.param** %oldpm, align 4
  call void @delenv(%struct.param* %58)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.then67
  %59 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %59, i32 0, i32 11
  %60 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %61 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %62 = load i8*, i8** %name.addr, align 4
  %call71 = call %struct.hashnode* %60(%struct.hashtable* %61, i8* %62)
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %if.else
  %63 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %63, i32 0, i32 8
  %64 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %65 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %66 = load i8*, i8** %name.addr, align 4
  %call73 = call i8* @ztrdup(i8* %66)
  %67 = load %struct.param*, %struct.param** %pm, align 4
  %68 = bitcast %struct.param* %67 to i8*
  call void %64(%struct.hashtable* %65, i8* %call73, i8* %68)
  br label %if.end74

if.end74:                                         ; preds = %if.end72, %if.end63
  %69 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 3), align 1
  %conv75 = sext i8 %69 to i32
  %tobool76 = icmp ne i32 %conv75, 0
  br i1 %tobool76, label %land.lhs.true77, label %if.end82

land.lhs.true77:                                  ; preds = %if.end74
  %70 = load i32, i32* %flags.addr, align 4
  %and78 = and i32 %70, 536870912
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.end82, label %if.then80

if.then80:                                        ; preds = %land.lhs.true77
  %71 = load i32, i32* %flags.addr, align 4
  %or81 = or i32 %71, 4096
  store i32 %or81, i32* %flags.addr, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %land.lhs.true77, %if.end74
  br label %if.end86

if.else83:                                        ; preds = %if.end
  %call84 = call i8* @hcalloc(i32 56)
  %72 = bitcast i8* %call84 to %struct.param*
  store %struct.param* %72, %struct.param** %pm, align 4
  %73 = load %struct.param*, %struct.param** %pm, align 4
  %node85 = getelementptr inbounds %struct.param, %struct.param* %73, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node85, i32 0, i32 1
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @nulstring, i32 0, i32 0), i8** %nam, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.end82
  %74 = load i32, i32* %flags.addr, align 4
  %and87 = and i32 %74, -2097153
  %75 = load %struct.param*, %struct.param** %pm, align 4
  %node88 = getelementptr inbounds %struct.param, %struct.param* %75, i32 0, i32 0
  %flags89 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node88, i32 0, i32 2
  store i32 %and87, i32* %flags89, align 8
  %76 = load %struct.param*, %struct.param** %pm, align 4
  %node90 = getelementptr inbounds %struct.param, %struct.param* %76, i32 0, i32 0
  %flags91 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node90, i32 0, i32 2
  %77 = load i32, i32* %flags91, align 8
  %and92 = and i32 %77, 4194304
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end86
  %78 = load %struct.param*, %struct.param** %pm, align 4
  call void @assigngetset(%struct.param* %78)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end86
  %79 = load %struct.param*, %struct.param** %pm, align 4
  store %struct.param* %79, %struct.param** %retval, align 4
  br label %return

return:                                           ; preds = %if.end95, %if.end62, %if.then23, %if.then14
  %80 = load %struct.param*, %struct.param** %retval, align 4
  ret %struct.param* %80
}

declare void @zerr(i8*, ...) #1

declare i8* @zshcalloc(i32) #1

; Function Attrs: noinline nounwind
define void @delenv(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %call = call i32 @unsetenv(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %env = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 5
  %3 = load i8*, i8** %env, align 4
  call void @zsfree(i8* %3)
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %env1 = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 5
  store i8* null, i8** %env1, align 4
  ret void
}

declare i8* @hcalloc(i32) #1

; Function Attrs: noinline nounwind
define %struct.param* @createspecialhash(i8* %name, %struct.hashnode* (%struct.hashtable*, i8*)* %get, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %scan, i32 %flags) #0 {
entry:
  %retval = alloca %struct.param*, align 4
  %name.addr = alloca i8*, align 4
  %get.addr = alloca %struct.hashnode* (%struct.hashtable*, i8*)*, align 4
  %scan.addr = alloca void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %ht = alloca %struct.hashtable*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.hashnode* (%struct.hashtable*, i8*)* %get, %struct.hashnode* (%struct.hashtable*, i8*)** %get.addr, align 4
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %scan, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scan.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %1 = load i32, i32* %flags.addr, align 4
  %or = or i32 4194320, %1
  %call = call %struct.param* @createparam(i8* %0, i32 %or)
  store %struct.param* %call, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 7
  %3 = load %struct.param*, %struct.param** %old, align 4
  %tobool1 = icmp ne %struct.param* %3, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @locallevel, align 4
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 8
  store i32 %4, i32* %level, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, 1024
  %tobool4 = icmp ne i32 %and, 0
  %cond = select i1 %tobool4, %struct.gsu_hash* @stdhash_gsu, %struct.gsu_hash* @nullsethash_gsu
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  store %struct.gsu_hash* %cond, %struct.gsu_hash** %h, align 8
  %8 = load i8*, i8** %name.addr, align 4
  %call5 = call %struct.hashtable* @newhashtable(i32 0, i8* %8, void (%struct.hashtable*)* null)
  store %struct.hashtable* %call5, %struct.hashtable** %ht, align 4
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 1
  %hash = bitcast %union.anon* %u to %struct.hashtable**
  store %struct.hashtable* %call5, %struct.hashtable** %hash, align 8
  %10 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %hash6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash6, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 5
  store void (%struct.hashtable*)* bitcast (void ()* @shempty to void (%struct.hashtable*)*), void (%struct.hashtable*)** %emptytable, align 4
  %12 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %13 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %13, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* bitcast (void ()* @shempty to void (%struct.hashtable*, i8*, i8*)*), void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %14 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %get.addr, align 4
  %15 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* %14, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* %14, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %17 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* bitcast (void ()* @shempty to %struct.hashnode* (%struct.hashtable*, i8*)*), %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %18 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4
  %19 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4
  %20 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 14
  store void (%struct.hashnode*)* bitcast (void ()* @shempty to void (%struct.hashnode*)*), void (%struct.hashnode*)** %freenode, align 4
  %21 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode, align 4
  %22 = load void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scan.addr, align 4
  %23 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %scantab = getelementptr inbounds %struct.hashtable, %struct.hashtable* %23, i32 0, i32 16
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %22, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scantab, align 4
  %24 = load %struct.param*, %struct.param** %pm, align 4
  store %struct.param* %24, %struct.param** %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %25 = load %struct.param*, %struct.param** %retval, align 4
  ret %struct.param* %25
}

; Function Attrs: noinline nounwind
define internal void @shempty() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind
define void @copyparam(%struct.param* %tpm, %struct.param* %pm, i32 %fakecopy) #0 {
entry:
  %tpm.addr = alloca %struct.param*, align 4
  %pm.addr = alloca %struct.param*, align 4
  %fakecopy.addr = alloca i32, align 4
  store %struct.param* %tpm, %struct.param** %tpm.addr, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %fakecopy, i32* %fakecopy.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %2 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  store i32 %1, i32* %flags2, align 8
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 3
  %4 = load i32, i32* %base, align 4
  %5 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %base3 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 3
  store i32 %4, i32* %base3, align 4
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %width = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 4
  %7 = load i32, i32* %width, align 8
  %8 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %width4 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 4
  store i32 %7, i32* %width4, align 8
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 8
  %10 = load i32, i32* %level, align 8
  %11 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %level5 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 8
  store i32 %10, i32* %level5, align 8
  %12 = load i32, i32* %fakecopy.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %node6 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %14 = load i32, i32* %flags7, align 8
  %and = and i32 %14, -4194305
  store i32 %and, i32* %flags7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %16 = load i32, i32* %flags9, align 8
  %and10 = and i32 %16, 31
  switch i32 %and10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb13
    i32 4, label %sw.bb18
    i32 8, label %sw.bb18
    i32 1, label %sw.bb23
    i32 16, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %18 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %getfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %18, i32 0, i32 0
  %getfn11 = bitcast {}** %getfn to i8* (%struct.param*)**
  %19 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn11, align 4
  %20 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call = call i8* %19(%struct.param* %20)
  %call12 = call i8* @ztrdup(i8* %call)
  %21 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  store i8* %call12, i8** %str, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %22 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu14 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu14 to %struct.gsu_integer**
  %23 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %getfn15 = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %23, i32 0, i32 0
  %24 = load i32 (%struct.param*)*, i32 (%struct.param*)** %getfn15, align 4
  %25 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call16 = call i32 %24(%struct.param* %25)
  %26 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %u17 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 1
  %val = bitcast %union.anon* %u17 to i32*
  store i32 %call16, i32* %val, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end, %if.end
  %27 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu19 = getelementptr inbounds %struct.param, %struct.param* %27, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu19 to %struct.gsu_float**
  %28 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %getfn20 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %28, i32 0, i32 0
  %29 = load double (%struct.param*)*, double (%struct.param*)** %getfn20, align 4
  %30 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call21 = call double %29(%struct.param* %30)
  %31 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %u22 = getelementptr inbounds %struct.param, %struct.param* %31, i32 0, i32 1
  %dval = bitcast %union.anon* %u22 to double*
  store double %call21, double* %dval, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %32 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu24 = getelementptr inbounds %struct.param, %struct.param* %32, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu24 to %struct.gsu_array**
  %33 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %getfn25 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %33, i32 0, i32 0
  %34 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn25, align 4
  %35 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call26 = call i8** %34(%struct.param* %35)
  %call27 = call i8** @zarrdup(i8** %call26)
  %36 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %u28 = getelementptr inbounds %struct.param, %struct.param* %36, i32 0, i32 1
  %arr = bitcast %union.anon* %u28 to i8***
  store i8** %call27, i8*** %arr, align 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %37 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu30 = getelementptr inbounds %struct.param, %struct.param* %37, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu30 to %struct.gsu_hash**
  %38 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn31 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %38, i32 0, i32 0
  %39 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn31, align 4
  %40 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call32 = call %struct.hashtable* %39(%struct.param* %40)
  %41 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node33 = getelementptr inbounds %struct.param, %struct.param* %41, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node33, i32 0, i32 1
  %42 = load i8*, i8** %nam, align 4
  %call34 = call %struct.hashtable* @copyparamtable(%struct.hashtable* %call32, i8* %42)
  %43 = load %struct.param*, %struct.param** %tpm.addr, align 4
  %u35 = getelementptr inbounds %struct.param, %struct.param* %43, i32 0, i32 1
  %hash = bitcast %union.anon* %u35 to %struct.hashtable**
  store %struct.hashtable* %call34, %struct.hashtable** %hash, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb29, %sw.bb23, %sw.bb18, %sw.bb13, %sw.bb
  %44 = load i32, i32* %fakecopy.addr, align 4
  %tobool36 = icmp ne i32 %44, 0
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %sw.epilog
  %45 = load %struct.param*, %struct.param** %tpm.addr, align 4
  call void @assigngetset(%struct.param* %45)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %sw.epilog
  ret void
}

declare i8** @zarrdup(i8**) #1

declare i8* @itype_end(i8*, i32, i32) #1

declare i8* @parse_subscript(i8*, i32, i32) #1

declare void @untokenize(i8*) #1

; Function Attrs: noinline nounwind
define i32 @getindex(i8** %pptr, %struct.value* %v, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pptr.addr = alloca i8**, align 4
  %v.addr = alloca %struct.value*, align 4
  %flags.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %inv = alloca i32, align 4
  %s = alloca i8*, align 4
  %tbrack = alloca i8*, align 4
  %we = alloca i32, align 4
  %dummy = alloca i32, align 4
  %startprevlen = alloca i32, align 4
  %startnextlen = alloca i32, align 4
  %t = alloca i8*, align 4
  %p = alloca i8*, align 4
  %nstart = alloca i32, align 4
  %target = alloca i8*, align 4
  %startoff = alloca i32, align 4
  %com = alloca i32, align 4
  store i8** %pptr, i8*** %pptr.addr, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %inv, align 4
  %0 = load i8**, i8*** %pptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %s, align 4
  %2 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  store i8 91, i8* %2, align 1
  %3 = load i8*, i8** %s, align 4
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 256
  %call = call i8* @parse_subscript(i8* %3, i32 %and, i32 93)
  store i8* %call, i8** %s, align 4
  %5 = load i8**, i8*** %pptr.addr, align 4
  %6 = load i8*, i8** %5, align 4
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %add.ptr, i8** %tbrack, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i8*, i8** %tbrack, align 4
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i8*, i8** %tbrack, align 4
  %10 = load i8*, i8** %s, align 4
  %cmp = icmp ne i8* %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %12 = load i8*, i8** %tbrack, align 4
  %13 = load i8, i8* %12, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %14 = load i16, i16* %arrayidx, align 2
  %conv2 = sext i16 %14 to i32
  %and3 = and i32 %conv2, 16384
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load i8*, i8** %tbrack, align 4
  %incdec.ptr5 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr5, i8** %tbrack, align 4
  %16 = load i8, i8* %incdec.ptr5, align 1
  %tobool6 = icmp ne i8 %16, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %17 = load i8*, i8** %tbrack, align 4
  %18 = load i8, i8* %17, align 1
  %idxprom7 = zext i8 %18 to i32
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom7
  %19 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %19 to i32
  %and10 = and i32 %conv9, 16
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %20 = load i8*, i8** %tbrack, align 4
  %21 = load i8, i8* %20, align 1
  %conv13 = sext i8 %21 to i32
  %sub = sub nsw i32 %conv13, -124
  %arrayidx14 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub
  %22 = load i8, i8* %arrayidx14, align 1
  %23 = load i8*, i8** %tbrack, align 4
  store i8 %22, i8* %23, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %24 = load i8*, i8** %tbrack, align 4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr16, i8** %tbrack, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %land.end
  %25 = load i8*, i8** %tbrack, align 4
  %26 = load i8, i8* %25, align 1
  %tobool17 = icmp ne i8 %26, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.end
  %27 = load i8*, i8** %tbrack, align 4
  store i8 -110, i8* %27, align 1
  br label %if.end19

if.else:                                          ; preds = %for.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  %28 = load i8*, i8** %tbrack, align 4
  %29 = load i8**, i8*** %pptr.addr, align 4
  store i8* %28, i8** %29, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then18
  %30 = load i8**, i8*** %pptr.addr, align 4
  %31 = load i8*, i8** %30, align 4
  %add.ptr20 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %add.ptr20, i8** %s, align 4
  %32 = load i8*, i8** %s, align 4
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i32 0
  %33 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %33 to i32
  %cmp23 = icmp eq i32 %conv22, 42
  br i1 %cmp23, label %land.lhs.true29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %34 = load i8*, i8** %s, align 4
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i32 0
  %35 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %35 to i32
  %cmp27 = icmp eq i32 %conv26, 64
  br i1 %cmp27, label %land.lhs.true29, label %if.else64

land.lhs.true29:                                  ; preds = %lor.lhs.false, %if.end19
  %36 = load i8*, i8** %s, align 4
  %add.ptr30 = getelementptr inbounds i8, i8* %36, i32 1
  %37 = load i8*, i8** %tbrack, align 4
  %cmp31 = icmp eq i8* %add.ptr30, %37
  br i1 %cmp31, label %if.then33, label %if.else64

if.then33:                                        ; preds = %land.lhs.true29
  %38 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %38, i32 0, i32 0
  %39 = load i32, i32* %isarr, align 4
  %tobool34 = icmp ne i32 %39, 0
  br i1 %tobool34, label %land.lhs.true53, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.then33
  %40 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool36 = icmp ne %struct.value* %40, null
  br i1 %tobool36, label %land.lhs.true37, label %if.end60

land.lhs.true37:                                  ; preds = %lor.lhs.false35
  %41 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %41, i32 0, i32 1
  %42 = load %struct.param*, %struct.param** %pm, align 4
  %tobool38 = icmp ne %struct.param* %42, null
  br i1 %tobool38, label %lor.lhs.false39, label %land.lhs.true53

lor.lhs.false39:                                  ; preds = %land.lhs.true37
  %43 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm40 = getelementptr inbounds %struct.value, %struct.value* %43, i32 0, i32 1
  %44 = load %struct.param*, %struct.param** %pm40, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %44, i32 0, i32 0
  %flags41 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %45 = load i32, i32* %flags41, align 8
  %and42 = and i32 %45, 33554432
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true53, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %46 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm45 = getelementptr inbounds %struct.value, %struct.value* %46, i32 0, i32 1
  %47 = load %struct.param*, %struct.param** %pm45, align 4
  %node46 = getelementptr inbounds %struct.param, %struct.param* %47, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node46, i32 0, i32 1
  %48 = load i8*, i8** %nam, align 4
  %tobool47 = icmp ne i8* %48, null
  br i1 %tobool47, label %lor.lhs.false48, label %land.lhs.true53

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %49 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm49 = getelementptr inbounds %struct.value, %struct.value* %49, i32 0, i32 1
  %50 = load %struct.param*, %struct.param** %pm49, align 4
  %node50 = getelementptr inbounds %struct.param, %struct.param* %50, i32 0, i32 0
  %nam51 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node50, i32 0, i32 1
  %51 = load i8*, i8** %nam51, align 4
  %52 = load i8, i8* %51, align 1
  %tobool52 = icmp ne i8 %52, 0
  br i1 %tobool52, label %if.end60, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %lor.lhs.false48, %lor.lhs.false44, %lor.lhs.false39, %land.lhs.true37, %if.then33
  %53 = load i8*, i8** %s, align 4
  %arrayidx54 = getelementptr inbounds i8, i8* %53, i32 0
  %54 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %54 to i32
  %cmp56 = icmp eq i32 %conv55, 64
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %land.lhs.true53
  %55 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr59 = getelementptr inbounds %struct.value, %struct.value* %55, i32 0, i32 0
  %56 = load i32, i32* %isarr59, align 4
  %or = or i32 %56, -32768
  store i32 %or, i32* %isarr59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %land.lhs.true53, %lor.lhs.false48, %lor.lhs.false35
  %57 = load %struct.value*, %struct.value** %v.addr, align 4
  %start61 = getelementptr inbounds %struct.value, %struct.value* %57, i32 0, i32 3
  store i32 0, i32* %start61, align 4
  %58 = load %struct.value*, %struct.value** %v.addr, align 4
  %end62 = getelementptr inbounds %struct.value, %struct.value* %58, i32 0, i32 4
  store i32 -1, i32* %end62, align 4
  %59 = load i8*, i8** %s, align 4
  %add.ptr63 = getelementptr inbounds i8, i8* %59, i32 2
  store i8* %add.ptr63, i8** %s, align 4
  br label %if.end207

if.else64:                                        ; preds = %land.lhs.true29, %lor.lhs.false
  store i32 0, i32* %we, align 4
  %60 = load %struct.value*, %struct.value** %v.addr, align 4
  %61 = load i32, i32* %flags.addr, align 4
  %call65 = call i32 @getarg(i8** %s, i32* %inv, %struct.value* %60, i32 0, i32* %we, i32* %startprevlen, i32* %startnextlen, i32 %61)
  store i32 %call65, i32* %start, align 4
  %62 = load i32, i32* %inv, align 4
  %tobool66 = icmp ne i32 %62, 0
  br i1 %tobool66, label %if.then67, label %if.else150

if.then67:                                        ; preds = %if.else64
  %63 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr68 = getelementptr inbounds %struct.value, %struct.value* %63, i32 0, i32 0
  %64 = load i32, i32* %isarr68, align 4
  %tobool69 = icmp ne i32 %64, 0
  br i1 %tobool69, label %if.end114, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.then67
  %65 = load i32, i32* %start, align 4
  %cmp71 = icmp ne i32 %65, 0
  br i1 %cmp71, label %if.then73, label %if.end114

if.then73:                                        ; preds = %land.lhs.true70
  %66 = load %struct.value*, %struct.value** %v.addr, align 4
  %call74 = call i8* @getstrvalue(%struct.value* %66)
  store i8* %call74, i8** %t, align 4
  %67 = load i32, i32* %start, align 4
  %cmp75 = icmp sgt i32 %67, 0
  br i1 %cmp75, label %if.then77, label %if.else95

if.then77:                                        ; preds = %if.then73
  store i32 0, i32* %nstart, align 4
  %68 = load i8*, i8** %t, align 4
  %69 = load i32, i32* %start, align 4
  %add.ptr78 = getelementptr inbounds i8, i8* %68, i32 %69
  %70 = load i32, i32* %startprevlen, align 4
  %idx.neg = sub i32 0, %70
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr78, i32 %idx.neg
  store i8* %add.ptr79, i8** %target, align 4
  %71 = load i8*, i8** %t, align 4
  store i8* %71, i8** %p, align 4
  call void @mb_charinit()
  br label %while.cond

while.cond:                                       ; preds = %if.end93, %if.then77
  %72 = load i8*, i8** %p, align 4
  %73 = load i8, i8* %72, align 1
  %tobool80 = icmp ne i8 %73, 0
  br i1 %tobool80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %74 = load i8*, i8** %p, align 4
  %call81 = call i32 @mb_metacharlenconv(i8* %74, i32* null)
  %75 = load i8*, i8** %p, align 4
  %add.ptr82 = getelementptr inbounds i8, i8* %75, i32 %call81
  store i8* %add.ptr82, i8** %p, align 4
  %76 = load i8*, i8** %p, align 4
  %77 = load i8*, i8** %target, align 4
  %cmp83 = icmp ult i8* %76, %77
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %while.body
  %78 = load i32, i32* %nstart, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %nstart, align 4
  br label %if.end93

if.else86:                                        ; preds = %while.body
  %79 = load i8*, i8** %p, align 4
  %80 = load i8*, i8** %target, align 4
  %cmp87 = icmp eq i8* %79, %80
  br i1 %cmp87, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.else86
  %81 = load i32, i32* %nstart, align 4
  %inc90 = add nsw i32 %81, 1
  store i32 %inc90, i32* %nstart, align 4
  br label %if.end92

if.else91:                                        ; preds = %if.else86
  %82 = load i8*, i8** %target, align 4
  store i8* %82, i8** %p, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then89
  br label %while.end

if.end93:                                         ; preds = %if.then85
  br label %while.cond

while.end:                                        ; preds = %if.end92, %while.cond
  %83 = load i32, i32* %nstart, align 4
  %84 = load i8*, i8** %target, align 4
  %85 = load i8*, i8** %p, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %84 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %85 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i32 %83, %sub.ptr.sub
  %add94 = add nsw i32 %add, 1
  store i32 %add94, i32* %start, align 4
  br label %if.end113

if.else95:                                        ; preds = %if.then73
  %86 = load i32, i32* %start, align 4
  %87 = load i8*, i8** %t, align 4
  %call96 = call i32 @strlen(i8* %87)
  %add97 = add i32 %86, %call96
  store i32 %add97, i32* %startoff, align 4
  %88 = load i32, i32* %startoff, align 4
  %cmp98 = icmp slt i32 %88, 0
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.else95
  %89 = load i32, i32* %startoff, align 4
  store i32 %89, i32* %start, align 4
  br label %if.end112

if.else101:                                       ; preds = %if.else95
  call void @mb_charinit()
  %90 = load i8*, i8** %t, align 4
  store i8* %90, i8** %p, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.body106, %if.else101
  %91 = load i8*, i8** %p, align 4
  %92 = load i8*, i8** %t, align 4
  %93 = load i32, i32* %startoff, align 4
  %add.ptr103 = getelementptr inbounds i8, i8* %92, i32 %93
  %cmp104 = icmp ult i8* %91, %add.ptr103
  br i1 %cmp104, label %for.body106, label %for.end109

for.body106:                                      ; preds = %for.cond102
  %94 = load i8*, i8** %p, align 4
  %call107 = call i32 @mb_metacharlenconv(i8* %94, i32* null)
  %95 = load i8*, i8** %p, align 4
  %add.ptr108 = getelementptr inbounds i8, i8* %95, i32 %call107
  store i8* %add.ptr108, i8** %p, align 4
  br label %for.cond102

for.end109:                                       ; preds = %for.cond102
  %96 = load i8*, i8** %p, align 4
  %call110 = call i32 @mb_metastrlenend(i8* %96, i32 0, i8* null)
  %sub111 = sub nsw i32 0, %call110
  store i32 %sub111, i32* %start, align 4
  br label %if.end112

if.end112:                                        ; preds = %for.end109, %if.then100
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %while.end
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %land.lhs.true70, %if.then67
  %97 = load i32, i32* %start, align 4
  %cmp115 = icmp sgt i32 %97, 0
  br i1 %cmp115, label %land.lhs.true117, label %if.end127

land.lhs.true117:                                 ; preds = %if.end114
  %98 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %conv118 = sext i8 %98 to i32
  %tobool119 = icmp ne i32 %conv118, 0
  br i1 %tobool119, label %if.then126, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %land.lhs.true117
  %99 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm121 = getelementptr inbounds %struct.value, %struct.value* %99, i32 0, i32 1
  %100 = load %struct.param*, %struct.param** %pm121, align 4
  %node122 = getelementptr inbounds %struct.param, %struct.param* %100, i32 0, i32 0
  %flags123 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node122, i32 0, i32 2
  %101 = load i32, i32* %flags123, align 8
  %and124 = and i32 %101, 16
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %lor.lhs.false120, %land.lhs.true117
  %102 = load i32, i32* %start, align 4
  %dec = add nsw i32 %102, -1
  store i32 %dec, i32* %start, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %lor.lhs.false120, %if.end114
  %103 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr128 = getelementptr inbounds %struct.value, %struct.value* %103, i32 0, i32 0
  %104 = load i32, i32* %isarr128, align 4
  %cmp129 = icmp ne i32 %104, 4
  br i1 %cmp129, label %if.then131, label %if.end138

if.then131:                                       ; preds = %if.end127
  %105 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags132 = getelementptr inbounds %struct.value, %struct.value* %105, i32 0, i32 2
  %106 = load i32, i32* %flags132, align 4
  %or133 = or i32 %106, 1
  store i32 %or133, i32* %flags132, align 4
  %107 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr134 = getelementptr inbounds %struct.value, %struct.value* %107, i32 0, i32 0
  store i32 0, i32* %isarr134, align 4
  %108 = load i32, i32* %start, align 4
  %109 = load %struct.value*, %struct.value** %v.addr, align 4
  %start135 = getelementptr inbounds %struct.value, %struct.value* %109, i32 0, i32 3
  store i32 %108, i32* %start135, align 4
  %110 = load i32, i32* %start, align 4
  %add136 = add nsw i32 %110, 1
  %111 = load %struct.value*, %struct.value** %v.addr, align 4
  %end137 = getelementptr inbounds %struct.value, %struct.value* %111, i32 0, i32 4
  store i32 %add136, i32* %end137, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then131, %if.end127
  %112 = load i8*, i8** %s, align 4
  %113 = load i8, i8* %112, align 1
  %conv139 = sext i8 %113 to i32
  %cmp140 = icmp eq i32 %conv139, 44
  br i1 %cmp140, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.end138
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  %114 = load i8*, i8** %tbrack, align 4
  store i8 93, i8* %114, align 1
  %115 = load i8*, i8** %tbrack, align 4
  %add.ptr143 = getelementptr inbounds i8, i8* %115, i32 1
  %116 = load i8**, i8*** %pptr.addr, align 4
  store i8* %add.ptr143, i8** %116, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.end138
  %117 = load i8*, i8** %s, align 4
  %118 = load i8*, i8** %tbrack, align 4
  %cmp145 = icmp eq i8* %117, %118
  br i1 %cmp145, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.end144
  %119 = load i8*, i8** %s, align 4
  %incdec.ptr148 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr148, i8** %s, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.end144
  br label %if.end206

if.else150:                                       ; preds = %if.else64
  %120 = load i8*, i8** %s, align 4
  %121 = load i8, i8* %120, align 1
  %conv151 = sext i8 %121 to i32
  %cmp152 = icmp eq i32 %conv151, 44
  %conv153 = zext i1 %cmp152 to i32
  store i32 %conv153, i32* %com, align 4
  br i1 %cmp152, label %if.then154, label %if.else157

if.then154:                                       ; preds = %if.else150
  %122 = load i8*, i8** %s, align 4
  %incdec.ptr155 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr155, i8** %s, align 4
  %123 = load %struct.value*, %struct.value** %v.addr, align 4
  %124 = load i32, i32* %flags.addr, align 4
  %call156 = call i32 @getarg(i8** %s, i32* %inv, %struct.value* %123, i32 1, i32* %dummy, i32* null, i32* null, i32 %124)
  store i32 %call156, i32* %end, align 4
  br label %if.end159

if.else157:                                       ; preds = %if.else150
  %125 = load i32, i32* %we, align 4
  %tobool158 = icmp ne i32 %125, 0
  br i1 %tobool158, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else157
  %126 = load i32, i32* %we, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else157
  %127 = load i32, i32* %start, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %126, %cond.true ], [ %127, %cond.false ]
  store i32 %cond, i32* %end, align 4
  br label %if.end159

if.end159:                                        ; preds = %cond.end, %if.then154
  %128 = load i32, i32* %start, align 4
  %129 = load i32, i32* %end, align 4
  %cmp160 = icmp ne i32 %128, %129
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.end159
  store i32 1, i32* %com, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %if.end159
  %130 = load i32, i32* %start, align 4
  %cmp164 = icmp sgt i32 %130, 0
  br i1 %cmp164, label %if.then166, label %if.else168

if.then166:                                       ; preds = %if.end163
  %131 = load i32, i32* %startprevlen, align 4
  %132 = load i32, i32* %start, align 4
  %sub167 = sub nsw i32 %132, %131
  store i32 %sub167, i32* %start, align 4
  br label %if.end182

if.else168:                                       ; preds = %if.end163
  %133 = load i32, i32* %start, align 4
  %cmp169 = icmp eq i32 %133, 0
  br i1 %cmp169, label %land.lhs.true171, label %if.end181

land.lhs.true171:                                 ; preds = %if.else168
  %134 = load i32, i32* %end, align 4
  %cmp172 = icmp eq i32 %134, 0
  br i1 %cmp172, label %if.then174, label %if.end181

if.then174:                                       ; preds = %land.lhs.true171
  %135 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 101), align 1
  %tobool175 = icmp ne i8 %135, 0
  br i1 %tobool175, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.then174
  %136 = load i32, i32* %startnextlen, align 4
  store i32 %136, i32* %end, align 4
  br label %if.end180

if.else177:                                       ; preds = %if.then174
  %137 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags178 = getelementptr inbounds %struct.value, %struct.value* %137, i32 0, i32 2
  %138 = load i32, i32* %flags178, align 4
  %or179 = or i32 %138, 2
  store i32 %or179, i32* %flags178, align 4
  store i32 -1, i32* %start, align 4
  store i32 1, i32* %com, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.else177, %if.then176
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %land.lhs.true171, %if.else168
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.then166
  %139 = load i8*, i8** %s, align 4
  %140 = load i8*, i8** %tbrack, align 4
  %cmp183 = icmp eq i8* %139, %140
  br i1 %cmp183, label %if.then185, label %if.else204

if.then185:                                       ; preds = %if.end182
  %141 = load i8*, i8** %s, align 4
  %incdec.ptr186 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr186, i8** %s, align 4
  %142 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr187 = getelementptr inbounds %struct.value, %struct.value* %142, i32 0, i32 0
  %143 = load i32, i32* %isarr187, align 4
  %tobool188 = icmp ne i32 %143, 0
  br i1 %tobool188, label %land.lhs.true189, label %if.end201

land.lhs.true189:                                 ; preds = %if.then185
  %144 = load i32, i32* %com, align 4
  %tobool190 = icmp ne i32 %144, 0
  br i1 %tobool190, label %if.end201, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %land.lhs.true189
  %145 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr192 = getelementptr inbounds %struct.value, %struct.value* %145, i32 0, i32 0
  %146 = load i32, i32* %isarr192, align 4
  %and193 = and i32 %146, 32
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %lor.lhs.false195, label %if.then199

lor.lhs.false195:                                 ; preds = %land.lhs.true191
  %147 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr196 = getelementptr inbounds %struct.value, %struct.value* %147, i32 0, i32 0
  %148 = load i32, i32* %isarr196, align 4
  %and197 = and i32 %148, 152
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %if.end201, label %if.then199

if.then199:                                       ; preds = %lor.lhs.false195, %land.lhs.true191
  %149 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr200 = getelementptr inbounds %struct.value, %struct.value* %149, i32 0, i32 0
  store i32 0, i32* %isarr200, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %lor.lhs.false195, %land.lhs.true189, %if.then185
  %150 = load i32, i32* %start, align 4
  %151 = load %struct.value*, %struct.value** %v.addr, align 4
  %start202 = getelementptr inbounds %struct.value, %struct.value* %151, i32 0, i32 3
  store i32 %150, i32* %start202, align 4
  %152 = load i32, i32* %end, align 4
  %153 = load %struct.value*, %struct.value** %v.addr, align 4
  %end203 = getelementptr inbounds %struct.value, %struct.value* %153, i32 0, i32 4
  store i32 %152, i32* %end203, align 4
  br label %if.end205

if.else204:                                       ; preds = %if.end182
  %154 = load i8**, i8*** %pptr.addr, align 4
  %155 = load i8*, i8** %154, align 4
  store i8* %155, i8** %s, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.else204, %if.end201
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end149
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end60
  %156 = load i8*, i8** %tbrack, align 4
  store i8 93, i8* %156, align 1
  %157 = load i8*, i8** %s, align 4
  %158 = load i8**, i8*** %pptr.addr, align 4
  store i8* %157, i8** %158, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end207, %if.then142, %if.else
  %159 = load i32, i32* %retval, align 4
  ret i32 %159
}

; Function Attrs: noinline nounwind
define internal i32 @getarg(i8** %str, i32* %inv, %struct.value* %v, i32 %a2, i32* %w, i32* %prevcharlen, i32* %nextcharlen, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8**, align 4
  %inv.addr = alloca i32*, align 4
  %v.addr = alloca %struct.value*, align 4
  %a2.addr = alloca i32, align 4
  %w.addr = alloca i32*, align 4
  %prevcharlen.addr = alloca i32*, align 4
  %nextcharlen.addr = alloca i32*, align 4
  %flags.addr = alloca i32, align 4
  %hasbeg = alloca i32, align 4
  %word = alloca i32, align 4
  %rev = alloca i32, align 4
  %ind = alloca i32, align 4
  %down = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %ishash = alloca i32, align 4
  %keymatch = alloca i32, align 4
  %needtok = alloca i32, align 4
  %arglen = alloca i32, align 4
  %len = alloca i32, align 4
  %inpar = alloca i32, align 4
  %s = alloca i8*, align 4
  %sep = alloca i8*, align 4
  %t = alloca i8*, align 4
  %sav = alloca i8, align 1
  %d = alloca i8*, align 4
  %ta = alloca i8**, align 4
  %p = alloca i8**, align 4
  %tt = alloca i8*, align 4
  %c = alloca i8, align 1
  %num = alloca i32, align 4
  %beg = alloca i32, align 4
  %r = alloca i32, align 4
  %quote_arg = alloca i32, align 4
  %pprog = alloca %struct.patprog*, align 4
  %escapes = alloca i32, align 4
  %waste = alloca i32, align 4
  %ht = alloca %struct.hashtable*, align 4
  %tht = alloca %struct.hashtable*, align 4
  %lastcharlen = alloca i32, align 4
  %nchars = alloca i32, align 4
  %nchars432 = alloca i32, align 4
  %slen = alloca i32, align 4
  %de = alloca i8*, align 4
  %nmatches = alloca i32, align 4
  %lastpos = alloca i8*, align 4
  %lastcharlen905 = alloca i32, align 4
  %nmatches908 = alloca i32, align 4
  %lastpos909 = alloca i8*, align 4
  store i8** %str, i8*** %str.addr, align 4
  store i32* %inv, i32** %inv.addr, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  store i32 %a2, i32* %a2.addr, align 4
  store i32* %w, i32** %w.addr, align 4
  store i32* %prevcharlen, i32** %prevcharlen.addr, align 4
  store i32* %nextcharlen, i32** %nextcharlen.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %hasbeg, align 4
  store i32 0, i32* %word, align 4
  store i32 0, i32* %rev, align 4
  store i32 0, i32* %ind, align 4
  store i32 0, i32* %down, align 4
  store i32 0, i32* %keymatch, align 4
  store i32 0, i32* %needtok, align 4
  store i32 0, i32* %inpar, align 4
  %0 = load i8**, i8*** %str.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %s, align 4
  store i8* null, i8** %sep, align 4
  store i32 1, i32* %num, align 4
  store i32 0, i32* %beg, align 4
  store i32 0, i32* %r, align 4
  store i32 0, i32* %quote_arg, align 4
  store %struct.patprog* null, %struct.patprog** %pprog, align 4
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 1
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %tobool1 = icmp ne %struct.param* %4, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm2 = getelementptr inbounds %struct.value, %struct.value* %5, i32 0, i32 1
  %6 = load %struct.param*, %struct.param** %pm2, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %7 = load i32, i32* %flags3, align 8
  %and = and i32 %7, 31
  %cmp = icmp eq i32 %and, 16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %9 = phi i1 [ true, %entry ], [ %8, %land.end ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, i32* %ishash, align 4
  %10 = load i32*, i32** %prevcharlen.addr, align 4
  %tobool4 = icmp ne i32* %10, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %11 = load i32*, i32** %prevcharlen.addr, align 4
  store i32 1, i32* %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %12 = load i32*, i32** %nextcharlen.addr, align 4
  %tobool5 = icmp ne i32* %12, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %13 = load i32*, i32** %nextcharlen.addr, align 4
  store i32 1, i32* %13, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %14 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm8 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 1
  %15 = load %struct.param*, %struct.param** %pm8, align 4
  %tobool9 = icmp ne %struct.param* %15, null
  br i1 %tobool9, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %if.end7
  %16 = load i8*, i8** %s, align 4
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv, 40
  br i1 %cmp10, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load i8*, i8** %s, align 4
  %19 = load i8, i8* %18, align 1
  %conv12 = sext i8 %19 to i32
  %cmp13 = icmp eq i32 %conv12, -120
  br i1 %cmp13, label %if.then15, label %if.end81

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %escapes, align 4
  %20 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %21 = load i8*, i8** %s, align 4
  %22 = load i8, i8* %21, align 1
  %conv16 = sext i8 %22 to i32
  %cmp17 = icmp ne i32 %conv16, 41
  br i1 %cmp17, label %land.lhs.true19, label %land.end26

land.lhs.true19:                                  ; preds = %for.cond
  %23 = load i8*, i8** %s, align 4
  %24 = load i8, i8* %23, align 1
  %conv20 = sext i8 %24 to i32
  %cmp21 = icmp ne i32 %conv20, -118
  br i1 %cmp21, label %land.rhs23, label %land.end26

land.rhs23:                                       ; preds = %land.lhs.true19
  %25 = load i8*, i8** %s, align 4
  %26 = load i8**, i8*** %str.addr, align 4
  %27 = load i8*, i8** %26, align 4
  %cmp24 = icmp ne i8* %25, %27
  br label %land.end26

land.end26:                                       ; preds = %land.rhs23, %land.lhs.true19, %for.cond
  %28 = phi i1 [ false, %land.lhs.true19 ], [ false, %for.cond ], [ %cmp24, %land.rhs23 ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end26
  %29 = load i8*, i8** %s, align 4
  %30 = load i8, i8* %29, align 1
  %conv27 = sext i8 %30 to i32
  switch i32 %conv27, label %sw.default [
    i32 114, label %sw.bb
    i32 82, label %sw.bb28
    i32 107, label %sw.bb29
    i32 75, label %sw.bb30
    i32 105, label %sw.bb31
    i32 73, label %sw.bb32
    i32 119, label %sw.bb33
    i32 102, label %sw.bb34
    i32 101, label %sw.bb35
    i32 110, label %sw.bb36
    i32 98, label %sw.bb47
    i32 112, label %sw.bb61
    i32 115, label %sw.bb62
  ]

sw.bb:                                            ; preds = %for.body
  store i32 1, i32* %rev, align 4
  store i32 0, i32* %ind, align 4
  store i32 0, i32* %down, align 4
  store i32 0, i32* %keymatch, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.body
  store i32 1, i32* %down, align 4
  store i32 1, i32* %rev, align 4
  store i32 0, i32* %ind, align 4
  store i32 0, i32* %keymatch, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body
  %31 = load i32, i32* %ishash, align 4
  store i32 %31, i32* %keymatch, align 4
  store i32 1, i32* %rev, align 4
  store i32 0, i32* %ind, align 4
  store i32 0, i32* %down, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %for.body
  %32 = load i32, i32* %ishash, align 4
  store i32 %32, i32* %keymatch, align 4
  store i32 1, i32* %down, align 4
  store i32 1, i32* %rev, align 4
  store i32 0, i32* %ind, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.body
  store i32 1, i32* %ind, align 4
  store i32 1, i32* %rev, align 4
  store i32 0, i32* %keymatch, align 4
  store i32 0, i32* %down, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %for.body
  store i32 1, i32* %down, align 4
  store i32 1, i32* %ind, align 4
  store i32 1, i32* %rev, align 4
  store i32 0, i32* %keymatch, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %for.body
  store i32 1, i32* %word, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %for.body
  store i32 1, i32* %word, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.185, i32 0, i32 0), i8** %sep, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %for.body
  store i32 1, i32* %quote_arg, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %for.body
  %33 = load i8*, i8** %s, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr37, i8** %s, align 4
  %call = call i8* @get_strarg(i8* %incdec.ptr37, i32* %arglen)
  store i8* %call, i8** %t, align 4
  %34 = load i8*, i8** %t, align 4
  %35 = load i8, i8* %34, align 1
  %tobool38 = icmp ne i8 %35, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %sw.bb36
  br label %flagerr

if.end40:                                         ; preds = %sw.bb36
  %36 = load i8*, i8** %t, align 4
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %sav, align 1
  %38 = load i8*, i8** %t, align 4
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %s, align 4
  %40 = load i32, i32* %arglen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %39, i32 %40
  %call41 = call i32 @mathevalarg(i8* %add.ptr, i8** %d)
  store i32 %call41, i32* %num, align 4
  %41 = load i32, i32* %num, align 4
  %tobool42 = icmp ne i32 %41, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40
  store i32 1, i32* %num, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %42 = load i8, i8* %sav, align 1
  %43 = load i8*, i8** %t, align 4
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %t, align 4
  %45 = load i32, i32* %arglen, align 4
  %add.ptr45 = getelementptr inbounds i8, i8* %44, i32 %45
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i32 -1
  store i8* %add.ptr46, i8** %s, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %for.body
  store i32 1, i32* %hasbeg, align 4
  %46 = load i8*, i8** %s, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr48, i8** %s, align 4
  %call49 = call i8* @get_strarg(i8* %incdec.ptr48, i32* %arglen)
  store i8* %call49, i8** %t, align 4
  %47 = load i8*, i8** %t, align 4
  %48 = load i8, i8* %47, align 1
  %tobool50 = icmp ne i8 %48, 0
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %sw.bb47
  br label %flagerr

if.end52:                                         ; preds = %sw.bb47
  %49 = load i8*, i8** %t, align 4
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %sav, align 1
  %51 = load i8*, i8** %t, align 4
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %s, align 4
  %53 = load i32, i32* %arglen, align 4
  %add.ptr53 = getelementptr inbounds i8, i8* %52, i32 %53
  %call54 = call i32 @mathevalarg(i8* %add.ptr53, i8** %d)
  store i32 %call54, i32* %beg, align 4
  %cmp55 = icmp sgt i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end52
  %54 = load i32, i32* %beg, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %beg, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end52
  %55 = load i8, i8* %sav, align 1
  %56 = load i8*, i8** %t, align 4
  store i8 %55, i8* %56, align 1
  %57 = load i8*, i8** %t, align 4
  %58 = load i32, i32* %arglen, align 4
  %add.ptr59 = getelementptr inbounds i8, i8* %57, i32 %58
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr59, i32 -1
  store i8* %add.ptr60, i8** %s, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %for.body
  store i32 1, i32* %escapes, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %for.body
  %59 = load i8*, i8** %s, align 4
  %incdec.ptr63 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr63, i8** %s, align 4
  %call64 = call i8* @get_strarg(i8* %incdec.ptr63, i32* %arglen)
  store i8* %call64, i8** %t, align 4
  %60 = load i8*, i8** %t, align 4
  %61 = load i8, i8* %60, align 1
  %tobool65 = icmp ne i8 %61, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %sw.bb62
  br label %flagerr

if.end67:                                         ; preds = %sw.bb62
  %62 = load i8*, i8** %t, align 4
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %sav, align 1
  %64 = load i8*, i8** %t, align 4
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* %arglen, align 4
  %66 = load i8*, i8** %s, align 4
  %add.ptr68 = getelementptr inbounds i8, i8* %66, i32 %65
  store i8* %add.ptr68, i8** %s, align 4
  %67 = load i32, i32* %escapes, align 4
  %tobool69 = icmp ne i32 %67, 0
  br i1 %tobool69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end67
  %68 = load i8*, i8** %s, align 4
  %call70 = call i8* @getkeystring(i8* %68, i32* %waste, i32 3, i32* null)
  br label %cond.end

cond.false:                                       ; preds = %if.end67
  %69 = load i8*, i8** %s, align 4
  %call71 = call i8* @dupstring(i8* %69)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call70, %cond.true ], [ %call71, %cond.false ]
  store i8* %cond, i8** %sep, align 4
  %70 = load i8, i8* %sav, align 1
  %71 = load i8*, i8** %t, align 4
  store i8 %70, i8* %71, align 1
  %72 = load i8*, i8** %t, align 4
  %73 = load i32, i32* %arglen, align 4
  %add.ptr72 = getelementptr inbounds i8, i8* %72, i32 %73
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr72, i32 -1
  store i8* %add.ptr73, i8** %s, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %flagerr

flagerr:                                          ; preds = %sw.default, %if.then66, %if.then51, %if.then39
  store i32 1, i32* %num, align 4
  store i32 0, i32* %keymatch, align 4
  store i32 0, i32* %down, align 4
  store i32 0, i32* %ind, align 4
  store i32 0, i32* %rev, align 4
  store i32 0, i32* %word, align 4
  store i8* null, i8** %sep, align 4
  %74 = load i8**, i8*** %str.addr, align 4
  %75 = load i8*, i8** %74, align 4
  %add.ptr74 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %add.ptr74, i8** %s, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %flagerr, %cond.end, %sw.bb61, %if.end58, %if.end44, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %76 = load i8*, i8** %s, align 4
  %incdec.ptr75 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr75, i8** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end26
  %77 = load i8*, i8** %s, align 4
  %78 = load i8**, i8*** %str.addr, align 4
  %79 = load i8*, i8** %78, align 4
  %cmp76 = icmp ne i8* %77, %79
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %for.end
  %80 = load i8*, i8** %s, align 4
  %incdec.ptr79 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr79, i8** %s, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %for.end
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %lor.lhs.false, %if.end7
  %81 = load i32, i32* %num, align 4
  %cmp82 = icmp slt i32 %81, 0
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  %82 = load i32, i32* %down, align 4
  %tobool85 = icmp ne i32 %82, 0
  %lnot = xor i1 %tobool85, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %down, align 4
  %83 = load i32, i32* %num, align 4
  %sub = sub nsw i32 0, %83
  store i32 %sub, i32* %num, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81
  %84 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %84, i32 0, i32 0
  %85 = load i32, i32* %isarr, align 4
  %and87 = and i32 %85, 2
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end86
  %86 = load i32, i32* %ind, align 4
  %tobool90 = icmp ne i32 %86, 0
  br i1 %tobool90, label %lor.end97, label %lor.rhs91

lor.rhs91:                                        ; preds = %if.then89
  %87 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr92 = getelementptr inbounds %struct.value, %struct.value* %87, i32 0, i32 0
  %88 = load i32, i32* %isarr92, align 4
  %and93 = and i32 %88, 1
  %tobool94 = icmp ne i32 %and93, 0
  %lnot95 = xor i1 %tobool94, true
  br label %lor.end97

lor.end97:                                        ; preds = %lor.rhs91, %if.then89
  %89 = phi i1 [ true, %if.then89 ], [ %lnot95, %lor.rhs91 ]
  %lor.ext98 = zext i1 %89 to i32
  %90 = load i32*, i32** %inv.addr, align 4
  store i32 %lor.ext98, i32* %90, align 4
  br label %if.end130

if.else:                                          ; preds = %if.end86
  %91 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr99 = getelementptr inbounds %struct.value, %struct.value* %91, i32 0, i32 0
  %92 = load i32, i32* %isarr99, align 4
  %and100 = and i32 %92, 1
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else
  %93 = load i32*, i32** %inv.addr, align 4
  store i32 0, i32* %93, align 4
  br label %if.end129

if.else103:                                       ; preds = %if.else
  %94 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr104 = getelementptr inbounds %struct.value, %struct.value* %94, i32 0, i32 0
  %95 = load i32, i32* %isarr104, align 4
  %tobool105 = icmp ne i32 %95, 0
  br i1 %tobool105, label %if.then106, label %if.end128

if.then106:                                       ; preds = %if.else103
  %96 = load i32, i32* %ind, align 4
  %tobool107 = icmp ne i32 %96, 0
  br i1 %tobool107, label %if.then108, label %if.else112

if.then108:                                       ; preds = %if.then106
  %97 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr109 = getelementptr inbounds %struct.value, %struct.value* %97, i32 0, i32 0
  %98 = load i32, i32* %isarr109, align 4
  %or = or i32 %98, 2
  store i32 %or, i32* %isarr109, align 4
  %99 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr110 = getelementptr inbounds %struct.value, %struct.value* %99, i32 0, i32 0
  %100 = load i32, i32* %isarr110, align 4
  %and111 = and i32 %100, -2
  store i32 %and111, i32* %isarr110, align 4
  br label %if.end118

if.else112:                                       ; preds = %if.then106
  %101 = load i32, i32* %rev, align 4
  %tobool113 = icmp ne i32 %101, 0
  br i1 %tobool113, label %if.then114, label %if.end117

if.then114:                                       ; preds = %if.else112
  %102 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr115 = getelementptr inbounds %struct.value, %struct.value* %102, i32 0, i32 0
  %103 = load i32, i32* %isarr115, align 4
  %or116 = or i32 %103, 1
  store i32 %or116, i32* %isarr115, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.else112
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then108
  %104 = load i32, i32* %down, align 4
  %tobool119 = icmp ne i32 %104, 0
  br i1 %tobool119, label %if.end127, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.end118
  %105 = load i32, i32* %keymatch, align 4
  %tobool121 = icmp ne i32 %105, 0
  br i1 %tobool121, label %land.lhs.true122, label %if.end127

land.lhs.true122:                                 ; preds = %land.lhs.true120
  %106 = load i32, i32* %ishash, align 4
  %tobool123 = icmp ne i32 %106, 0
  br i1 %tobool123, label %if.then124, label %if.end127

if.then124:                                       ; preds = %land.lhs.true122
  %107 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr125 = getelementptr inbounds %struct.value, %struct.value* %107, i32 0, i32 0
  %108 = load i32, i32* %isarr125, align 4
  %and126 = and i32 %108, -33
  store i32 %and126, i32* %isarr125, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %land.lhs.true122, %land.lhs.true120, %if.end118
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.else103
  %109 = load i32, i32* %ind, align 4
  %110 = load i32*, i32** %inv.addr, align 4
  store i32 %109, i32* %110, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then102
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %lor.end97
  %111 = load i8*, i8** %s, align 4
  store i8* %111, i8** %t, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc249, %if.end130
  %112 = load i8*, i8** %t, align 4
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* %c, align 1
  %conv132 = sext i8 %113 to i32
  %tobool133 = icmp ne i32 %conv132, 0
  br i1 %tobool133, label %land.rhs134, label %land.end150

land.rhs134:                                      ; preds = %for.cond131
  %114 = load i8, i8* %c, align 1
  %conv135 = sext i8 %114 to i32
  %cmp136 = icmp ne i32 %conv135, -110
  br i1 %cmp136, label %land.lhs.true138, label %lor.lhs.false144

land.lhs.true138:                                 ; preds = %land.rhs134
  %115 = load i32, i32* %ishash, align 4
  %tobool139 = icmp ne i32 %115, 0
  br i1 %tobool139, label %lor.end148, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %land.lhs.true138
  %116 = load i8, i8* %c, align 1
  %conv141 = sext i8 %116 to i32
  %cmp142 = icmp ne i32 %conv141, 44
  br i1 %cmp142, label %lor.end148, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false140, %land.rhs134
  %117 = load i32, i32* %i, align 4
  %tobool145 = icmp ne i32 %117, 0
  br i1 %tobool145, label %lor.end148, label %lor.rhs146

lor.rhs146:                                       ; preds = %lor.lhs.false144
  %118 = load i32, i32* %inpar, align 4
  %tobool147 = icmp ne i32 %118, 0
  br label %lor.end148

lor.end148:                                       ; preds = %lor.rhs146, %lor.lhs.false144, %lor.lhs.false140, %land.lhs.true138
  %119 = phi i1 [ true, %lor.lhs.false144 ], [ true, %lor.lhs.false140 ], [ true, %land.lhs.true138 ], [ %tobool147, %lor.rhs146 ]
  br label %land.end150

land.end150:                                      ; preds = %lor.end148, %for.cond131
  %120 = phi i1 [ false, %for.cond131 ], [ %119, %lor.end148 ]
  br i1 %120, label %for.body151, label %for.end251

for.body151:                                      ; preds = %land.end150
  %121 = load i8, i8* %c, align 1
  %idxprom = zext i8 %121 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %122 = load i16, i16* %arrayidx, align 2
  %conv152 = sext i16 %122 to i32
  %and153 = and i32 %conv152, 16384
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then155, label %if.end200

if.then155:                                       ; preds = %for.body151
  %123 = load i8*, i8** %t, align 4
  %arrayidx156 = getelementptr inbounds i8, i8* %123, i32 1
  %124 = load i8, i8* %arrayidx156, align 1
  store i8 %124, i8* %c, align 1
  %125 = load i8, i8* %c, align 1
  %conv157 = sext i8 %125 to i32
  %cmp158 = icmp eq i32 %conv157, 91
  br i1 %cmp158, label %if.then180, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %if.then155
  %126 = load i8, i8* %c, align 1
  %conv161 = sext i8 %126 to i32
  %cmp162 = icmp eq i32 %conv161, 93
  br i1 %cmp162, label %if.then180, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %lor.lhs.false160
  %127 = load i8, i8* %c, align 1
  %conv165 = sext i8 %127 to i32
  %cmp166 = icmp eq i32 %conv165, 40
  br i1 %cmp166, label %if.then180, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false164
  %128 = load i8, i8* %c, align 1
  %conv169 = sext i8 %128 to i32
  %cmp170 = icmp eq i32 %conv169, 41
  br i1 %cmp170, label %if.then180, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false168
  %129 = load i8, i8* %c, align 1
  %conv173 = sext i8 %129 to i32
  %cmp174 = icmp eq i32 %conv173, 123
  br i1 %cmp174, label %if.then180, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false172
  %130 = load i8, i8* %c, align 1
  %conv177 = sext i8 %130 to i32
  %cmp178 = icmp eq i32 %conv177, 125
  br i1 %cmp178, label %if.then180, label %if.else190

if.then180:                                       ; preds = %lor.lhs.false176, %lor.lhs.false172, %lor.lhs.false168, %lor.lhs.false164, %lor.lhs.false160, %if.then155
  %131 = load i32, i32* %ishash, align 4
  %tobool181 = icmp ne i32 %131, 0
  br i1 %tobool181, label %land.lhs.true182, label %if.end188

land.lhs.true182:                                 ; preds = %if.then180
  %132 = load i32, i32* %i, align 4
  %tobool183 = icmp ne i32 %132, 0
  br i1 %tobool183, label %if.then184, label %if.end188

if.then184:                                       ; preds = %land.lhs.true182
  %133 = load i8*, i8** %t, align 4
  %134 = load i8, i8* %133, align 1
  %conv185 = sext i8 %134 to i32
  %sub186 = sub nsw i32 %conv185, -124
  %arrayidx187 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub186
  %135 = load i8, i8* %arrayidx187, align 1
  %136 = load i8*, i8** %t, align 4
  store i8 %135, i8* %136, align 1
  br label %if.end188

if.end188:                                        ; preds = %if.then184, %land.lhs.true182, %if.then180
  store i32 1, i32* %needtok, align 4
  %137 = load i8*, i8** %t, align 4
  %incdec.ptr189 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr189, i8** %t, align 4
  br label %if.end199

if.else190:                                       ; preds = %lor.lhs.false176
  %138 = load i8, i8* %c, align 1
  %conv191 = sext i8 %138 to i32
  %cmp192 = icmp ne i32 %conv191, 34
  br i1 %cmp192, label %if.then194, label %if.end198

if.then194:                                       ; preds = %if.else190
  %139 = load i8*, i8** %t, align 4
  %140 = load i8, i8* %139, align 1
  %conv195 = sext i8 %140 to i32
  %sub196 = sub nsw i32 %conv195, -124
  %arrayidx197 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub196
  %141 = load i8, i8* %arrayidx197, align 1
  %142 = load i8*, i8** %t, align 4
  store i8 %141, i8* %142, align 1
  br label %if.end198

if.end198:                                        ; preds = %if.then194, %if.else190
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %if.end188
  br label %for.inc249

if.end200:                                        ; preds = %for.body151
  %143 = load i8, i8* %c, align 1
  %conv201 = sext i8 %143 to i32
  %cmp202 = icmp eq i32 %conv201, 91
  br i1 %cmp202, label %if.then208, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %if.end200
  %144 = load i8, i8* %c, align 1
  %conv205 = sext i8 %144 to i32
  %cmp206 = icmp eq i32 %conv205, -111
  br i1 %cmp206, label %if.then208, label %if.else209

if.then208:                                       ; preds = %lor.lhs.false204, %if.end200
  %145 = load i32, i32* %i, align 4
  %inc = add nsw i32 %145, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end220

if.else209:                                       ; preds = %lor.lhs.false204
  %146 = load i8, i8* %c, align 1
  %conv210 = sext i8 %146 to i32
  %cmp211 = icmp eq i32 %conv210, 93
  br i1 %cmp211, label %if.then217, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %if.else209
  %147 = load i8, i8* %c, align 1
  %conv214 = sext i8 %147 to i32
  %cmp215 = icmp eq i32 %conv214, -110
  br i1 %cmp215, label %if.then217, label %if.end219

if.then217:                                       ; preds = %lor.lhs.false213, %if.else209
  %148 = load i32, i32* %i, align 4
  %dec218 = add nsw i32 %148, -1
  store i32 %dec218, i32* %i, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %lor.lhs.false213
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.then208
  %149 = load i8, i8* %c, align 1
  %conv221 = sext i8 %149 to i32
  %cmp222 = icmp eq i32 %conv221, 40
  br i1 %cmp222, label %if.then228, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %if.end220
  %150 = load i8, i8* %c, align 1
  %conv225 = sext i8 %150 to i32
  %cmp226 = icmp eq i32 %conv225, -120
  br i1 %cmp226, label %if.then228, label %if.else230

if.then228:                                       ; preds = %lor.lhs.false224, %if.end220
  %151 = load i32, i32* %inpar, align 4
  %inc229 = add nsw i32 %151, 1
  store i32 %inc229, i32* %inpar, align 4
  br label %if.end241

if.else230:                                       ; preds = %lor.lhs.false224
  %152 = load i8, i8* %c, align 1
  %conv231 = sext i8 %152 to i32
  %cmp232 = icmp eq i32 %conv231, 41
  br i1 %cmp232, label %if.then238, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %if.else230
  %153 = load i8, i8* %c, align 1
  %conv235 = sext i8 %153 to i32
  %cmp236 = icmp eq i32 %conv235, -118
  br i1 %cmp236, label %if.then238, label %if.end240

if.then238:                                       ; preds = %lor.lhs.false234, %if.else230
  %154 = load i32, i32* %inpar, align 4
  %dec239 = add nsw i32 %154, -1
  store i32 %dec239, i32* %inpar, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %lor.lhs.false234
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.then228
  %155 = load i8, i8* %c, align 1
  %idxprom242 = zext i8 %155 to i32
  %arrayidx243 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom242
  %156 = load i16, i16* %arrayidx243, align 2
  %conv244 = sext i16 %156 to i32
  %and245 = and i32 %conv244, 2048
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.end241
  store i32 1, i32* %needtok, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then247, %if.end241
  br label %for.inc249

for.inc249:                                       ; preds = %if.end248, %if.end199
  %157 = load i8*, i8** %t, align 4
  %incdec.ptr250 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr250, i8** %t, align 4
  br label %for.cond131

for.end251:                                       ; preds = %land.end150
  %158 = load i8, i8* %c, align 1
  %tobool252 = icmp ne i8 %158, 0
  br i1 %tobool252, label %if.end254, label %if.then253

if.then253:                                       ; preds = %for.end251
  store i32 0, i32* %retval, align 4
  br label %return

if.end254:                                        ; preds = %for.end251
  %159 = load i8*, i8** %t, align 4
  store i8* %159, i8** %tt, align 4
  %160 = load i8**, i8*** %str.addr, align 4
  store i8* %159, i8** %160, align 4
  %161 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool255 = icmp ne i8 %161, 0
  br i1 %tobool255, label %if.end257, label %if.then256

if.then256:                                       ; preds = %if.end254
  store i32 0, i32* %retval, align 4
  br label %return

if.end257:                                        ; preds = %if.end254
  %162 = load i8*, i8** %s, align 4
  %163 = load i8*, i8** %t, align 4
  %164 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %163 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %164 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call258 = call i8* @dupstrpfx(i8* %162, i32 %sub.ptr.sub)
  store i8* %call258, i8** %s, align 4
  %165 = load i32, i32* %ishash, align 4
  %tobool259 = icmp ne i32 %165, 0
  br i1 %tobool259, label %land.lhs.true260, label %if.end265

land.lhs.true260:                                 ; preds = %if.end257
  %166 = load i32, i32* %keymatch, align 4
  %tobool261 = icmp ne i32 %166, 0
  br i1 %tobool261, label %if.then264, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %land.lhs.true260
  %167 = load i32, i32* %rev, align 4
  %tobool263 = icmp ne i32 %167, 0
  br i1 %tobool263, label %if.end265, label %if.then264

if.then264:                                       ; preds = %lor.lhs.false262, %land.lhs.true260
  %168 = load i8*, i8** %s, align 4
  call void @remnulargs(i8* %168)
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %lor.lhs.false262, %if.end257
  %169 = load i32, i32* %needtok, align 4
  %tobool266 = icmp ne i32 %169, 0
  br i1 %tobool266, label %if.then267, label %if.else273

if.then267:                                       ; preds = %if.end265
  %170 = load i8*, i8** %s, align 4
  %call268 = call i8* @dupstring(i8* %170)
  store i8* %call268, i8** %s, align 4
  %call269 = call i32 @parsestr(i8** %s)
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.then267
  store i32 0, i32* %retval, align 4
  br label %return

if.end272:                                        ; preds = %if.then267
  call void @singsub(i8** %s)
  br label %if.end277

if.else273:                                       ; preds = %if.end265
  %171 = load i32, i32* %rev, align 4
  %tobool274 = icmp ne i32 %171, 0
  br i1 %tobool274, label %if.then275, label %if.end276

if.then275:                                       ; preds = %if.else273
  %172 = load i8*, i8** %s, align 4
  call void @remnulargs(i8* %172)
  br label %if.end276

if.end276:                                        ; preds = %if.then275, %if.else273
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.end272
  %173 = load i32, i32* %rev, align 4
  %tobool278 = icmp ne i32 %173, 0
  br i1 %tobool278, label %if.else470, label %if.then279

if.then279:                                       ; preds = %if.end277
  %174 = load i32, i32* %ishash, align 4
  %tobool280 = icmp ne i32 %174, 0
  br i1 %tobool280, label %if.then281, label %if.else315

if.then281:                                       ; preds = %if.then279
  %175 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm282 = getelementptr inbounds %struct.value, %struct.value* %175, i32 0, i32 1
  %176 = load %struct.param*, %struct.param** %pm282, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %176, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %177 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %177, i32 0, i32 0
  %178 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn, align 4
  %179 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm283 = getelementptr inbounds %struct.value, %struct.value* %179, i32 0, i32 1
  %180 = load %struct.param*, %struct.param** %pm283, align 4
  %call284 = call %struct.hashtable* %178(%struct.param* %180)
  store %struct.hashtable* %call284, %struct.hashtable** %ht, align 4
  %181 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %tobool285 = icmp ne %struct.hashtable* %181, null
  br i1 %tobool285, label %if.end301, label %if.then286

if.then286:                                       ; preds = %if.then281
  %182 = load i32, i32* %flags.addr, align 4
  %and287 = and i32 %182, 1024
  %tobool288 = icmp ne i32 %and287, 0
  br i1 %tobool288, label %if.then289, label %if.end293

if.then289:                                       ; preds = %if.then286
  %183 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %conv290 = sext i8 %183 to i32
  %tobool291 = icmp ne i32 %conv290, 0
  %cond292 = select i1 %tobool291, i32 1, i32 0
  store i32 %cond292, i32* %retval, align 4
  br label %return

if.end293:                                        ; preds = %if.then286
  %184 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm294 = getelementptr inbounds %struct.value, %struct.value* %184, i32 0, i32 1
  %185 = load %struct.param*, %struct.param** %pm294, align 4
  %node295 = getelementptr inbounds %struct.param, %struct.param* %185, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node295, i32 0, i32 1
  %186 = load i8*, i8** %nam, align 4
  %call296 = call %struct.hashtable* @newparamtable(i32 17, i8* %186)
  store %struct.hashtable* %call296, %struct.hashtable** %ht, align 4
  %187 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm297 = getelementptr inbounds %struct.value, %struct.value* %187, i32 0, i32 1
  %188 = load %struct.param*, %struct.param** %pm297, align 4
  %gsu298 = getelementptr inbounds %struct.param, %struct.param* %188, i32 0, i32 2
  %h299 = bitcast %union.anon.0* %gsu298 to %struct.gsu_hash**
  %189 = load %struct.gsu_hash*, %struct.gsu_hash** %h299, align 8
  %setfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %189, i32 0, i32 1
  %190 = load void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, %struct.hashtable*)** %setfn, align 4
  %191 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm300 = getelementptr inbounds %struct.value, %struct.value* %191, i32 0, i32 1
  %192 = load %struct.param*, %struct.param** %pm300, align 4
  %193 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  call void %190(%struct.param* %192, %struct.hashtable* %193)
  br label %if.end301

if.end301:                                        ; preds = %if.end293, %if.then281
  %194 = load i8*, i8** %s, align 4
  call void @untokenize(i8* %194)
  %195 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %195, i32 0, i32 9
  %196 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %197 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %198 = load i8*, i8** %s, align 4
  %call302 = call %struct.hashnode* %196(%struct.hashtable* %197, i8* %198)
  %199 = bitcast %struct.hashnode* %call302 to %struct.param*
  %200 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm303 = getelementptr inbounds %struct.value, %struct.value* %200, i32 0, i32 1
  store %struct.param* %199, %struct.param** %pm303, align 4
  %tobool304 = icmp ne %struct.param* %199, null
  br i1 %tobool304, label %if.end308, label %if.then305

if.then305:                                       ; preds = %if.end301
  %201 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  store %struct.hashtable* %201, %struct.hashtable** %tht, align 4
  %202 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  store %struct.hashtable* %202, %struct.hashtable** @paramtab, align 4
  %203 = load i8*, i8** %s, align 4
  %call306 = call %struct.param* @createparam(i8* %203, i32 33554432)
  %204 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm307 = getelementptr inbounds %struct.value, %struct.value* %204, i32 0, i32 1
  store %struct.param* %call306, %struct.param** %pm307, align 4
  %205 = load %struct.hashtable*, %struct.hashtable** %tht, align 4
  store %struct.hashtable* %205, %struct.hashtable** @paramtab, align 4
  br label %if.end308

if.end308:                                        ; preds = %if.then305, %if.end301
  %206 = load i32*, i32** %inv.addr, align 4
  %207 = load i32, i32* %206, align 4
  %tobool309 = icmp ne i32 %207, 0
  %cond310 = select i1 %tobool309, i32 4, i32 0
  %208 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr311 = getelementptr inbounds %struct.value, %struct.value* %208, i32 0, i32 0
  store i32 %cond310, i32* %isarr311, align 4
  %209 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %209, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %210 = load i32*, i32** %inv.addr, align 4
  store i32 0, i32* %210, align 4
  %211 = load %struct.value*, %struct.value** %v.addr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %211, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %212 = load i32*, i32** %w.addr, align 4
  store i32 -1, i32* %212, align 4
  %213 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %conv312 = sext i8 %213 to i32
  %tobool313 = icmp ne i32 %conv312, 0
  %cond314 = select i1 %tobool313, i32 1, i32 0
  store i32 %cond314, i32* %r, align 4
  br label %if.end325

if.else315:                                       ; preds = %if.then279
  %214 = load i8*, i8** %s, align 4
  %call316 = call i32 @mathevalarg(i8* %214, i8** %s)
  store i32 %call316, i32* %r, align 4
  %215 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %conv317 = sext i8 %215 to i32
  %tobool318 = icmp ne i32 %conv317, 0
  br i1 %tobool318, label %land.lhs.true319, label %if.end324

land.lhs.true319:                                 ; preds = %if.else315
  %216 = load i32, i32* %r, align 4
  %cmp320 = icmp sge i32 %216, 0
  br i1 %cmp320, label %if.then322, label %if.end324

if.then322:                                       ; preds = %land.lhs.true319
  %217 = load i32, i32* %r, align 4
  %inc323 = add nsw i32 %217, 1
  store i32 %inc323, i32* %r, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then322, %land.lhs.true319, %if.else315
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.end308
  %218 = load i32, i32* %word, align 4
  %tobool326 = icmp ne i32 %218, 0
  br i1 %tobool326, label %land.lhs.true327, label %if.else379

land.lhs.true327:                                 ; preds = %if.end325
  %219 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr328 = getelementptr inbounds %struct.value, %struct.value* %219, i32 0, i32 0
  %220 = load i32, i32* %isarr328, align 4
  %tobool329 = icmp ne i32 %220, 0
  br i1 %tobool329, label %if.else379, label %if.then330

if.then330:                                       ; preds = %land.lhs.true327
  %221 = load %struct.value*, %struct.value** %v.addr, align 4
  %call331 = call i8* @getstrvalue(%struct.value* %221)
  store i8* %call331, i8** %t, align 4
  store i8* %call331, i8** %s, align 4
  %222 = load i8*, i8** %s, align 4
  %223 = load i8*, i8** %sep, align 4
  %call332 = call i32 @wordcount(i8* %222, i8* %223, i32 0)
  store i32 %call332, i32* %i, align 4
  %224 = load i32, i32* %r, align 4
  %cmp333 = icmp slt i32 %224, 0
  br i1 %cmp333, label %if.then335, label %if.end337

if.then335:                                       ; preds = %if.then330
  %225 = load i32, i32* %i, align 4
  %add = add nsw i32 %225, 1
  %226 = load i32, i32* %r, align 4
  %add336 = add nsw i32 %226, %add
  store i32 %add336, i32* %r, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then335, %if.then330
  %227 = load i32, i32* %r, align 4
  %cmp338 = icmp slt i32 %227, 1
  br i1 %cmp338, label %if.then340, label %if.end341

if.then340:                                       ; preds = %if.end337
  store i32 1, i32* %r, align 4
  br label %if.end341

if.end341:                                        ; preds = %if.then340, %if.end337
  %228 = load i32, i32* %r, align 4
  %229 = load i32, i32* %i, align 4
  %cmp342 = icmp sgt i32 %228, %229
  br i1 %cmp342, label %if.then344, label %if.end345

if.then344:                                       ; preds = %if.end341
  %230 = load i32, i32* %i, align 4
  store i32 %230, i32* %r, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.then344, %if.end341
  %231 = load i8*, i8** %s, align 4
  %tobool346 = icmp ne i8* %231, null
  br i1 %tobool346, label %lor.lhs.false347, label %if.then349

lor.lhs.false347:                                 ; preds = %if.end345
  %232 = load i8*, i8** %s, align 4
  %233 = load i8, i8* %232, align 1
  %tobool348 = icmp ne i8 %233, 0
  br i1 %tobool348, label %if.end350, label %if.then349

if.then349:                                       ; preds = %lor.lhs.false347, %if.end345
  store i32 0, i32* %retval, align 4
  br label %return

if.end350:                                        ; preds = %lor.lhs.false347
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end350
  %234 = load i8*, i8** %sep, align 4
  %call351 = call i8* @findword(i8** %s, i8* %234)
  store i8* %call351, i8** %d, align 4
  %tobool352 = icmp ne i8* %call351, null
  br i1 %tobool352, label %land.rhs353, label %land.end356

land.rhs353:                                      ; preds = %while.cond
  %235 = load i32, i32* %r, align 4
  %dec354 = add nsw i32 %235, -1
  store i32 %dec354, i32* %r, align 4
  %tobool355 = icmp ne i32 %dec354, 0
  br label %land.end356

land.end356:                                      ; preds = %land.rhs353, %while.cond
  %236 = phi i1 [ false, %while.cond ], [ %tobool355, %land.rhs353 ]
  br i1 %236, label %while.body, label %while.end

while.body:                                       ; preds = %land.end356
  br label %while.cond

while.end:                                        ; preds = %land.end356
  %237 = load i8*, i8** %d, align 4
  %tobool357 = icmp ne i8* %237, null
  br i1 %tobool357, label %if.end359, label %if.then358

if.then358:                                       ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end359:                                        ; preds = %while.end
  %238 = load i32, i32* %a2.addr, align 4
  %tobool360 = icmp ne i32 %238, 0
  br i1 %tobool360, label %if.end369, label %land.lhs.true361

land.lhs.true361:                                 ; preds = %if.end359
  %239 = load i8*, i8** %tt, align 4
  %240 = load i8, i8* %239, align 1
  %conv362 = sext i8 %240 to i32
  %cmp363 = icmp ne i32 %conv362, 44
  br i1 %cmp363, label %if.then365, label %if.end369

if.then365:                                       ; preds = %land.lhs.true361
  %241 = load i8*, i8** %s, align 4
  %242 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast366 = ptrtoint i8* %241 to i32
  %sub.ptr.rhs.cast367 = ptrtoint i8* %242 to i32
  %sub.ptr.sub368 = sub i32 %sub.ptr.lhs.cast366, %sub.ptr.rhs.cast367
  %243 = load i32*, i32** %w.addr, align 4
  store i32 %sub.ptr.sub368, i32* %243, align 4
  br label %if.end369

if.end369:                                        ; preds = %if.then365, %land.lhs.true361, %if.end359
  %244 = load i32, i32* %a2.addr, align 4
  %tobool370 = icmp ne i32 %244, 0
  br i1 %tobool370, label %cond.true371, label %cond.false372

cond.true371:                                     ; preds = %if.end369
  %245 = load i8*, i8** %s, align 4
  br label %cond.end374

cond.false372:                                    ; preds = %if.end369
  %246 = load i8*, i8** %d, align 4
  %add.ptr373 = getelementptr inbounds i8, i8* %246, i32 1
  br label %cond.end374

cond.end374:                                      ; preds = %cond.false372, %cond.true371
  %cond375 = phi i8* [ %245, %cond.true371 ], [ %add.ptr373, %cond.false372 ]
  %247 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast376 = ptrtoint i8* %cond375 to i32
  %sub.ptr.rhs.cast377 = ptrtoint i8* %247 to i32
  %sub.ptr.sub378 = sub i32 %sub.ptr.lhs.cast376, %sub.ptr.rhs.cast377
  store i32 %sub.ptr.sub378, i32* %retval, align 4
  br label %return

if.else379:                                       ; preds = %land.lhs.true327, %if.end325
  %248 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr380 = getelementptr inbounds %struct.value, %struct.value* %248, i32 0, i32 0
  %249 = load i32, i32* %isarr380, align 4
  %tobool381 = icmp ne i32 %249, 0
  br i1 %tobool381, label %if.end468, label %land.lhs.true382

land.lhs.true382:                                 ; preds = %if.else379
  %250 = load i32, i32* %word, align 4
  %tobool383 = icmp ne i32 %250, 0
  br i1 %tobool383, label %if.end468, label %if.then384

if.then384:                                       ; preds = %land.lhs.true382
  store i32 1, i32* %lastcharlen, align 4
  %251 = load %struct.value*, %struct.value** %v.addr, align 4
  %call385 = call i8* @getstrvalue(%struct.value* %251)
  store i8* %call385, i8** %s, align 4
  %252 = load i32, i32* %r, align 4
  %cmp386 = icmp sgt i32 %252, 0
  br i1 %cmp386, label %if.then388, label %if.else417

if.then388:                                       ; preds = %if.then384
  %253 = load i32, i32* %r, align 4
  store i32 %253, i32* %nchars, align 4
  call void @mb_charinit()
  %254 = load i8*, i8** %s, align 4
  store i8* %254, i8** %t, align 4
  br label %for.cond389

for.cond389:                                      ; preds = %for.inc398, %if.then388
  %255 = load i32, i32* %nchars, align 4
  %tobool390 = icmp ne i32 %255, 0
  br i1 %tobool390, label %land.rhs391, label %land.end394

land.rhs391:                                      ; preds = %for.cond389
  %256 = load i8*, i8** %t, align 4
  %257 = load i8, i8* %256, align 1
  %conv392 = sext i8 %257 to i32
  %tobool393 = icmp ne i32 %conv392, 0
  br label %land.end394

land.end394:                                      ; preds = %land.rhs391, %for.cond389
  %258 = phi i1 [ false, %for.cond389 ], [ %tobool393, %land.rhs391 ]
  br i1 %258, label %for.body395, label %for.end400

for.body395:                                      ; preds = %land.end394
  %259 = load i8*, i8** %t, align 4
  %call396 = call i32 @mb_metacharlenconv(i8* %259, i32* null)
  store i32 %call396, i32* %lastcharlen, align 4
  %260 = load i8*, i8** %t, align 4
  %add.ptr397 = getelementptr inbounds i8, i8* %260, i32 %call396
  store i8* %add.ptr397, i8** %t, align 4
  br label %for.inc398

for.inc398:                                       ; preds = %for.body395
  %261 = load i32, i32* %nchars, align 4
  %dec399 = add nsw i32 %261, -1
  store i32 %dec399, i32* %nchars, align 4
  br label %for.cond389

for.end400:                                       ; preds = %land.end394
  %262 = load i8*, i8** %t, align 4
  %263 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast401 = ptrtoint i8* %262 to i32
  %sub.ptr.rhs.cast402 = ptrtoint i8* %263 to i32
  %sub.ptr.sub403 = sub i32 %sub.ptr.lhs.cast401, %sub.ptr.rhs.cast402
  %264 = load i32, i32* %nchars, align 4
  %add404 = add nsw i32 %sub.ptr.sub403, %264
  store i32 %add404, i32* %r, align 4
  %265 = load i32*, i32** %prevcharlen.addr, align 4
  %tobool405 = icmp ne i32* %265, null
  br i1 %tobool405, label %land.lhs.true406, label %if.end409

land.lhs.true406:                                 ; preds = %for.end400
  %266 = load i32, i32* %nchars, align 4
  %tobool407 = icmp ne i32 %266, 0
  br i1 %tobool407, label %if.end409, label %if.then408

if.then408:                                       ; preds = %land.lhs.true406
  %267 = load i32, i32* %lastcharlen, align 4
  %268 = load i32*, i32** %prevcharlen.addr, align 4
  store i32 %267, i32* %268, align 4
  br label %if.end409

if.end409:                                        ; preds = %if.then408, %land.lhs.true406, %for.end400
  %269 = load i32*, i32** %nextcharlen.addr, align 4
  %tobool410 = icmp ne i32* %269, null
  br i1 %tobool410, label %land.lhs.true411, label %if.end416

land.lhs.true411:                                 ; preds = %if.end409
  %270 = load i8*, i8** %t, align 4
  %271 = load i8, i8* %270, align 1
  %conv412 = sext i8 %271 to i32
  %tobool413 = icmp ne i32 %conv412, 0
  br i1 %tobool413, label %if.then414, label %if.end416

if.then414:                                       ; preds = %land.lhs.true411
  %272 = load i8*, i8** %t, align 4
  %call415 = call i32 @mb_metacharlenconv(i8* %272, i32* null)
  %273 = load i32*, i32** %nextcharlen.addr, align 4
  store i32 %call415, i32* %273, align 4
  br label %if.end416

if.end416:                                        ; preds = %if.then414, %land.lhs.true411, %if.end409
  br label %if.end467

if.else417:                                       ; preds = %if.then384
  %274 = load i32, i32* %r, align 4
  %cmp418 = icmp eq i32 %274, 0
  br i1 %cmp418, label %if.then420, label %if.else431

if.then420:                                       ; preds = %if.else417
  %275 = load i32*, i32** %prevcharlen.addr, align 4
  %tobool421 = icmp ne i32* %275, null
  br i1 %tobool421, label %if.then422, label %if.end423

if.then422:                                       ; preds = %if.then420
  %276 = load i32*, i32** %prevcharlen.addr, align 4
  store i32 0, i32* %276, align 4
  br label %if.end423

if.end423:                                        ; preds = %if.then422, %if.then420
  %277 = load i32*, i32** %nextcharlen.addr, align 4
  %tobool424 = icmp ne i32* %277, null
  br i1 %tobool424, label %land.lhs.true425, label %if.end430

land.lhs.true425:                                 ; preds = %if.end423
  %278 = load i8*, i8** %s, align 4
  %279 = load i8, i8* %278, align 1
  %conv426 = sext i8 %279 to i32
  %tobool427 = icmp ne i32 %conv426, 0
  br i1 %tobool427, label %if.then428, label %if.end430

if.then428:                                       ; preds = %land.lhs.true425
  call void @mb_charinit()
  %280 = load i8*, i8** %s, align 4
  %call429 = call i32 @mb_metacharlenconv(i8* %280, i32* null)
  %281 = load i32*, i32** %nextcharlen.addr, align 4
  store i32 %call429, i32* %281, align 4
  br label %if.end430

if.end430:                                        ; preds = %if.then428, %land.lhs.true425, %if.end423
  br label %if.end466

if.else431:                                       ; preds = %if.else417
  %282 = load i8*, i8** %s, align 4
  %call433 = call i32 @mb_metastrlenend(i8* %282, i32 0, i8* null)
  %283 = load i32, i32* %r, align 4
  %add434 = add nsw i32 %call433, %283
  store i32 %add434, i32* %nchars432, align 4
  %284 = load i32, i32* %nchars432, align 4
  %cmp435 = icmp slt i32 %284, 0
  br i1 %cmp435, label %if.then437, label %if.else440

if.then437:                                       ; preds = %if.else431
  %285 = load i8*, i8** %s, align 4
  %call438 = call i32 @strlen(i8* %285)
  %286 = load i32, i32* %r, align 4
  %sub439 = sub nsw i32 %286, %call438
  store i32 %sub439, i32* %r, align 4
  br label %if.end465

if.else440:                                       ; preds = %if.else431
  call void @mb_charinit()
  %287 = load i8*, i8** %s, align 4
  store i8* %287, i8** %t, align 4
  br label %for.cond441

for.cond441:                                      ; preds = %for.inc450, %if.else440
  %288 = load i32, i32* %nchars432, align 4
  %tobool442 = icmp ne i32 %288, 0
  br i1 %tobool442, label %land.rhs443, label %land.end446

land.rhs443:                                      ; preds = %for.cond441
  %289 = load i8*, i8** %t, align 4
  %290 = load i8, i8* %289, align 1
  %conv444 = sext i8 %290 to i32
  %tobool445 = icmp ne i32 %conv444, 0
  br label %land.end446

land.end446:                                      ; preds = %land.rhs443, %for.cond441
  %291 = phi i1 [ false, %for.cond441 ], [ %tobool445, %land.rhs443 ]
  br i1 %291, label %for.body447, label %for.end452

for.body447:                                      ; preds = %land.end446
  %292 = load i8*, i8** %t, align 4
  %call448 = call i32 @mb_metacharlenconv(i8* %292, i32* null)
  store i32 %call448, i32* %lastcharlen, align 4
  %293 = load i8*, i8** %t, align 4
  %add.ptr449 = getelementptr inbounds i8, i8* %293, i32 %call448
  store i8* %add.ptr449, i8** %t, align 4
  br label %for.inc450

for.inc450:                                       ; preds = %for.body447
  %294 = load i32, i32* %nchars432, align 4
  %dec451 = add nsw i32 %294, -1
  store i32 %dec451, i32* %nchars432, align 4
  br label %for.cond441

for.end452:                                       ; preds = %land.end446
  %295 = load i8*, i8** %t, align 4
  %call453 = call i32 @strlen(i8* %295)
  %sub454 = sub nsw i32 0, %call453
  store i32 %sub454, i32* %r, align 4
  %296 = load i32*, i32** %prevcharlen.addr, align 4
  %tobool455 = icmp ne i32* %296, null
  br i1 %tobool455, label %if.then456, label %if.end457

if.then456:                                       ; preds = %for.end452
  %297 = load i32, i32* %lastcharlen, align 4
  %298 = load i32*, i32** %prevcharlen.addr, align 4
  store i32 %297, i32* %298, align 4
  br label %if.end457

if.end457:                                        ; preds = %if.then456, %for.end452
  %299 = load i32*, i32** %nextcharlen.addr, align 4
  %tobool458 = icmp ne i32* %299, null
  br i1 %tobool458, label %land.lhs.true459, label %if.end464

land.lhs.true459:                                 ; preds = %if.end457
  %300 = load i8*, i8** %t, align 4
  %301 = load i8, i8* %300, align 1
  %conv460 = sext i8 %301 to i32
  %tobool461 = icmp ne i32 %conv460, 0
  br i1 %tobool461, label %if.then462, label %if.end464

if.then462:                                       ; preds = %land.lhs.true459
  %302 = load i8*, i8** %t, align 4
  %call463 = call i32 @mb_metacharlenconv(i8* %302, i32* null)
  %303 = load i32*, i32** %nextcharlen.addr, align 4
  store i32 %call463, i32* %303, align 4
  br label %if.end464

if.end464:                                        ; preds = %if.then462, %land.lhs.true459, %if.end457
  br label %if.end465

if.end465:                                        ; preds = %if.end464, %if.then437
  br label %if.end466

if.end466:                                        ; preds = %if.end465, %if.end430
  br label %if.end467

if.end467:                                        ; preds = %if.end466, %if.end416
  br label %if.end468

if.end468:                                        ; preds = %if.end467, %land.lhs.true382, %if.else379
  br label %if.end469

if.end469:                                        ; preds = %if.end468
  br label %if.end1041

if.else470:                                       ; preds = %if.end277
  %304 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr471 = getelementptr inbounds %struct.value, %struct.value* %304, i32 0, i32 0
  %305 = load i32, i32* %isarr471, align 4
  %tobool472 = icmp ne i32 %305, 0
  br i1 %tobool472, label %if.end516, label %land.lhs.true473

land.lhs.true473:                                 ; preds = %if.else470
  %306 = load i32, i32* %word, align 4
  %tobool474 = icmp ne i32 %306, 0
  br i1 %tobool474, label %if.end516, label %land.lhs.true475

land.lhs.true475:                                 ; preds = %land.lhs.true473
  %307 = load i32, i32* %quote_arg, align 4
  %tobool476 = icmp ne i32 %307, 0
  br i1 %tobool476, label %if.end516, label %if.then477

if.then477:                                       ; preds = %land.lhs.true475
  %308 = load i8*, i8** %s, align 4
  %call478 = call i32 @strlen(i8* %308)
  store i32 %call478, i32* %l, align 4
  %309 = load i32, i32* %a2.addr, align 4
  %tobool479 = icmp ne i32 %309, 0
  br i1 %tobool479, label %if.then480, label %if.else492

if.then480:                                       ; preds = %if.then477
  %310 = load i32, i32* %l, align 4
  %tobool481 = icmp ne i32 %310, 0
  br i1 %tobool481, label %lor.lhs.false482, label %if.then486

lor.lhs.false482:                                 ; preds = %if.then480
  %311 = load i8*, i8** %s, align 4
  %312 = load i8, i8* %311, align 1
  %conv483 = sext i8 %312 to i32
  %cmp484 = icmp ne i32 %conv483, 42
  br i1 %cmp484, label %if.then486, label %if.end491

if.then486:                                       ; preds = %lor.lhs.false482, %if.then480
  %313 = load i32, i32* %l, align 4
  %add487 = add nsw i32 %313, 2
  %call488 = call i8* @hcalloc(i32 %add487)
  store i8* %call488, i8** %d, align 4
  %314 = load i8*, i8** %d, align 4
  store i8 42, i8* %314, align 1
  %315 = load i8*, i8** %d, align 4
  %add.ptr489 = getelementptr inbounds i8, i8* %315, i32 1
  %316 = load i8*, i8** %s, align 4
  %call490 = call i8* @strcpy(i8* %add.ptr489, i8* %316)
  %317 = load i8*, i8** %d, align 4
  store i8* %317, i8** %s, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.then486, %lor.lhs.false482
  br label %if.end515

if.else492:                                       ; preds = %if.then477
  %318 = load i32, i32* %l, align 4
  %tobool493 = icmp ne i32 %318, 0
  br i1 %tobool493, label %lor.lhs.false494, label %if.then509

lor.lhs.false494:                                 ; preds = %if.else492
  %319 = load i8*, i8** %s, align 4
  %320 = load i32, i32* %l, align 4
  %sub495 = sub nsw i32 %320, 1
  %arrayidx496 = getelementptr inbounds i8, i8* %319, i32 %sub495
  %321 = load i8, i8* %arrayidx496, align 1
  %conv497 = sext i8 %321 to i32
  %cmp498 = icmp ne i32 %conv497, 42
  br i1 %cmp498, label %if.then509, label %lor.lhs.false500

lor.lhs.false500:                                 ; preds = %lor.lhs.false494
  %322 = load i32, i32* %l, align 4
  %cmp501 = icmp sgt i32 %322, 1
  br i1 %cmp501, label %land.lhs.true503, label %if.end514

land.lhs.true503:                                 ; preds = %lor.lhs.false500
  %323 = load i8*, i8** %s, align 4
  %324 = load i32, i32* %l, align 4
  %sub504 = sub nsw i32 %324, 2
  %arrayidx505 = getelementptr inbounds i8, i8* %323, i32 %sub504
  %325 = load i8, i8* %arrayidx505, align 1
  %conv506 = sext i8 %325 to i32
  %cmp507 = icmp eq i32 %conv506, 92
  br i1 %cmp507, label %if.then509, label %if.end514

if.then509:                                       ; preds = %land.lhs.true503, %lor.lhs.false494, %if.else492
  %326 = load i32, i32* %l, align 4
  %add510 = add nsw i32 %326, 2
  %call511 = call i8* @hcalloc(i32 %add510)
  store i8* %call511, i8** %d, align 4
  %327 = load i8*, i8** %d, align 4
  %328 = load i8*, i8** %s, align 4
  %call512 = call i8* @strcpy(i8* %327, i8* %328)
  %329 = load i8*, i8** %d, align 4
  %call513 = call i8* @strcat(i8* %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0))
  %330 = load i8*, i8** %d, align 4
  store i8* %330, i8** %s, align 4
  br label %if.end514

if.end514:                                        ; preds = %if.then509, %land.lhs.true503, %lor.lhs.false500
  br label %if.end515

if.end515:                                        ; preds = %if.end514, %if.end491
  br label %if.end516

if.end516:                                        ; preds = %if.end515, %land.lhs.true475, %land.lhs.true473, %if.else470
  %331 = load i32, i32* %keymatch, align 4
  %tobool517 = icmp ne i32 %331, 0
  br i1 %tobool517, label %if.else543, label %if.then518

if.then518:                                       ; preds = %if.end516
  %332 = load i32, i32* %quote_arg, align 4
  %tobool519 = icmp ne i32 %332, 0
  br i1 %tobool519, label %if.then520, label %if.else540

if.then520:                                       ; preds = %if.then518
  %333 = load i8*, i8** %s, align 4
  call void @untokenize(i8* %333)
  %334 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr521 = getelementptr inbounds %struct.value, %struct.value* %334, i32 0, i32 0
  %335 = load i32, i32* %isarr521, align 4
  %tobool522 = icmp ne i32 %335, 0
  br i1 %tobool522, label %if.end539, label %land.lhs.true523

land.lhs.true523:                                 ; preds = %if.then520
  %336 = load i32, i32* %word, align 4
  %tobool524 = icmp ne i32 %336, 0
  br i1 %tobool524, label %if.end539, label %if.then525

if.then525:                                       ; preds = %land.lhs.true523
  %337 = load i8*, i8** %s, align 4
  %call526 = call i32 @strlen(i8* %337)
  store i32 %call526, i32* %l, align 4
  %338 = load i32, i32* %l, align 4
  %add527 = add nsw i32 %338, 2
  %call528 = call i8* @hcalloc(i32 %add527)
  store i8* %call528, i8** %d, align 4
  %339 = load i32, i32* %a2.addr, align 4
  %tobool529 = icmp ne i32 %339, 0
  br i1 %tobool529, label %if.then530, label %if.else533

if.then530:                                       ; preds = %if.then525
  %340 = load i8*, i8** %d, align 4
  store i8 -121, i8* %340, align 1
  %341 = load i8*, i8** %d, align 4
  %add.ptr531 = getelementptr inbounds i8, i8* %341, i32 1
  %342 = load i8*, i8** %s, align 4
  %call532 = call i8* @strcpy(i8* %add.ptr531, i8* %342)
  br label %if.end538

if.else533:                                       ; preds = %if.then525
  %343 = load i8*, i8** %d, align 4
  %344 = load i8*, i8** %s, align 4
  %call534 = call i8* @strcpy(i8* %343, i8* %344)
  %345 = load i8*, i8** %d, align 4
  %346 = load i32, i32* %l, align 4
  %arrayidx535 = getelementptr inbounds i8, i8* %345, i32 %346
  store i8 -121, i8* %arrayidx535, align 1
  %347 = load i8*, i8** %d, align 4
  %348 = load i32, i32* %l, align 4
  %add536 = add nsw i32 %348, 1
  %arrayidx537 = getelementptr inbounds i8, i8* %347, i32 %add536
  store i8 0, i8* %arrayidx537, align 1
  br label %if.end538

if.end538:                                        ; preds = %if.else533, %if.then530
  %349 = load i8*, i8** %d, align 4
  store i8* %349, i8** %s, align 4
  br label %if.end539

if.end539:                                        ; preds = %if.end538, %land.lhs.true523, %if.then520
  br label %if.end541

if.else540:                                       ; preds = %if.then518
  %350 = load i8*, i8** %s, align 4
  call void @tokenize(i8* %350)
  br label %if.end541

if.end541:                                        ; preds = %if.else540, %if.end539
  %351 = load i8*, i8** %s, align 4
  call void @remnulargs(i8* %351)
  %352 = load i8*, i8** %s, align 4
  %call542 = call %struct.patprog* @patcompile(i8* %352, i32 0, i8** null)
  store %struct.patprog* %call542, %struct.patprog** %pprog, align 4
  br label %if.end544

if.else543:                                       ; preds = %if.end516
  store %struct.patprog* null, %struct.patprog** %pprog, align 4
  br label %if.end544

if.end544:                                        ; preds = %if.else543, %if.end541
  %353 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr545 = getelementptr inbounds %struct.value, %struct.value* %353, i32 0, i32 0
  %354 = load i32, i32* %isarr545, align 4
  %tobool546 = icmp ne i32 %354, 0
  br i1 %tobool546, label %if.then547, label %if.else673

if.then547:                                       ; preds = %if.end544
  %355 = load i32, i32* %ishash, align 4
  %tobool548 = icmp ne i32 %355, 0
  br i1 %tobool548, label %if.then549, label %if.else591

if.then549:                                       ; preds = %if.then547
  %356 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  store %struct.patprog* %356, %struct.patprog** @scanprog, align 4
  %357 = load i8*, i8** %s, align 4
  store i8* %357, i8** @scanstr, align 4
  %358 = load i32, i32* %keymatch, align 4
  %tobool550 = icmp ne i32 %358, 0
  br i1 %tobool550, label %if.then551, label %if.else554

if.then551:                                       ; preds = %if.then549
  %359 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr552 = getelementptr inbounds %struct.value, %struct.value* %359, i32 0, i32 0
  %360 = load i32, i32* %isarr552, align 4
  %or553 = or i32 %360, 128
  store i32 %or553, i32* %isarr552, align 4
  br label %if.end566

if.else554:                                       ; preds = %if.then549
  %361 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool555 = icmp ne %struct.patprog* %361, null
  br i1 %tobool555, label %if.end557, label %if.then556

if.then556:                                       ; preds = %if.else554
  store i32 1, i32* %retval, align 4
  br label %return

if.end557:                                        ; preds = %if.else554
  %362 = load i32, i32* %ind, align 4
  %tobool558 = icmp ne i32 %362, 0
  br i1 %tobool558, label %if.then559, label %if.else562

if.then559:                                       ; preds = %if.end557
  %363 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr560 = getelementptr inbounds %struct.value, %struct.value* %363, i32 0, i32 0
  %364 = load i32, i32* %isarr560, align 4
  %or561 = or i32 %364, 8
  store i32 %or561, i32* %isarr560, align 4
  br label %if.end565

if.else562:                                       ; preds = %if.end557
  %365 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr563 = getelementptr inbounds %struct.value, %struct.value* %365, i32 0, i32 0
  %366 = load i32, i32* %isarr563, align 4
  %or564 = or i32 %366, 16
  store i32 %or564, i32* %isarr563, align 4
  br label %if.end565

if.end565:                                        ; preds = %if.else562, %if.then559
  br label %if.end566

if.end566:                                        ; preds = %if.end565, %if.then551
  %367 = load i32, i32* %down, align 4
  %tobool567 = icmp ne i32 %367, 0
  br i1 %tobool567, label %if.then568, label %if.end571

if.then568:                                       ; preds = %if.end566
  %368 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr569 = getelementptr inbounds %struct.value, %struct.value* %368, i32 0, i32 0
  %369 = load i32, i32* %isarr569, align 4
  %or570 = or i32 %369, 32
  store i32 %or570, i32* %isarr569, align 4
  br label %if.end571

if.end571:                                        ; preds = %if.then568, %if.end566
  %370 = load %struct.value*, %struct.value** %v.addr, align 4
  %call572 = call i8** @getvaluearr(%struct.value* %370)
  store i8** %call572, i8*** %ta, align 4
  %tobool573 = icmp ne i8** %call572, null
  br i1 %tobool573, label %land.lhs.true574, label %if.end590

land.lhs.true574:                                 ; preds = %if.end571
  %371 = load i8**, i8*** %ta, align 4
  %372 = load i8*, i8** %371, align 4
  %tobool575 = icmp ne i8* %372, null
  br i1 %tobool575, label %if.then584, label %lor.lhs.false576

lor.lhs.false576:                                 ; preds = %land.lhs.true574
  %373 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr577 = getelementptr inbounds %struct.value, %struct.value* %373, i32 0, i32 0
  %374 = load i32, i32* %isarr577, align 4
  %and578 = and i32 %374, 32
  %tobool579 = icmp ne i32 %and578, 0
  br i1 %tobool579, label %land.lhs.true580, label %if.end590

land.lhs.true580:                                 ; preds = %lor.lhs.false576
  %375 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr581 = getelementptr inbounds %struct.value, %struct.value* %375, i32 0, i32 0
  %376 = load i32, i32* %isarr581, align 4
  %and582 = and i32 %376, 152
  %tobool583 = icmp ne i32 %and582, 0
  br i1 %tobool583, label %if.then584, label %if.end590

if.then584:                                       ; preds = %land.lhs.true580, %land.lhs.true574
  %377 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags585 = getelementptr inbounds %struct.value, %struct.value* %377, i32 0, i32 2
  %378 = load i32, i32* %flags585, align 4
  %and586 = and i32 %378, 1
  %tobool587 = icmp ne i32 %and586, 0
  %cond588 = select i1 %tobool587, i32 1, i32 0
  %379 = load i32*, i32** %inv.addr, align 4
  store i32 %cond588, i32* %379, align 4
  %380 = load %struct.value*, %struct.value** %v.addr, align 4
  %end589 = getelementptr inbounds %struct.value, %struct.value* %380, i32 0, i32 4
  %381 = load i32, i32* %end589, align 4
  %382 = load i32*, i32** %w.addr, align 4
  store i32 %381, i32* %382, align 4
  store %struct.patprog* null, %struct.patprog** @scanprog, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end590:                                        ; preds = %land.lhs.true580, %lor.lhs.false576, %if.end571
  store %struct.patprog* null, %struct.patprog** @scanprog, align 4
  br label %if.end593

if.else591:                                       ; preds = %if.then547
  %383 = load %struct.value*, %struct.value** %v.addr, align 4
  %call592 = call i8** @getarrvalue(%struct.value* %383)
  store i8** %call592, i8*** %ta, align 4
  br label %if.end593

if.end593:                                        ; preds = %if.else591, %if.end590
  %384 = load i8**, i8*** %ta, align 4
  %tobool594 = icmp ne i8** %384, null
  br i1 %tobool594, label %lor.lhs.false595, label %if.then597

lor.lhs.false595:                                 ; preds = %if.end593
  %385 = load i8**, i8*** %ta, align 4
  %386 = load i8*, i8** %385, align 4
  %tobool596 = icmp ne i8* %386, null
  br i1 %tobool596, label %if.end601, label %if.then597

if.then597:                                       ; preds = %lor.lhs.false595, %if.end593
  %387 = load i32, i32* %down, align 4
  %tobool598 = icmp ne i32 %387, 0
  %lnot599 = xor i1 %tobool598, true
  %lnot.ext600 = zext i1 %lnot599 to i32
  store i32 %lnot.ext600, i32* %retval, align 4
  br label %return

if.end601:                                        ; preds = %lor.lhs.false595
  %388 = load i8**, i8*** %ta, align 4
  %call602 = call i32 @arrlen(i8** %388)
  store i32 %call602, i32* %len, align 4
  %389 = load i32, i32* %beg, align 4
  %cmp603 = icmp slt i32 %389, 0
  br i1 %cmp603, label %if.then605, label %if.end607

if.then605:                                       ; preds = %if.end601
  %390 = load i32, i32* %len, align 4
  %391 = load i32, i32* %beg, align 4
  %add606 = add nsw i32 %391, %390
  store i32 %add606, i32* %beg, align 4
  br label %if.end607

if.end607:                                        ; preds = %if.then605, %if.end601
  %392 = load i32, i32* %down, align 4
  %tobool608 = icmp ne i32 %392, 0
  br i1 %tobool608, label %if.then609, label %if.else614

if.then609:                                       ; preds = %if.end607
  %393 = load i32, i32* %beg, align 4
  %cmp610 = icmp slt i32 %393, 0
  br i1 %cmp610, label %if.then612, label %if.end613

if.then612:                                       ; preds = %if.then609
  store i32 0, i32* %retval, align 4
  br label %return

if.end613:                                        ; preds = %if.then609
  br label %if.end620

if.else614:                                       ; preds = %if.end607
  %394 = load i32, i32* %beg, align 4
  %395 = load i32, i32* %len, align 4
  %cmp615 = icmp sge i32 %394, %395
  br i1 %cmp615, label %if.then617, label %if.end619

if.then617:                                       ; preds = %if.else614
  %396 = load i32, i32* %len, align 4
  %add618 = add nsw i32 %396, 1
  store i32 %add618, i32* %retval, align 4
  br label %return

if.end619:                                        ; preds = %if.else614
  br label %if.end620

if.end620:                                        ; preds = %if.end619, %if.end613
  %397 = load i32, i32* %beg, align 4
  %cmp621 = icmp sge i32 %397, 0
  br i1 %cmp621, label %land.lhs.true623, label %if.end672

land.lhs.true623:                                 ; preds = %if.end620
  %398 = load i32, i32* %beg, align 4
  %399 = load i32, i32* %len, align 4
  %cmp624 = icmp slt i32 %398, %399
  br i1 %cmp624, label %if.then626, label %if.end672

if.then626:                                       ; preds = %land.lhs.true623
  %400 = load i32, i32* %down, align 4
  %tobool627 = icmp ne i32 %400, 0
  br i1 %tobool627, label %if.then628, label %if.else652

if.then628:                                       ; preds = %if.then626
  %401 = load i32, i32* %hasbeg, align 4
  %tobool629 = icmp ne i32 %401, 0
  br i1 %tobool629, label %if.end632, label %if.then630

if.then630:                                       ; preds = %if.then628
  %402 = load i32, i32* %len, align 4
  %sub631 = sub nsw i32 %402, 1
  store i32 %sub631, i32* %beg, align 4
  br label %if.end632

if.end632:                                        ; preds = %if.then630, %if.then628
  %403 = load i32, i32* %beg, align 4
  %add633 = add nsw i32 1, %403
  store i32 %add633, i32* %r, align 4
  %404 = load i8**, i8*** %ta, align 4
  %405 = load i32, i32* %beg, align 4
  %add.ptr634 = getelementptr inbounds i8*, i8** %404, i32 %405
  store i8** %add.ptr634, i8*** %p, align 4
  br label %for.cond635

for.cond635:                                      ; preds = %for.inc648, %if.end632
  %406 = load i8**, i8*** %p, align 4
  %407 = load i8**, i8*** %ta, align 4
  %cmp636 = icmp uge i8** %406, %407
  br i1 %cmp636, label %for.body638, label %for.end651

for.body638:                                      ; preds = %for.cond635
  %408 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool639 = icmp ne %struct.patprog* %408, null
  br i1 %tobool639, label %land.lhs.true640, label %if.end647

land.lhs.true640:                                 ; preds = %for.body638
  %409 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %410 = load i8**, i8*** %p, align 4
  %411 = load i8*, i8** %410, align 4
  %call641 = call i32 @pattry(%struct.patprog* %409, i8* %411)
  %tobool642 = icmp ne i32 %call641, 0
  br i1 %tobool642, label %land.lhs.true643, label %if.end647

land.lhs.true643:                                 ; preds = %land.lhs.true640
  %412 = load i32, i32* %num, align 4
  %dec644 = add nsw i32 %412, -1
  store i32 %dec644, i32* %num, align 4
  %tobool645 = icmp ne i32 %dec644, 0
  br i1 %tobool645, label %if.end647, label %if.then646

if.then646:                                       ; preds = %land.lhs.true643
  %413 = load i32, i32* %r, align 4
  store i32 %413, i32* %retval, align 4
  br label %return

if.end647:                                        ; preds = %land.lhs.true643, %land.lhs.true640, %for.body638
  br label %for.inc648

for.inc648:                                       ; preds = %if.end647
  %414 = load i32, i32* %r, align 4
  %dec649 = add nsw i32 %414, -1
  store i32 %dec649, i32* %r, align 4
  %415 = load i8**, i8*** %p, align 4
  %incdec.ptr650 = getelementptr inbounds i8*, i8** %415, i32 -1
  store i8** %incdec.ptr650, i8*** %p, align 4
  br label %for.cond635

for.end651:                                       ; preds = %for.cond635
  br label %if.end671

if.else652:                                       ; preds = %if.then626
  %416 = load i32, i32* %beg, align 4
  %add653 = add nsw i32 1, %416
  store i32 %add653, i32* %r, align 4
  %417 = load i8**, i8*** %ta, align 4
  %418 = load i32, i32* %beg, align 4
  %add.ptr654 = getelementptr inbounds i8*, i8** %417, i32 %418
  store i8** %add.ptr654, i8*** %p, align 4
  br label %for.cond655

for.cond655:                                      ; preds = %for.inc667, %if.else652
  %419 = load i8**, i8*** %p, align 4
  %420 = load i8*, i8** %419, align 4
  %tobool656 = icmp ne i8* %420, null
  br i1 %tobool656, label %for.body657, label %for.end670

for.body657:                                      ; preds = %for.cond655
  %421 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool658 = icmp ne %struct.patprog* %421, null
  br i1 %tobool658, label %land.lhs.true659, label %if.end666

land.lhs.true659:                                 ; preds = %for.body657
  %422 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %423 = load i8**, i8*** %p, align 4
  %424 = load i8*, i8** %423, align 4
  %call660 = call i32 @pattry(%struct.patprog* %422, i8* %424)
  %tobool661 = icmp ne i32 %call660, 0
  br i1 %tobool661, label %land.lhs.true662, label %if.end666

land.lhs.true662:                                 ; preds = %land.lhs.true659
  %425 = load i32, i32* %num, align 4
  %dec663 = add nsw i32 %425, -1
  store i32 %dec663, i32* %num, align 4
  %tobool664 = icmp ne i32 %dec663, 0
  br i1 %tobool664, label %if.end666, label %if.then665

if.then665:                                       ; preds = %land.lhs.true662
  %426 = load i32, i32* %r, align 4
  store i32 %426, i32* %retval, align 4
  br label %return

if.end666:                                        ; preds = %land.lhs.true662, %land.lhs.true659, %for.body657
  br label %for.inc667

for.inc667:                                       ; preds = %if.end666
  %427 = load i32, i32* %r, align 4
  %inc668 = add nsw i32 %427, 1
  store i32 %inc668, i32* %r, align 4
  %428 = load i8**, i8*** %p, align 4
  %incdec.ptr669 = getelementptr inbounds i8*, i8** %428, i32 1
  store i8** %incdec.ptr669, i8*** %p, align 4
  br label %for.cond655

for.end670:                                       ; preds = %for.cond655
  br label %if.end671

if.end671:                                        ; preds = %for.end670, %for.end651
  br label %if.end672

if.end672:                                        ; preds = %if.end671, %land.lhs.true623, %if.end620
  br label %if.end1040

if.else673:                                       ; preds = %if.end544
  %429 = load i32, i32* %word, align 4
  %tobool674 = icmp ne i32 %429, 0
  br i1 %tobool674, label %if.then675, label %if.else794

if.then675:                                       ; preds = %if.else673
  %430 = load %struct.value*, %struct.value** %v.addr, align 4
  %call676 = call i8* @getstrvalue(%struct.value* %430)
  store i8* %call676, i8** %s, align 4
  store i8* %call676, i8** %d, align 4
  %431 = load i8*, i8** %sep, align 4
  %call677 = call i8** @sepsplit(i8* %call676, i8* %431, i32 1, i32 1)
  store i8** %call677, i8*** %ta, align 4
  %432 = load i8**, i8*** %ta, align 4
  %call678 = call i32 @arrlen(i8** %432)
  store i32 %call678, i32* %len, align 4
  %433 = load i32, i32* %beg, align 4
  %cmp679 = icmp slt i32 %433, 0
  br i1 %cmp679, label %if.then681, label %if.end683

if.then681:                                       ; preds = %if.then675
  %434 = load i32, i32* %len, align 4
  %435 = load i32, i32* %beg, align 4
  %add682 = add nsw i32 %435, %434
  store i32 %add682, i32* %beg, align 4
  br label %if.end683

if.end683:                                        ; preds = %if.then681, %if.then675
  %436 = load i32, i32* %down, align 4
  %tobool684 = icmp ne i32 %436, 0
  br i1 %tobool684, label %if.then685, label %if.else690

if.then685:                                       ; preds = %if.end683
  %437 = load i32, i32* %beg, align 4
  %cmp686 = icmp slt i32 %437, 0
  br i1 %cmp686, label %if.then688, label %if.end689

if.then688:                                       ; preds = %if.then685
  store i32 0, i32* %retval, align 4
  br label %return

if.end689:                                        ; preds = %if.then685
  br label %if.end696

if.else690:                                       ; preds = %if.end683
  %438 = load i32, i32* %beg, align 4
  %439 = load i32, i32* %len, align 4
  %cmp691 = icmp sge i32 %438, %439
  br i1 %cmp691, label %if.then693, label %if.end695

if.then693:                                       ; preds = %if.else690
  %440 = load i32, i32* %len, align 4
  %add694 = add nsw i32 %440, 1
  store i32 %add694, i32* %retval, align 4
  br label %return

if.end695:                                        ; preds = %if.else690
  br label %if.end696

if.end696:                                        ; preds = %if.end695, %if.end689
  %441 = load i32, i32* %beg, align 4
  %cmp697 = icmp sge i32 %441, 0
  br i1 %cmp697, label %land.lhs.true699, label %if.end755

land.lhs.true699:                                 ; preds = %if.end696
  %442 = load i32, i32* %beg, align 4
  %443 = load i32, i32* %len, align 4
  %cmp700 = icmp slt i32 %442, %443
  br i1 %cmp700, label %if.then702, label %if.end755

if.then702:                                       ; preds = %land.lhs.true699
  %444 = load i32, i32* %down, align 4
  %tobool703 = icmp ne i32 %444, 0
  br i1 %tobool703, label %if.then704, label %if.else732

if.then704:                                       ; preds = %if.then702
  %445 = load i32, i32* %hasbeg, align 4
  %tobool705 = icmp ne i32 %445, 0
  br i1 %tobool705, label %if.end708, label %if.then706

if.then706:                                       ; preds = %if.then704
  %446 = load i32, i32* %len, align 4
  %sub707 = sub nsw i32 %446, 1
  store i32 %sub707, i32* %beg, align 4
  br label %if.end708

if.end708:                                        ; preds = %if.then706, %if.then704
  %447 = load i32, i32* %beg, align 4
  %add709 = add nsw i32 1, %447
  store i32 %add709, i32* %r, align 4
  %448 = load i8**, i8*** %ta, align 4
  %449 = load i32, i32* %beg, align 4
  %add.ptr710 = getelementptr inbounds i8*, i8** %448, i32 %449
  store i8** %add.ptr710, i8*** %p, align 4
  br label %for.cond711

for.cond711:                                      ; preds = %for.inc724, %if.end708
  %450 = load i8**, i8*** %p, align 4
  %451 = load i8**, i8*** %ta, align 4
  %cmp712 = icmp uge i8** %450, %451
  br i1 %cmp712, label %for.body714, label %for.end727

for.body714:                                      ; preds = %for.cond711
  %452 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool715 = icmp ne %struct.patprog* %452, null
  br i1 %tobool715, label %land.lhs.true716, label %if.end723

land.lhs.true716:                                 ; preds = %for.body714
  %453 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %454 = load i8**, i8*** %p, align 4
  %455 = load i8*, i8** %454, align 4
  %call717 = call i32 @pattry(%struct.patprog* %453, i8* %455)
  %tobool718 = icmp ne i32 %call717, 0
  br i1 %tobool718, label %land.lhs.true719, label %if.end723

land.lhs.true719:                                 ; preds = %land.lhs.true716
  %456 = load i32, i32* %num, align 4
  %dec720 = add nsw i32 %456, -1
  store i32 %dec720, i32* %num, align 4
  %tobool721 = icmp ne i32 %dec720, 0
  br i1 %tobool721, label %if.end723, label %if.then722

if.then722:                                       ; preds = %land.lhs.true719
  br label %for.end727

if.end723:                                        ; preds = %land.lhs.true719, %land.lhs.true716, %for.body714
  br label %for.inc724

for.inc724:                                       ; preds = %if.end723
  %457 = load i8**, i8*** %p, align 4
  %incdec.ptr725 = getelementptr inbounds i8*, i8** %457, i32 -1
  store i8** %incdec.ptr725, i8*** %p, align 4
  %458 = load i32, i32* %r, align 4
  %dec726 = add nsw i32 %458, -1
  store i32 %dec726, i32* %r, align 4
  br label %for.cond711

for.end727:                                       ; preds = %if.then722, %for.cond711
  %459 = load i8**, i8*** %p, align 4
  %460 = load i8**, i8*** %ta, align 4
  %cmp728 = icmp ult i8** %459, %460
  br i1 %cmp728, label %if.then730, label %if.end731

if.then730:                                       ; preds = %for.end727
  store i32 0, i32* %retval, align 4
  br label %return

if.end731:                                        ; preds = %for.end727
  br label %if.end754

if.else732:                                       ; preds = %if.then702
  %461 = load i32, i32* %beg, align 4
  %add733 = add nsw i32 1, %461
  store i32 %add733, i32* %r, align 4
  %462 = load i8**, i8*** %ta, align 4
  %463 = load i32, i32* %beg, align 4
  %add.ptr734 = getelementptr inbounds i8*, i8** %462, i32 %463
  store i8** %add.ptr734, i8*** %p, align 4
  br label %for.cond735

for.cond735:                                      ; preds = %for.inc747, %if.else732
  %464 = load i8**, i8*** %p, align 4
  %465 = load i8*, i8** %464, align 4
  %tobool736 = icmp ne i8* %465, null
  br i1 %tobool736, label %for.body737, label %for.end750

for.body737:                                      ; preds = %for.cond735
  %466 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool738 = icmp ne %struct.patprog* %466, null
  br i1 %tobool738, label %land.lhs.true739, label %if.end746

land.lhs.true739:                                 ; preds = %for.body737
  %467 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %468 = load i8**, i8*** %p, align 4
  %469 = load i8*, i8** %468, align 4
  %call740 = call i32 @pattry(%struct.patprog* %467, i8* %469)
  %tobool741 = icmp ne i32 %call740, 0
  br i1 %tobool741, label %land.lhs.true742, label %if.end746

land.lhs.true742:                                 ; preds = %land.lhs.true739
  %470 = load i32, i32* %num, align 4
  %dec743 = add nsw i32 %470, -1
  store i32 %dec743, i32* %num, align 4
  %tobool744 = icmp ne i32 %dec743, 0
  br i1 %tobool744, label %if.end746, label %if.then745

if.then745:                                       ; preds = %land.lhs.true742
  br label %for.end750

if.end746:                                        ; preds = %land.lhs.true742, %land.lhs.true739, %for.body737
  br label %for.inc747

for.inc747:                                       ; preds = %if.end746
  %471 = load i32, i32* %r, align 4
  %inc748 = add nsw i32 %471, 1
  store i32 %inc748, i32* %r, align 4
  %472 = load i8**, i8*** %p, align 4
  %incdec.ptr749 = getelementptr inbounds i8*, i8** %472, i32 1
  store i8** %incdec.ptr749, i8*** %p, align 4
  br label %for.cond735

for.end750:                                       ; preds = %if.then745, %for.cond735
  %473 = load i8**, i8*** %p, align 4
  %474 = load i8*, i8** %473, align 4
  %tobool751 = icmp ne i8* %474, null
  br i1 %tobool751, label %if.end753, label %if.then752

if.then752:                                       ; preds = %for.end750
  store i32 0, i32* %retval, align 4
  br label %return

if.end753:                                        ; preds = %for.end750
  br label %if.end754

if.end754:                                        ; preds = %if.end753, %if.end731
  br label %if.end755

if.end755:                                        ; preds = %if.end754, %land.lhs.true699, %if.end696
  %475 = load i32, i32* %a2.addr, align 4
  %tobool756 = icmp ne i32 %475, 0
  br i1 %tobool756, label %if.then757, label %if.end759

if.then757:                                       ; preds = %if.end755
  %476 = load i32, i32* %r, align 4
  %inc758 = add nsw i32 %476, 1
  store i32 %inc758, i32* %r, align 4
  br label %if.end759

if.end759:                                        ; preds = %if.then757, %if.end755
  store i32 0, i32* %i, align 4
  br label %for.cond760

for.cond760:                                      ; preds = %for.inc789, %if.end759
  %477 = load i8*, i8** %sep, align 4
  %call761 = call i8* @findword(i8** %d, i8* %477)
  store i8* %call761, i8** %t, align 4
  %tobool762 = icmp ne i8* %call761, null
  br i1 %tobool762, label %land.rhs763, label %land.end766

land.rhs763:                                      ; preds = %for.cond760
  %478 = load i8*, i8** %t, align 4
  %479 = load i8, i8* %478, align 1
  %conv764 = sext i8 %479 to i32
  %tobool765 = icmp ne i32 %conv764, 0
  br label %land.end766

land.end766:                                      ; preds = %land.rhs763, %for.cond760
  %480 = phi i1 [ false, %for.cond760 ], [ %tobool765, %land.rhs763 ]
  br i1 %480, label %for.body767, label %for.end791

for.body767:                                      ; preds = %land.end766
  %481 = load i32, i32* %r, align 4
  %dec768 = add nsw i32 %481, -1
  store i32 %dec768, i32* %r, align 4
  %tobool769 = icmp ne i32 %dec768, 0
  br i1 %tobool769, label %if.end788, label %if.then770

if.then770:                                       ; preds = %for.body767
  %482 = load i8*, i8** %t, align 4
  %483 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast771 = ptrtoint i8* %482 to i32
  %sub.ptr.rhs.cast772 = ptrtoint i8* %483 to i32
  %sub.ptr.sub773 = sub i32 %sub.ptr.lhs.cast771, %sub.ptr.rhs.cast772
  %484 = load i32, i32* %a2.addr, align 4
  %tobool774 = icmp ne i32 %484, 0
  %cond775 = select i1 %tobool774, i32 -1, i32 1
  %add776 = add nsw i32 %sub.ptr.sub773, %cond775
  store i32 %add776, i32* %r, align 4
  %485 = load i32, i32* %a2.addr, align 4
  %tobool777 = icmp ne i32 %485, 0
  br i1 %tobool777, label %if.end787, label %land.lhs.true778

land.lhs.true778:                                 ; preds = %if.then770
  %486 = load i8*, i8** %tt, align 4
  %487 = load i8, i8* %486, align 1
  %conv779 = sext i8 %487 to i32
  %cmp780 = icmp ne i32 %conv779, 44
  br i1 %cmp780, label %if.then782, label %if.end787

if.then782:                                       ; preds = %land.lhs.true778
  %488 = load i32, i32* %r, align 4
  %489 = load i8**, i8*** %ta, align 4
  %490 = load i32, i32* %i, align 4
  %arrayidx783 = getelementptr inbounds i8*, i8** %489, i32 %490
  %491 = load i8*, i8** %arrayidx783, align 4
  %call784 = call i32 @strlen(i8* %491)
  %add785 = add i32 %488, %call784
  %sub786 = sub i32 %add785, 1
  %492 = load i32*, i32** %w.addr, align 4
  store i32 %sub786, i32* %492, align 4
  br label %if.end787

if.end787:                                        ; preds = %if.then782, %land.lhs.true778, %if.then770
  %493 = load i32, i32* %r, align 4
  store i32 %493, i32* %retval, align 4
  br label %return

if.end788:                                        ; preds = %for.body767
  br label %for.inc789

for.inc789:                                       ; preds = %if.end788
  %494 = load i32, i32* %i, align 4
  %inc790 = add nsw i32 %494, 1
  store i32 %inc790, i32* %i, align 4
  br label %for.cond760

for.end791:                                       ; preds = %land.end766
  %495 = load i32, i32* %a2.addr, align 4
  %tobool792 = icmp ne i32 %495, 0
  %cond793 = select i1 %tobool792, i32 -1, i32 0
  store i32 %cond793, i32* %retval, align 4
  br label %return

if.else794:                                       ; preds = %if.else673
  %496 = load %struct.value*, %struct.value** %v.addr, align 4
  %call795 = call i8* @getstrvalue(%struct.value* %496)
  store i8* %call795, i8** %d, align 4
  %497 = load i8*, i8** %d, align 4
  %tobool796 = icmp ne i8* %497, null
  br i1 %tobool796, label %lor.lhs.false797, label %if.then799

lor.lhs.false797:                                 ; preds = %if.else794
  %498 = load i8*, i8** %d, align 4
  %499 = load i8, i8* %498, align 1
  %tobool798 = icmp ne i8 %499, 0
  br i1 %tobool798, label %if.end800, label %if.then799

if.then799:                                       ; preds = %lor.lhs.false797, %if.else794
  store i32 0, i32* %retval, align 4
  br label %return

if.end800:                                        ; preds = %lor.lhs.false797
  %500 = load i8*, i8** %d, align 4
  %call801 = call i32 @mb_metastrlenend(i8* %500, i32 0, i8* null)
  store i32 %call801, i32* %len, align 4
  %501 = load i8*, i8** %d, align 4
  %call802 = call i32 @strlen(i8* %501)
  store i32 %call802, i32* %slen, align 4
  %502 = load i32, i32* %beg, align 4
  %cmp803 = icmp slt i32 %502, 0
  br i1 %cmp803, label %if.then805, label %if.end807

if.then805:                                       ; preds = %if.end800
  %503 = load i32, i32* %len, align 4
  %504 = load i32, i32* %beg, align 4
  %add806 = add nsw i32 %504, %503
  store i32 %add806, i32* %beg, align 4
  br label %if.end807

if.end807:                                        ; preds = %if.then805, %if.end800
  call void @mb_charinit()
  %505 = load i32, i32* %beg, align 4
  %cmp808 = icmp sge i32 %505, 0
  br i1 %cmp808, label %land.lhs.true810, label %if.end1033

land.lhs.true810:                                 ; preds = %if.end807
  %506 = load i32, i32* %beg, align 4
  %507 = load i32, i32* %len, align 4
  %cmp811 = icmp slt i32 %506, %507
  br i1 %cmp811, label %if.then813, label %if.end1033

if.then813:                                       ; preds = %land.lhs.true810
  %508 = load i8*, i8** %d, align 4
  %509 = load i32, i32* %slen, align 4
  %add.ptr814 = getelementptr inbounds i8, i8* %508, i32 %509
  store i8* %add.ptr814, i8** %de, align 4
  %510 = load i32, i32* %a2.addr, align 4
  %tobool815 = icmp ne i32 %510, 0
  br i1 %tobool815, label %if.then816, label %if.else904

if.then816:                                       ; preds = %if.then813
  %511 = load i32, i32* %down, align 4
  %tobool817 = icmp ne i32 %511, 0
  br i1 %tobool817, label %if.then818, label %if.else870

if.then818:                                       ; preds = %if.then816
  store i32 0, i32* %nmatches, align 4
  store i8* null, i8** %lastpos, align 4
  %512 = load i32, i32* %hasbeg, align 4
  %tobool819 = icmp ne i32 %512, 0
  br i1 %tobool819, label %if.end821, label %if.then820

if.then820:                                       ; preds = %if.then818
  %513 = load i32, i32* %len, align 4
  store i32 %513, i32* %beg, align 4
  br label %if.end821

if.end821:                                        ; preds = %if.then820, %if.then818
  %514 = load i8*, i8** %d, align 4
  store i8* %514, i8** %t, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond822

for.cond822:                                      ; preds = %for.inc839, %if.end821
  %515 = load i32, i32* %r, align 4
  %516 = load i32, i32* %beg, align 4
  %cmp823 = icmp sle i32 %515, %516
  br i1 %cmp823, label %for.body825, label %for.end841

for.body825:                                      ; preds = %for.cond822
  %517 = load i8*, i8** %t, align 4
  %518 = load i8, i8* %517, align 1
  store i8 %518, i8* %sav, align 1
  %519 = load i8*, i8** %t, align 4
  store i8 0, i8* %519, align 1
  %520 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool826 = icmp ne %struct.patprog* %520, null
  br i1 %tobool826, label %land.lhs.true827, label %if.end832

land.lhs.true827:                                 ; preds = %for.body825
  %521 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %522 = load i8*, i8** %d, align 4
  %call828 = call i32 @pattry(%struct.patprog* %521, i8* %522)
  %tobool829 = icmp ne i32 %call828, 0
  br i1 %tobool829, label %if.then830, label %if.end832

if.then830:                                       ; preds = %land.lhs.true827
  %523 = load i32, i32* %nmatches, align 4
  %inc831 = add nsw i32 %523, 1
  store i32 %inc831, i32* %nmatches, align 4
  %524 = load i8*, i8** %t, align 4
  store i8* %524, i8** %lastpos, align 4
  br label %if.end832

if.end832:                                        ; preds = %if.then830, %land.lhs.true827, %for.body825
  %525 = load i8, i8* %sav, align 1
  %526 = load i8*, i8** %t, align 4
  store i8 %525, i8* %526, align 1
  %527 = load i8*, i8** %t, align 4
  %528 = load i8*, i8** %de, align 4
  %cmp833 = icmp eq i8* %527, %528
  br i1 %cmp833, label %if.then835, label %if.end836

if.then835:                                       ; preds = %if.end832
  br label %for.end841

if.end836:                                        ; preds = %if.end832
  %529 = load i8*, i8** %t, align 4
  %call837 = call i32 @mb_metacharlenconv(i8* %529, i32* null)
  %530 = load i8*, i8** %t, align 4
  %add.ptr838 = getelementptr inbounds i8, i8* %530, i32 %call837
  store i8* %add.ptr838, i8** %t, align 4
  br label %for.inc839

for.inc839:                                       ; preds = %if.end836
  %531 = load i32, i32* %r, align 4
  %inc840 = add nsw i32 %531, 1
  store i32 %inc840, i32* %r, align 4
  br label %for.cond822

for.end841:                                       ; preds = %if.then835, %for.cond822
  %532 = load i32, i32* %nmatches, align 4
  %533 = load i32, i32* %num, align 4
  %cmp842 = icmp sge i32 %532, %533
  br i1 %cmp842, label %if.then844, label %if.end869

if.then844:                                       ; preds = %for.end841
  %534 = load i32, i32* %num, align 4
  %cmp845 = icmp sgt i32 %534, 1
  br i1 %cmp845, label %if.then847, label %if.end865

if.then847:                                       ; preds = %if.then844
  %535 = load i32, i32* %num, align 4
  %536 = load i32, i32* %nmatches, align 4
  %sub848 = sub nsw i32 %536, %535
  store i32 %sub848, i32* %nmatches, align 4
  call void @mb_charinit()
  %537 = load i8*, i8** %d, align 4
  store i8* %537, i8** %t, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond849

for.cond849:                                      ; preds = %for.inc862, %if.then847
  %538 = load i8*, i8** %t, align 4
  %539 = load i8, i8* %538, align 1
  store i8 %539, i8* %sav, align 1
  %540 = load i8*, i8** %t, align 4
  store i8 0, i8* %540, align 1
  %541 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool850 = icmp ne %struct.patprog* %541, null
  br i1 %tobool850, label %land.lhs.true851, label %if.end859

land.lhs.true851:                                 ; preds = %for.cond849
  %542 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %543 = load i8*, i8** %d, align 4
  %call852 = call i32 @pattry(%struct.patprog* %542, i8* %543)
  %tobool853 = icmp ne i32 %call852, 0
  br i1 %tobool853, label %land.lhs.true854, label %if.end859

land.lhs.true854:                                 ; preds = %land.lhs.true851
  %544 = load i32, i32* %nmatches, align 4
  %dec855 = add nsw i32 %544, -1
  store i32 %dec855, i32* %nmatches, align 4
  %cmp856 = icmp eq i32 %544, 0
  br i1 %cmp856, label %if.then858, label %if.end859

if.then858:                                       ; preds = %land.lhs.true854
  %545 = load i8*, i8** %t, align 4
  store i8* %545, i8** %lastpos, align 4
  %546 = load i8, i8* %sav, align 1
  %547 = load i8*, i8** %t, align 4
  store i8 %546, i8* %547, align 1
  br label %for.end864

if.end859:                                        ; preds = %land.lhs.true854, %land.lhs.true851, %for.cond849
  %548 = load i8, i8* %sav, align 1
  %549 = load i8*, i8** %t, align 4
  store i8 %548, i8* %549, align 1
  %550 = load i8*, i8** %t, align 4
  %call860 = call i32 @mb_metacharlenconv(i8* %550, i32* null)
  %551 = load i8*, i8** %t, align 4
  %add.ptr861 = getelementptr inbounds i8, i8* %551, i32 %call860
  store i8* %add.ptr861, i8** %t, align 4
  br label %for.inc862

for.inc862:                                       ; preds = %if.end859
  %552 = load i32, i32* %r, align 4
  %inc863 = add nsw i32 %552, 1
  store i32 %inc863, i32* %r, align 4
  br label %for.cond849

for.end864:                                       ; preds = %if.then858
  br label %if.end865

if.end865:                                        ; preds = %for.end864, %if.then844
  %553 = load i8*, i8** %lastpos, align 4
  %554 = load i8*, i8** %d, align 4
  %sub.ptr.lhs.cast866 = ptrtoint i8* %553 to i32
  %sub.ptr.rhs.cast867 = ptrtoint i8* %554 to i32
  %sub.ptr.sub868 = sub i32 %sub.ptr.lhs.cast866, %sub.ptr.rhs.cast867
  store i32 %sub.ptr.sub868, i32* %retval, align 4
  br label %return

if.end869:                                        ; preds = %for.end841
  br label %if.end903

if.else870:                                       ; preds = %if.then816
  %555 = load i8*, i8** %d, align 4
  store i8* %555, i8** %t, align 4
  br label %for.cond871

for.cond871:                                      ; preds = %for.inc880, %if.else870
  %556 = load i32, i32* %beg, align 4
  %tobool872 = icmp ne i32 %556, 0
  br i1 %tobool872, label %land.rhs873, label %land.end876

land.rhs873:                                      ; preds = %for.cond871
  %557 = load i8*, i8** %t, align 4
  %558 = load i8*, i8** %de, align 4
  %cmp874 = icmp ule i8* %557, %558
  br label %land.end876

land.end876:                                      ; preds = %land.rhs873, %for.cond871
  %559 = phi i1 [ false, %for.cond871 ], [ %cmp874, %land.rhs873 ]
  br i1 %559, label %for.body877, label %for.end882

for.body877:                                      ; preds = %land.end876
  %560 = load i8*, i8** %t, align 4
  %call878 = call i32 @mb_metacharlenconv(i8* %560, i32* null)
  %561 = load i8*, i8** %t, align 4
  %add.ptr879 = getelementptr inbounds i8, i8* %561, i32 %call878
  store i8* %add.ptr879, i8** %t, align 4
  br label %for.inc880

for.inc880:                                       ; preds = %for.body877
  %562 = load i32, i32* %beg, align 4
  %dec881 = add nsw i32 %562, -1
  store i32 %dec881, i32* %beg, align 4
  br label %for.cond871

for.end882:                                       ; preds = %land.end876
  br label %for.cond883

for.cond883:                                      ; preds = %if.end899, %for.end882
  %563 = load i8*, i8** %t, align 4
  %564 = load i8, i8* %563, align 1
  store i8 %564, i8* %sav, align 1
  %565 = load i8*, i8** %t, align 4
  store i8 0, i8* %565, align 1
  %566 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool884 = icmp ne %struct.patprog* %566, null
  br i1 %tobool884, label %land.lhs.true885, label %if.end895

land.lhs.true885:                                 ; preds = %for.cond883
  %567 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %568 = load i8*, i8** %d, align 4
  %call886 = call i32 @pattry(%struct.patprog* %567, i8* %568)
  %tobool887 = icmp ne i32 %call886, 0
  br i1 %tobool887, label %land.lhs.true888, label %if.end895

land.lhs.true888:                                 ; preds = %land.lhs.true885
  %569 = load i32, i32* %num, align 4
  %dec889 = add nsw i32 %569, -1
  store i32 %dec889, i32* %num, align 4
  %tobool890 = icmp ne i32 %dec889, 0
  br i1 %tobool890, label %if.end895, label %if.then891

if.then891:                                       ; preds = %land.lhs.true888
  %570 = load i8, i8* %sav, align 1
  %571 = load i8*, i8** %t, align 4
  store i8 %570, i8* %571, align 1
  %572 = load i8*, i8** %t, align 4
  %573 = load i8*, i8** %d, align 4
  %sub.ptr.lhs.cast892 = ptrtoint i8* %572 to i32
  %sub.ptr.rhs.cast893 = ptrtoint i8* %573 to i32
  %sub.ptr.sub894 = sub i32 %sub.ptr.lhs.cast892, %sub.ptr.rhs.cast893
  store i32 %sub.ptr.sub894, i32* %retval, align 4
  br label %return

if.end895:                                        ; preds = %land.lhs.true888, %land.lhs.true885, %for.cond883
  %574 = load i8, i8* %sav, align 1
  %575 = load i8*, i8** %t, align 4
  store i8 %574, i8* %575, align 1
  %576 = load i8*, i8** %t, align 4
  %577 = load i8*, i8** %de, align 4
  %cmp896 = icmp eq i8* %576, %577
  br i1 %cmp896, label %if.then898, label %if.end899

if.then898:                                       ; preds = %if.end895
  br label %for.end902

if.end899:                                        ; preds = %if.end895
  %578 = load i8*, i8** %t, align 4
  %call900 = call i32 @mb_metacharlenconv(i8* %578, i32* null)
  %579 = load i8*, i8** %t, align 4
  %add.ptr901 = getelementptr inbounds i8, i8* %579, i32 %call900
  store i8* %add.ptr901, i8** %t, align 4
  br label %for.cond883

for.end902:                                       ; preds = %if.then898
  br label %if.end903

if.end903:                                        ; preds = %for.end902, %if.end869
  br label %if.end1032

if.else904:                                       ; preds = %if.then813
  %580 = load i32, i32* %down, align 4
  %tobool906 = icmp ne i32 %580, 0
  br i1 %tobool906, label %if.then907, label %if.else989

if.then907:                                       ; preds = %if.else904
  store i32 0, i32* %nmatches908, align 4
  store i8* null, i8** %lastpos909, align 4
  %581 = load i32, i32* %hasbeg, align 4
  %tobool910 = icmp ne i32 %581, 0
  br i1 %tobool910, label %if.end912, label %if.then911

if.then911:                                       ; preds = %if.then907
  %582 = load i32, i32* %len, align 4
  store i32 %582, i32* %beg, align 4
  br label %if.end912

if.end912:                                        ; preds = %if.then911, %if.then907
  %583 = load i8*, i8** %d, align 4
  store i8* %583, i8** %t, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond913

for.cond913:                                      ; preds = %for.inc930, %if.end912
  %584 = load i32, i32* %r, align 4
  %585 = load i32, i32* %beg, align 4
  %cmp914 = icmp sle i32 %584, %585
  br i1 %cmp914, label %for.body916, label %for.end932

for.body916:                                      ; preds = %for.cond913
  %586 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool917 = icmp ne %struct.patprog* %586, null
  br i1 %tobool917, label %land.lhs.true918, label %if.end923

land.lhs.true918:                                 ; preds = %for.body916
  %587 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %588 = load i8*, i8** %t, align 4
  %call919 = call i32 @pattry(%struct.patprog* %587, i8* %588)
  %tobool920 = icmp ne i32 %call919, 0
  br i1 %tobool920, label %if.then921, label %if.end923

if.then921:                                       ; preds = %land.lhs.true918
  %589 = load i32, i32* %nmatches908, align 4
  %inc922 = add nsw i32 %589, 1
  store i32 %inc922, i32* %nmatches908, align 4
  %590 = load i8*, i8** %t, align 4
  store i8* %590, i8** %lastpos909, align 4
  br label %if.end923

if.end923:                                        ; preds = %if.then921, %land.lhs.true918, %for.body916
  %591 = load i8*, i8** %t, align 4
  %592 = load i8*, i8** %de, align 4
  %cmp924 = icmp eq i8* %591, %592
  br i1 %cmp924, label %if.then926, label %if.end927

if.then926:                                       ; preds = %if.end923
  br label %for.end932

if.end927:                                        ; preds = %if.end923
  %593 = load i8*, i8** %t, align 4
  %call928 = call i32 @mb_metacharlenconv(i8* %593, i32* null)
  %594 = load i8*, i8** %t, align 4
  %add.ptr929 = getelementptr inbounds i8, i8* %594, i32 %call928
  store i8* %add.ptr929, i8** %t, align 4
  br label %for.inc930

for.inc930:                                       ; preds = %if.end927
  %595 = load i32, i32* %r, align 4
  %inc931 = add nsw i32 %595, 1
  store i32 %inc931, i32* %r, align 4
  br label %for.cond913

for.end932:                                       ; preds = %if.then926, %for.cond913
  %596 = load i32, i32* %nmatches908, align 4
  %597 = load i32, i32* %num, align 4
  %cmp933 = icmp sge i32 %596, %597
  br i1 %cmp933, label %if.then935, label %if.end969

if.then935:                                       ; preds = %for.end932
  %598 = load i32, i32* %num, align 4
  %cmp936 = icmp sgt i32 %598, 1
  br i1 %cmp936, label %if.then938, label %if.end956

if.then938:                                       ; preds = %if.then935
  %599 = load i32, i32* %num, align 4
  %600 = load i32, i32* %nmatches908, align 4
  %sub939 = sub nsw i32 %600, %599
  store i32 %sub939, i32* %nmatches908, align 4
  call void @mb_charinit()
  %601 = load i8*, i8** %d, align 4
  store i8* %601, i8** %t, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond940

for.cond940:                                      ; preds = %for.inc953, %if.then938
  %602 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool941 = icmp ne %struct.patprog* %602, null
  br i1 %tobool941, label %land.lhs.true942, label %if.end950

land.lhs.true942:                                 ; preds = %for.cond940
  %603 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %604 = load i8*, i8** %t, align 4
  %call943 = call i32 @pattry(%struct.patprog* %603, i8* %604)
  %tobool944 = icmp ne i32 %call943, 0
  br i1 %tobool944, label %land.lhs.true945, label %if.end950

land.lhs.true945:                                 ; preds = %land.lhs.true942
  %605 = load i32, i32* %nmatches908, align 4
  %dec946 = add nsw i32 %605, -1
  store i32 %dec946, i32* %nmatches908, align 4
  %cmp947 = icmp eq i32 %605, 0
  br i1 %cmp947, label %if.then949, label %if.end950

if.then949:                                       ; preds = %land.lhs.true945
  %606 = load i8*, i8** %t, align 4
  store i8* %606, i8** %lastpos909, align 4
  br label %for.end955

if.end950:                                        ; preds = %land.lhs.true945, %land.lhs.true942, %for.cond940
  %607 = load i8*, i8** %t, align 4
  %call951 = call i32 @mb_metacharlenconv(i8* %607, i32* null)
  %608 = load i8*, i8** %t, align 4
  %add.ptr952 = getelementptr inbounds i8, i8* %608, i32 %call951
  store i8* %add.ptr952, i8** %t, align 4
  br label %for.inc953

for.inc953:                                       ; preds = %if.end950
  %609 = load i32, i32* %r, align 4
  %inc954 = add nsw i32 %609, 1
  store i32 %inc954, i32* %r, align 4
  br label %for.cond940

for.end955:                                       ; preds = %if.then949
  br label %if.end956

if.end956:                                        ; preds = %for.end955, %if.then935
  %610 = load i8*, i8** %lastpos909, align 4
  %call957 = call i32 @mb_metacharlenconv(i8* %610, i32* null)
  store i32 %call957, i32* %lastcharlen905, align 4
  %611 = load i8*, i8** %lastpos909, align 4
  %add.ptr958 = getelementptr inbounds i8, i8* %611, i32 %call957
  store i8* %add.ptr958, i8** %lastpos909, align 4
  %612 = load i32*, i32** %prevcharlen.addr, align 4
  %tobool959 = icmp ne i32* %612, null
  br i1 %tobool959, label %if.then960, label %if.end961

if.then960:                                       ; preds = %if.end956
  %613 = load i32, i32* %lastcharlen905, align 4
  %614 = load i32*, i32** %prevcharlen.addr, align 4
  store i32 %613, i32* %614, align 4
  br label %if.end961

if.end961:                                        ; preds = %if.then960, %if.end956
  %615 = load i32*, i32** %nextcharlen.addr, align 4
  %tobool962 = icmp ne i32* %615, null
  br i1 %tobool962, label %if.then963, label %if.end965

if.then963:                                       ; preds = %if.end961
  %616 = load i8*, i8** %lastpos909, align 4
  %call964 = call i32 @mb_metacharlenconv(i8* %616, i32* null)
  %617 = load i32*, i32** %nextcharlen.addr, align 4
  store i32 %call964, i32* %617, align 4
  br label %if.end965

if.end965:                                        ; preds = %if.then963, %if.end961
  %618 = load i8*, i8** %lastpos909, align 4
  %619 = load i8*, i8** %d, align 4
  %sub.ptr.lhs.cast966 = ptrtoint i8* %618 to i32
  %sub.ptr.rhs.cast967 = ptrtoint i8* %619 to i32
  %sub.ptr.sub968 = sub i32 %sub.ptr.lhs.cast966, %sub.ptr.rhs.cast967
  store i32 %sub.ptr.sub968, i32* %retval, align 4
  br label %return

if.end969:                                        ; preds = %for.end932
  %620 = load i32, i32* %beg, align 4
  %add970 = add nsw i32 %620, 1
  store i32 %add970, i32* %r, align 4
  %621 = load i8*, i8** %d, align 4
  %622 = load i32, i32* %beg, align 4
  %add.ptr971 = getelementptr inbounds i8, i8* %621, i32 %622
  store i8* %add.ptr971, i8** %t, align 4
  br label %for.cond972

for.cond972:                                      ; preds = %for.inc985, %if.end969
  %623 = load i8*, i8** %t, align 4
  %624 = load i8*, i8** %d, align 4
  %cmp973 = icmp uge i8* %623, %624
  br i1 %cmp973, label %for.body975, label %for.end988

for.body975:                                      ; preds = %for.cond972
  %625 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool976 = icmp ne %struct.patprog* %625, null
  br i1 %tobool976, label %land.lhs.true977, label %if.end984

land.lhs.true977:                                 ; preds = %for.body975
  %626 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %627 = load i8*, i8** %t, align 4
  %call978 = call i32 @pattry(%struct.patprog* %626, i8* %627)
  %tobool979 = icmp ne i32 %call978, 0
  br i1 %tobool979, label %land.lhs.true980, label %if.end984

land.lhs.true980:                                 ; preds = %land.lhs.true977
  %628 = load i32, i32* %num, align 4
  %dec981 = add nsw i32 %628, -1
  store i32 %dec981, i32* %num, align 4
  %tobool982 = icmp ne i32 %dec981, 0
  br i1 %tobool982, label %if.end984, label %if.then983

if.then983:                                       ; preds = %land.lhs.true980
  %629 = load i32, i32* %r, align 4
  store i32 %629, i32* %retval, align 4
  br label %return

if.end984:                                        ; preds = %land.lhs.true980, %land.lhs.true977, %for.body975
  br label %for.inc985

for.inc985:                                       ; preds = %if.end984
  %630 = load i32, i32* %r, align 4
  %dec986 = add nsw i32 %630, -1
  store i32 %dec986, i32* %r, align 4
  %631 = load i8*, i8** %t, align 4
  %incdec.ptr987 = getelementptr inbounds i8, i8* %631, i32 -1
  store i8* %incdec.ptr987, i8** %t, align 4
  br label %for.cond972

for.end988:                                       ; preds = %for.cond972
  br label %if.end1031

if.else989:                                       ; preds = %if.else904
  %632 = load i8*, i8** %d, align 4
  store i8* %632, i8** %t, align 4
  br label %for.cond990

for.cond990:                                      ; preds = %for.inc999, %if.else989
  %633 = load i32, i32* %beg, align 4
  %tobool991 = icmp ne i32 %633, 0
  br i1 %tobool991, label %land.rhs992, label %land.end995

land.rhs992:                                      ; preds = %for.cond990
  %634 = load i8*, i8** %t, align 4
  %635 = load i8*, i8** %de, align 4
  %cmp993 = icmp ule i8* %634, %635
  br label %land.end995

land.end995:                                      ; preds = %land.rhs992, %for.cond990
  %636 = phi i1 [ false, %for.cond990 ], [ %cmp993, %land.rhs992 ]
  br i1 %636, label %for.body996, label %for.end1001

for.body996:                                      ; preds = %land.end995
  %637 = load i8*, i8** %t, align 4
  %call997 = call i32 @mb_metacharlenconv(i8* %637, i32* null)
  %638 = load i8*, i8** %t, align 4
  %add.ptr998 = getelementptr inbounds i8, i8* %638, i32 %call997
  store i8* %add.ptr998, i8** %t, align 4
  br label %for.inc999

for.inc999:                                       ; preds = %for.body996
  %639 = load i32, i32* %beg, align 4
  %dec1000 = add nsw i32 %639, -1
  store i32 %dec1000, i32* %beg, align 4
  br label %for.cond990

for.end1001:                                      ; preds = %land.end995
  br label %for.cond1002

for.cond1002:                                     ; preds = %if.end1027, %for.end1001
  %640 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool1003 = icmp ne %struct.patprog* %640, null
  br i1 %tobool1003, label %land.lhs.true1004, label %if.end1023

land.lhs.true1004:                                ; preds = %for.cond1002
  %641 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %642 = load i8*, i8** %t, align 4
  %call1005 = call i32 @pattry(%struct.patprog* %641, i8* %642)
  %tobool1006 = icmp ne i32 %call1005, 0
  br i1 %tobool1006, label %land.lhs.true1007, label %if.end1023

land.lhs.true1007:                                ; preds = %land.lhs.true1004
  %643 = load i32, i32* %num, align 4
  %dec1008 = add nsw i32 %643, -1
  store i32 %dec1008, i32* %num, align 4
  %tobool1009 = icmp ne i32 %dec1008, 0
  br i1 %tobool1009, label %if.end1023, label %if.then1010

if.then1010:                                      ; preds = %land.lhs.true1007
  %644 = load i8*, i8** %t, align 4
  %call1011 = call i32 @mb_metacharlenconv(i8* %644, i32* null)
  store i32 %call1011, i32* %lastcharlen905, align 4
  %645 = load i8*, i8** %t, align 4
  %add.ptr1012 = getelementptr inbounds i8, i8* %645, i32 %call1011
  store i8* %add.ptr1012, i8** %t, align 4
  %646 = load i32*, i32** %prevcharlen.addr, align 4
  %tobool1013 = icmp ne i32* %646, null
  br i1 %tobool1013, label %if.then1014, label %if.end1015

if.then1014:                                      ; preds = %if.then1010
  %647 = load i32, i32* %lastcharlen905, align 4
  %648 = load i32*, i32** %prevcharlen.addr, align 4
  store i32 %647, i32* %648, align 4
  br label %if.end1015

if.end1015:                                       ; preds = %if.then1014, %if.then1010
  %649 = load i32*, i32** %nextcharlen.addr, align 4
  %tobool1016 = icmp ne i32* %649, null
  br i1 %tobool1016, label %if.then1017, label %if.end1019

if.then1017:                                      ; preds = %if.end1015
  %650 = load i8*, i8** %t, align 4
  %call1018 = call i32 @mb_metacharlenconv(i8* %650, i32* null)
  %651 = load i32*, i32** %nextcharlen.addr, align 4
  store i32 %call1018, i32* %651, align 4
  br label %if.end1019

if.end1019:                                       ; preds = %if.then1017, %if.end1015
  %652 = load i8*, i8** %t, align 4
  %653 = load i8*, i8** %d, align 4
  %sub.ptr.lhs.cast1020 = ptrtoint i8* %652 to i32
  %sub.ptr.rhs.cast1021 = ptrtoint i8* %653 to i32
  %sub.ptr.sub1022 = sub i32 %sub.ptr.lhs.cast1020, %sub.ptr.rhs.cast1021
  store i32 %sub.ptr.sub1022, i32* %retval, align 4
  br label %return

if.end1023:                                       ; preds = %land.lhs.true1007, %land.lhs.true1004, %for.cond1002
  %654 = load i8*, i8** %t, align 4
  %655 = load i8*, i8** %de, align 4
  %cmp1024 = icmp eq i8* %654, %655
  br i1 %cmp1024, label %if.then1026, label %if.end1027

if.then1026:                                      ; preds = %if.end1023
  br label %for.end1030

if.end1027:                                       ; preds = %if.end1023
  %656 = load i8*, i8** %t, align 4
  %call1028 = call i32 @mb_metacharlenconv(i8* %656, i32* null)
  %657 = load i8*, i8** %t, align 4
  %add.ptr1029 = getelementptr inbounds i8, i8* %657, i32 %call1028
  store i8* %add.ptr1029, i8** %t, align 4
  br label %for.cond1002

for.end1030:                                      ; preds = %if.then1026
  br label %if.end1031

if.end1031:                                       ; preds = %for.end1030, %for.end988
  br label %if.end1032

if.end1032:                                       ; preds = %if.end1031, %if.end903
  br label %if.end1033

if.end1033:                                       ; preds = %if.end1032, %land.lhs.true810, %if.end807
  %658 = load i32, i32* %down, align 4
  %tobool1034 = icmp ne i32 %658, 0
  br i1 %tobool1034, label %cond.true1035, label %cond.false1036

cond.true1035:                                    ; preds = %if.end1033
  br label %cond.end1038

cond.false1036:                                   ; preds = %if.end1033
  %659 = load i32, i32* %slen, align 4
  %add1037 = add nsw i32 %659, 1
  br label %cond.end1038

cond.end1038:                                     ; preds = %cond.false1036, %cond.true1035
  %cond1039 = phi i32 [ 0, %cond.true1035 ], [ %add1037, %cond.false1036 ]
  store i32 %cond1039, i32* %retval, align 4
  br label %return

if.end1040:                                       ; preds = %if.end672
  br label %if.end1041

if.end1041:                                       ; preds = %if.end1040, %if.end469
  %660 = load i32, i32* %r, align 4
  store i32 %660, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end1041, %cond.end1038, %if.end1019, %if.then983, %if.end965, %if.then891, %if.end865, %if.then799, %for.end791, %if.end787, %if.then752, %if.then730, %if.then693, %if.then688, %if.then665, %if.then646, %if.then617, %if.then612, %if.then597, %if.then584, %if.then556, %cond.end374, %if.then358, %if.then349, %if.then289, %if.then271, %if.then256, %if.then253
  %661 = load i32, i32* %retval, align 4
  ret i32 %661
}

; Function Attrs: noinline nounwind
define i8* @getstrvalue(%struct.value* %v) #0 {
entry:
  %retval = alloca i8*, align 4
  %v.addr = alloca %struct.value*, align 4
  %s = alloca i8*, align 4
  %ss = alloca i8**, align 4
  %buf = alloca [36 x i8], align 1
  %len = alloca i32, align 4
  %fwidth = alloca i32, align 4
  %t = alloca i8*, align 4
  %tend = alloca i8*, align 4
  %t0 = alloca i32, align 4
  %zero = alloca i32, align 4
  %charlen = alloca i32, align 4
  %valprefend = alloca i8*, align 4
  %preflen = alloca i32, align 4
  %eptr = alloca i8*, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  %0 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool = icmp ne %struct.value* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @hcalloc(i32 1)
  store i8* %call, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags = getelementptr inbounds %struct.value, %struct.value* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 1
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %5 = load i32, i32* %flags2, align 8
  %and3 = and i32 %5, 16
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.end9, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %6 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %6, i32 0, i32 3
  %7 = load i32, i32* %start, align 4
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %7)
  %arraydecay7 = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %call8 = call i8* @dupstring(i8* %arraydecay7)
  store i8* %call8, i8** %s, align 4
  %8 = load i8*, i8** %s, align 4
  store i8* %8, i8** %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %9 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm10 = getelementptr inbounds %struct.value, %struct.value* %9, i32 0, i32 1
  %10 = load %struct.param*, %struct.param** %pm10, align 4
  %node11 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %flags12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 2
  %11 = load i32, i32* %flags12, align 8
  %and13 = and i32 %11, 31
  switch i32 %and13, label %sw.default [
    i32 16, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb46
    i32 4, label %sw.bb54
    i32 8, label %sw.bb54
    i32 0, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.end9
  %12 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %12, i32 0, i32 0
  %13 = load i32, i32* %isarr, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.end24, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %sw.bb
  %14 = load i32, i32* @emulation, align 4
  %and16 = and i32 %14, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = call i8* @dupstring(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  store i8* %call19, i8** %s, align 4
  %15 = load %struct.value*, %struct.value** %v.addr, align 4
  %call20 = call i32 @getindex(i8** %s, %struct.value* %15, i32 0)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then18
  %16 = load %struct.value*, %struct.value** %v.addr, align 4
  %call22 = call i8* @getstrvalue(%struct.value* %16)
  store i8* %call22, i8** %s, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %17 = load i8*, i8** %s, align 4
  store i8* %17, i8** %retval, align 4
  br label %return

if.end24:                                         ; preds = %land.lhs.true15, %sw.bb
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.end9, %if.end24
  %18 = load %struct.value*, %struct.value** %v.addr, align 4
  %call26 = call i8** @getvaluearr(%struct.value* %18)
  store i8** %call26, i8*** %ss, align 4
  %19 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr27 = getelementptr inbounds %struct.value, %struct.value* %19, i32 0, i32 0
  %20 = load i32, i32* %isarr27, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %sw.bb25
  %21 = load i8**, i8*** %ss, align 4
  %call30 = call i8* @sepjoin(i8** %21, i8* null, i32 1)
  store i8* %call30, i8** %s, align 4
  br label %if.end45

if.else:                                          ; preds = %sw.bb25
  %22 = load %struct.value*, %struct.value** %v.addr, align 4
  %start31 = getelementptr inbounds %struct.value, %struct.value* %22, i32 0, i32 3
  %23 = load i32, i32* %start31, align 4
  %cmp32 = icmp slt i32 %23, 0
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.else
  %24 = load i8**, i8*** %ss, align 4
  %call34 = call i32 @arrlen(i8** %24)
  %25 = load %struct.value*, %struct.value** %v.addr, align 4
  %start35 = getelementptr inbounds %struct.value, %struct.value* %25, i32 0, i32 3
  %26 = load i32, i32* %start35, align 4
  %add = add nsw i32 %26, %call34
  store i32 %add, i32* %start35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.else
  %27 = load i8**, i8*** %ss, align 4
  %28 = load %struct.value*, %struct.value** %v.addr, align 4
  %start37 = getelementptr inbounds %struct.value, %struct.value* %28, i32 0, i32 3
  %29 = load i32, i32* %start37, align 4
  %call38 = call signext i8 @arrlen_le(i8** %27, i32 %29)
  %conv = sext i8 %call38 to i32
  %tobool39 = icmp ne i32 %conv, 0
  br i1 %tobool39, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %30 = load %struct.value*, %struct.value** %v.addr, align 4
  %start40 = getelementptr inbounds %struct.value, %struct.value* %30, i32 0, i32 3
  %31 = load i32, i32* %start40, align 4
  %cmp41 = icmp slt i32 %31, 0
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end36
  %call43 = call i8* @hcalloc(i32 1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %32 = load i8**, i8*** %ss, align 4
  %33 = load %struct.value*, %struct.value** %v.addr, align 4
  %start44 = getelementptr inbounds %struct.value, %struct.value* %33, i32 0, i32 3
  %34 = load i32, i32* %start44, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %32, i32 %34
  %35 = load i8*, i8** %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call43, %cond.true ], [ %35, %cond.false ]
  store i8* %cond, i8** %s, align 4
  br label %if.end45

if.end45:                                         ; preds = %cond.end, %if.then29
  %36 = load i8*, i8** %s, align 4
  store i8* %36, i8** %retval, align 4
  br label %return

sw.bb46:                                          ; preds = %if.end9
  %arraydecay47 = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %37 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm48 = getelementptr inbounds %struct.value, %struct.value* %37, i32 0, i32 1
  %38 = load %struct.param*, %struct.param** %pm48, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %38, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %39 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %getfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %39, i32 0, i32 0
  %40 = load i32 (%struct.param*)*, i32 (%struct.param*)** %getfn, align 4
  %41 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm49 = getelementptr inbounds %struct.value, %struct.value* %41, i32 0, i32 1
  %42 = load %struct.param*, %struct.param** %pm49, align 4
  %call50 = call i32 %40(%struct.param* %42)
  %43 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm51 = getelementptr inbounds %struct.value, %struct.value* %43, i32 0, i32 1
  %44 = load %struct.param*, %struct.param** %pm51, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %44, i32 0, i32 3
  %45 = load i32, i32* %base, align 4
  call void @convbase(i8* %arraydecay47, i32 %call50, i32 %45)
  %arraydecay52 = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %call53 = call i8* @dupstring(i8* %arraydecay52)
  store i8* %call53, i8** %s, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end9, %if.end9
  %46 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm55 = getelementptr inbounds %struct.value, %struct.value* %46, i32 0, i32 1
  %47 = load %struct.param*, %struct.param** %pm55, align 4
  %gsu56 = getelementptr inbounds %struct.param, %struct.param* %47, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu56 to %struct.gsu_float**
  %48 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %getfn57 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %48, i32 0, i32 0
  %49 = load double (%struct.param*)*, double (%struct.param*)** %getfn57, align 4
  %50 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm58 = getelementptr inbounds %struct.value, %struct.value* %50, i32 0, i32 1
  %51 = load %struct.param*, %struct.param** %pm58, align 4
  %call59 = call double %49(%struct.param* %51)
  %52 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm60 = getelementptr inbounds %struct.value, %struct.value* %52, i32 0, i32 1
  %53 = load %struct.param*, %struct.param** %pm60, align 4
  %base61 = getelementptr inbounds %struct.param, %struct.param* %53, i32 0, i32 3
  %54 = load i32, i32* %base61, align 4
  %55 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm62 = getelementptr inbounds %struct.value, %struct.value* %55, i32 0, i32 1
  %56 = load %struct.param*, %struct.param** %pm62, align 4
  %node63 = getelementptr inbounds %struct.param, %struct.param* %56, i32 0, i32 0
  %flags64 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node63, i32 0, i32 2
  %57 = load i32, i32* %flags64, align 8
  %call65 = call i8* @convfloat(double %call59, i32 %54, i32 %57, %struct._IO_FILE* null)
  store i8* %call65, i8** %s, align 4
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end9
  %58 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm67 = getelementptr inbounds %struct.value, %struct.value* %58, i32 0, i32 1
  %59 = load %struct.param*, %struct.param** %pm67, align 4
  %gsu68 = getelementptr inbounds %struct.param, %struct.param* %59, i32 0, i32 2
  %s69 = bitcast %union.anon.0* %gsu68 to %struct.gsu_scalar**
  %60 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s69, align 8
  %getfn70 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %60, i32 0, i32 0
  %getfn71 = bitcast {}** %getfn70 to i8* (%struct.param*)**
  %61 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn71, align 4
  %62 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm72 = getelementptr inbounds %struct.value, %struct.value* %62, i32 0, i32 1
  %63 = load %struct.param*, %struct.param** %pm72, align 4
  %call73 = call i8* %61(%struct.param* %63)
  store i8* %call73, i8** %s, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb66, %sw.bb54, %sw.bb46
  %64 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags74 = getelementptr inbounds %struct.value, %struct.value* %64, i32 0, i32 2
  %65 = load i32, i32* %flags74, align 4
  %and75 = and i32 %65, 4
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then77, label %if.end257

if.then77:                                        ; preds = %sw.epilog
  %66 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm78 = getelementptr inbounds %struct.value, %struct.value* %66, i32 0, i32 1
  %67 = load %struct.param*, %struct.param** %pm78, align 4
  %node79 = getelementptr inbounds %struct.param, %struct.param* %67, i32 0, i32 0
  %flags80 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node79, i32 0, i32 2
  %68 = load i32, i32* %flags80, align 8
  %and81 = and i32 %68, 224
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then83, label %if.end247

if.then83:                                        ; preds = %if.then77
  %69 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm84 = getelementptr inbounds %struct.value, %struct.value* %69, i32 0, i32 1
  %70 = load %struct.param*, %struct.param** %pm84, align 4
  %width = getelementptr inbounds %struct.param, %struct.param* %70, i32 0, i32 4
  %71 = load i32, i32* %width, align 8
  %tobool85 = icmp ne i32 %71, 0
  br i1 %tobool85, label %cond.true86, label %cond.false89

cond.true86:                                      ; preds = %if.then83
  %72 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm87 = getelementptr inbounds %struct.value, %struct.value* %72, i32 0, i32 1
  %73 = load %struct.param*, %struct.param** %pm87, align 4
  %width88 = getelementptr inbounds %struct.param, %struct.param* %73, i32 0, i32 4
  %74 = load i32, i32* %width88, align 8
  br label %cond.end91

cond.false89:                                     ; preds = %if.then83
  %75 = load i8*, i8** %s, align 4
  %call90 = call i32 @mb_metastrlenend(i8* %75, i32 0, i8* null)
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false89, %cond.true86
  %cond92 = phi i32 [ %74, %cond.true86 ], [ %call90, %cond.false89 ]
  store i32 %cond92, i32* %fwidth, align 4
  %76 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm93 = getelementptr inbounds %struct.value, %struct.value* %76, i32 0, i32 1
  %77 = load %struct.param*, %struct.param** %pm93, align 4
  %node94 = getelementptr inbounds %struct.param, %struct.param* %77, i32 0, i32 0
  %flags95 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node94, i32 0, i32 2
  %78 = load i32, i32* %flags95, align 8
  %and96 = and i32 %78, 224
  switch i32 %and96, label %sw.epilog246 [
    i32 32, label %sw.bb97
    i32 160, label %sw.bb97
    i32 64, label %sw.bb131
    i32 128, label %sw.bb131
    i32 192, label %sw.bb131
  ]

sw.bb97:                                          ; preds = %cond.end91, %cond.end91
  %79 = load i8*, i8** %s, align 4
  store i8* %79, i8** %t, align 4
  %80 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm98 = getelementptr inbounds %struct.value, %struct.value* %80, i32 0, i32 1
  %81 = load %struct.param*, %struct.param** %pm98, align 4
  %node99 = getelementptr inbounds %struct.param, %struct.param* %81, i32 0, i32 0
  %flags100 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node99, i32 0, i32 2
  %82 = load i32, i32* %flags100, align 8
  %and101 = and i32 %82, 128
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.else107

if.then103:                                       ; preds = %sw.bb97
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then103
  %83 = load i8*, i8** %t, align 4
  %84 = load i8, i8* %83, align 1
  %conv104 = sext i8 %84 to i32
  %cmp105 = icmp eq i32 %conv104, 48
  br i1 %cmp105, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %85 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end116

if.else107:                                       ; preds = %sw.bb97
  br label %while.cond108

while.cond108:                                    ; preds = %while.body113, %if.else107
  %86 = load i8*, i8** %t, align 4
  %87 = load i8, i8* %86, align 1
  %idxprom = zext i8 %87 to i32
  %arrayidx109 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %88 = load i16, i16* %arrayidx109, align 2
  %conv110 = sext i16 %88 to i32
  %and111 = and i32 %conv110, 4
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %while.body113, label %while.end115

while.body113:                                    ; preds = %while.cond108
  %89 = load i8*, i8** %t, align 4
  %incdec.ptr114 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr114, i8** %t, align 4
  br label %while.cond108

while.end115:                                     ; preds = %while.cond108
  br label %if.end116

if.end116:                                        ; preds = %while.end115, %while.end
  call void @mb_charinit()
  %90 = load i8*, i8** %t, align 4
  store i8* %90, i8** %tend, align 4
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end116
  %91 = load i32, i32* %t0, align 4
  %92 = load i32, i32* %fwidth, align 4
  %cmp117 = icmp ult i32 %91, %92
  br i1 %cmp117, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %93 = load i8*, i8** %tend, align 4
  %94 = load i8, i8* %93, align 1
  %conv119 = sext i8 %94 to i32
  %tobool120 = icmp ne i32 %conv119, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %95 = phi i1 [ false, %for.cond ], [ %tobool120, %land.rhs ]
  br i1 %95, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %96 = load i8*, i8** %tend, align 4
  %call121 = call i32 @mb_metacharlenconv(i8* %96, i32* null)
  %97 = load i8*, i8** %tend, align 4
  %add.ptr = getelementptr inbounds i8, i8* %97, i32 %call121
  store i8* %add.ptr, i8** %tend, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %98 = load i32, i32* %t0, align 4
  %inc = add i32 %98, 1
  store i32 %inc, i32* %t0, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %99 = load i32, i32* %t0, align 4
  %100 = load i32, i32* %fwidth, align 4
  %sub = sub i32 %100, %99
  store i32 %sub, i32* %fwidth, align 4
  %101 = load i8*, i8** %tend, align 4
  %102 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %101 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %102 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %t0, align 4
  %103 = load i32, i32* %t0, align 4
  %104 = load i32, i32* %fwidth, align 4
  %add122 = add i32 %103, %104
  %add123 = add i32 %add122, 1
  %call124 = call i8* @hcalloc(i32 %add123)
  store i8* %call124, i8** %s, align 4
  %105 = load i8*, i8** %s, align 4
  %106 = load i8*, i8** %t, align 4
  %107 = load i32, i32* %t0, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %105, i8* %106, i32 %107, i32 1, i1 false)
  %108 = load i32, i32* %fwidth, align 4
  %tobool125 = icmp ne i32 %108, 0
  br i1 %tobool125, label %if.then126, label %if.end128

if.then126:                                       ; preds = %for.end
  %109 = load i8*, i8** %s, align 4
  %110 = load i32, i32* %t0, align 4
  %add.ptr127 = getelementptr inbounds i8, i8* %109, i32 %110
  %111 = load i32, i32* %fwidth, align 4
  call void @llvm.memset.p0i8.i32(i8* %add.ptr127, i8 32, i32 %111, i32 1, i1 false)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %for.end
  %112 = load i8*, i8** %s, align 4
  %113 = load i32, i32* %t0, align 4
  %114 = load i32, i32* %fwidth, align 4
  %add129 = add i32 %113, %114
  %arrayidx130 = getelementptr inbounds i8, i8* %112, i32 %add129
  store i8 0, i8* %arrayidx130, align 1
  br label %sw.epilog246

sw.bb131:                                         ; preds = %cond.end91, %cond.end91, %cond.end91
  store i32 1, i32* %zero, align 4
  %115 = load i8*, i8** %s, align 4
  %call132 = call i32 @mb_metastrlenend(i8* %115, i32 0, i8* null)
  store i32 %call132, i32* %charlen, align 4
  %116 = load i32, i32* %charlen, align 4
  %117 = load i32, i32* %fwidth, align 4
  %cmp133 = icmp ult i32 %116, %117
  br i1 %cmp133, label %if.then135, label %if.else236

if.then135:                                       ; preds = %sw.bb131
  %118 = load i8*, i8** %s, align 4
  store i8* %118, i8** %valprefend, align 4
  %119 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm136 = getelementptr inbounds %struct.value, %struct.value* %119, i32 0, i32 1
  %120 = load %struct.param*, %struct.param** %pm136, align 4
  %node137 = getelementptr inbounds %struct.param, %struct.param* %120, i32 0, i32 0
  %flags138 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node137, i32 0, i32 2
  %121 = load i32, i32* %flags138, align 8
  %and139 = and i32 %121, 128
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.then141, label %if.end211

if.then141:                                       ; preds = %if.then135
  %122 = load i8*, i8** %s, align 4
  store i8* %122, i8** %t, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc149, %if.then141
  %123 = load i8*, i8** %t, align 4
  %124 = load i8, i8* %123, align 1
  %idxprom143 = zext i8 %124 to i32
  %arrayidx144 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom143
  %125 = load i16, i16* %arrayidx144, align 2
  %conv145 = sext i16 %125 to i32
  %and146 = and i32 %conv145, 4
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %for.body148, label %for.end151

for.body148:                                      ; preds = %for.cond142
  br label %for.inc149

for.inc149:                                       ; preds = %for.body148
  %126 = load i8*, i8** %t, align 4
  %incdec.ptr150 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr150, i8** %t, align 4
  br label %for.cond142

for.end151:                                       ; preds = %for.cond142
  %127 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm152 = getelementptr inbounds %struct.value, %struct.value* %127, i32 0, i32 1
  %128 = load %struct.param*, %struct.param** %pm152, align 4
  %node153 = getelementptr inbounds %struct.param, %struct.param* %128, i32 0, i32 0
  %flags154 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node153, i32 0, i32 2
  %129 = load i32, i32* %flags154, align 8
  %and155 = and i32 %129, 14
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %land.lhs.true157, label %if.end163

land.lhs.true157:                                 ; preds = %for.end151
  %130 = load i8*, i8** %t, align 4
  %131 = load i8, i8* %130, align 1
  %conv158 = sext i8 %131 to i32
  %cmp159 = icmp eq i32 %conv158, 45
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %land.lhs.true157
  %132 = load i8*, i8** %t, align 4
  %incdec.ptr162 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr162, i8** %t, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %land.lhs.true157, %for.end151
  %133 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm164 = getelementptr inbounds %struct.value, %struct.value* %133, i32 0, i32 1
  %134 = load %struct.param*, %struct.param** %pm164, align 4
  %node165 = getelementptr inbounds %struct.param, %struct.param* %134, i32 0, i32 0
  %flags166 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node165, i32 0, i32 2
  %135 = load i32, i32* %flags166, align 8
  %and167 = and i32 %135, 2
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %if.then169, label %if.end191

if.then169:                                       ; preds = %if.end163
  %136 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 28), align 1
  %conv170 = sext i8 %136 to i32
  %tobool171 = icmp ne i32 %conv170, 0
  br i1 %tobool171, label %land.lhs.true172, label %if.else184

land.lhs.true172:                                 ; preds = %if.then169
  %137 = load i8*, i8** %t, align 4
  %arrayidx173 = getelementptr inbounds i8, i8* %137, i32 0
  %138 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %138 to i32
  %cmp175 = icmp eq i32 %conv174, 48
  br i1 %cmp175, label %land.lhs.true177, label %if.else184

land.lhs.true177:                                 ; preds = %land.lhs.true172
  %139 = load i8*, i8** %t, align 4
  %arrayidx178 = getelementptr inbounds i8, i8* %139, i32 1
  %140 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %140 to i32
  %cmp180 = icmp eq i32 %conv179, 120
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %land.lhs.true177
  %141 = load i8*, i8** %t, align 4
  %add.ptr183 = getelementptr inbounds i8, i8* %141, i32 2
  store i8* %add.ptr183, i8** %t, align 4
  br label %if.end190

if.else184:                                       ; preds = %land.lhs.true177, %land.lhs.true172, %if.then169
  %142 = load i8*, i8** %t, align 4
  %call185 = call i8* @strchr(i8* %142, i32 35)
  store i8* %call185, i8** %valprefend, align 4
  %tobool186 = icmp ne i8* %call185, null
  br i1 %tobool186, label %if.then187, label %if.end189

if.then187:                                       ; preds = %if.else184
  %143 = load i8*, i8** %valprefend, align 4
  %add.ptr188 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %add.ptr188, i8** %t, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.else184
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.then182
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.end163
  %144 = load i8*, i8** %t, align 4
  store i8* %144, i8** %valprefend, align 4
  %145 = load i8*, i8** %t, align 4
  %146 = load i8, i8* %145, align 1
  %tobool192 = icmp ne i8 %146, 0
  br i1 %tobool192, label %if.else194, label %if.then193

if.then193:                                       ; preds = %if.end191
  store i32 0, i32* %zero, align 4
  br label %if.end210

if.else194:                                       ; preds = %if.end191
  %147 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm195 = getelementptr inbounds %struct.value, %struct.value* %147, i32 0, i32 1
  %148 = load %struct.param*, %struct.param** %pm195, align 4
  %node196 = getelementptr inbounds %struct.param, %struct.param* %148, i32 0, i32 0
  %flags197 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node196, i32 0, i32 2
  %149 = load i32, i32* %flags197, align 8
  %and198 = and i32 %149, 14
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then200, label %if.else201

if.then200:                                       ; preds = %if.else194
  br label %if.end209

if.else201:                                       ; preds = %if.else194
  %150 = load i8*, i8** %t, align 4
  %151 = load i8, i8* %150, align 1
  %idxprom202 = zext i8 %151 to i32
  %arrayidx203 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom202
  %152 = load i16, i16* %arrayidx203, align 2
  %conv204 = sext i16 %152 to i32
  %and205 = and i32 %conv204, 1
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %if.end208, label %if.then207

if.then207:                                       ; preds = %if.else201
  store i32 0, i32* %zero, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %if.else201
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then200
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.then193
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.then135
  %153 = load i32, i32* %charlen, align 4
  %154 = load i32, i32* %fwidth, align 4
  %sub212 = sub i32 %154, %153
  store i32 %sub212, i32* %fwidth, align 4
  %155 = load i8*, i8** %s, align 4
  %call213 = call i32 @strlen(i8* %155)
  store i32 %call213, i32* %t0, align 4
  %156 = load i32, i32* %fwidth, align 4
  %157 = load i32, i32* %t0, align 4
  %add214 = add i32 %156, %157
  %add215 = add i32 %add214, 1
  %call216 = call i8* @hcalloc(i32 %add215)
  store i8* %call216, i8** %t, align 4
  %158 = load i8*, i8** %valprefend, align 4
  %159 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast217 = ptrtoint i8* %158 to i32
  %sub.ptr.rhs.cast218 = ptrtoint i8* %159 to i32
  %sub.ptr.sub219 = sub i32 %sub.ptr.lhs.cast217, %sub.ptr.rhs.cast218
  store i32 %sub.ptr.sub219, i32* %preflen, align 4
  %160 = load i8*, i8** %t, align 4
  %161 = load i32, i32* %preflen, align 4
  %add.ptr220 = getelementptr inbounds i8, i8* %160, i32 %161
  %162 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm221 = getelementptr inbounds %struct.value, %struct.value* %162, i32 0, i32 1
  %163 = load %struct.param*, %struct.param** %pm221, align 4
  %node222 = getelementptr inbounds %struct.param, %struct.param* %163, i32 0, i32 0
  %flags223 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node222, i32 0, i32 2
  %164 = load i32, i32* %flags223, align 8
  %and224 = and i32 %164, 64
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end211
  %165 = load i32, i32* %zero, align 4
  %tobool226 = icmp ne i32 %165, 0
  %lnot = xor i1 %tobool226, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end211
  %166 = phi i1 [ true, %if.end211 ], [ %lnot, %lor.rhs ]
  %cond227 = select i1 %166, i32 32, i32 48
  %167 = trunc i32 %cond227 to i8
  %168 = load i32, i32* %fwidth, align 4
  call void @llvm.memset.p0i8.i32(i8* %add.ptr220, i8 %167, i32 %168, i32 1, i1 false)
  %169 = load i32, i32* %preflen, align 4
  %tobool228 = icmp ne i32 %169, 0
  br i1 %tobool228, label %if.then229, label %if.end230

if.then229:                                       ; preds = %lor.end
  %170 = load i8*, i8** %t, align 4
  %171 = load i8*, i8** %s, align 4
  %172 = load i32, i32* %preflen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %170, i8* %171, i32 %172, i32 1, i1 false)
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %lor.end
  %173 = load i8*, i8** %t, align 4
  %174 = load i32, i32* %preflen, align 4
  %add.ptr231 = getelementptr inbounds i8, i8* %173, i32 %174
  %175 = load i32, i32* %fwidth, align 4
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr231, i32 %175
  %176 = load i8*, i8** %valprefend, align 4
  %177 = load i32, i32* %t0, align 4
  %178 = load i32, i32* %preflen, align 4
  %sub233 = sub i32 %177, %178
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr232, i8* %176, i32 %sub233, i32 1, i1 false)
  %179 = load i8*, i8** %t, align 4
  %180 = load i32, i32* %fwidth, align 4
  %181 = load i32, i32* %t0, align 4
  %add234 = add i32 %180, %181
  %arrayidx235 = getelementptr inbounds i8, i8* %179, i32 %add234
  store i8 0, i8* %arrayidx235, align 1
  %182 = load i8*, i8** %t, align 4
  store i8* %182, i8** %s, align 4
  br label %if.end245

if.else236:                                       ; preds = %sw.bb131
  %183 = load i32, i32* %charlen, align 4
  %184 = load i32, i32* %fwidth, align 4
  %sub237 = sub i32 %183, %184
  store i32 %sub237, i32* %t0, align 4
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc243, %if.else236
  %185 = load i32, i32* %t0, align 4
  %tobool239 = icmp ne i32 %185, 0
  br i1 %tobool239, label %for.body240, label %for.end244

for.body240:                                      ; preds = %for.cond238
  %186 = load i8*, i8** %s, align 4
  %call241 = call i32 @mb_metacharlenconv(i8* %186, i32* null)
  %187 = load i8*, i8** %s, align 4
  %add.ptr242 = getelementptr inbounds i8, i8* %187, i32 %call241
  store i8* %add.ptr242, i8** %s, align 4
  br label %for.inc243

for.inc243:                                       ; preds = %for.body240
  %188 = load i32, i32* %t0, align 4
  %dec = add i32 %188, -1
  store i32 %dec, i32* %t0, align 4
  br label %for.cond238

for.end244:                                       ; preds = %for.cond238
  br label %if.end245

if.end245:                                        ; preds = %for.end244, %if.end230
  br label %sw.epilog246

sw.epilog246:                                     ; preds = %cond.end91, %if.end245, %if.end128
  br label %if.end247

if.end247:                                        ; preds = %sw.epilog246, %if.then77
  %189 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm248 = getelementptr inbounds %struct.value, %struct.value* %189, i32 0, i32 1
  %190 = load %struct.param*, %struct.param** %pm248, align 4
  %node249 = getelementptr inbounds %struct.param, %struct.param* %190, i32 0, i32 0
  %flags250 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node249, i32 0, i32 2
  %191 = load i32, i32* %flags250, align 8
  %and251 = and i32 %191, 768
  switch i32 %and251, label %sw.epilog256 [
    i32 256, label %sw.bb252
    i32 512, label %sw.bb254
  ]

sw.bb252:                                         ; preds = %if.end247
  %192 = load i8*, i8** %s, align 4
  %call253 = call i8* @casemodify(i8* %192, i32 2)
  store i8* %call253, i8** %s, align 4
  br label %sw.epilog256

sw.bb254:                                         ; preds = %if.end247
  %193 = load i8*, i8** %s, align 4
  %call255 = call i8* @casemodify(i8* %193, i32 1)
  store i8* %call255, i8** %s, align 4
  br label %sw.epilog256

sw.epilog256:                                     ; preds = %if.end247, %sw.bb254, %sw.bb252
  br label %if.end257

if.end257:                                        ; preds = %sw.epilog256, %sw.epilog
  %194 = load %struct.value*, %struct.value** %v.addr, align 4
  %start258 = getelementptr inbounds %struct.value, %struct.value* %194, i32 0, i32 3
  %195 = load i32, i32* %start258, align 4
  %cmp259 = icmp eq i32 %195, 0
  br i1 %cmp259, label %land.lhs.true261, label %if.end265

land.lhs.true261:                                 ; preds = %if.end257
  %196 = load %struct.value*, %struct.value** %v.addr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %196, i32 0, i32 4
  %197 = load i32, i32* %end, align 4
  %cmp262 = icmp eq i32 %197, -1
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %land.lhs.true261
  %198 = load i8*, i8** %s, align 4
  store i8* %198, i8** %retval, align 4
  br label %return

if.end265:                                        ; preds = %land.lhs.true261, %if.end257
  %199 = load i8*, i8** %s, align 4
  %call266 = call i32 @strlen(i8* %199)
  store i32 %call266, i32* %len, align 4
  %200 = load %struct.value*, %struct.value** %v.addr, align 4
  %start267 = getelementptr inbounds %struct.value, %struct.value* %200, i32 0, i32 3
  %201 = load i32, i32* %start267, align 4
  %cmp268 = icmp slt i32 %201, 0
  br i1 %cmp268, label %if.then270, label %if.end279

if.then270:                                       ; preds = %if.end265
  %202 = load i32, i32* %len, align 4
  %203 = load %struct.value*, %struct.value** %v.addr, align 4
  %start271 = getelementptr inbounds %struct.value, %struct.value* %203, i32 0, i32 3
  %204 = load i32, i32* %start271, align 4
  %add272 = add nsw i32 %204, %202
  store i32 %add272, i32* %start271, align 4
  %205 = load %struct.value*, %struct.value** %v.addr, align 4
  %start273 = getelementptr inbounds %struct.value, %struct.value* %205, i32 0, i32 3
  %206 = load i32, i32* %start273, align 4
  %cmp274 = icmp slt i32 %206, 0
  br i1 %cmp274, label %if.then276, label %if.end278

if.then276:                                       ; preds = %if.then270
  %207 = load %struct.value*, %struct.value** %v.addr, align 4
  %start277 = getelementptr inbounds %struct.value, %struct.value* %207, i32 0, i32 3
  store i32 0, i32* %start277, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then276, %if.then270
  br label %if.end279

if.end279:                                        ; preds = %if.end278, %if.end265
  %208 = load %struct.value*, %struct.value** %v.addr, align 4
  %end280 = getelementptr inbounds %struct.value, %struct.value* %208, i32 0, i32 4
  %209 = load i32, i32* %end280, align 4
  %cmp281 = icmp slt i32 %209, 0
  br i1 %cmp281, label %if.then283, label %if.end299

if.then283:                                       ; preds = %if.end279
  %210 = load i32, i32* %len, align 4
  %211 = load %struct.value*, %struct.value** %v.addr, align 4
  %end284 = getelementptr inbounds %struct.value, %struct.value* %211, i32 0, i32 4
  %212 = load i32, i32* %end284, align 4
  %add285 = add nsw i32 %212, %210
  store i32 %add285, i32* %end284, align 4
  %213 = load %struct.value*, %struct.value** %v.addr, align 4
  %end286 = getelementptr inbounds %struct.value, %struct.value* %213, i32 0, i32 4
  %214 = load i32, i32* %end286, align 4
  %cmp287 = icmp sge i32 %214, 0
  br i1 %cmp287, label %if.then289, label %if.end298

if.then289:                                       ; preds = %if.then283
  %215 = load i8*, i8** %s, align 4
  %216 = load %struct.value*, %struct.value** %v.addr, align 4
  %end290 = getelementptr inbounds %struct.value, %struct.value* %216, i32 0, i32 4
  %217 = load i32, i32* %end290, align 4
  %add.ptr291 = getelementptr inbounds i8, i8* %215, i32 %217
  store i8* %add.ptr291, i8** %eptr, align 4
  %218 = load i8*, i8** %eptr, align 4
  %219 = load i8, i8* %218, align 1
  %tobool292 = icmp ne i8 %219, 0
  br i1 %tobool292, label %if.then293, label %if.end297

if.then293:                                       ; preds = %if.then289
  %220 = load i8*, i8** %eptr, align 4
  %call294 = call i32 @mb_metacharlenconv(i8* %220, i32* null)
  %221 = load %struct.value*, %struct.value** %v.addr, align 4
  %end295 = getelementptr inbounds %struct.value, %struct.value* %221, i32 0, i32 4
  %222 = load i32, i32* %end295, align 4
  %add296 = add nsw i32 %222, %call294
  store i32 %add296, i32* %end295, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %if.then289
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.then283
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.end279
  %223 = load %struct.value*, %struct.value** %v.addr, align 4
  %start300 = getelementptr inbounds %struct.value, %struct.value* %223, i32 0, i32 3
  %224 = load i32, i32* %start300, align 4
  %225 = load i32, i32* %len, align 4
  %cmp301 = icmp sgt i32 %224, %225
  br i1 %cmp301, label %cond.true303, label %cond.false305

cond.true303:                                     ; preds = %if.end299
  %call304 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %cond.end311

cond.false305:                                    ; preds = %if.end299
  %226 = load i8*, i8** %s, align 4
  %227 = load %struct.value*, %struct.value** %v.addr, align 4
  %start306 = getelementptr inbounds %struct.value, %struct.value* %227, i32 0, i32 3
  %228 = load i32, i32* %start306, align 4
  %add.ptr307 = getelementptr inbounds i8, i8* %226, i32 %228
  %229 = load i32, i32* %len, align 4
  %230 = load %struct.value*, %struct.value** %v.addr, align 4
  %start308 = getelementptr inbounds %struct.value, %struct.value* %230, i32 0, i32 3
  %231 = load i32, i32* %start308, align 4
  %sub309 = sub nsw i32 %229, %231
  %call310 = call i8* @dupstring_wlen(i8* %add.ptr307, i32 %sub309)
  br label %cond.end311

cond.end311:                                      ; preds = %cond.false305, %cond.true303
  %cond312 = phi i8* [ %call304, %cond.true303 ], [ %call310, %cond.false305 ]
  store i8* %cond312, i8** %s, align 4
  %232 = load %struct.value*, %struct.value** %v.addr, align 4
  %end313 = getelementptr inbounds %struct.value, %struct.value* %232, i32 0, i32 4
  %233 = load i32, i32* %end313, align 4
  %234 = load %struct.value*, %struct.value** %v.addr, align 4
  %start314 = getelementptr inbounds %struct.value, %struct.value* %234, i32 0, i32 3
  %235 = load i32, i32* %start314, align 4
  %cmp315 = icmp sle i32 %233, %235
  br i1 %cmp315, label %if.then317, label %if.else319

if.then317:                                       ; preds = %cond.end311
  %236 = load i8*, i8** %s, align 4
  %arrayidx318 = getelementptr inbounds i8, i8* %236, i32 0
  store i8 0, i8* %arrayidx318, align 1
  br label %if.end333

if.else319:                                       ; preds = %cond.end311
  %237 = load %struct.value*, %struct.value** %v.addr, align 4
  %end320 = getelementptr inbounds %struct.value, %struct.value* %237, i32 0, i32 4
  %238 = load i32, i32* %end320, align 4
  %239 = load %struct.value*, %struct.value** %v.addr, align 4
  %start321 = getelementptr inbounds %struct.value, %struct.value* %239, i32 0, i32 3
  %240 = load i32, i32* %start321, align 4
  %sub322 = sub nsw i32 %238, %240
  %241 = load i32, i32* %len, align 4
  %242 = load %struct.value*, %struct.value** %v.addr, align 4
  %start323 = getelementptr inbounds %struct.value, %struct.value* %242, i32 0, i32 3
  %243 = load i32, i32* %start323, align 4
  %sub324 = sub nsw i32 %241, %243
  %cmp325 = icmp sle i32 %sub322, %sub324
  br i1 %cmp325, label %if.then327, label %if.end332

if.then327:                                       ; preds = %if.else319
  %244 = load i8*, i8** %s, align 4
  %245 = load %struct.value*, %struct.value** %v.addr, align 4
  %end328 = getelementptr inbounds %struct.value, %struct.value* %245, i32 0, i32 4
  %246 = load i32, i32* %end328, align 4
  %247 = load %struct.value*, %struct.value** %v.addr, align 4
  %start329 = getelementptr inbounds %struct.value, %struct.value* %247, i32 0, i32 3
  %248 = load i32, i32* %start329, align 4
  %sub330 = sub nsw i32 %246, %248
  %arrayidx331 = getelementptr inbounds i8, i8* %244, i32 %sub330
  store i8 0, i8* %arrayidx331, align 1
  br label %if.end332

if.end332:                                        ; preds = %if.then327, %if.else319
  br label %if.end333

if.end333:                                        ; preds = %if.end332, %if.then317
  %249 = load i8*, i8** %s, align 4
  store i8* %249, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end333, %if.then264, %if.end45, %if.end23, %if.then5, %if.then
  %250 = load i8*, i8** %retval, align 4
  ret i8* %250
}

declare void @mb_charinit() #1

declare i32 @mb_metacharlenconv(i8*, i32*) #1

declare i32 @strlen(i8*) #1

declare i32 @mb_metastrlenend(i8*, i32, i8*) #1

; Function Attrs: noinline nounwind
define %struct.value* @fetchvalue(%struct.value* %v, i8** %pptr, i32 %bracks, i32 %flags) #0 {
entry:
  %retval = alloca %struct.value*, align 4
  %v.addr = alloca %struct.value*, align 4
  %pptr.addr = alloca i8**, align 4
  %bracks.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  %t = alloca i8*, align 4
  %ie = alloca i8*, align 4
  %sav = alloca i8, align 1
  %c = alloca i8, align 1
  %ppar = alloca i32, align 4
  %pm100 = alloca %struct.param*, align 4
  %isvarat = alloca i32, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  store i8** %pptr, i8*** %pptr.addr, align 4
  store i32 %bracks, i32* %bracks.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %ppar, align 4
  %0 = load i8**, i8*** %pptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %t, align 4
  store i8* %1, i8** %s, align 4
  %2 = load i8*, i8** %s, align 4
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %bracks.addr, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load i8*, i8** %s, align 4
  %call = call i32 @zstrtol(i8* %6, i8** %s, i32 10)
  store i32 %call, i32* %ppar, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv3, 48
  store i32 %sub, i32* %ppar, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end83

if.else4:                                         ; preds = %entry
  %9 = load i8*, i8** %s, align 4
  %call5 = call i8* @itype_end(i8* %9, i32 128, i32 0)
  store i8* %call5, i8** %ie, align 4
  %10 = load i8*, i8** %s, align 4
  %cmp6 = icmp ne i8* %call5, %10
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else4
  %11 = load i8*, i8** %ie, align 4
  store i8* %11, i8** %s, align 4
  br label %if.end82

if.else9:                                         ; preds = %if.else4
  %12 = load i8, i8* %c, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, -105
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else9
  %13 = load i8*, i8** %s, align 4
  %incdec.ptr14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr14, i8** %s, align 4
  store i8 63, i8* %13, align 1
  br label %if.end81

if.else15:                                        ; preds = %if.else9
  %14 = load i8, i8* %c, align 1
  %conv16 = sext i8 %14 to i32
  %cmp17 = icmp eq i32 %conv16, -124
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else15
  %15 = load i8*, i8** %s, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr20, i8** %s, align 4
  store i8 35, i8* %15, align 1
  br label %if.end80

if.else21:                                        ; preds = %if.else15
  %16 = load i8, i8* %c, align 1
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv22, -123
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else21
  %17 = load i8*, i8** %s, align 4
  %incdec.ptr26 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr26, i8** %s, align 4
  store i8 36, i8* %17, align 1
  br label %if.end79

if.else27:                                        ; preds = %if.else21
  %18 = load i8, i8* %c, align 1
  %conv28 = sext i8 %18 to i32
  %cmp29 = icmp eq i32 %conv28, -116
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else27
  %19 = load i8*, i8** %s, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr32, i8** %s, align 4
  store i8 36, i8* %19, align 1
  br label %if.end78

if.else33:                                        ; preds = %if.else27
  %20 = load i8, i8* %c, align 1
  %conv34 = sext i8 %20 to i32
  %cmp35 = icmp eq i32 %conv34, -121
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else33
  %21 = load i8*, i8** %s, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr38, i8** %s, align 4
  store i8 42, i8* %21, align 1
  br label %if.end77

if.else39:                                        ; preds = %if.else33
  %22 = load i8, i8* %c, align 1
  %conv40 = sext i8 %22 to i32
  %cmp41 = icmp eq i32 %conv40, 45
  br i1 %cmp41, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else39
  %23 = load i8, i8* %c, align 1
  %conv43 = sext i8 %23 to i32
  %cmp44 = icmp eq i32 %conv43, -101
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %lor.lhs.false, %if.else39
  %24 = load i8*, i8** %s, align 4
  %incdec.ptr47 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr47, i8** %s, align 4
  store i8 45, i8* %24, align 1
  br label %if.end76

if.else48:                                        ; preds = %lor.lhs.false
  %25 = load i8, i8* %c, align 1
  %conv49 = sext i8 %25 to i32
  %cmp50 = icmp eq i32 %conv49, 35
  br i1 %cmp50, label %if.then72, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.else48
  %26 = load i8, i8* %c, align 1
  %conv53 = sext i8 %26 to i32
  %cmp54 = icmp eq i32 %conv53, 63
  br i1 %cmp54, label %if.then72, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %27 = load i8, i8* %c, align 1
  %conv57 = sext i8 %27 to i32
  %cmp58 = icmp eq i32 %conv57, 36
  br i1 %cmp58, label %if.then72, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %28 = load i8, i8* %c, align 1
  %conv61 = sext i8 %28 to i32
  %cmp62 = icmp eq i32 %conv61, 33
  br i1 %cmp62, label %if.then72, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %29 = load i8, i8* %c, align 1
  %conv65 = sext i8 %29 to i32
  %cmp66 = icmp eq i32 %conv65, 64
  br i1 %cmp66, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %30 = load i8, i8* %c, align 1
  %conv69 = sext i8 %30 to i32
  %cmp70 = icmp eq i32 %conv69, 42
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %lor.lhs.false68, %lor.lhs.false64, %lor.lhs.false60, %lor.lhs.false56, %lor.lhs.false52, %if.else48
  %31 = load i8*, i8** %s, align 4
  %incdec.ptr73 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr73, i8** %s, align 4
  br label %if.end75

if.else74:                                        ; preds = %lor.lhs.false68
  store %struct.value* null, %struct.value** %retval, align 4
  br label %return

if.end75:                                         ; preds = %if.then72
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then46
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then37
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then31
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then25
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then19
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then13
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then8
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end
  %32 = load i8*, i8** %s, align 4
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %sav, align 1
  %tobool84 = icmp ne i8 %33, 0
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end83
  %34 = load i8*, i8** %s, align 4
  store i8 0, i8* %34, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end83
  %35 = load i32, i32* %ppar, align 4
  %tobool87 = icmp ne i32 %35, 0
  br i1 %tobool87, label %if.then88, label %if.else99

if.then88:                                        ; preds = %if.end86
  %36 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool89 = icmp ne %struct.value* %36, null
  br i1 %tobool89, label %if.then90, label %if.else91

if.then90:                                        ; preds = %if.then88
  %37 = load %struct.value*, %struct.value** %v.addr, align 4
  %38 = bitcast %struct.value* %37 to i8*
  call void @llvm.memset.p0i8.i32(i8* %38, i8 0, i32 24, i32 4, i1 false)
  br label %if.end93

if.else91:                                        ; preds = %if.then88
  %call92 = call i8* @hcalloc(i32 24)
  %39 = bitcast i8* %call92 to %struct.value*
  store %struct.value* %39, %struct.value** %v.addr, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then90
  %40 = load %struct.param*, %struct.param** @argvparam, align 4
  %41 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %41, i32 0, i32 1
  store %struct.param* %40, %struct.param** %pm, align 4
  %42 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags94 = getelementptr inbounds %struct.value, %struct.value* %42, i32 0, i32 2
  store i32 0, i32* %flags94, align 4
  %43 = load i32, i32* %ppar, align 4
  %sub95 = sub nsw i32 %43, 1
  %44 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %44, i32 0, i32 3
  store i32 %sub95, i32* %start, align 4
  %45 = load i32, i32* %ppar, align 4
  %46 = load %struct.value*, %struct.value** %v.addr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %46, i32 0, i32 4
  store i32 %45, i32* %end, align 4
  %47 = load i8, i8* %sav, align 1
  %tobool96 = icmp ne i8 %47, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end93
  %48 = load i8, i8* %sav, align 1
  %49 = load i8*, i8** %s, align 4
  store i8 %48, i8* %49, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end93
  br label %if.end176

if.else99:                                        ; preds = %if.end86
  %50 = load i8*, i8** %t, align 4
  %arrayidx101 = getelementptr inbounds i8, i8* %50, i32 0
  %51 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %51 to i32
  %cmp103 = icmp eq i32 %conv102, 64
  br i1 %cmp103, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else99
  %52 = load i8*, i8** %t, align 4
  %arrayidx105 = getelementptr inbounds i8, i8* %52, i32 1
  %53 = load i8, i8* %arrayidx105, align 1
  %tobool106 = icmp ne i8 %53, 0
  %lnot = xor i1 %tobool106, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else99
  %54 = phi i1 [ false, %if.else99 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %54 to i32
  store i32 %land.ext, i32* %isvarat, align 4
  %55 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %55, i32 0, i32 9
  %56 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %57 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %58 = load i8*, i8** %t, align 4
  %59 = load i8, i8* %58, align 1
  %conv107 = sext i8 %59 to i32
  %cmp108 = icmp eq i32 %conv107, 48
  br i1 %cmp108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  br label %cond.end

cond.false:                                       ; preds = %land.end
  %60 = load i8*, i8** %t, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), %cond.true ], [ %60, %cond.false ]
  %call110 = call %struct.hashnode* %56(%struct.hashtable* %57, i8* %cond)
  %61 = bitcast %struct.hashnode* %call110 to %struct.param*
  store %struct.param* %61, %struct.param** %pm100, align 4
  %62 = load i8, i8* %sav, align 1
  %tobool111 = icmp ne i8 %62, 0
  br i1 %tobool111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %cond.end
  %63 = load i8, i8* %sav, align 1
  %64 = load i8*, i8** %s, align 4
  store i8 %63, i8* %64, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %cond.end
  %65 = load i8*, i8** %s, align 4
  %66 = load i8**, i8*** %pptr.addr, align 4
  store i8* %65, i8** %66, align 4
  %67 = load %struct.param*, %struct.param** %pm100, align 4
  %tobool114 = icmp ne %struct.param* %67, null
  br i1 %tobool114, label %lor.lhs.false115, label %if.then119

lor.lhs.false115:                                 ; preds = %if.end113
  %68 = load %struct.param*, %struct.param** %pm100, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %68, i32 0, i32 0
  %flags116 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %69 = load i32, i32* %flags116, align 8
  %and117 = and i32 %69, 33554432
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %lor.lhs.false115, %if.end113
  store %struct.value* null, %struct.value** %retval, align 4
  br label %return

if.end120:                                        ; preds = %lor.lhs.false115
  %70 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool121 = icmp ne %struct.value* %70, null
  br i1 %tobool121, label %if.then122, label %if.else123

if.then122:                                       ; preds = %if.end120
  %71 = load %struct.value*, %struct.value** %v.addr, align 4
  %72 = bitcast %struct.value* %71 to i8*
  call void @llvm.memset.p0i8.i32(i8* %72, i8 0, i32 24, i32 4, i1 false)
  br label %if.end125

if.else123:                                       ; preds = %if.end120
  %call124 = call i8* @hcalloc(i32 24)
  %73 = bitcast i8* %call124 to %struct.value*
  store %struct.value* %73, %struct.value** %v.addr, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else123, %if.then122
  %74 = load %struct.param*, %struct.param** %pm100, align 4
  %node126 = getelementptr inbounds %struct.param, %struct.param* %74, i32 0, i32 0
  %flags127 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node126, i32 0, i32 2
  %75 = load i32, i32* %flags127, align 8
  %and128 = and i32 %75, 31
  %and129 = and i32 %and128, 17
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.then131, label %if.end139

if.then131:                                       ; preds = %if.end125
  %76 = load i32, i32* %flags.addr, align 4
  %77 = load i32, i32* %isvarat, align 4
  %tobool132 = icmp ne i32 %77, 0
  %cond133 = select i1 %tobool132, i32 -32768, i32 0
  %or = or i32 %76, %cond133
  %78 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %78, i32 0, i32 0
  store i32 %or, i32* %isarr, align 4
  %79 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr134 = getelementptr inbounds %struct.value, %struct.value* %79, i32 0, i32 0
  %80 = load i32, i32* %isarr134, align 4
  %tobool135 = icmp ne i32 %80, 0
  br i1 %tobool135, label %if.end138, label %if.then136

if.then136:                                       ; preds = %if.then131
  %81 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr137 = getelementptr inbounds %struct.value, %struct.value* %81, i32 0, i32 0
  store i32 512, i32* %isarr137, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.then131
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end125
  %82 = load %struct.param*, %struct.param** %pm100, align 4
  %83 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm140 = getelementptr inbounds %struct.value, %struct.value* %83, i32 0, i32 1
  store %struct.param* %82, %struct.param** %pm140, align 4
  %84 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags141 = getelementptr inbounds %struct.value, %struct.value* %84, i32 0, i32 2
  store i32 0, i32* %flags141, align 4
  %85 = load %struct.value*, %struct.value** %v.addr, align 4
  %start142 = getelementptr inbounds %struct.value, %struct.value* %85, i32 0, i32 3
  store i32 0, i32* %start142, align 4
  %86 = load %struct.value*, %struct.value** %v.addr, align 4
  %end143 = getelementptr inbounds %struct.value, %struct.value* %86, i32 0, i32 4
  store i32 -1, i32* %end143, align 4
  %87 = load i32, i32* %bracks.addr, align 4
  %cmp144 = icmp sgt i32 %87, 0
  br i1 %cmp144, label %land.lhs.true, label %if.else158

land.lhs.true:                                    ; preds = %if.end139
  %88 = load i8*, i8** %s, align 4
  %89 = load i8, i8* %88, align 1
  %conv146 = sext i8 %89 to i32
  %cmp147 = icmp eq i32 %conv146, 91
  br i1 %cmp147, label %if.then153, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %land.lhs.true
  %90 = load i8*, i8** %s, align 4
  %91 = load i8, i8* %90, align 1
  %conv150 = sext i8 %91 to i32
  %cmp151 = icmp eq i32 %conv150, -111
  br i1 %cmp151, label %if.then153, label %if.else158

if.then153:                                       ; preds = %lor.lhs.false149, %land.lhs.true
  %92 = load %struct.value*, %struct.value** %v.addr, align 4
  %93 = load i32, i32* %flags.addr, align 4
  %call154 = call i32 @getindex(i8** %s, %struct.value* %92, i32 %93)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.then153
  %94 = load i8*, i8** %s, align 4
  %95 = load i8**, i8*** %pptr.addr, align 4
  store i8* %94, i8** %95, align 4
  %96 = load %struct.value*, %struct.value** %v.addr, align 4
  store %struct.value* %96, %struct.value** %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.then153
  br label %if.end175

if.else158:                                       ; preds = %lor.lhs.false149, %if.end139
  %97 = load i32, i32* %flags.addr, align 4
  %and159 = and i32 %97, 64
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.end174, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %if.else158
  %98 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr162 = getelementptr inbounds %struct.value, %struct.value* %98, i32 0, i32 0
  %99 = load i32, i32* %isarr162, align 4
  %tobool163 = icmp ne i32 %99, 0
  br i1 %tobool163, label %land.lhs.true164, label %if.end174

land.lhs.true164:                                 ; preds = %land.lhs.true161
  %100 = load i8*, i8** %t, align 4
  %call165 = call i8* @itype_end(i8* %100, i32 128, i32 1)
  %101 = load i8*, i8** %t, align 4
  %cmp166 = icmp ne i8* %call165, %101
  br i1 %cmp166, label %land.lhs.true168, label %if.end174

land.lhs.true168:                                 ; preds = %land.lhs.true164
  %102 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %conv169 = sext i8 %102 to i32
  %tobool170 = icmp ne i32 %conv169, 0
  br i1 %tobool170, label %if.then171, label %if.end174

if.then171:                                       ; preds = %land.lhs.true168
  %103 = load %struct.value*, %struct.value** %v.addr, align 4
  %end172 = getelementptr inbounds %struct.value, %struct.value* %103, i32 0, i32 4
  store i32 1, i32* %end172, align 4
  %104 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr173 = getelementptr inbounds %struct.value, %struct.value* %104, i32 0, i32 0
  store i32 0, i32* %isarr173, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %land.lhs.true168, %land.lhs.true164, %land.lhs.true161, %if.else158
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end157
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end98
  %105 = load i32, i32* %bracks.addr, align 4
  %tobool177 = icmp ne i32 %105, 0
  br i1 %tobool177, label %if.end182, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %if.end176
  %106 = load i8*, i8** %s, align 4
  %107 = load i8, i8* %106, align 1
  %conv179 = sext i8 %107 to i32
  %tobool180 = icmp ne i32 %conv179, 0
  br i1 %tobool180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %land.lhs.true178
  store %struct.value* null, %struct.value** %retval, align 4
  br label %return

if.end182:                                        ; preds = %land.lhs.true178, %if.end176
  %108 = load i8*, i8** %s, align 4
  %109 = load i8**, i8*** %pptr.addr, align 4
  store i8* %108, i8** %109, align 4
  %110 = load %struct.value*, %struct.value** %v.addr, align 4
  store %struct.value* %110, %struct.value** %retval, align 4
  br label %return

return:                                           ; preds = %if.end182, %if.then181, %if.then156, %if.then119, %if.else74
  %111 = load %struct.value*, %struct.value** %retval, align 4
  ret %struct.value* %111
}

declare i32 @zstrtol(i8*, i8**, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i8* @dupstring(i8*) #1

declare i8* @sepjoin(i8**, i8*, i32) #1

declare i32 @arrlen(i8**) #1

declare signext i8 @arrlen_le(i8**, i32) #1

; Function Attrs: noinline nounwind
define void @convbase(i8* %s, i32 %v, i32 %base) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %v.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i32, i32* %v.addr, align 4
  %2 = load i32, i32* %base.addr, align 4
  call void @convbase_ptr(i8* %0, i32 %1, i32 %2, i32* null)
  ret void
}

; Function Attrs: noinline nounwind
define i8* @convfloat(double %dval, i32 %digits, i32 %flags, %struct._IO_FILE* %fout) #0 {
entry:
  %dval.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %fout.addr = alloca %struct._IO_FILE*, align 4
  %fmt = alloca [5 x i8], align 1
  %prev_locale = alloca i8*, align 4
  %ret = alloca i8*, align 4
  %buf = alloca i8*, align 4
  store double %dval, double* %dval.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 4
  %0 = bitcast [5 x i8]* %fmt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @convfloat.fmt, i32 0, i32 0), i32 5, i32 1, i1 false)
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %fmt, i32 0, i32 3
  store i8 103, i8* %arrayidx, align 1
  %2 = load i32, i32* %digits.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 17, i32* %digits.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end14

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %flags.addr, align 4
  %and3 = and i32 %3, 8
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.else
  %arrayidx6 = getelementptr inbounds [5 x i8], [5 x i8]* %fmt, i32 0, i32 3
  store i8 102, i8* %arrayidx6, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else
  %4 = load i32, i32* %digits.addr, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end7
  store i32 10, i32* %digits.addr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end7
  %5 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %5, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %6 = load i32, i32* %digits.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %digits.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %call = call i8* @setlocale(i32 1, i8* null)
  %call15 = call i8* @dupstring(i8* %call)
  store i8* %call15, i8** %prev_locale, align 4
  %call16 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %tobool17 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.end14
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %fmt, i32 0, i32 0
  %9 = load i32, i32* %digits.addr, align 4
  %10 = load double, double* %dval.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* %arraydecay, i32 %9, double %10)
  store i8* null, i8** %ret, align 4
  br label %if.end71

if.else20:                                        ; preds = %if.end14
  %11 = load i32, i32* %digits.addr, align 4
  %add = add nsw i32 512, %11
  %mul = mul i32 1, %add
  %call21 = call i8* @zhalloc(i32 %mul)
  store i8* %call21, i8** %buf, align 4
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else20
  %12 = load double, double* %dval.addr, align 8
  %conv = fptrunc double %12 to float
  %call22 = call i32 @__FLOAT_BITS(float %conv)
  %and23 = and i32 %call22, 2147483647
  %cmp24 = icmp eq i32 %and23, 2139095040
  br i1 %cmp24, label %if.then35, label %if.else39

cond.false:                                       ; preds = %if.else20
  br i1 true, label %cond.true26, label %cond.false31

cond.true26:                                      ; preds = %cond.false
  %13 = load double, double* %dval.addr, align 8
  %call27 = call i64 @__DOUBLE_BITS(double %13)
  %and28 = and i64 %call27, 9223372036854775807
  %cmp29 = icmp eq i64 %and28, 9218868437227405312
  br i1 %cmp29, label %if.then35, label %if.else39

cond.false31:                                     ; preds = %cond.false
  %14 = load double, double* %dval.addr, align 8
  %call32 = call i32 @__fpclassifyl(double %14)
  %cmp33 = icmp eq i32 %call32, 1
  br i1 %cmp33, label %if.then35, label %if.else39

if.then35:                                        ; preds = %cond.false31, %cond.true26, %cond.true
  %15 = load double, double* %dval.addr, align 8
  %cmp36 = fcmp olt double %15, 0.000000e+00
  %cond = select i1 %cmp36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)
  %call38 = call i8* @dupstring(i8* %cond)
  store i8* %call38, i8** %ret, align 4
  br label %if.end70

if.else39:                                        ; preds = %cond.false31, %cond.true26, %cond.true
  br i1 false, label %cond.true40, label %cond.false46

cond.true40:                                      ; preds = %if.else39
  %16 = load double, double* %dval.addr, align 8
  %conv41 = fptrunc double %16 to float
  %call42 = call i32 @__FLOAT_BITS(float %conv41)
  %and43 = and i32 %call42, 2147483647
  %cmp44 = icmp ugt i32 %and43, 2139095040
  br i1 %cmp44, label %if.then56, label %if.else58

cond.false46:                                     ; preds = %if.else39
  br i1 true, label %cond.true47, label %cond.false52

cond.true47:                                      ; preds = %cond.false46
  %17 = load double, double* %dval.addr, align 8
  %call48 = call i64 @__DOUBLE_BITS(double %17)
  %and49 = and i64 %call48, 9223372036854775807
  %cmp50 = icmp ugt i64 %and49, 9218868437227405312
  br i1 %cmp50, label %if.then56, label %if.else58

cond.false52:                                     ; preds = %cond.false46
  %18 = load double, double* %dval.addr, align 8
  %call53 = call i32 @__fpclassifyl(double %18)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %cond.false52, %cond.true47, %cond.true40
  %call57 = call i8* @dupstring(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0))
  store i8* %call57, i8** %ret, align 4
  br label %if.end69

if.else58:                                        ; preds = %cond.false52, %cond.true47, %cond.true40
  %19 = load i8*, i8** %buf, align 4
  %arraydecay59 = getelementptr inbounds [5 x i8], [5 x i8]* %fmt, i32 0, i32 0
  %20 = load i32, i32* %digits.addr, align 4
  %21 = load double, double* %dval.addr, align 8
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* %arraydecay59, i32 %20, double %21)
  %22 = load i8*, i8** %buf, align 4
  %call61 = call i8* @strchr(i8* %22, i32 101)
  %tobool62 = icmp ne i8* %call61, null
  br i1 %tobool62, label %if.end67, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else58
  %23 = load i8*, i8** %buf, align 4
  %call63 = call i8* @strchr(i8* %23, i32 46)
  %tobool64 = icmp ne i8* %call63, null
  br i1 %tobool64, label %if.end67, label %if.then65

if.then65:                                        ; preds = %land.lhs.true
  %24 = load i8*, i8** %buf, align 4
  %call66 = call i8* @strcat(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %land.lhs.true, %if.else58
  %25 = load i8*, i8** %buf, align 4
  %call68 = call i8* @dupstring(i8* %25)
  store i8* %call68, i8** %ret, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end67, %if.then56
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then35
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then18
  %26 = load i8*, i8** %prev_locale, align 4
  %tobool72 = icmp ne i8* %26, null
  br i1 %tobool72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end71
  %27 = load i8*, i8** %prev_locale, align 4
  %call74 = call i8* @setlocale(i32 1, i8* %27)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71
  %28 = load i8*, i8** %ret, align 4
  ret i8* %28
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare i8* @casemodify(i8*, i32) #1

declare i8* @dupstring_wlen(i8*, i32) #1

; Function Attrs: noinline nounwind
define i8** @getarrvalue(%struct.value* %v) #0 {
entry:
  %retval = alloca i8**, align 4
  %v.addr = alloca %struct.value*, align 4
  %s = alloca i8**, align 4
  %buf = alloca [12 x i8], align 1
  store %struct.value* %v, %struct.value** %v.addr, align 4
  %0 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool = icmp ne %struct.value* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8** @arrdup(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @nular, i32 0, i32 0))
  store i8** %call, i8*** %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool1 = icmp ne %struct.value* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %2 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %2, i32 0, i32 1
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %tobool2 = icmp ne %struct.param* %3, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then14

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm3 = getelementptr inbounds %struct.value, %struct.value* %4, i32 0, i32 1
  %5 = load %struct.param*, %struct.param** %pm3, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %6 = load i32, i32* %flags, align 8
  %and = and i32 %6, 33554432
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then14, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm6 = getelementptr inbounds %struct.value, %struct.value* %7, i32 0, i32 1
  %8 = load %struct.param*, %struct.param** %pm6, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  %9 = load i8*, i8** %nam, align 4
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %lor.lhs.false9, label %if.then14

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %10 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm10 = getelementptr inbounds %struct.value, %struct.value* %10, i32 0, i32 1
  %11 = load %struct.param*, %struct.param** %pm10, align 4
  %node11 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 0
  %nam12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 1
  %12 = load i8*, i8** %nam12, align 4
  %13 = load i8, i8* %12, align 1
  %tobool13 = icmp ne i8 %13, 0
  br i1 %tobool13, label %if.end, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %land.lhs.true
  %call15 = call i8** @arrdup(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @nular, i32 0, i32 1))
  store i8** %call15, i8*** %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false9, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end
  %14 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags17 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 2
  %15 = load i32, i32* %flags17, align 4
  %and18 = and i32 %15, 1
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end16
  %call21 = call i8** @arrdup(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @nular, i32 0, i32 0))
  store i8** %call21, i8*** %s, align 4
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %16 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %16, i32 0, i32 3
  %17 = load i32, i32* %start, align 4
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %17)
  %arraydecay23 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call24 = call i8* @dupstring(i8* %arraydecay23)
  %18 = load i8**, i8*** %s, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %18, i32 0
  store i8* %call24, i8** %arrayidx, align 4
  %19 = load i8**, i8*** %s, align 4
  store i8** %19, i8*** %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end16
  %20 = load %struct.value*, %struct.value** %v.addr, align 4
  %call26 = call i8** @getvaluearr(%struct.value* %20)
  store i8** %call26, i8*** %s, align 4
  %21 = load %struct.value*, %struct.value** %v.addr, align 4
  %start27 = getelementptr inbounds %struct.value, %struct.value* %21, i32 0, i32 3
  %22 = load i32, i32* %start27, align 4
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %land.lhs.true28, label %if.end31

land.lhs.true28:                                  ; preds = %if.end25
  %23 = load %struct.value*, %struct.value** %v.addr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %23, i32 0, i32 4
  %24 = load i32, i32* %end, align 4
  %cmp29 = icmp eq i32 %24, -1
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true28
  %25 = load i8**, i8*** %s, align 4
  store i8** %25, i8*** %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true28, %if.end25
  %26 = load %struct.value*, %struct.value** %v.addr, align 4
  %start32 = getelementptr inbounds %struct.value, %struct.value* %26, i32 0, i32 3
  %27 = load i32, i32* %start32, align 4
  %cmp33 = icmp slt i32 %27, 0
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end31
  %28 = load i8**, i8*** %s, align 4
  %call35 = call i32 @arrlen(i8** %28)
  %29 = load %struct.value*, %struct.value** %v.addr, align 4
  %start36 = getelementptr inbounds %struct.value, %struct.value* %29, i32 0, i32 3
  %30 = load i32, i32* %start36, align 4
  %add = add nsw i32 %30, %call35
  store i32 %add, i32* %start36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31
  %31 = load %struct.value*, %struct.value** %v.addr, align 4
  %end38 = getelementptr inbounds %struct.value, %struct.value* %31, i32 0, i32 4
  %32 = load i32, i32* %end38, align 4
  %cmp39 = icmp slt i32 %32, 0
  br i1 %cmp39, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end37
  %33 = load i8**, i8*** %s, align 4
  %call41 = call i32 @arrlen(i8** %33)
  %add42 = add nsw i32 %call41, 1
  %34 = load %struct.value*, %struct.value** %v.addr, align 4
  %end43 = getelementptr inbounds %struct.value, %struct.value* %34, i32 0, i32 4
  %35 = load i32, i32* %end43, align 4
  %add44 = add nsw i32 %35, %add42
  store i32 %add44, i32* %end43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end37
  %36 = load %struct.value*, %struct.value** %v.addr, align 4
  %end46 = getelementptr inbounds %struct.value, %struct.value* %36, i32 0, i32 4
  %37 = load i32, i32* %end46, align 4
  %38 = load %struct.value*, %struct.value** %v.addr, align 4
  %start47 = getelementptr inbounds %struct.value, %struct.value* %38, i32 0, i32 3
  %39 = load i32, i32* %start47, align 4
  %cmp48 = icmp sle i32 %37, %39
  br i1 %cmp48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end45
  %call50 = call i8** @arrdup_max(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @nular, i32 0, i32 0), i32 0)
  store i8** %call50, i8*** %s, align 4
  br label %if.end73

if.else51:                                        ; preds = %if.end45
  %40 = load %struct.value*, %struct.value** %v.addr, align 4
  %start52 = getelementptr inbounds %struct.value, %struct.value* %40, i32 0, i32 3
  %41 = load i32, i32* %start52, align 4
  %cmp53 = icmp slt i32 %41, 0
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.else51
  %call55 = call i8** @arrdup_max(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @nular, i32 0, i32 0), i32 1)
  store i8** %call55, i8*** %s, align 4
  br label %if.end72

if.else56:                                        ; preds = %if.else51
  %42 = load i8**, i8*** %s, align 4
  %43 = load %struct.value*, %struct.value** %v.addr, align 4
  %start57 = getelementptr inbounds %struct.value, %struct.value* %43, i32 0, i32 3
  %44 = load i32, i32* %start57, align 4
  %call58 = call signext i8 @arrlen_le(i8** %42, i32 %44)
  %tobool59 = icmp ne i8 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.else65

if.then60:                                        ; preds = %if.else56
  %45 = load %struct.value*, %struct.value** %v.addr, align 4
  %end61 = getelementptr inbounds %struct.value, %struct.value* %45, i32 0, i32 4
  %46 = load i32, i32* %end61, align 4
  %47 = load %struct.value*, %struct.value** %v.addr, align 4
  %start62 = getelementptr inbounds %struct.value, %struct.value* %47, i32 0, i32 3
  %48 = load i32, i32* %start62, align 4
  %add63 = add nsw i32 %48, 1
  %sub = sub nsw i32 %46, %add63
  %call64 = call i8** @arrdup_max(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @nular, i32 0, i32 0), i32 %sub)
  store i8** %call64, i8*** %s, align 4
  br label %if.end71

if.else65:                                        ; preds = %if.else56
  %49 = load i8**, i8*** %s, align 4
  %50 = load %struct.value*, %struct.value** %v.addr, align 4
  %start66 = getelementptr inbounds %struct.value, %struct.value* %50, i32 0, i32 3
  %51 = load i32, i32* %start66, align 4
  %add.ptr = getelementptr inbounds i8*, i8** %49, i32 %51
  %52 = load %struct.value*, %struct.value** %v.addr, align 4
  %end67 = getelementptr inbounds %struct.value, %struct.value* %52, i32 0, i32 4
  %53 = load i32, i32* %end67, align 4
  %54 = load %struct.value*, %struct.value** %v.addr, align 4
  %start68 = getelementptr inbounds %struct.value, %struct.value* %54, i32 0, i32 3
  %55 = load i32, i32* %start68, align 4
  %sub69 = sub nsw i32 %53, %55
  %call70 = call i8** @arrdup_max(i8** %add.ptr, i32 %sub69)
  store i8** %call70, i8*** %s, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else65, %if.then60
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then54
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then49
  %56 = load i8**, i8*** %s, align 4
  store i8** %56, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then30, %if.then20, %if.then14, %if.then
  %57 = load i8**, i8*** %retval, align 4
  ret i8** %57
}

declare i8** @arrdup(i8**) #1

declare i8** @arrdup_max(i8**, i32) #1

; Function Attrs: noinline nounwind
define i32 @getintvalue(%struct.value* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct.value*, align 4
  %arr = alloca i8**, align 4
  %scal = alloca i8*, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  %0 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool = icmp ne %struct.value* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags = getelementptr inbounds %struct.value, %struct.value* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 3
  %4 = load i32, i32* %start, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %5, i32 0, i32 0
  %6 = load i32, i32* %isarr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %7 = load %struct.value*, %struct.value** %v.addr, align 4
  %call = call i8** @getarrvalue(%struct.value* %7)
  store i8** %call, i8*** %arr, align 4
  %8 = load i8**, i8*** %arr, align 4
  %tobool6 = icmp ne i8** %8, null
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %9 = load i8**, i8*** %arr, align 4
  %call8 = call i8* @sepjoin(i8** %9, i8* null, i32 1)
  store i8* %call8, i8** %scal, align 4
  %10 = load i8*, i8** %scal, align 4
  %call9 = call i32 @mathevali(i8* %10)
  store i32 %call9, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then5
  store i32 0, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end3
  %11 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags11, align 8
  %and12 = and i32 %13, 31
  %cmp = icmp eq i32 %and12, 2
  br i1 %cmp, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end10
  %14 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm14 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 1
  %15 = load %struct.param*, %struct.param** %pm14, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %16 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %getfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %16, i32 0, i32 0
  %17 = load i32 (%struct.param*)*, i32 (%struct.param*)** %getfn, align 4
  %18 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm15 = getelementptr inbounds %struct.value, %struct.value* %18, i32 0, i32 1
  %19 = load %struct.param*, %struct.param** %pm15, align 4
  %call16 = call i32 %17(%struct.param* %19)
  store i32 %call16, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end10
  %20 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm18 = getelementptr inbounds %struct.value, %struct.value* %20, i32 0, i32 1
  %21 = load %struct.param*, %struct.param** %pm18, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %22 = load i32, i32* %flags20, align 8
  %and21 = and i32 %22, 12
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end17
  %23 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm24 = getelementptr inbounds %struct.value, %struct.value* %23, i32 0, i32 1
  %24 = load %struct.param*, %struct.param** %pm24, align 4
  %gsu25 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu25 to %struct.gsu_float**
  %25 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %getfn26 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %25, i32 0, i32 0
  %26 = load double (%struct.param*)*, double (%struct.param*)** %getfn26, align 4
  %27 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm27 = getelementptr inbounds %struct.value, %struct.value* %27, i32 0, i32 1
  %28 = load %struct.param*, %struct.param** %pm27, align 4
  %call28 = call double %26(%struct.param* %28)
  %conv = fptosi double %call28 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end17
  %29 = load %struct.value*, %struct.value** %v.addr, align 4
  %call30 = call i8* @getstrvalue(%struct.value* %29)
  %call31 = call i32 @mathevali(i8* %call30)
  store i32 %call31, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then23, %if.then13, %if.else, %if.then7, %if.then2, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare i32 @mathevali(i8*) #1

; Function Attrs: noinline nounwind
define void @getnumvalue(%struct.mnumber* noalias sret %agg.result, %struct.value* %v) #0 {
entry:
  %v.addr = alloca %struct.value*, align 4
  %mn = alloca %struct.mnumber, align 8
  %arr = alloca i8**, align 4
  %scal = alloca i8*, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %0 = load %struct.value*, %struct.value** %v.addr, align 4
  %tobool = icmp ne %struct.value* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l = bitcast %union.anon.1* %u to i32*
  store i32 0, i32* %l, align 8
  br label %if.end43

if.else:                                          ; preds = %entry
  %1 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags = getelementptr inbounds %struct.value, %struct.value* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.else5

if.then2:                                         ; preds = %if.else
  %3 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 3
  %4 = load i32, i32* %start, align 4
  %u3 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l4 = bitcast %union.anon.1* %u3 to i32*
  store i32 %4, i32* %l4, align 8
  br label %if.end42

if.else5:                                         ; preds = %if.else
  %5 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %5, i32 0, i32 0
  %6 = load i32, i32* %isarr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.else5
  %7 = load %struct.value*, %struct.value** %v.addr, align 4
  %call = call i8** @getarrvalue(%struct.value* %7)
  store i8** %call, i8*** %arr, align 4
  %8 = load i8**, i8*** %arr, align 4
  %tobool8 = icmp ne i8** %8, null
  br i1 %tobool8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.then7
  %9 = load i8**, i8*** %arr, align 4
  %call10 = call i8* @sepjoin(i8** %9, i8* null, i32 1)
  store i8* %call10, i8** %scal, align 4
  %10 = load i8*, i8** %scal, align 4
  call void @matheval(%struct.mnumber* sret %agg.result, i8* %10)
  br label %return

if.else11:                                        ; preds = %if.then7
  %u12 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l13 = bitcast %union.anon.1* %u12 to i32*
  store i32 0, i32* %l13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else11
  br label %if.end41

if.else14:                                        ; preds = %if.else5
  %11 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags15 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags15, align 8
  %and16 = and i32 %13, 31
  %cmp = icmp eq i32 %and16, 2
  br i1 %cmp, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else14
  %14 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm18 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 1
  %15 = load %struct.param*, %struct.param** %pm18, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %16 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %getfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %16, i32 0, i32 0
  %17 = load i32 (%struct.param*)*, i32 (%struct.param*)** %getfn, align 4
  %18 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm19 = getelementptr inbounds %struct.value, %struct.value* %18, i32 0, i32 1
  %19 = load %struct.param*, %struct.param** %pm19, align 4
  %call20 = call i32 %17(%struct.param* %19)
  %u21 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l22 = bitcast %union.anon.1* %u21 to i32*
  store i32 %call20, i32* %l22, align 8
  br label %if.end40

if.else23:                                        ; preds = %if.else14
  %20 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm24 = getelementptr inbounds %struct.value, %struct.value* %20, i32 0, i32 1
  %21 = load %struct.param*, %struct.param** %pm24, align 4
  %node25 = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 0
  %flags26 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node25, i32 0, i32 2
  %22 = load i32, i32* %flags26, align 8
  %and27 = and i32 %22, 12
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.else37

if.then29:                                        ; preds = %if.else23
  %type30 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 1
  store i32 2, i32* %type30, align 8
  %23 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm31 = getelementptr inbounds %struct.value, %struct.value* %23, i32 0, i32 1
  %24 = load %struct.param*, %struct.param** %pm31, align 4
  %gsu32 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu32 to %struct.gsu_float**
  %25 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %getfn33 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %25, i32 0, i32 0
  %26 = load double (%struct.param*)*, double (%struct.param*)** %getfn33, align 4
  %27 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm34 = getelementptr inbounds %struct.value, %struct.value* %27, i32 0, i32 1
  %28 = load %struct.param*, %struct.param** %pm34, align 4
  %call35 = call double %26(%struct.param* %28)
  %u36 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %d = bitcast %union.anon.1* %u36 to double*
  store double %call35, double* %d, align 8
  br label %if.end39

if.else37:                                        ; preds = %if.else23
  %29 = load %struct.value*, %struct.value** %v.addr, align 4
  %call38 = call i8* @getstrvalue(%struct.value* %29)
  call void @matheval(%struct.mnumber* sret %agg.result, i8* %call38)
  br label %return

if.end39:                                         ; preds = %if.then29
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then17
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then2
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then
  %30 = bitcast %struct.mnumber* %agg.result to i8*
  %31 = bitcast %struct.mnumber* %mn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end43, %if.else37, %if.then9
  ret void
}

declare void @matheval(%struct.mnumber* sret, i8*) #1

; Function Attrs: noinline nounwind
define void @export_param(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %buf = alloca [36 x i8], align 1
  %val = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 31
  %and1 = and i32 %and, 17
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  %3 = load i32, i32* %flags3, align 8
  %and4 = and i32 %3, 31
  %cmp = icmp eq i32 %and4, 2
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %val, align 4
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %5 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %getfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %5, i32 0, i32 0
  %6 = load i32 (%struct.param*)*, i32 (%struct.param*)** %getfn, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call = call i32 %6(%struct.param* %7)
  %8 = load %struct.param*, %struct.param** %pm.addr, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 3
  %9 = load i32, i32* %base, align 4
  call void @convbase(i8* %arraydecay, i32 %call, i32 %9)
  br label %if.end24

if.else6:                                         ; preds = %if.else
  %10 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %11 = load i32, i32* %flags8, align 8
  %and9 = and i32 %11, 12
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else19

if.then11:                                        ; preds = %if.else6
  %12 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu12 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu12 to %struct.gsu_float**
  %13 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %getfn13 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %13, i32 0, i32 0
  %14 = load double (%struct.param*)*, double (%struct.param*)** %getfn13, align 4
  %15 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call14 = call double %14(%struct.param* %15)
  %16 = load %struct.param*, %struct.param** %pm.addr, align 4
  %base15 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 3
  %17 = load i32, i32* %base15, align 4
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node16 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 0
  %flags17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node16, i32 0, i32 2
  %19 = load i32, i32* %flags17, align 8
  %call18 = call i8* @convfloat(double %call14, i32 %17, i32 %19, %struct._IO_FILE* null)
  store i8* %call18, i8** %val, align 4
  br label %if.end

if.else19:                                        ; preds = %if.else6
  %20 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu20 = getelementptr inbounds %struct.param, %struct.param* %20, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu20 to %struct.gsu_scalar**
  %21 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %getfn21 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %21, i32 0, i32 0
  %getfn22 = bitcast {}** %getfn21 to i8* (%struct.param*)**
  %22 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn22, align 4
  %23 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call23 = call i8* %22(%struct.param* %23)
  store i8* %call23, i8** %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then11
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then5
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %24 = load %struct.param*, %struct.param** %pm.addr, align 4
  %25 = load i8*, i8** %val, align 4
  call void @addenv(%struct.param* %24, i8* %25)
  br label %return

return:                                           ; preds = %if.end25, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @setstrvalue(%struct.value* %v, i8* %val) #0 {
entry:
  %v.addr = alloca %struct.value*, align 4
  %val.addr = alloca i8*, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  store i8* %val, i8** %val.addr, align 4
  %0 = load %struct.value*, %struct.value** %v.addr, align 4
  %1 = load i8*, i8** %val.addr, align 4
  call void @assignstrvalue(%struct.value* %0, i8* %1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define void @assignstrvalue(%struct.value* %v, i8* %val, i32 %flags) #0 {
entry:
  %v.addr = alloca %struct.value*, align 4
  %val.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %z = alloca i8*, align 4
  %x = alloca i8*, align 4
  %zlen = alloca i32, align 4
  %vlen = alloca i32, align 4
  %newsize = alloca i32, align 4
  %pm170 = alloca %struct.param*, align 4
  %ival = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %mn = alloca %struct.mnumber, align 8
  %ptr239 = alloca i8*, align 4
  %tmp = alloca %struct.mnumber, align 8
  %ss = alloca i8**, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  store i8* %val, i8** %val.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %1, i32 0, i32 1
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags1, align 8
  %and = and i32 %3, 1024
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %4 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm4 = getelementptr inbounds %struct.value, %struct.value* %4, i32 0, i32 1
  %5 = load %struct.param*, %struct.param** %pm4, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %7)
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm7 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 1
  %9 = load %struct.param*, %struct.param** %pm7, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %10 = load i32, i32* %flags9, align 8
  %and10 = and i32 %10, 16777216
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end6
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %conv = sext i8 %11 to i32
  %tobool12 = icmp ne i32 %conv, 0
  br i1 %tobool12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  %12 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm14 = getelementptr inbounds %struct.value, %struct.value* %12, i32 0, i32 1
  %13 = load %struct.param*, %struct.param** %pm14, align 4
  %node15 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %nam16 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node15, i32 0, i32 1
  %14 = load i8*, i8** %nam16, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* %14)
  %15 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %15)
  br label %return

if.end17:                                         ; preds = %land.lhs.true, %if.end6
  %16 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm18 = getelementptr inbounds %struct.value, %struct.value* %16, i32 0, i32 1
  %17 = load %struct.param*, %struct.param** %pm18, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %18 = load i32, i32* %flags20, align 8
  %and21 = and i32 %18, 16
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %if.end17
  %19 = load %struct.value*, %struct.value** %v.addr, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %19, i32 0, i32 0
  %20 = load i32, i32* %isarr, align 4
  %and24 = and i32 %20, 544
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end30

if.then26:                                        ; preds = %land.lhs.true23
  %21 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm27 = getelementptr inbounds %struct.value, %struct.value* %21, i32 0, i32 1
  %22 = load %struct.param*, %struct.param** %pm27, align 4
  %node28 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 0
  %nam29 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node28, i32 0, i32 1
  %23 = load i8*, i8** %nam29, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i32 0, i32 0), i8* %23)
  %24 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %24)
  br label %return

if.end30:                                         ; preds = %land.lhs.true23, %if.end17
  %25 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags31 = getelementptr inbounds %struct.value, %struct.value* %25, i32 0, i32 2
  %26 = load i32, i32* %flags31, align 4
  %and32 = and i32 %26, 2
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end30
  %27 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm35 = getelementptr inbounds %struct.value, %struct.value* %27, i32 0, i32 1
  %28 = load %struct.param*, %struct.param** %pm35, align 4
  %node36 = getelementptr inbounds %struct.param, %struct.param* %28, i32 0, i32 0
  %nam37 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node36, i32 0, i32 1
  %29 = load i8*, i8** %nam37, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0), i8* %29)
  %30 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %30)
  br label %return

if.end38:                                         ; preds = %if.end30
  %31 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm39 = getelementptr inbounds %struct.value, %struct.value* %31, i32 0, i32 1
  %32 = load %struct.param*, %struct.param** %pm39, align 4
  %node40 = getelementptr inbounds %struct.param, %struct.param* %32, i32 0, i32 0
  %flags41 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node40, i32 0, i32 2
  %33 = load i32, i32* %flags41, align 8
  %and42 = and i32 %33, -33554433
  store i32 %and42, i32* %flags41, align 8
  %34 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm43 = getelementptr inbounds %struct.value, %struct.value* %34, i32 0, i32 1
  %35 = load %struct.param*, %struct.param** %pm43, align 4
  %node44 = getelementptr inbounds %struct.param, %struct.param* %35, i32 0, i32 0
  %flags45 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node44, i32 0, i32 2
  %36 = load i32, i32* %flags45, align 8
  %and46 = and i32 %36, 31
  switch i32 %and46, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb195
    i32 4, label %sw.bb233
    i32 8, label %sw.bb233
    i32 1, label %sw.bb269
    i32 16, label %sw.bb273
  ]

sw.bb:                                            ; preds = %if.end38
  %37 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %37, i32 0, i32 3
  %38 = load i32, i32* %start, align 4
  %cmp = icmp eq i32 %38, 0
  br i1 %cmp, label %land.lhs.true48, label %if.else

land.lhs.true48:                                  ; preds = %sw.bb
  %39 = load %struct.value*, %struct.value** %v.addr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %39, i32 0, i32 4
  %40 = load i32, i32* %end, align 4
  %cmp49 = icmp eq i32 %40, -1
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %land.lhs.true48
  %41 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm52 = getelementptr inbounds %struct.value, %struct.value* %41, i32 0, i32 1
  %42 = load %struct.param*, %struct.param** %pm52, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %42, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %43 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %setfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %43, i32 0, i32 1
  %44 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn, align 4
  %45 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm53 = getelementptr inbounds %struct.value, %struct.value* %45, i32 0, i32 1
  %46 = load %struct.param*, %struct.param** %pm53, align 4
  %47 = load i8*, i8** %val.addr, align 4
  call void %44(%struct.param* %46, i8* %47)
  %48 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm54 = getelementptr inbounds %struct.value, %struct.value* %48, i32 0, i32 1
  %49 = load %struct.param*, %struct.param** %pm54, align 4
  %node55 = getelementptr inbounds %struct.param, %struct.param* %49, i32 0, i32 0
  %flags56 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node55, i32 0, i32 2
  %50 = load i32, i32* %flags56, align 8
  %and57 = and i32 %50, 224
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.end65

land.lhs.true59:                                  ; preds = %if.then51
  %51 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm60 = getelementptr inbounds %struct.value, %struct.value* %51, i32 0, i32 1
  %52 = load %struct.param*, %struct.param** %pm60, align 4
  %width = getelementptr inbounds %struct.param, %struct.param* %52, i32 0, i32 4
  %53 = load i32, i32* %width, align 8
  %tobool61 = icmp ne i32 %53, 0
  br i1 %tobool61, label %if.end65, label %if.then62

if.then62:                                        ; preds = %land.lhs.true59
  %54 = load i8*, i8** %val.addr, align 4
  %call = call i32 @strlen(i8* %54)
  %55 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm63 = getelementptr inbounds %struct.value, %struct.value* %55, i32 0, i32 1
  %56 = load %struct.param*, %struct.param** %pm63, align 4
  %width64 = getelementptr inbounds %struct.param, %struct.param* %56, i32 0, i32 4
  store i32 %call, i32* %width64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %land.lhs.true59, %if.then51
  br label %if.end194

if.else:                                          ; preds = %land.lhs.true48, %sw.bb
  %57 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm66 = getelementptr inbounds %struct.value, %struct.value* %57, i32 0, i32 1
  %58 = load %struct.param*, %struct.param** %pm66, align 4
  %gsu67 = getelementptr inbounds %struct.param, %struct.param* %58, i32 0, i32 2
  %s68 = bitcast %union.anon.0* %gsu67 to %struct.gsu_scalar**
  %59 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s68, align 8
  %getfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %59, i32 0, i32 0
  %getfn69 = bitcast {}** %getfn to i8* (%struct.param*)**
  %60 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn69, align 4
  %61 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm70 = getelementptr inbounds %struct.value, %struct.value* %61, i32 0, i32 1
  %62 = load %struct.param*, %struct.param** %pm70, align 4
  %call71 = call i8* %60(%struct.param* %62)
  store i8* %call71, i8** %z, align 4
  %63 = load i8*, i8** %z, align 4
  %call72 = call i32 @strlen(i8* %63)
  store i32 %call72, i32* %zlen, align 4
  %64 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags73 = getelementptr inbounds %struct.value, %struct.value* %64, i32 0, i32 2
  %65 = load i32, i32* %flags73, align 4
  %and74 = and i32 %65, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %if.end82

land.lhs.true76:                                  ; preds = %if.else
  %66 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool77 = icmp ne i8 %66, 0
  br i1 %tobool77, label %if.end82, label %if.then78

if.then78:                                        ; preds = %land.lhs.true76
  %67 = load %struct.value*, %struct.value** %v.addr, align 4
  %start79 = getelementptr inbounds %struct.value, %struct.value* %67, i32 0, i32 3
  %68 = load i32, i32* %start79, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, i32* %start79, align 4
  %69 = load %struct.value*, %struct.value** %v.addr, align 4
  %end80 = getelementptr inbounds %struct.value, %struct.value* %69, i32 0, i32 4
  %70 = load i32, i32* %end80, align 4
  %dec81 = add nsw i32 %70, -1
  store i32 %dec81, i32* %end80, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %land.lhs.true76, %if.else
  %71 = load %struct.value*, %struct.value** %v.addr, align 4
  %start83 = getelementptr inbounds %struct.value, %struct.value* %71, i32 0, i32 3
  %72 = load i32, i32* %start83, align 4
  %cmp84 = icmp slt i32 %72, 0
  br i1 %cmp84, label %if.then86, label %if.end94

if.then86:                                        ; preds = %if.end82
  %73 = load i32, i32* %zlen, align 4
  %74 = load %struct.value*, %struct.value** %v.addr, align 4
  %start87 = getelementptr inbounds %struct.value, %struct.value* %74, i32 0, i32 3
  %75 = load i32, i32* %start87, align 4
  %add = add nsw i32 %75, %73
  store i32 %add, i32* %start87, align 4
  %76 = load %struct.value*, %struct.value** %v.addr, align 4
  %start88 = getelementptr inbounds %struct.value, %struct.value* %76, i32 0, i32 3
  %77 = load i32, i32* %start88, align 4
  %cmp89 = icmp slt i32 %77, 0
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.then86
  %78 = load %struct.value*, %struct.value** %v.addr, align 4
  %start92 = getelementptr inbounds %struct.value, %struct.value* %78, i32 0, i32 3
  store i32 0, i32* %start92, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.then86
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end82
  %79 = load %struct.value*, %struct.value** %v.addr, align 4
  %start95 = getelementptr inbounds %struct.value, %struct.value* %79, i32 0, i32 3
  %80 = load i32, i32* %start95, align 4
  %81 = load i32, i32* %zlen, align 4
  %cmp96 = icmp sgt i32 %80, %81
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end94
  %82 = load i32, i32* %zlen, align 4
  %83 = load %struct.value*, %struct.value** %v.addr, align 4
  %start99 = getelementptr inbounds %struct.value, %struct.value* %83, i32 0, i32 3
  store i32 %82, i32* %start99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end94
  %84 = load %struct.value*, %struct.value** %v.addr, align 4
  %end101 = getelementptr inbounds %struct.value, %struct.value* %84, i32 0, i32 4
  %85 = load i32, i32* %end101, align 4
  %cmp102 = icmp slt i32 %85, 0
  br i1 %cmp102, label %if.then104, label %if.else130

if.then104:                                       ; preds = %if.end100
  %86 = load i32, i32* %zlen, align 4
  %87 = load %struct.value*, %struct.value** %v.addr, align 4
  %end105 = getelementptr inbounds %struct.value, %struct.value* %87, i32 0, i32 4
  %88 = load i32, i32* %end105, align 4
  %add106 = add nsw i32 %88, %86
  store i32 %add106, i32* %end105, align 4
  %89 = load %struct.value*, %struct.value** %v.addr, align 4
  %end107 = getelementptr inbounds %struct.value, %struct.value* %89, i32 0, i32 4
  %90 = load i32, i32* %end107, align 4
  %cmp108 = icmp slt i32 %90, 0
  br i1 %cmp108, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.then104
  %91 = load %struct.value*, %struct.value** %v.addr, align 4
  %end111 = getelementptr inbounds %struct.value, %struct.value* %91, i32 0, i32 4
  store i32 0, i32* %end111, align 4
  br label %if.end129

if.else112:                                       ; preds = %if.then104
  %92 = load %struct.value*, %struct.value** %v.addr, align 4
  %end113 = getelementptr inbounds %struct.value, %struct.value* %92, i32 0, i32 4
  %93 = load i32, i32* %end113, align 4
  %94 = load i32, i32* %zlen, align 4
  %cmp114 = icmp sge i32 %93, %94
  br i1 %cmp114, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.else112
  %95 = load i32, i32* %zlen, align 4
  %96 = load %struct.value*, %struct.value** %v.addr, align 4
  %end117 = getelementptr inbounds %struct.value, %struct.value* %96, i32 0, i32 4
  store i32 %95, i32* %end117, align 4
  br label %if.end128

if.else118:                                       ; preds = %if.else112
  %97 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool119 = icmp ne i8 %97, 0
  br i1 %tobool119, label %if.then120, label %if.else125

if.then120:                                       ; preds = %if.else118
  %98 = load i8*, i8** %z, align 4
  %99 = load %struct.value*, %struct.value** %v.addr, align 4
  %end121 = getelementptr inbounds %struct.value, %struct.value* %99, i32 0, i32 4
  %100 = load i32, i32* %end121, align 4
  %add.ptr = getelementptr inbounds i8, i8* %98, i32 %100
  %call122 = call i32 @mb_metacharlenconv(i8* %add.ptr, i32* null)
  %101 = load %struct.value*, %struct.value** %v.addr, align 4
  %end123 = getelementptr inbounds %struct.value, %struct.value* %101, i32 0, i32 4
  %102 = load i32, i32* %end123, align 4
  %add124 = add nsw i32 %102, %call122
  store i32 %add124, i32* %end123, align 4
  br label %if.end127

if.else125:                                       ; preds = %if.else118
  %103 = load %struct.value*, %struct.value** %v.addr, align 4
  %end126 = getelementptr inbounds %struct.value, %struct.value* %103, i32 0, i32 4
  %104 = load i32, i32* %end126, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %end126, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.then120
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then116
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then110
  br label %if.end137

if.else130:                                       ; preds = %if.end100
  %105 = load %struct.value*, %struct.value** %v.addr, align 4
  %end131 = getelementptr inbounds %struct.value, %struct.value* %105, i32 0, i32 4
  %106 = load i32, i32* %end131, align 4
  %107 = load i32, i32* %zlen, align 4
  %cmp132 = icmp sgt i32 %106, %107
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.else130
  %108 = load i32, i32* %zlen, align 4
  %109 = load %struct.value*, %struct.value** %v.addr, align 4
  %end135 = getelementptr inbounds %struct.value, %struct.value* %109, i32 0, i32 4
  store i32 %108, i32* %end135, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.else130
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end129
  %110 = load i8*, i8** %val.addr, align 4
  %call138 = call i32 @strlen(i8* %110)
  store i32 %call138, i32* %vlen, align 4
  %111 = load %struct.value*, %struct.value** %v.addr, align 4
  %start139 = getelementptr inbounds %struct.value, %struct.value* %111, i32 0, i32 3
  %112 = load i32, i32* %start139, align 4
  %113 = load i32, i32* %vlen, align 4
  %add140 = add nsw i32 %112, %113
  %114 = load i32, i32* %zlen, align 4
  %115 = load %struct.value*, %struct.value** %v.addr, align 4
  %end141 = getelementptr inbounds %struct.value, %struct.value* %115, i32 0, i32 4
  %116 = load i32, i32* %end141, align 4
  %sub = sub nsw i32 %114, %116
  %add142 = add nsw i32 %add140, %sub
  store i32 %add142, i32* %newsize, align 4
  %117 = load i32, i32* %newsize, align 4
  %118 = load i32, i32* %zlen, align 4
  %cmp143 = icmp ne i32 %117, %118
  br i1 %cmp143, label %if.then151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end137
  %119 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm145 = getelementptr inbounds %struct.value, %struct.value* %119, i32 0, i32 1
  %120 = load %struct.param*, %struct.param** %pm145, align 4
  %gsu146 = getelementptr inbounds %struct.param, %struct.param* %120, i32 0, i32 2
  %s147 = bitcast %union.anon.0* %gsu146 to %struct.gsu_scalar**
  %121 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s147, align 8
  %setfn148 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %121, i32 0, i32 1
  %122 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn148, align 4
  %cmp149 = icmp ne void (%struct.param*, i8*)* %122, @strsetfn
  br i1 %cmp149, label %if.then151, label %if.else169

if.then151:                                       ; preds = %lor.lhs.false, %if.end137
  %123 = load i32, i32* %newsize, align 4
  %add152 = add nsw i32 %123, 1
  %call153 = call i8* @zalloc(i32 %add152)
  store i8* %call153, i8** %x, align 4
  %124 = load i8*, i8** %x, align 4
  %125 = load i8*, i8** %z, align 4
  %126 = load %struct.value*, %struct.value** %v.addr, align 4
  %start154 = getelementptr inbounds %struct.value, %struct.value* %126, i32 0, i32 3
  %127 = load i32, i32* %start154, align 4
  %call155 = call i8* @strncpy(i8* %124, i8* %125, i32 %127)
  %128 = load i8*, i8** %x, align 4
  %129 = load %struct.value*, %struct.value** %v.addr, align 4
  %start156 = getelementptr inbounds %struct.value, %struct.value* %129, i32 0, i32 3
  %130 = load i32, i32* %start156, align 4
  %add.ptr157 = getelementptr inbounds i8, i8* %128, i32 %130
  %131 = load i8*, i8** %val.addr, align 4
  %call158 = call i8* @strcpy(i8* %add.ptr157, i8* %131)
  %132 = load i8*, i8** %x, align 4
  %133 = load %struct.value*, %struct.value** %v.addr, align 4
  %start159 = getelementptr inbounds %struct.value, %struct.value* %133, i32 0, i32 3
  %134 = load i32, i32* %start159, align 4
  %add.ptr160 = getelementptr inbounds i8, i8* %132, i32 %134
  %135 = load i8*, i8** %z, align 4
  %136 = load %struct.value*, %struct.value** %v.addr, align 4
  %end161 = getelementptr inbounds %struct.value, %struct.value* %136, i32 0, i32 4
  %137 = load i32, i32* %end161, align 4
  %add.ptr162 = getelementptr inbounds i8, i8* %135, i32 %137
  %call163 = call i8* @strcat(i8* %add.ptr160, i8* %add.ptr162)
  %138 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm164 = getelementptr inbounds %struct.value, %struct.value* %138, i32 0, i32 1
  %139 = load %struct.param*, %struct.param** %pm164, align 4
  %gsu165 = getelementptr inbounds %struct.param, %struct.param* %139, i32 0, i32 2
  %s166 = bitcast %union.anon.0* %gsu165 to %struct.gsu_scalar**
  %140 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s166, align 8
  %setfn167 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %140, i32 0, i32 1
  %141 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn167, align 4
  %142 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm168 = getelementptr inbounds %struct.value, %struct.value* %142, i32 0, i32 1
  %143 = load %struct.param*, %struct.param** %pm168, align 4
  %144 = load i8*, i8** %x, align 4
  call void %141(%struct.param* %143, i8* %144)
  br label %if.end193

if.else169:                                       ; preds = %lor.lhs.false
  %145 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm171 = getelementptr inbounds %struct.value, %struct.value* %145, i32 0, i32 1
  %146 = load %struct.param*, %struct.param** %pm171, align 4
  store %struct.param* %146, %struct.param** %pm170, align 4
  %147 = load i8*, i8** %z, align 4
  %148 = load %struct.value*, %struct.value** %v.addr, align 4
  %start172 = getelementptr inbounds %struct.value, %struct.value* %148, i32 0, i32 3
  %149 = load i32, i32* %start172, align 4
  %add.ptr173 = getelementptr inbounds i8, i8* %147, i32 %149
  %150 = load i8*, i8** %val.addr, align 4
  %151 = load i32, i32* %vlen, align 4
  %call174 = call i8* @strncpy(i8* %add.ptr173, i8* %150, i32 %151)
  %152 = load %struct.param*, %struct.param** %pm170, align 4
  %node175 = getelementptr inbounds %struct.param, %struct.param* %152, i32 0, i32 0
  %flags176 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node175, i32 0, i32 2
  %153 = load i32, i32* %flags176, align 8
  %and177 = and i32 %153, 536870912
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.end192, label %land.lhs.true179

land.lhs.true179:                                 ; preds = %if.else169
  %154 = load %struct.param*, %struct.param** %pm170, align 4
  %node180 = getelementptr inbounds %struct.param, %struct.param* %154, i32 0, i32 0
  %flags181 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node180, i32 0, i32 2
  %155 = load i32, i32* %flags181, align 8
  %and182 = and i32 %155, 1073741824
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then187, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %land.lhs.true179
  %156 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 11), align 1
  %conv185 = sext i8 %156 to i32
  %tobool186 = icmp ne i32 %conv185, 0
  br i1 %tobool186, label %if.then187, label %if.end192

if.then187:                                       ; preds = %lor.lhs.false184, %land.lhs.true179
  %157 = load %struct.param*, %struct.param** %pm170, align 4
  %node188 = getelementptr inbounds %struct.param, %struct.param* %157, i32 0, i32 0
  %flags189 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node188, i32 0, i32 2
  %158 = load i32, i32* %flags189, align 8
  %or = or i32 %158, 1073741824
  store i32 %or, i32* %flags189, align 8
  %159 = load %struct.param*, %struct.param** %pm170, align 4
  %node190 = getelementptr inbounds %struct.param, %struct.param* %159, i32 0, i32 0
  %nam191 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node190, i32 0, i32 1
  %160 = load i8*, i8** %nam191, align 4
  %161 = load i8*, i8** %z, align 4
  call void @adduserdir(i8* %160, i8* %161, i32 0, i32 0)
  br label %if.end192

if.end192:                                        ; preds = %if.then187, %lor.lhs.false184, %if.else169
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then151
  %162 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %162)
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end65
  br label %sw.epilog

sw.bb195:                                         ; preds = %if.end38
  %163 = load i8*, i8** %val.addr, align 4
  %tobool196 = icmp ne i8* %163, null
  br i1 %tobool196, label %if.then197, label %if.end223

if.then197:                                       ; preds = %sw.bb195
  %164 = load i32, i32* %flags.addr, align 4
  %and198 = and i32 %164, 8
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then200, label %if.else202

if.then200:                                       ; preds = %if.then197
  %165 = load i8*, i8** %val.addr, align 4
  %call201 = call i32 @zstrtol_underscore(i8* %165, i8** %ptr, i32 0, i32 1)
  store i32 %call201, i32* %ival, align 4
  br label %if.end204

if.else202:                                       ; preds = %if.then197
  %166 = load i8*, i8** %val.addr, align 4
  %call203 = call i32 @mathevali(i8* %166)
  store i32 %call203, i32* %ival, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.else202, %if.then200
  %167 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm205 = getelementptr inbounds %struct.value, %struct.value* %167, i32 0, i32 1
  %168 = load %struct.param*, %struct.param** %pm205, align 4
  %gsu206 = getelementptr inbounds %struct.param, %struct.param* %168, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu206 to %struct.gsu_integer**
  %169 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %setfn207 = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %169, i32 0, i32 1
  %170 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %setfn207, align 4
  %171 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm208 = getelementptr inbounds %struct.value, %struct.value* %171, i32 0, i32 1
  %172 = load %struct.param*, %struct.param** %pm208, align 4
  %173 = load i32, i32* %ival, align 4
  call void %170(%struct.param* %172, i32 %173)
  %174 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm209 = getelementptr inbounds %struct.value, %struct.value* %174, i32 0, i32 1
  %175 = load %struct.param*, %struct.param** %pm209, align 4
  %node210 = getelementptr inbounds %struct.param, %struct.param* %175, i32 0, i32 0
  %flags211 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node210, i32 0, i32 2
  %176 = load i32, i32* %flags211, align 8
  %and212 = and i32 %176, 224
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %land.lhs.true214, label %if.end222

land.lhs.true214:                                 ; preds = %if.end204
  %177 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm215 = getelementptr inbounds %struct.value, %struct.value* %177, i32 0, i32 1
  %178 = load %struct.param*, %struct.param** %pm215, align 4
  %width216 = getelementptr inbounds %struct.param, %struct.param* %178, i32 0, i32 4
  %179 = load i32, i32* %width216, align 8
  %tobool217 = icmp ne i32 %179, 0
  br i1 %tobool217, label %if.end222, label %if.then218

if.then218:                                       ; preds = %land.lhs.true214
  %180 = load i8*, i8** %val.addr, align 4
  %call219 = call i32 @strlen(i8* %180)
  %181 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm220 = getelementptr inbounds %struct.value, %struct.value* %181, i32 0, i32 1
  %182 = load %struct.param*, %struct.param** %pm220, align 4
  %width221 = getelementptr inbounds %struct.param, %struct.param* %182, i32 0, i32 4
  store i32 %call219, i32* %width221, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %land.lhs.true214, %if.end204
  %183 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %183)
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %sw.bb195
  %184 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm224 = getelementptr inbounds %struct.value, %struct.value* %184, i32 0, i32 1
  %185 = load %struct.param*, %struct.param** %pm224, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %185, i32 0, i32 3
  %186 = load i32, i32* %base, align 4
  %tobool225 = icmp ne i32 %186, 0
  br i1 %tobool225, label %if.end232, label %land.lhs.true226

land.lhs.true226:                                 ; preds = %if.end223
  %187 = load i32, i32* @lastbase, align 4
  %cmp227 = icmp ne i32 %187, -1
  br i1 %cmp227, label %if.then229, label %if.end232

if.then229:                                       ; preds = %land.lhs.true226
  %188 = load i32, i32* @lastbase, align 4
  %189 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm230 = getelementptr inbounds %struct.value, %struct.value* %189, i32 0, i32 1
  %190 = load %struct.param*, %struct.param** %pm230, align 4
  %base231 = getelementptr inbounds %struct.param, %struct.param* %190, i32 0, i32 3
  store i32 %188, i32* %base231, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then229, %land.lhs.true226, %if.end223
  br label %sw.epilog

sw.bb233:                                         ; preds = %if.end38, %if.end38
  %191 = load i8*, i8** %val.addr, align 4
  %tobool234 = icmp ne i8* %191, null
  br i1 %tobool234, label %if.then235, label %if.end268

if.then235:                                       ; preds = %sw.bb233
  %192 = load i32, i32* %flags.addr, align 4
  %and236 = and i32 %192, 8
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.then238, label %if.else241

if.then238:                                       ; preds = %if.then235
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 1
  store i32 2, i32* %type, align 8
  %193 = load i8*, i8** %val.addr, align 4
  %call240 = call double @strtod(i8* %193, i8** %ptr239)
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %d = bitcast %union.anon.1* %u to double*
  store double %call240, double* %d, align 8
  br label %if.end242

if.else241:                                       ; preds = %if.then235
  %194 = load i8*, i8** %val.addr, align 4
  call void @matheval(%struct.mnumber* sret %tmp, i8* %194)
  %195 = bitcast %struct.mnumber* %mn to i8*
  %196 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %195, i8* %196, i32 16, i32 8, i1 false)
  br label %if.end242

if.end242:                                        ; preds = %if.else241, %if.then238
  %197 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm243 = getelementptr inbounds %struct.value, %struct.value* %197, i32 0, i32 1
  %198 = load %struct.param*, %struct.param** %pm243, align 4
  %gsu244 = getelementptr inbounds %struct.param, %struct.param* %198, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu244 to %struct.gsu_float**
  %199 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %setfn245 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %199, i32 0, i32 1
  %200 = load void (%struct.param*, double)*, void (%struct.param*, double)** %setfn245, align 4
  %201 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm246 = getelementptr inbounds %struct.value, %struct.value* %201, i32 0, i32 1
  %202 = load %struct.param*, %struct.param** %pm246, align 4
  %type247 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 1
  %203 = load i32, i32* %type247, align 8
  %and248 = and i32 %203, 2
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end242
  %u250 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %d251 = bitcast %union.anon.1* %u250 to double*
  %204 = load double, double* %d251, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end242
  %u252 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l = bitcast %union.anon.1* %u252 to i32*
  %205 = load i32, i32* %l, align 8
  %conv253 = sitofp i32 %205 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %204, %cond.true ], [ %conv253, %cond.false ]
  call void %200(%struct.param* %202, double %cond)
  %206 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm254 = getelementptr inbounds %struct.value, %struct.value* %206, i32 0, i32 1
  %207 = load %struct.param*, %struct.param** %pm254, align 4
  %node255 = getelementptr inbounds %struct.param, %struct.param* %207, i32 0, i32 0
  %flags256 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node255, i32 0, i32 2
  %208 = load i32, i32* %flags256, align 8
  %and257 = and i32 %208, 224
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %land.lhs.true259, label %if.end267

land.lhs.true259:                                 ; preds = %cond.end
  %209 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm260 = getelementptr inbounds %struct.value, %struct.value* %209, i32 0, i32 1
  %210 = load %struct.param*, %struct.param** %pm260, align 4
  %width261 = getelementptr inbounds %struct.param, %struct.param* %210, i32 0, i32 4
  %211 = load i32, i32* %width261, align 8
  %tobool262 = icmp ne i32 %211, 0
  br i1 %tobool262, label %if.end267, label %if.then263

if.then263:                                       ; preds = %land.lhs.true259
  %212 = load i8*, i8** %val.addr, align 4
  %call264 = call i32 @strlen(i8* %212)
  %213 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm265 = getelementptr inbounds %struct.value, %struct.value* %213, i32 0, i32 1
  %214 = load %struct.param*, %struct.param** %pm265, align 4
  %width266 = getelementptr inbounds %struct.param, %struct.param* %214, i32 0, i32 4
  store i32 %call264, i32* %width266, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then263, %land.lhs.true259, %cond.end
  %215 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %215)
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %sw.bb233
  br label %sw.epilog

sw.bb269:                                         ; preds = %if.end38
  %call271 = call i8* @zalloc(i32 8)
  %216 = bitcast i8* %call271 to i8**
  store i8** %216, i8*** %ss, align 4
  %217 = load i8*, i8** %val.addr, align 4
  %218 = load i8**, i8*** %ss, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %218, i32 0
  store i8* %217, i8** %arrayidx, align 4
  %219 = load i8**, i8*** %ss, align 4
  %arrayidx272 = getelementptr inbounds i8*, i8** %219, i32 1
  store i8* null, i8** %arrayidx272, align 4
  %220 = load %struct.value*, %struct.value** %v.addr, align 4
  %221 = load i8**, i8*** %ss, align 4
  call void @setarrvalue(%struct.value* %220, i8** %221)
  br label %sw.epilog

sw.bb273:                                         ; preds = %if.end38
  %222 = load %struct.param*, %struct.param** @foundparam, align 4
  %cmp274 = icmp eq %struct.param* %222, null
  br i1 %cmp274, label %if.then276, label %if.else280

if.then276:                                       ; preds = %sw.bb273
  %223 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm277 = getelementptr inbounds %struct.value, %struct.value* %223, i32 0, i32 1
  %224 = load %struct.param*, %struct.param** %pm277, align 4
  %node278 = getelementptr inbounds %struct.param, %struct.param* %224, i32 0, i32 0
  %nam279 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node278, i32 0, i32 1
  %225 = load i8*, i8** %nam279, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i32 0, i32 0), i8* %225)
  %226 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %226)
  br label %return

if.else280:                                       ; preds = %sw.bb273
  %227 = load %struct.param*, %struct.param** @foundparam, align 4
  %gsu281 = getelementptr inbounds %struct.param, %struct.param* %227, i32 0, i32 2
  %s282 = bitcast %union.anon.0* %gsu281 to %struct.gsu_scalar**
  %228 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s282, align 8
  %setfn283 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %228, i32 0, i32 1
  %229 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn283, align 4
  %230 = load %struct.param*, %struct.param** @foundparam, align 4
  %231 = load i8*, i8** %val.addr, align 4
  call void %229(%struct.param* %230, i8* %231)
  br label %if.end284

if.end284:                                        ; preds = %if.else280
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end38, %if.end284, %sw.bb269, %if.end268, %if.end232, %if.end194
  %232 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm285 = getelementptr inbounds %struct.value, %struct.value* %232, i32 0, i32 1
  %233 = load %struct.param*, %struct.param** %pm285, align 4
  %env = getelementptr inbounds %struct.param, %struct.param* %233, i32 0, i32 5
  %234 = load i8*, i8** %env, align 4
  %tobool286 = icmp ne i8* %234, null
  br i1 %tobool286, label %lor.lhs.false302, label %land.lhs.true287

land.lhs.true287:                                 ; preds = %sw.epilog
  %235 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm288 = getelementptr inbounds %struct.value, %struct.value* %235, i32 0, i32 1
  %236 = load %struct.param*, %struct.param** %pm288, align 4
  %node289 = getelementptr inbounds %struct.param, %struct.param* %236, i32 0, i32 0
  %flags290 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node289, i32 0, i32 2
  %237 = load i32, i32* %flags290, align 8
  %and291 = and i32 %237, 4096
  %tobool292 = icmp ne i32 %and291, 0
  br i1 %tobool292, label %lor.lhs.false302, label %land.lhs.true293

land.lhs.true293:                                 ; preds = %land.lhs.true287
  %238 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 3), align 1
  %conv294 = sext i8 %238 to i32
  %tobool295 = icmp ne i32 %conv294, 0
  br i1 %tobool295, label %land.lhs.true296, label %if.then311

land.lhs.true296:                                 ; preds = %land.lhs.true293
  %239 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm297 = getelementptr inbounds %struct.value, %struct.value* %239, i32 0, i32 1
  %240 = load %struct.param*, %struct.param** %pm297, align 4
  %node298 = getelementptr inbounds %struct.param, %struct.param* %240, i32 0, i32 0
  %flags299 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node298, i32 0, i32 2
  %241 = load i32, i32* %flags299, align 8
  %and300 = and i32 %241, 536870912
  %tobool301 = icmp ne i32 %and300, 0
  br i1 %tobool301, label %if.then311, label %lor.lhs.false302

lor.lhs.false302:                                 ; preds = %land.lhs.true296, %land.lhs.true287, %sw.epilog
  %242 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm303 = getelementptr inbounds %struct.value, %struct.value* %242, i32 0, i32 1
  %243 = load %struct.param*, %struct.param** %pm303, align 4
  %node304 = getelementptr inbounds %struct.param, %struct.param* %243, i32 0, i32 0
  %flags305 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node304, i32 0, i32 2
  %244 = load i32, i32* %flags305, align 8
  %and306 = and i32 %244, 1
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %if.then311, label %lor.lhs.false308

lor.lhs.false308:                                 ; preds = %lor.lhs.false302
  %245 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm309 = getelementptr inbounds %struct.value, %struct.value* %245, i32 0, i32 1
  %246 = load %struct.param*, %struct.param** %pm309, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %246, i32 0, i32 6
  %247 = load i8*, i8** %ename, align 8
  %tobool310 = icmp ne i8* %247, null
  br i1 %tobool310, label %if.then311, label %if.end312

if.then311:                                       ; preds = %lor.lhs.false308, %lor.lhs.false302, %land.lhs.true296, %land.lhs.true293
  br label %return

if.end312:                                        ; preds = %lor.lhs.false308
  %248 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm313 = getelementptr inbounds %struct.value, %struct.value* %248, i32 0, i32 1
  %249 = load %struct.param*, %struct.param** %pm313, align 4
  call void @export_param(%struct.param* %249)
  br label %return

return:                                           ; preds = %if.end312, %if.then311, %if.then276, %if.then34, %if.then26, %if.then13, %if.then3, %if.then
  ret void
}

declare void @zsfree(i8*) #1

declare i8* @strncpy(i8*, i8*, i32) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @strcat(i8*, i8*) #1

declare void @adduserdir(i8*, i8*, i32, i32) #1

declare i32 @zstrtol_underscore(i8*, i8**, i32, i32) #1

declare double @strtod(i8*, i8**) #1

; Function Attrs: noinline nounwind
define void @setarrvalue(%struct.value* %v, i8** %val) #0 {
entry:
  %v.addr = alloca %struct.value*, align 4
  %val.addr = alloca i8**, align 4
  %old = alloca i8**, align 4
  %new = alloca i8**, align 4
  %p = alloca i8**, align 4
  %q = alloca i8**, align 4
  %r = alloca i8**, align 4
  %pre_assignment_length = alloca i32, align 4
  %post_assignment_length = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  store i8** %val, i8*** %val.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end262

if.end:                                           ; preds = %entry
  %1 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %1, i32 0, i32 1
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1024
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm3 = getelementptr inbounds %struct.value, %struct.value* %4, i32 0, i32 1
  %5 = load %struct.param*, %struct.param** %pm3, align 4
  %node4 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* %6)
  %7 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %7)
  br label %if.end262

if.end5:                                          ; preds = %if.end
  %8 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm6 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 1
  %9 = load %struct.param*, %struct.param** %pm6, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %10 = load i32, i32* %flags8, align 8
  %and9 = and i32 %10, 16777216
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end5
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %conv = sext i8 %11 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %12 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm13 = getelementptr inbounds %struct.value, %struct.value* %12, i32 0, i32 1
  %13 = load %struct.param*, %struct.param** %pm13, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %nam15 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 1
  %14 = load i8*, i8** %nam15, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* %14)
  %15 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %15)
  br label %if.end262

if.end16:                                         ; preds = %land.lhs.true, %if.end5
  %16 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm17 = getelementptr inbounds %struct.value, %struct.value* %16, i32 0, i32 1
  %17 = load %struct.param*, %struct.param** %pm17, align 4
  %node18 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags19 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node18, i32 0, i32 2
  %18 = load i32, i32* %flags19, align 8
  %and20 = and i32 %18, 31
  %and21 = and i32 %and20, 17
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end16
  %19 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %19)
  %20 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm24 = getelementptr inbounds %struct.value, %struct.value* %20, i32 0, i32 1
  %21 = load %struct.param*, %struct.param** %pm24, align 4
  %node25 = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 0
  %nam26 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node25, i32 0, i32 1
  %22 = load i8*, i8** %nam26, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i32 0, i32 0), i8* %22)
  br label %if.end262

if.end27:                                         ; preds = %if.end16
  %23 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags28 = getelementptr inbounds %struct.value, %struct.value* %23, i32 0, i32 2
  %24 = load i32, i32* %flags28, align 4
  %and29 = and i32 %24, 2
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end27
  %25 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm32 = getelementptr inbounds %struct.value, %struct.value* %25, i32 0, i32 1
  %26 = load %struct.param*, %struct.param** %pm32, align 4
  %node33 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 0
  %nam34 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node33, i32 0, i32 1
  %27 = load i8*, i8** %nam34, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0), i8* %27)
  %28 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %28)
  br label %if.end262

if.end35:                                         ; preds = %if.end27
  %29 = load %struct.value*, %struct.value** %v.addr, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %29, i32 0, i32 3
  %30 = load i32, i32* %start, align 4
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %land.lhs.true37, label %if.else52

land.lhs.true37:                                  ; preds = %if.end35
  %31 = load %struct.value*, %struct.value** %v.addr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %31, i32 0, i32 4
  %32 = load i32, i32* %end, align 4
  %cmp38 = icmp eq i32 %32, -1
  br i1 %cmp38, label %if.then40, label %if.else52

if.then40:                                        ; preds = %land.lhs.true37
  %33 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm41 = getelementptr inbounds %struct.value, %struct.value* %33, i32 0, i32 1
  %34 = load %struct.param*, %struct.param** %pm41, align 4
  %node42 = getelementptr inbounds %struct.param, %struct.param* %34, i32 0, i32 0
  %flags43 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node42, i32 0, i32 2
  %35 = load i32, i32* %flags43, align 8
  %and44 = and i32 %35, 31
  %cmp45 = icmp eq i32 %and44, 16
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.then40
  %36 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm48 = getelementptr inbounds %struct.value, %struct.value* %36, i32 0, i32 1
  %37 = load %struct.param*, %struct.param** %pm48, align 4
  %38 = load i8**, i8*** %val.addr, align 4
  call void @arrhashsetfn(%struct.param* %37, i8** %38, i32 0)
  br label %if.end51

if.else:                                          ; preds = %if.then40
  %39 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm49 = getelementptr inbounds %struct.value, %struct.value* %39, i32 0, i32 1
  %40 = load %struct.param*, %struct.param** %pm49, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %40, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %41 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %setfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %41, i32 0, i32 1
  %42 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn, align 4
  %43 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm50 = getelementptr inbounds %struct.value, %struct.value* %43, i32 0, i32 1
  %44 = load %struct.param*, %struct.param** %pm50, align 4
  %45 = load i8**, i8*** %val.addr, align 4
  call void %42(%struct.param* %44, i8** %45)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then47
  br label %if.end262

if.else52:                                        ; preds = %land.lhs.true37, %if.end35
  %46 = load %struct.value*, %struct.value** %v.addr, align 4
  %start53 = getelementptr inbounds %struct.value, %struct.value* %46, i32 0, i32 3
  %47 = load i32, i32* %start53, align 4
  %cmp54 = icmp eq i32 %47, -1
  br i1 %cmp54, label %land.lhs.true56, label %if.else69

land.lhs.true56:                                  ; preds = %if.else52
  %48 = load %struct.value*, %struct.value** %v.addr, align 4
  %end57 = getelementptr inbounds %struct.value, %struct.value* %48, i32 0, i32 4
  %49 = load i32, i32* %end57, align 4
  %cmp58 = icmp eq i32 %49, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.else69

land.lhs.true60:                                  ; preds = %land.lhs.true56
  %50 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm61 = getelementptr inbounds %struct.value, %struct.value* %50, i32 0, i32 1
  %51 = load %struct.param*, %struct.param** %pm61, align 4
  %node62 = getelementptr inbounds %struct.param, %struct.param* %51, i32 0, i32 0
  %flags63 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node62, i32 0, i32 2
  %52 = load i32, i32* %flags63, align 8
  %and64 = and i32 %52, 31
  %cmp65 = icmp eq i32 %and64, 16
  br i1 %cmp65, label %if.then67, label %if.else69

if.then67:                                        ; preds = %land.lhs.true60
  %53 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm68 = getelementptr inbounds %struct.value, %struct.value* %53, i32 0, i32 1
  %54 = load %struct.param*, %struct.param** %pm68, align 4
  %55 = load i8**, i8*** %val.addr, align 4
  call void @arrhashsetfn(%struct.param* %54, i8** %55, i32 1)
  br label %if.end261

if.else69:                                        ; preds = %land.lhs.true60, %land.lhs.true56, %if.else52
  %56 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm70 = getelementptr inbounds %struct.value, %struct.value* %56, i32 0, i32 1
  %57 = load %struct.param*, %struct.param** %pm70, align 4
  %node71 = getelementptr inbounds %struct.param, %struct.param* %57, i32 0, i32 0
  %flags72 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node71, i32 0, i32 2
  %58 = load i32, i32* %flags72, align 8
  %and73 = and i32 %58, 31
  %cmp74 = icmp eq i32 %and73, 16
  br i1 %cmp74, label %if.then76, label %if.else80

if.then76:                                        ; preds = %if.else69
  %59 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %59)
  %60 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm77 = getelementptr inbounds %struct.value, %struct.value* %60, i32 0, i32 1
  %61 = load %struct.param*, %struct.param** %pm77, align 4
  %node78 = getelementptr inbounds %struct.param, %struct.param* %61, i32 0, i32 0
  %nam79 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node78, i32 0, i32 1
  %62 = load i8*, i8** %nam79, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i32 0, i32 0), i8* %62)
  br label %if.end262

if.else80:                                        ; preds = %if.else69
  %63 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm81 = getelementptr inbounds %struct.value, %struct.value* %63, i32 0, i32 1
  %64 = load %struct.param*, %struct.param** %pm81, align 4
  %gsu82 = getelementptr inbounds %struct.param, %struct.param* %64, i32 0, i32 2
  %a83 = bitcast %union.anon.0* %gsu82 to %struct.gsu_array**
  %65 = load %struct.gsu_array*, %struct.gsu_array** %a83, align 8
  %getfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %65, i32 0, i32 0
  %66 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn, align 4
  %67 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm84 = getelementptr inbounds %struct.value, %struct.value* %67, i32 0, i32 1
  %68 = load %struct.param*, %struct.param** %pm84, align 4
  %call = call i8** %66(%struct.param* %68)
  store i8** %call, i8*** %old, align 4
  %69 = load i8**, i8*** %old, align 4
  %call85 = call i32 @arrlen(i8** %69)
  store i32 %call85, i32* %pre_assignment_length, align 4
  %70 = load i8**, i8*** %old, align 4
  store i8** %70, i8*** %q, align 4
  %71 = load %struct.value*, %struct.value** %v.addr, align 4
  %flags86 = getelementptr inbounds %struct.value, %struct.value* %71, i32 0, i32 2
  %72 = load i32, i32* %flags86, align 4
  %and87 = and i32 %72, 1
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %land.lhs.true89, label %if.end100

land.lhs.true89:                                  ; preds = %if.else80
  %73 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool90 = icmp ne i8 %73, 0
  br i1 %tobool90, label %if.end100, label %if.then91

if.then91:                                        ; preds = %land.lhs.true89
  %74 = load %struct.value*, %struct.value** %v.addr, align 4
  %start92 = getelementptr inbounds %struct.value, %struct.value* %74, i32 0, i32 3
  %75 = load i32, i32* %start92, align 4
  %cmp93 = icmp sgt i32 %75, 0
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.then91
  %76 = load %struct.value*, %struct.value** %v.addr, align 4
  %start96 = getelementptr inbounds %struct.value, %struct.value* %76, i32 0, i32 3
  %77 = load i32, i32* %start96, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %start96, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.then91
  %78 = load %struct.value*, %struct.value** %v.addr, align 4
  %end98 = getelementptr inbounds %struct.value, %struct.value* %78, i32 0, i32 4
  %79 = load i32, i32* %end98, align 4
  %dec99 = add nsw i32 %79, -1
  store i32 %dec99, i32* %end98, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end97, %land.lhs.true89, %if.else80
  %80 = load %struct.value*, %struct.value** %v.addr, align 4
  %start101 = getelementptr inbounds %struct.value, %struct.value* %80, i32 0, i32 3
  %81 = load i32, i32* %start101, align 4
  %cmp102 = icmp slt i32 %81, 0
  br i1 %cmp102, label %if.then104, label %if.end112

if.then104:                                       ; preds = %if.end100
  %82 = load i32, i32* %pre_assignment_length, align 4
  %83 = load %struct.value*, %struct.value** %v.addr, align 4
  %start105 = getelementptr inbounds %struct.value, %struct.value* %83, i32 0, i32 3
  %84 = load i32, i32* %start105, align 4
  %add = add nsw i32 %84, %82
  store i32 %add, i32* %start105, align 4
  %85 = load %struct.value*, %struct.value** %v.addr, align 4
  %start106 = getelementptr inbounds %struct.value, %struct.value* %85, i32 0, i32 3
  %86 = load i32, i32* %start106, align 4
  %cmp107 = icmp slt i32 %86, 0
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.then104
  %87 = load %struct.value*, %struct.value** %v.addr, align 4
  %start110 = getelementptr inbounds %struct.value, %struct.value* %87, i32 0, i32 3
  store i32 0, i32* %start110, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.then104
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end100
  %88 = load %struct.value*, %struct.value** %v.addr, align 4
  %end113 = getelementptr inbounds %struct.value, %struct.value* %88, i32 0, i32 4
  %89 = load i32, i32* %end113, align 4
  %cmp114 = icmp slt i32 %89, 0
  br i1 %cmp114, label %if.then116, label %if.end126

if.then116:                                       ; preds = %if.end112
  %90 = load i32, i32* %pre_assignment_length, align 4
  %add117 = add nsw i32 %90, 1
  %91 = load %struct.value*, %struct.value** %v.addr, align 4
  %end118 = getelementptr inbounds %struct.value, %struct.value* %91, i32 0, i32 4
  %92 = load i32, i32* %end118, align 4
  %add119 = add nsw i32 %92, %add117
  store i32 %add119, i32* %end118, align 4
  %93 = load %struct.value*, %struct.value** %v.addr, align 4
  %end120 = getelementptr inbounds %struct.value, %struct.value* %93, i32 0, i32 4
  %94 = load i32, i32* %end120, align 4
  %cmp121 = icmp slt i32 %94, 0
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.then116
  %95 = load %struct.value*, %struct.value** %v.addr, align 4
  %end124 = getelementptr inbounds %struct.value, %struct.value* %95, i32 0, i32 4
  store i32 0, i32* %end124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.then116
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end112
  %96 = load %struct.value*, %struct.value** %v.addr, align 4
  %end127 = getelementptr inbounds %struct.value, %struct.value* %96, i32 0, i32 4
  %97 = load i32, i32* %end127, align 4
  %98 = load %struct.value*, %struct.value** %v.addr, align 4
  %start128 = getelementptr inbounds %struct.value, %struct.value* %98, i32 0, i32 3
  %99 = load i32, i32* %start128, align 4
  %cmp129 = icmp slt i32 %97, %99
  br i1 %cmp129, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.end126
  %100 = load %struct.value*, %struct.value** %v.addr, align 4
  %start132 = getelementptr inbounds %struct.value, %struct.value* %100, i32 0, i32 3
  %101 = load i32, i32* %start132, align 4
  %102 = load %struct.value*, %struct.value** %v.addr, align 4
  %end133 = getelementptr inbounds %struct.value, %struct.value* %102, i32 0, i32 4
  store i32 %101, i32* %end133, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.end126
  %103 = load %struct.value*, %struct.value** %v.addr, align 4
  %start135 = getelementptr inbounds %struct.value, %struct.value* %103, i32 0, i32 3
  %104 = load i32, i32* %start135, align 4
  %105 = load i8**, i8*** %val.addr, align 4
  %call136 = call i32 @arrlen(i8** %105)
  %add137 = add nsw i32 %104, %call136
  store i32 %add137, i32* %post_assignment_length, align 4
  %106 = load %struct.value*, %struct.value** %v.addr, align 4
  %end138 = getelementptr inbounds %struct.value, %struct.value* %106, i32 0, i32 4
  %107 = load i32, i32* %end138, align 4
  %108 = load i32, i32* %pre_assignment_length, align 4
  %cmp139 = icmp slt i32 %107, %108
  br i1 %cmp139, label %if.then141, label %if.end144

if.then141:                                       ; preds = %if.end134
  %109 = load i32, i32* %pre_assignment_length, align 4
  %110 = load %struct.value*, %struct.value** %v.addr, align 4
  %end142 = getelementptr inbounds %struct.value, %struct.value* %110, i32 0, i32 4
  %111 = load i32, i32* %end142, align 4
  %sub = sub nsw i32 %109, %111
  %112 = load i32, i32* %post_assignment_length, align 4
  %add143 = add nsw i32 %112, %sub
  store i32 %add143, i32* %post_assignment_length, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %if.end134
  %113 = load i32, i32* %pre_assignment_length, align 4
  %114 = load i32, i32* %post_assignment_length, align 4
  %cmp145 = icmp eq i32 %113, %114
  br i1 %cmp145, label %land.lhs.true147, label %if.else169

land.lhs.true147:                                 ; preds = %if.end144
  %115 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm148 = getelementptr inbounds %struct.value, %struct.value* %115, i32 0, i32 1
  %116 = load %struct.param*, %struct.param** %pm148, align 4
  %gsu149 = getelementptr inbounds %struct.param, %struct.param* %116, i32 0, i32 2
  %a150 = bitcast %union.anon.0* %gsu149 to %struct.gsu_array**
  %117 = load %struct.gsu_array*, %struct.gsu_array** %a150, align 8
  %setfn151 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %117, i32 0, i32 1
  %118 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn151, align 4
  %cmp152 = icmp eq void (%struct.param*, i8**)* %118, @arrsetfn
  br i1 %cmp152, label %land.lhs.true154, label %if.else169

land.lhs.true154:                                 ; preds = %land.lhs.true147
  %119 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm155 = getelementptr inbounds %struct.value, %struct.value* %119, i32 0, i32 1
  %120 = load %struct.param*, %struct.param** %pm155, align 4
  %node156 = getelementptr inbounds %struct.param, %struct.param* %120, i32 0, i32 0
  %flags157 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node156, i32 0, i32 2
  %121 = load i32, i32* %flags157, align 8
  %and158 = and i32 %121, 4202496
  %cmp159 = icmp eq i32 0, %and158
  br i1 %cmp159, label %land.lhs.true161, label %if.else169

land.lhs.true161:                                 ; preds = %land.lhs.true154
  %122 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm162 = getelementptr inbounds %struct.value, %struct.value* %122, i32 0, i32 1
  %123 = load %struct.param*, %struct.param** %pm162, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %123, i32 0, i32 6
  %124 = load i8*, i8** %ename, align 8
  %cmp163 = icmp eq i8* null, %124
  br i1 %cmp163, label %if.then165, label %if.else169

if.then165:                                       ; preds = %land.lhs.true161
  %125 = load i8**, i8*** %old, align 4
  %126 = load %struct.value*, %struct.value** %v.addr, align 4
  %start166 = getelementptr inbounds %struct.value, %struct.value* %126, i32 0, i32 3
  %127 = load i32, i32* %start166, align 4
  %add.ptr = getelementptr inbounds i8*, i8** %125, i32 %127
  store i8** %add.ptr, i8*** %p, align 4
  %128 = load i8**, i8*** %val.addr, align 4
  store i8** %128, i8*** %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then165
  %129 = load i8**, i8*** %r, align 4
  %130 = load i8*, i8** %129, align 4
  %tobool167 = icmp ne i8* %130, null
  br i1 %tobool167, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %131 = load i8**, i8*** %p, align 4
  %132 = load i8*, i8** %131, align 4
  call void @zsfree(i8* %132)
  %133 = load i8**, i8*** %r, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %incdec.ptr, i8*** %r, align 4
  %134 = load i8*, i8** %133, align 4
  %135 = load i8**, i8*** %p, align 4
  %incdec.ptr168 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %incdec.ptr168, i8*** %p, align 4
  store i8* %134, i8** %135, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end259

if.else169:                                       ; preds = %land.lhs.true161, %land.lhs.true154, %land.lhs.true147, %if.end144
  %136 = load i32, i32* %post_assignment_length, align 4
  %137 = load i32, i32* %pre_assignment_length, align 4
  %cmp170 = icmp sgt i32 %136, %137
  br i1 %cmp170, label %land.lhs.true172, label %if.else215

land.lhs.true172:                                 ; preds = %if.else169
  %138 = load i32, i32* %pre_assignment_length, align 4
  %139 = load %struct.value*, %struct.value** %v.addr, align 4
  %start173 = getelementptr inbounds %struct.value, %struct.value* %139, i32 0, i32 3
  %140 = load i32, i32* %start173, align 4
  %cmp174 = icmp sle i32 %138, %140
  br i1 %cmp174, label %land.lhs.true176, label %if.else215

land.lhs.true176:                                 ; preds = %land.lhs.true172
  %141 = load i32, i32* %pre_assignment_length, align 4
  %cmp177 = icmp sgt i32 %141, 0
  br i1 %cmp177, label %land.lhs.true179, label %if.else215

land.lhs.true179:                                 ; preds = %land.lhs.true176
  %142 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm180 = getelementptr inbounds %struct.value, %struct.value* %142, i32 0, i32 1
  %143 = load %struct.param*, %struct.param** %pm180, align 4
  %gsu181 = getelementptr inbounds %struct.param, %struct.param* %143, i32 0, i32 2
  %a182 = bitcast %union.anon.0* %gsu181 to %struct.gsu_array**
  %144 = load %struct.gsu_array*, %struct.gsu_array** %a182, align 8
  %setfn183 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %144, i32 0, i32 1
  %145 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn183, align 4
  %cmp184 = icmp eq void (%struct.param*, i8**)* %145, @arrsetfn
  br i1 %cmp184, label %if.then186, label %if.else215

if.then186:                                       ; preds = %land.lhs.true179
  %146 = load i8**, i8*** %old, align 4
  %147 = bitcast i8** %146 to i8*
  %148 = load i32, i32* %post_assignment_length, align 4
  %add187 = add nsw i32 %148, 1
  %mul = mul i32 4, %add187
  %call188 = call i8* @zrealloc(i8* %147, i32 %mul)
  %149 = bitcast i8* %call188 to i8**
  store i8** %149, i8*** %new, align 4
  store i8** %149, i8*** %p, align 4
  %150 = load i32, i32* %pre_assignment_length, align 4
  %151 = load i8**, i8*** %p, align 4
  %add.ptr189 = getelementptr inbounds i8*, i8** %151, i32 %150
  store i8** %add.ptr189, i8*** %p, align 4
  %152 = load i32, i32* %pre_assignment_length, align 4
  %153 = load %struct.value*, %struct.value** %v.addr, align 4
  %start190 = getelementptr inbounds %struct.value, %struct.value* %153, i32 0, i32 3
  %154 = load i32, i32* %start190, align 4
  %cmp191 = icmp slt i32 %152, %154
  br i1 %cmp191, label %if.then193, label %if.end202

if.then193:                                       ; preds = %if.then186
  %155 = load i32, i32* %pre_assignment_length, align 4
  store i32 %155, i32* %i, align 4
  br label %for.cond194

for.cond194:                                      ; preds = %for.inc, %if.then193
  %156 = load i32, i32* %i, align 4
  %157 = load %struct.value*, %struct.value** %v.addr, align 4
  %start195 = getelementptr inbounds %struct.value, %struct.value* %157, i32 0, i32 3
  %158 = load i32, i32* %start195, align 4
  %cmp196 = icmp slt i32 %156, %158
  br i1 %cmp196, label %for.body198, label %for.end201

for.body198:                                      ; preds = %for.cond194
  %call199 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  %159 = load i8**, i8*** %p, align 4
  %incdec.ptr200 = getelementptr inbounds i8*, i8** %159, i32 1
  store i8** %incdec.ptr200, i8*** %p, align 4
  store i8* %call199, i8** %159, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body198
  %160 = load i32, i32* %i, align 4
  %inc = add nsw i32 %160, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond194

for.end201:                                       ; preds = %for.cond194
  br label %if.end202

if.end202:                                        ; preds = %for.end201, %if.then186
  %161 = load i8**, i8*** %val.addr, align 4
  store i8** %161, i8*** %r, align 4
  br label %for.cond203

for.cond203:                                      ; preds = %for.body205, %if.end202
  %162 = load i8**, i8*** %r, align 4
  %163 = load i8*, i8** %162, align 4
  %tobool204 = icmp ne i8* %163, null
  br i1 %tobool204, label %for.body205, label %for.end208

for.body205:                                      ; preds = %for.cond203
  %164 = load i8**, i8*** %r, align 4
  %incdec.ptr206 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %incdec.ptr206, i8*** %r, align 4
  %165 = load i8*, i8** %164, align 4
  %166 = load i8**, i8*** %p, align 4
  %incdec.ptr207 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %incdec.ptr207, i8*** %p, align 4
  store i8* %165, i8** %166, align 4
  br label %for.cond203

for.end208:                                       ; preds = %for.cond203
  %167 = load i8**, i8*** %p, align 4
  store i8* null, i8** %167, align 4
  %168 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm209 = getelementptr inbounds %struct.value, %struct.value* %168, i32 0, i32 1
  %169 = load %struct.param*, %struct.param** %pm209, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %169, i32 0, i32 1
  %arr = bitcast %union.anon* %u to i8***
  store i8** null, i8*** %arr, align 8
  %170 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm210 = getelementptr inbounds %struct.value, %struct.value* %170, i32 0, i32 1
  %171 = load %struct.param*, %struct.param** %pm210, align 4
  %gsu211 = getelementptr inbounds %struct.param, %struct.param* %171, i32 0, i32 2
  %a212 = bitcast %union.anon.0* %gsu211 to %struct.gsu_array**
  %172 = load %struct.gsu_array*, %struct.gsu_array** %a212, align 8
  %setfn213 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %172, i32 0, i32 1
  %173 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn213, align 4
  %174 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm214 = getelementptr inbounds %struct.value, %struct.value* %174, i32 0, i32 1
  %175 = load %struct.param*, %struct.param** %pm214, align 4
  %176 = load i8**, i8*** %new, align 4
  call void %173(%struct.param* %175, i8** %176)
  br label %if.end258

if.else215:                                       ; preds = %land.lhs.true179, %land.lhs.true176, %land.lhs.true172, %if.else169
  %177 = load i32, i32* %post_assignment_length, align 4
  %add216 = add nsw i32 %177, 1
  %mul217 = mul i32 4, %add216
  %call218 = call i8* @zalloc(i32 %mul217)
  %178 = bitcast i8* %call218 to i8**
  store i8** %178, i8*** %new, align 4
  store i8** %178, i8*** %p, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond219

for.cond219:                                      ; preds = %for.inc230, %if.else215
  %179 = load i32, i32* %i, align 4
  %180 = load %struct.value*, %struct.value** %v.addr, align 4
  %start220 = getelementptr inbounds %struct.value, %struct.value* %180, i32 0, i32 3
  %181 = load i32, i32* %start220, align 4
  %cmp221 = icmp slt i32 %179, %181
  br i1 %cmp221, label %for.body223, label %for.end232

for.body223:                                      ; preds = %for.cond219
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %pre_assignment_length, align 4
  %cmp224 = icmp slt i32 %182, %183
  br i1 %cmp224, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body223
  %184 = load i8**, i8*** %q, align 4
  %incdec.ptr226 = getelementptr inbounds i8*, i8** %184, i32 1
  store i8** %incdec.ptr226, i8*** %q, align 4
  %185 = load i8*, i8** %184, align 4
  %call227 = call i8* @ztrdup(i8* %185)
  br label %cond.end

cond.false:                                       ; preds = %for.body223
  %call228 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call227, %cond.true ], [ %call228, %cond.false ]
  %186 = load i8**, i8*** %p, align 4
  %incdec.ptr229 = getelementptr inbounds i8*, i8** %186, i32 1
  store i8** %incdec.ptr229, i8*** %p, align 4
  store i8* %cond, i8** %186, align 4
  br label %for.inc230

for.inc230:                                       ; preds = %cond.end
  %187 = load i32, i32* %i, align 4
  %inc231 = add nsw i32 %187, 1
  store i32 %inc231, i32* %i, align 4
  br label %for.cond219

for.end232:                                       ; preds = %for.cond219
  %188 = load i8**, i8*** %val.addr, align 4
  store i8** %188, i8*** %r, align 4
  br label %for.cond233

for.cond233:                                      ; preds = %for.body235, %for.end232
  %189 = load i8**, i8*** %r, align 4
  %190 = load i8*, i8** %189, align 4
  %tobool234 = icmp ne i8* %190, null
  br i1 %tobool234, label %for.body235, label %for.end238

for.body235:                                      ; preds = %for.cond233
  %191 = load i8**, i8*** %r, align 4
  %incdec.ptr236 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %incdec.ptr236, i8*** %r, align 4
  %192 = load i8*, i8** %191, align 4
  %193 = load i8**, i8*** %p, align 4
  %incdec.ptr237 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %incdec.ptr237, i8*** %p, align 4
  store i8* %192, i8** %193, align 4
  br label %for.cond233

for.end238:                                       ; preds = %for.cond233
  %194 = load %struct.value*, %struct.value** %v.addr, align 4
  %end239 = getelementptr inbounds %struct.value, %struct.value* %194, i32 0, i32 4
  %195 = load i32, i32* %end239, align 4
  %196 = load i32, i32* %pre_assignment_length, align 4
  %cmp240 = icmp slt i32 %195, %196
  br i1 %cmp240, label %if.then242, label %if.end252

if.then242:                                       ; preds = %for.end238
  %197 = load i8**, i8*** %old, align 4
  %198 = load %struct.value*, %struct.value** %v.addr, align 4
  %end243 = getelementptr inbounds %struct.value, %struct.value* %198, i32 0, i32 4
  %199 = load i32, i32* %end243, align 4
  %add.ptr244 = getelementptr inbounds i8*, i8** %197, i32 %199
  store i8** %add.ptr244, i8*** %q, align 4
  br label %for.cond245

for.cond245:                                      ; preds = %for.body247, %if.then242
  %200 = load i8**, i8*** %q, align 4
  %201 = load i8*, i8** %200, align 4
  %tobool246 = icmp ne i8* %201, null
  br i1 %tobool246, label %for.body247, label %for.end251

for.body247:                                      ; preds = %for.cond245
  %202 = load i8**, i8*** %q, align 4
  %incdec.ptr248 = getelementptr inbounds i8*, i8** %202, i32 1
  store i8** %incdec.ptr248, i8*** %q, align 4
  %203 = load i8*, i8** %202, align 4
  %call249 = call i8* @ztrdup(i8* %203)
  %204 = load i8**, i8*** %p, align 4
  %incdec.ptr250 = getelementptr inbounds i8*, i8** %204, i32 1
  store i8** %incdec.ptr250, i8*** %p, align 4
  store i8* %call249, i8** %204, align 4
  br label %for.cond245

for.end251:                                       ; preds = %for.cond245
  br label %if.end252

if.end252:                                        ; preds = %for.end251, %for.end238
  %205 = load i8**, i8*** %p, align 4
  store i8* null, i8** %205, align 4
  %206 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm253 = getelementptr inbounds %struct.value, %struct.value* %206, i32 0, i32 1
  %207 = load %struct.param*, %struct.param** %pm253, align 4
  %gsu254 = getelementptr inbounds %struct.param, %struct.param* %207, i32 0, i32 2
  %a255 = bitcast %union.anon.0* %gsu254 to %struct.gsu_array**
  %208 = load %struct.gsu_array*, %struct.gsu_array** %a255, align 8
  %setfn256 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %208, i32 0, i32 1
  %209 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn256, align 4
  %210 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm257 = getelementptr inbounds %struct.value, %struct.value* %210, i32 0, i32 1
  %211 = load %struct.param*, %struct.param** %pm257, align 4
  %212 = load i8**, i8*** %new, align 4
  call void %209(%struct.param* %211, i8** %212)
  br label %if.end258

if.end258:                                        ; preds = %if.end252, %for.end208
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %for.end
  %213 = load i8**, i8*** %val.addr, align 4
  %214 = bitcast i8** %213 to i8*
  call void @free(i8* %214)
  br label %if.end260

if.end260:                                        ; preds = %if.end259
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.then67
  br label %if.end262

if.end262:                                        ; preds = %if.then, %if.then2, %if.then12, %if.then23, %if.then31, %if.then76, %if.end261, %if.end51
  ret void
}

; Function Attrs: noinline nounwind
define void @setnumvalue(%struct.value* %v, %struct.mnumber* byval align 8 %val) #0 {
entry:
  %v.addr = alloca %struct.value*, align 4
  %buf = alloca [36 x i8], align 1
  %p = alloca i8*, align 4
  store %struct.value* %v, %struct.value** %v.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %1, i32 0, i32 1
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1024
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm3 = getelementptr inbounds %struct.value, %struct.value* %4, i32 0, i32 1
  %5 = load %struct.param*, %struct.param** %pm3, align 4
  %node4 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* %6)
  br label %sw.epilog

if.end5:                                          ; preds = %if.end
  %7 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm6 = getelementptr inbounds %struct.value, %struct.value* %7, i32 0, i32 1
  %8 = load %struct.param*, %struct.param** %pm6, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %9 = load i32, i32* %flags8, align 8
  %and9 = and i32 %9, 16777216
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end5
  %10 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %conv = sext i8 %10 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %11 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm13 = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm13, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %nam15 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 1
  %13 = load i8*, i8** %nam15, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* %13)
  br label %sw.epilog

if.end16:                                         ; preds = %land.lhs.true, %if.end5
  %14 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm17 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 1
  %15 = load %struct.param*, %struct.param** %pm17, align 4
  %node18 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags19 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node18, i32 0, i32 2
  %16 = load i32, i32* %flags19, align 8
  %and20 = and i32 %16, 31
  switch i32 %and20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb39
    i32 4, label %sw.bb50
    i32 8, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end16, %if.end16
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %17 = load i32, i32* %type, align 8
  %and21 = and i32 %17, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %18 = load i32, i32* @outputradix, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %if.then24, label %if.else

if.then24:                                        ; preds = %lor.lhs.false, %sw.bb
  %type25 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %19 = load i32, i32* %type25, align 8
  %and26 = and i32 %19, 1
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.then24
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %d = bitcast %union.anon.1* %u to double*
  %20 = load double, double* %d, align 8
  %conv29 = fptosi double %20 to i32
  %u30 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %l = bitcast %union.anon.1* %u30 to i32*
  store i32 %conv29, i32* %l, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then24
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %u32 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %l33 = bitcast %union.anon.1* %u32 to i32*
  %21 = load i32, i32* %l33, align 8
  %22 = load i32, i32* @outputradix, align 4
  %23 = load i32, i32* @outputunderscore, align 4
  %call = call i8* @convbase_underscore(i8* %arraydecay, i32 %21, i32 %22, i32 %23)
  store i8* %call, i8** %p, align 4
  br label %if.end37

if.else:                                          ; preds = %lor.lhs.false
  %u34 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %d35 = bitcast %union.anon.1* %u34 to double*
  %24 = load double, double* %d35, align 8
  %25 = load i32, i32* @outputunderscore, align 4
  %call36 = call i8* @convfloat_underscore(double %24, i32 %25)
  store i8* %call36, i8** %p, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end31
  %26 = load %struct.value*, %struct.value** %v.addr, align 4
  %27 = load i8*, i8** %p, align 4
  %call38 = call i8* @ztrdup(i8* %27)
  call void @setstrvalue(%struct.value* %26, i8* %call38)
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end16
  %28 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm40 = getelementptr inbounds %struct.value, %struct.value* %28, i32 0, i32 1
  %29 = load %struct.param*, %struct.param** %pm40, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %30 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %setfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %30, i32 0, i32 1
  %31 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %setfn, align 4
  %32 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm41 = getelementptr inbounds %struct.value, %struct.value* %32, i32 0, i32 1
  %33 = load %struct.param*, %struct.param** %pm41, align 4
  %type42 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %34 = load i32, i32* %type42, align 8
  %and43 = and i32 %34, 1
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb39
  %u45 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %l46 = bitcast %union.anon.1* %u45 to i32*
  %35 = load i32, i32* %l46, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb39
  %u47 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %d48 = bitcast %union.anon.1* %u47 to double*
  %36 = load double, double* %d48, align 8
  %conv49 = fptosi double %36 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %conv49, %cond.false ]
  call void %31(%struct.param* %33, i32 %cond)
  %37 = load %struct.value*, %struct.value** %v.addr, align 4
  call void @setstrvalue(%struct.value* %37, i8* null)
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end16, %if.end16
  %38 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm51 = getelementptr inbounds %struct.value, %struct.value* %38, i32 0, i32 1
  %39 = load %struct.param*, %struct.param** %pm51, align 4
  %gsu52 = getelementptr inbounds %struct.param, %struct.param* %39, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu52 to %struct.gsu_float**
  %40 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %setfn53 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %40, i32 0, i32 1
  %41 = load void (%struct.param*, double)*, void (%struct.param*, double)** %setfn53, align 4
  %42 = load %struct.value*, %struct.value** %v.addr, align 4
  %pm54 = getelementptr inbounds %struct.value, %struct.value* %42, i32 0, i32 1
  %43 = load %struct.param*, %struct.param** %pm54, align 4
  %type55 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %44 = load i32, i32* %type55, align 8
  %and56 = and i32 %44, 1
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %cond.true58, label %cond.false62

cond.true58:                                      ; preds = %sw.bb50
  %u59 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %l60 = bitcast %union.anon.1* %u59 to i32*
  %45 = load i32, i32* %l60, align 8
  %conv61 = sitofp i32 %45 to double
  br label %cond.end65

cond.false62:                                     ; preds = %sw.bb50
  %u63 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 0
  %d64 = bitcast %union.anon.1* %u63 to double*
  %46 = load double, double* %d64, align 8
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false62, %cond.true58
  %cond66 = phi double [ %conv61, %cond.true58 ], [ %46, %cond.false62 ]
  call void %41(%struct.param* %43, double %cond66)
  %47 = load %struct.value*, %struct.value** %v.addr, align 4
  call void @setstrvalue(%struct.value* %47, i8* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then2, %if.then12, %if.end16, %cond.end65, %cond.end, %if.end37
  ret void
}

; Function Attrs: noinline nounwind
define i8* @convbase_underscore(i8* %s, i32 %v, i32 %base, i32 %underscore) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %v.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %underscore.addr = alloca i32, align 4
  %retptr = alloca i8*, align 4
  %sptr = alloca i8*, align 4
  %dptr = alloca i8*, align 4
  %ndigits = alloca i32, align 4
  %nunderscore = alloca i32, align 4
  %mod = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %underscore, i32* %underscore.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i32, i32* %v.addr, align 4
  %2 = load i32, i32* %base.addr, align 4
  call void @convbase_ptr(i8* %0, i32 %1, i32 %2, i32* %ndigits)
  %3 = load i32, i32* %underscore.addr, align 4
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 4
  store i8* %4, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %ndigits, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %underscore.addr, align 4
  %div = sdiv i32 %sub, %6
  store i32 %div, i32* %nunderscore, align 4
  %7 = load i32, i32* %nunderscore, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %8 = load i8*, i8** %s.addr, align 4
  store i8* %8, i8** %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %9 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %9)
  store i32 %call, i32* %len, align 4
  %10 = load i32, i32* %len, align 4
  %11 = load i32, i32* %nunderscore, align 4
  %add = add nsw i32 %10, %11
  %add3 = add nsw i32 %add, 1
  %call4 = call i8* @zhalloc(i32 %add3)
  store i8* %call4, i8** %retptr, align 4
  store i32 0, i32* %mod, align 4
  %12 = load i8*, i8** %retptr, align 4
  %13 = load i8*, i8** %s.addr, align 4
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* %ndigits, align 4
  %sub5 = sub nsw i32 %14, %15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 %sub5, i32 1, i1 false)
  %16 = load i8*, i8** %s.addr, align 4
  %17 = load i32, i32* %len, align 4
  %add.ptr = getelementptr inbounds i8, i8* %16, i32 %17
  store i8* %add.ptr, i8** %sptr, align 4
  %18 = load i8*, i8** %retptr, align 4
  %19 = load i32, i32* %len, align 4
  %add.ptr6 = getelementptr inbounds i8, i8* %18, i32 %19
  %20 = load i32, i32* %nunderscore, align 4
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i32 %20
  store i8* %add.ptr7, i8** %dptr, align 4
  %21 = load i8*, i8** %sptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr, i8** %sptr, align 4
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %dptr, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr8, i8** %dptr, align 4
  store i8 %22, i8* %23, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %if.end2
  %24 = load i8*, i8** %sptr, align 4
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %dptr, align 4
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %ndigits, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %ndigits, align 4
  %tobool9 = icmp ne i32 %dec, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.cond
  br label %for.end

if.end11:                                         ; preds = %for.cond
  %28 = load i8*, i8** %dptr, align 4
  %incdec.ptr12 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %incdec.ptr12, i8** %dptr, align 4
  %29 = load i8*, i8** %sptr, align 4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %incdec.ptr13, i8** %sptr, align 4
  %30 = load i32, i32* %mod, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %mod, align 4
  %31 = load i32, i32* %underscore.addr, align 4
  %cmp14 = icmp eq i32 %inc, %31
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  store i32 0, i32* %mod, align 4
  %32 = load i8*, i8** %dptr, align 4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr16, i8** %dptr, align 4
  store i8 95, i8* %32, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11
  br label %for.cond

for.end:                                          ; preds = %if.then10
  %33 = load i8*, i8** %retptr, align 4
  store i8* %33, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then1, %if.then
  %34 = load i8*, i8** %retval, align 4
  ret i8* %34
}

; Function Attrs: noinline nounwind
define i8* @convfloat_underscore(double %dval, i32 %underscore) #0 {
entry:
  %retval = alloca i8*, align 4
  %dval.addr = alloca double, align 8
  %underscore.addr = alloca i32, align 4
  %ndigits_int = alloca i32, align 4
  %ndigits_frac = alloca i32, align 4
  %nunderscore = alloca i32, align 4
  %len = alloca i32, align 4
  %s = alloca i8*, align 4
  %retptr = alloca i8*, align 4
  %sptr = alloca i8*, align 4
  %dptr = alloca i8*, align 4
  %mod = alloca i32, align 4
  store double %dval, double* %dval.addr, align 8
  store i32 %underscore, i32* %underscore.addr, align 4
  store i32 0, i32* %ndigits_int, align 4
  store i32 0, i32* %ndigits_frac, align 4
  %0 = load double, double* %dval.addr, align 8
  %call = call i8* @convfloat(double %0, i32 0, i32 0, %struct._IO_FILE* null)
  store i8* %call, i8** %s, align 4
  %1 = load i32, i32* %underscore.addr, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s, align 4
  store i8* %2, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %s, align 4
  store i8* %3, i8** %sptr, align 4
  %4 = load i8*, i8** %sptr, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %sptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %7 = load i8*, i8** %sptr, align 4
  %8 = load i8, i8* %7, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv5 = sext i16 %9 to i32
  %and = and i32 %conv5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %ndigits_int, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %ndigits_int, align 4
  %11 = load i8*, i8** %sptr, align 4
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %sptr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %sptr, align 4
  %13 = load i8, i8* %12, align 1
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 46
  br i1 %cmp8, label %if.then10, label %if.end22

if.then10:                                        ; preds = %while.end
  %14 = load i8*, i8** %sptr, align 4
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %sptr, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body18, %if.then10
  %15 = load i8*, i8** %sptr, align 4
  %16 = load i8, i8* %15, align 1
  %idxprom13 = zext i8 %16 to i32
  %arrayidx14 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom13
  %17 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %17 to i32
  %and16 = and i32 %conv15, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %while.body18, label %while.end21

while.body18:                                     ; preds = %while.cond12
  %18 = load i32, i32* %ndigits_frac, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* %ndigits_frac, align 4
  %19 = load i8*, i8** %sptr, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr20, i8** %sptr, align 4
  br label %while.cond12

while.end21:                                      ; preds = %while.cond12
  br label %if.end22

if.end22:                                         ; preds = %while.end21, %while.end
  %20 = load i32, i32* %ndigits_int, align 4
  %sub = sub nsw i32 %20, 1
  %21 = load i32, i32* %underscore.addr, align 4
  %div = sdiv i32 %sub, %21
  %22 = load i32, i32* %ndigits_frac, align 4
  %sub23 = sub nsw i32 %22, 1
  %23 = load i32, i32* %underscore.addr, align 4
  %div24 = sdiv i32 %sub23, %23
  %add = add nsw i32 %div, %div24
  store i32 %add, i32* %nunderscore, align 4
  %24 = load i32, i32* %nunderscore, align 4
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  %25 = load i8*, i8** %s, align 4
  store i8* %25, i8** %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end22
  %26 = load i8*, i8** %s, align 4
  %call28 = call i32 @strlen(i8* %26)
  store i32 %call28, i32* %len, align 4
  %27 = load i32, i32* %len, align 4
  %28 = load i32, i32* %nunderscore, align 4
  %add29 = add nsw i32 %27, %28
  %add30 = add nsw i32 %add29, 1
  %call31 = call i8* @zhalloc(i32 %add30)
  store i8* %call31, i8** %retptr, align 4
  store i8* %call31, i8** %dptr, align 4
  %29 = load i8*, i8** %s, align 4
  store i8* %29, i8** %sptr, align 4
  %30 = load i8*, i8** %sptr, align 4
  %31 = load i8, i8* %30, align 1
  %conv32 = sext i8 %31 to i32
  %cmp33 = icmp eq i32 %conv32, 45
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end27
  %32 = load i8*, i8** %sptr, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr36, i8** %sptr, align 4
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %dptr, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr37, i8** %dptr, align 4
  store i8 %33, i8* %34, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end27
  br label %while.cond39

while.cond39:                                     ; preds = %if.end48, %if.end38
  %35 = load i32, i32* %ndigits_int, align 4
  %tobool40 = icmp ne i32 %35, 0
  br i1 %tobool40, label %while.body41, label %while.end49

while.body41:                                     ; preds = %while.cond39
  %36 = load i8*, i8** %sptr, align 4
  %incdec.ptr42 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr42, i8** %sptr, align 4
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %dptr, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr43, i8** %dptr, align 4
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %ndigits_int, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %ndigits_int, align 4
  %tobool44 = icmp ne i32 %dec, 0
  br i1 %tobool44, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %while.body41
  %40 = load i32, i32* %ndigits_int, align 4
  %41 = load i32, i32* %underscore.addr, align 4
  %rem = srem i32 %40, %41
  %tobool45 = icmp ne i32 %rem, 0
  br i1 %tobool45, label %if.end48, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  %42 = load i8*, i8** %dptr, align 4
  %incdec.ptr47 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr47, i8** %dptr, align 4
  store i8 95, i8* %42, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %land.lhs.true, %while.body41
  br label %while.cond39

while.end49:                                      ; preds = %while.cond39
  %43 = load i32, i32* %ndigits_frac, align 4
  %tobool50 = icmp ne i32 %43, 0
  br i1 %tobool50, label %if.then51, label %if.end69

if.then51:                                        ; preds = %while.end49
  store i32 0, i32* %mod, align 4
  %44 = load i8*, i8** %sptr, align 4
  %incdec.ptr52 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr52, i8** %sptr, align 4
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %dptr, align 4
  %incdec.ptr53 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr53, i8** %dptr, align 4
  store i8 %45, i8* %46, align 1
  br label %while.cond54

while.cond54:                                     ; preds = %if.end67, %if.then51
  %47 = load i32, i32* %ndigits_frac, align 4
  %tobool55 = icmp ne i32 %47, 0
  br i1 %tobool55, label %while.body56, label %while.end68

while.body56:                                     ; preds = %while.cond54
  %48 = load i8*, i8** %sptr, align 4
  %incdec.ptr57 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr57, i8** %sptr, align 4
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %dptr, align 4
  %incdec.ptr58 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr58, i8** %dptr, align 4
  store i8 %49, i8* %50, align 1
  %51 = load i32, i32* %mod, align 4
  %inc59 = add nsw i32 %51, 1
  store i32 %inc59, i32* %mod, align 4
  %52 = load i32, i32* %ndigits_frac, align 4
  %dec60 = add nsw i32 %52, -1
  store i32 %dec60, i32* %ndigits_frac, align 4
  %tobool61 = icmp ne i32 %dec60, 0
  br i1 %tobool61, label %land.lhs.true62, label %if.end67

land.lhs.true62:                                  ; preds = %while.body56
  %53 = load i32, i32* %mod, align 4
  %54 = load i32, i32* %underscore.addr, align 4
  %cmp63 = icmp eq i32 %53, %54
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true62
  %55 = load i8*, i8** %dptr, align 4
  %incdec.ptr66 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr66, i8** %dptr, align 4
  store i8 95, i8* %55, align 1
  store i32 0, i32* %mod, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %land.lhs.true62, %while.body56
  br label %while.cond54

while.end68:                                      ; preds = %while.cond54
  br label %if.end69

if.end69:                                         ; preds = %while.end68, %while.end49
  br label %while.cond70

while.cond70:                                     ; preds = %while.body74, %if.end69
  %56 = load i8*, i8** %sptr, align 4
  %incdec.ptr71 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr71, i8** %sptr, align 4
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %dptr, align 4
  %incdec.ptr72 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr72, i8** %dptr, align 4
  store i8 %57, i8* %58, align 1
  %tobool73 = icmp ne i8 %57, 0
  br i1 %tobool73, label %while.body74, label %while.end75

while.body74:                                     ; preds = %while.cond70
  br label %while.cond70

while.end75:                                      ; preds = %while.cond70
  %59 = load i8*, i8** %retptr, align 4
  store i8* %59, i8** %retval, align 4
  br label %return

return:                                           ; preds = %while.end75, %if.then26, %if.then
  %60 = load i8*, i8** %retval, align 4
  ret i8* %60
}

declare void @freearray(i8**) #1

; Function Attrs: noinline nounwind
define internal void @arrhashsetfn(%struct.param* %pm, i8** %val, i32 %flags) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %val.addr = alloca i8**, align 4
  %flags.addr = alloca i32, align 4
  %alen = alloca i32, align 4
  %opmtab = alloca %struct.hashtable*, align 4
  %ht = alloca %struct.hashtable*, align 4
  %aptr = alloca i8**, align 4
  %v = alloca %struct.value*, align 4
  %eltflags = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8** %val, i8*** %val.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %alen, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  store %struct.hashtable* %0, %struct.hashtable** %opmtab, align 4
  store %struct.hashtable* null, %struct.hashtable** %ht, align 4
  %call = call i8* @hcalloc(i32 24)
  %1 = bitcast i8* %call to %struct.value*
  store %struct.value* %1, %struct.value** %v, align 4
  %2 = load %struct.value*, %struct.value** %v, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %2, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %3 = load i8**, i8*** %val.addr, align 4
  store i8** %3, i8*** %aptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8**, i8*** %aptr, align 4
  %5 = load i8*, i8** %4, align 4
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8**, i8*** %aptr, align 4
  %7 = load i8*, i8** %6, align 4
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv, -94
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %alen, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %alen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8**, i8*** %aptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %aptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %alen, align 4
  %rem = srem i32 %11, 2
  %tobool2 = icmp ne i32 %rem, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  %12 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %12)
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.188, i32 0, i32 0))
  br label %return

if.end4:                                          ; preds = %for.end
  %13 = load i32, i32* %flags.addr, align 4
  %and = and i32 %13, 1
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %14 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %15 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %15, i32 0, i32 0
  %16 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn, align 4
  %17 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call7 = call %struct.hashtable* %16(%struct.param* %17)
  store %struct.hashtable* %call7, %struct.hashtable** @paramtab, align 4
  store %struct.hashtable* %call7, %struct.hashtable** %ht, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %18 = load i32, i32* %alen, align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %19 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %19, 1
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %tobool12 = icmp ne %struct.hashtable* %20, null
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %21 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %22 = load i8*, i8** %nam, align 4
  %call14 = call %struct.hashtable* @newparamtable(i32 17, i8* %22)
  store %struct.hashtable* %call14, %struct.hashtable** @paramtab, align 4
  store %struct.hashtable* %call14, %struct.hashtable** %ht, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lor.lhs.false, %if.end8
  %23 = load i8**, i8*** %val.addr, align 4
  store i8** %23, i8*** %aptr, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %if.end39, %if.end15
  %24 = load i8**, i8*** %aptr, align 4
  %25 = load i8*, i8** %24, align 4
  %tobool17 = icmp ne i8* %25, null
  br i1 %tobool17, label %for.body18, label %for.end42

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %eltflags, align 4
  %26 = load i8**, i8*** %aptr, align 4
  %27 = load i8*, i8** %26, align 4
  %28 = load i8, i8* %27, align 1
  %conv19 = sext i8 %28 to i32
  %cmp20 = icmp eq i32 %conv19, -94
  br i1 %cmp20, label %if.then22, label %if.end31

if.then22:                                        ; preds = %for.body18
  %29 = load i8**, i8*** %aptr, align 4
  %30 = load i8*, i8** %29, align 4
  %arrayidx = getelementptr inbounds i8, i8* %30, i32 1
  %31 = load i8, i8* %arrayidx, align 1
  %conv23 = sext i8 %31 to i32
  %cmp24 = icmp eq i32 %conv23, 43
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then22
  store i32 1, i32* %eltflags, align 4
  %32 = load %struct.value*, %struct.value** %v, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %32, i32 0, i32 3
  store i32 2147483647, i32* %start, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then22
  %33 = load %struct.value*, %struct.value** %v, align 4
  %start27 = getelementptr inbounds %struct.value, %struct.value* %33, i32 0, i32 3
  store i32 0, i32* %start27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  %34 = load %struct.value*, %struct.value** %v, align 4
  %end29 = getelementptr inbounds %struct.value, %struct.value* %34, i32 0, i32 4
  store i32 -1, i32* %end29, align 4
  %35 = load i8**, i8*** %aptr, align 4
  %incdec.ptr30 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr30, i8*** %aptr, align 4
  %36 = load i8*, i8** %35, align 4
  call void @zsfree(i8* %36)
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %for.body18
  %37 = load i8**, i8*** %aptr, align 4
  %38 = load i8*, i8** %37, align 4
  %call32 = call %struct.param* @createparam(i8* %38, i32 33554432)
  %39 = load %struct.value*, %struct.value** %v, align 4
  %pm33 = getelementptr inbounds %struct.value, %struct.value* %39, i32 0, i32 1
  store %struct.param* %call32, %struct.param** %pm33, align 4
  %40 = load %struct.value*, %struct.value** %v, align 4
  %pm34 = getelementptr inbounds %struct.value, %struct.value* %40, i32 0, i32 1
  %41 = load %struct.param*, %struct.param** %pm34, align 4
  %tobool35 = icmp ne %struct.param* %41, null
  br i1 %tobool35, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end31
  %42 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 9
  %43 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %44 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %45 = load i8**, i8*** %aptr, align 4
  %46 = load i8*, i8** %45, align 4
  %call37 = call %struct.hashnode* %43(%struct.hashtable* %44, i8* %46)
  %47 = bitcast %struct.hashnode* %call37 to %struct.param*
  %48 = load %struct.value*, %struct.value** %v, align 4
  %pm38 = getelementptr inbounds %struct.value, %struct.value* %48, i32 0, i32 1
  store %struct.param* %47, %struct.param** %pm38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end31
  %49 = load i8**, i8*** %aptr, align 4
  %incdec.ptr40 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %incdec.ptr40, i8*** %aptr, align 4
  %50 = load i8*, i8** %49, align 4
  call void @zsfree(i8* %50)
  %51 = load %struct.value*, %struct.value** %v, align 4
  %52 = load i8**, i8*** %aptr, align 4
  %incdec.ptr41 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %incdec.ptr41, i8*** %aptr, align 4
  %53 = load i8*, i8** %52, align 4
  %54 = load i32, i32* %eltflags, align 4
  call void @assignstrvalue(%struct.value* %51, i8* %53, i32 %54)
  br label %for.cond16

for.end42:                                        ; preds = %for.cond16
  %55 = load %struct.hashtable*, %struct.hashtable** %opmtab, align 4
  store %struct.hashtable* %55, %struct.hashtable** @paramtab, align 4
  %56 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu43 = getelementptr inbounds %struct.param, %struct.param* %56, i32 0, i32 2
  %h44 = bitcast %union.anon.0* %gsu43 to %struct.gsu_hash**
  %57 = load %struct.gsu_hash*, %struct.gsu_hash** %h44, align 8
  %setfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %57, i32 0, i32 1
  %58 = load void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, %struct.hashtable*)** %setfn, align 4
  %59 = load %struct.param*, %struct.param** %pm.addr, align 4
  %60 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  call void %58(%struct.param* %59, %struct.hashtable* %60)
  %61 = load i8**, i8*** %val.addr, align 4
  %62 = bitcast i8** %61 to i8*
  call void @free(i8* %62)
  br label %return

return:                                           ; preds = %for.end42, %if.then3
  ret void
}

declare i8* @zrealloc(i8*, i32) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind
define i32 @getiparam(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  store i8* %s, i8** %s.addr, align 4
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 1)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool = icmp ne %struct.value* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.value*, %struct.value** %v, align 4
  %call1 = call i32 @getintvalue(%struct.value* %0)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind
define void @getnparam(%struct.mnumber* noalias sret %agg.result, i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %mn = alloca %struct.mnumber, align 8
  store i8* %s, i8** %s.addr, align 4
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 1)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool = icmp ne %struct.value* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l = bitcast %union.anon.1* %u to i32*
  store i32 0, i32* %l, align 8
  %0 = bitcast %struct.mnumber* %agg.result to i8*
  %1 = bitcast %struct.mnumber* %mn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.value*, %struct.value** %v, align 4
  call void @getnumvalue(%struct.mnumber* sret %agg.result, %struct.value* %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i8* @getsparam_u(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i8* @getsparam(i8* %0)
  store i8* %call, i8** %s.addr, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %call1 = call i8* @unmetafy(i8* %1, i32* null)
  store i8* %call1, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  store i8* %2, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 4
  ret i8* %3
}

declare i8* @unmetafy(i8*, i32*) #1

; Function Attrs: noinline nounwind
define i8** @getaparam(i8* %s) #0 {
entry:
  %retval = alloca i8**, align 4
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 0)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool1 = icmp ne %struct.value* %call, null
  br i1 %tobool1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 1
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %5 = load i32, i32* %flags, align 8
  %and3 = and i32 %5, 31
  %cmp = icmp eq i32 %and3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %6 = load %struct.value*, %struct.value** %v, align 4
  %pm5 = getelementptr inbounds %struct.value, %struct.value* %6, i32 0, i32 1
  %7 = load %struct.param*, %struct.param** %pm5, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %8 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %getfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %8, i32 0, i32 0
  %9 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn, align 4
  %10 = load %struct.value*, %struct.value** %v, align 4
  %pm6 = getelementptr inbounds %struct.value, %struct.value* %10, i32 0, i32 1
  %11 = load %struct.param*, %struct.param** %pm6, align 4
  %call7 = call i8** %9(%struct.param* %11)
  store i8** %call7, i8*** %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i8** null, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8**, i8*** %retval, align 4
  ret i8** %12
}

; Function Attrs: noinline nounwind
define i8** @gethparam(i8* %s) #0 {
entry:
  %retval = alloca i8**, align 4
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 0)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool1 = icmp ne %struct.value* %call, null
  br i1 %tobool1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 1
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %5 = load i32, i32* %flags, align 8
  %and3 = and i32 %5, 31
  %cmp = icmp eq i32 %and3, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %6 = load %struct.value*, %struct.value** %v, align 4
  %pm5 = getelementptr inbounds %struct.value, %struct.value* %6, i32 0, i32 1
  %7 = load %struct.param*, %struct.param** %pm5, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %8 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %8, i32 0, i32 0
  %9 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn, align 4
  %10 = load %struct.value*, %struct.value** %v, align 4
  %pm6 = getelementptr inbounds %struct.value, %struct.value* %10, i32 0, i32 1
  %11 = load %struct.param*, %struct.param** %pm6, align 4
  %call7 = call %struct.hashtable* %9(%struct.param* %11)
  %call8 = call i8** @paramvalarr(%struct.hashtable* %call7, i32 1)
  store i8** %call8, i8*** %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i8** null, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8**, i8*** %retval, align 4
  ret i8** %12
}

; Function Attrs: noinline nounwind
define i8** @gethkparam(i8* %s) #0 {
entry:
  %retval = alloca i8**, align 4
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 0)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool1 = icmp ne %struct.value* %call, null
  br i1 %tobool1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %3, i32 0, i32 1
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %5 = load i32, i32* %flags, align 8
  %and3 = and i32 %5, 31
  %cmp = icmp eq i32 %and3, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %6 = load %struct.value*, %struct.value** %v, align 4
  %pm5 = getelementptr inbounds %struct.value, %struct.value* %6, i32 0, i32 1
  %7 = load %struct.param*, %struct.param** %pm5, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %8 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %8, i32 0, i32 0
  %9 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn, align 4
  %10 = load %struct.value*, %struct.value** %v, align 4
  %pm6 = getelementptr inbounds %struct.value, %struct.value* %10, i32 0, i32 1
  %11 = load %struct.param*, %struct.param** %pm6, align 4
  %call7 = call %struct.hashtable* %9(%struct.param* %11)
  %call8 = call i8** @paramvalarr(%struct.hashtable* %call7, i32 2)
  store i8** %call8, i8*** %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i8** null, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8**, i8*** %retval, align 4
  ret i8** %12
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define void @unsetparam(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp8 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %cmp = icmp eq %struct.hashtable* %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 10
  %4 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %6 = load i8*, i8** %s.addr, align 4
  %call = call %struct.hashnode* %4(%struct.hashtable* %5, i8* %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 9
  %8 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %10 = load i8*, i8** %s.addr, align 4
  %call1 = call %struct.hashnode* %8(%struct.hashtable* %9, i8* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hashnode* [ %call, %cond.true ], [ %call1, %cond.false ]
  %11 = bitcast %struct.hashnode* %cond to %struct.param*
  store %struct.param* %11, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %call2 = call i32 @unsetparam_pm(%struct.param* %12, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool3 = icmp ne i32 %dec, 0
  br i1 %tobool3, label %if.end9, label %if.then4

if.then4:                                         ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %if.then4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body5
  %14 = load i32, i32* @queue_front, align 4
  %15 = load i32, i32* @queue_rear, align 4
  %cmp6 = icmp ne i32 %14, %15
  br i1 %cmp6, label %while.body, label %while.end

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
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %20
  %21 = load i32, i32* %arrayidx7, align 4
  call void @zhandler(i32 %21)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp8, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  ret void
}

; Function Attrs: noinline nounwind
define internal void @check_warn_pm(%struct.param* %pm, i8* %pmtype, i32 %created, i32 %may_warn_about_nested_vars) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %pmtype.addr = alloca i8*, align 4
  %created.addr = alloca i32, align 4
  %may_warn_about_nested_vars.addr = alloca i32, align 4
  %i = alloca %struct.funcstack*, align 4
  %msg = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %pmtype, i8** %pmtype.addr, align 4
  store i32 %created, i32* %created.addr, align 4
  store i32 %may_warn_about_nested_vars, i32* %may_warn_about_nested_vars.addr, align 4
  %0 = load i32, i32* %may_warn_about_nested_vars.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %created.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %created.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 176), align 1
  %conv = sext i8 %3 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %4 = load i32, i32* @locallevel, align 4
  %5 = load i32, i32* @forklevel, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 8
  %7 = load i32, i32* %level, align 8
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.then5
  br label %for.end

if.end10:                                         ; preds = %lor.lhs.false
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true3, %if.end
  %8 = load i32, i32* %created.addr, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.else21, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.else
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 177), align 1
  %conv13 = sext i8 %9 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %if.then15, label %if.else21

if.then15:                                        ; preds = %land.lhs.true12
  %10 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level16 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 8
  %11 = load i32, i32* %level16, align 8
  %12 = load i32, i32* @locallevel, align 4
  %cmp17 = icmp sge i32 %11, %12
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then15
  br label %for.end

if.end20:                                         ; preds = %if.then15
  br label %if.end22

if.else21:                                        ; preds = %land.lhs.true12, %if.else
  br label %for.end

if.end22:                                         ; preds = %if.end20
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end10
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %14 = load i32, i32* %flags, align 8
  %and = and i32 %14, 4194304
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  br label %for.end

if.end26:                                         ; preds = %if.end23
  %15 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %15, %struct.funcstack** %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %16 = load %struct.funcstack*, %struct.funcstack** %i, align 4
  %tobool27 = icmp ne %struct.funcstack* %16, null
  br i1 %tobool27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.funcstack*, %struct.funcstack** %i, align 4
  %tp = getelementptr inbounds %struct.funcstack, %struct.funcstack* %17, i32 0, i32 6
  %18 = load i32, i32* %tp, align 4
  %cmp28 = icmp eq i32 %18, 1
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %for.body
  %19 = load i32, i32* %created.addr, align 4
  %tobool31 = icmp ne i32 %19, 0
  %cond = select i1 %tobool31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.187, i32 0, i32 0)
  store i8* %cond, i8** %msg, align 4
  %20 = load i8*, i8** %msg, align 4
  %21 = load i8*, i8** %pmtype.addr, align 4
  %22 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node32 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node32, i32 0, i32 1
  %23 = load i8*, i8** %nam, align 4
  %24 = load %struct.funcstack*, %struct.funcstack** %i, align 4
  %name = getelementptr inbounds %struct.funcstack, %struct.funcstack* %24, i32 0, i32 1
  %25 = load i8*, i8** %name, align 4
  call void (i8*, ...) @zwarn(i8* %20, i8* %21, i8* %23, i8* %25)
  br label %for.end

if.end33:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %26 = load %struct.funcstack*, %struct.funcstack** %i, align 4
  %prev = getelementptr inbounds %struct.funcstack, %struct.funcstack* %26, i32 0, i32 0
  %27 = load %struct.funcstack*, %struct.funcstack** %prev, align 4
  store %struct.funcstack* %27, %struct.funcstack** %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then9, %if.then19, %if.else21, %if.then25, %if.then30, %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define %struct.param* @assignaparam(i8* %s, i8** %val, i32 %flags) #0 {
entry:
  %retval = alloca %struct.param*, align 4
  %s.addr = alloca i8*, align 4
  %val.addr = alloca i8**, align 4
  %flags.addr = alloca i32, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %t = alloca i8*, align 4
  %ss = alloca i8*, align 4
  %created = alloca i32, align 4
  %may_warn_about_nested_vars = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp17 = alloca %struct.__sigset_t, align 4
  %uniq = alloca i32, align 4
  %new = alloca i8**, align 4
  %lv = alloca i32, align 4
  %oset80 = alloca %struct.__sigset_t, align 4
  %tmp84 = alloca %struct.__sigset_t, align 4
  %tmp86 = alloca %struct.__sigset_t, align 4
  %aptr = alloca i8**, align 4
  %maxlen = alloca i32, align 4
  %origlen = alloca i32, align 4
  %nextind = alloca i32, align 4
  %fullval = alloca i8**, align 4
  %origptr = alloca i8**, align 4
  %subscripts = alloca i32*, align 4
  %iptr = alloca i32*, align 4
  %oset150 = alloca %struct.__sigset_t, align 4
  %tmp154 = alloca %struct.__sigset_t, align 4
  %tmp156 = alloca %struct.__sigset_t, align 4
  %srcptr = alloca i8**, align 4
  %old = alloca i8*, align 4
  %augment = alloca i32, align 4
  %oset262 = alloca %struct.__sigset_t, align 4
  %tmp266 = alloca %struct.__sigset_t, align 4
  %tmp268 = alloca %struct.__sigset_t, align 4
  %oset299 = alloca %struct.__sigset_t, align 4
  %tmp303 = alloca %struct.__sigset_t, align 4
  %tmp305 = alloca %struct.__sigset_t, align 4
  %oset325 = alloca %struct.__sigset_t, align 4
  %tmp329 = alloca %struct.__sigset_t, align 4
  %tmp331 = alloca %struct.__sigset_t, align 4
  %oset421 = alloca %struct.__sigset_t, align 4
  %tmp425 = alloca %struct.__sigset_t, align 4
  %tmp427 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8** %val, i8*** %val.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %t, align 4
  store i32 0, i32* %created, align 4
  store i32 1, i32* %may_warn_about_nested_vars, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @isident(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* %2)
  %3 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %3)
  %4 = load i32, i32* @errflag, align 4
  %or = or i32 %4, 1
  store i32 %or, i32* @errflag, align 4
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %6 = load i8*, i8** %s.addr, align 4
  %call1 = call i8* @strchr(i8* %6, i32 91)
  store i8* %call1, i8** %ss, align 4
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then3, label %if.else24

if.then3:                                         ; preds = %if.end
  %7 = load i8*, i8** %ss, align 4
  store i8 0, i8* %7, align 1
  %call4 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 1)
  store %struct.value* %call4, %struct.value** %v, align 4
  %tobool5 = icmp ne %struct.value* %call4, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  %8 = load i8*, i8** %t, align 4
  %call7 = call %struct.param* @createparam(i8* %8, i32 1)
  store i32 1, i32* %created, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then3
  store i32 0, i32* %may_warn_about_nested_vars, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %9 = load i8*, i8** %ss, align 4
  store i8 91, i8* %9, align 1
  %10 = load %struct.value*, %struct.value** %v, align 4
  %tobool9 = icmp ne %struct.value* %10, null
  br i1 %tobool9, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end8
  %11 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags10, align 8
  %and = and i32 %13, 31
  %cmp = icmp eq i32 %and, 16
  br i1 %cmp, label %if.then11, label %if.end23

if.then11:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then11
  %14 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool12 = icmp ne i32 %dec, 0
  br i1 %tobool12, label %if.end18, label %if.then13

if.then13:                                        ; preds = %do.body
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body14
  %15 = load i32, i32* @queue_front, align 4
  %16 = load i32, i32* @queue_rear, align 4
  %cmp15 = icmp ne i32 %15, %16
  br i1 %cmp15, label %while.body, label %while.end

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
  %arrayidx16 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %21
  %22 = load i32, i32* %arrayidx16, align 4
  call void @zhandler(i32 %22)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp17, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  %23 = load %struct.value*, %struct.value** %v, align 4
  %pm20 = getelementptr inbounds %struct.value, %struct.value* %23, i32 0, i32 1
  %24 = load %struct.param*, %struct.param** %pm20, align 4
  %node21 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node21, i32 0, i32 1
  %25 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i32 0, i32 0), i8* %25)
  %26 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %26)
  %27 = load i32, i32* @errflag, align 4
  %or22 = or i32 %27, 1
  store i32 %or22, i32* @errflag, align 4
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end23:                                         ; preds = %land.lhs.true, %if.end8
  store %struct.value* null, %struct.value** %v, align 4
  br label %if.end65

if.else24:                                        ; preds = %if.end
  %call25 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 64)
  store %struct.value* %call25, %struct.value** %v, align 4
  %tobool26 = icmp ne %struct.value* %call25, null
  br i1 %tobool26, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.else24
  %28 = load i8*, i8** %t, align 4
  %call28 = call %struct.param* @createparam(i8* %28, i32 1)
  store i32 1, i32* %created, align 4
  br label %if.end64

if.else29:                                        ; preds = %if.else24
  %29 = load %struct.value*, %struct.value** %v, align 4
  %pm30 = getelementptr inbounds %struct.value, %struct.value* %29, i32 0, i32 1
  %30 = load %struct.param*, %struct.param** %pm30, align 4
  %node31 = getelementptr inbounds %struct.param, %struct.param* %30, i32 0, i32 0
  %flags32 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node31, i32 0, i32 2
  %31 = load i32, i32* %flags32, align 8
  %and33 = and i32 %31, 31
  %and34 = and i32 %and33, 17
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end63, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.else29
  %32 = load %struct.value*, %struct.value** %v, align 4
  %pm37 = getelementptr inbounds %struct.value, %struct.value* %32, i32 0, i32 1
  %33 = load %struct.param*, %struct.param** %pm37, align 4
  %node38 = getelementptr inbounds %struct.param, %struct.param* %33, i32 0, i32 0
  %flags39 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node38, i32 0, i32 2
  %34 = load i32, i32* %flags39, align 8
  %and40 = and i32 %34, 4259840
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end63, label %if.then42

if.then42:                                        ; preds = %land.lhs.true36
  %35 = load %struct.value*, %struct.value** %v, align 4
  %pm44 = getelementptr inbounds %struct.value, %struct.value* %35, i32 0, i32 1
  %36 = load %struct.param*, %struct.param** %pm44, align 4
  %node45 = getelementptr inbounds %struct.param, %struct.param* %36, i32 0, i32 0
  %flags46 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node45, i32 0, i32 2
  %37 = load i32, i32* %flags46, align 8
  %and47 = and i32 %37, 8192
  store i32 %and47, i32* %uniq, align 4
  %38 = load i32, i32* %flags.addr, align 4
  %and48 = and i32 %38, 1
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end60

if.then50:                                        ; preds = %if.then42
  %39 = load i8**, i8*** %val.addr, align 4
  %call53 = call i32 @arrlen(i8** %39)
  store i32 %call53, i32* %lv, align 4
  %40 = load i32, i32* %lv, align 4
  %add54 = add nsw i32 %40, 2
  %mul = mul i32 4, %add54
  %call55 = call i8* @zalloc(i32 %mul)
  %41 = bitcast i8* %call55 to i8**
  store i8** %41, i8*** %new, align 4
  %42 = load %struct.value*, %struct.value** %v, align 4
  %call56 = call i8* @getstrvalue(%struct.value* %42)
  %call57 = call i8* @ztrdup(i8* %call56)
  %43 = load i8**, i8*** %new, align 4
  store i8* %call57, i8** %43, align 4
  %44 = load i8**, i8*** %new, align 4
  %add.ptr = getelementptr inbounds i8*, i8** %44, i32 1
  %45 = bitcast i8** %add.ptr to i8*
  %46 = load i8**, i8*** %val.addr, align 4
  %47 = bitcast i8** %46 to i8*
  %48 = load i32, i32* %lv, align 4
  %add58 = add nsw i32 %48, 1
  %mul59 = mul i32 4, %add58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %47, i32 %mul59, i32 4, i1 false)
  %49 = load i8**, i8*** %val.addr, align 4
  %50 = bitcast i8** %49 to i8*
  call void @free(i8* %50)
  %51 = load i8**, i8*** %new, align 4
  store i8** %51, i8*** %val.addr, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then50, %if.then42
  %52 = load i8*, i8** %t, align 4
  call void @unsetparam(i8* %52)
  %53 = load i8*, i8** %t, align 4
  %54 = load i32, i32* %uniq, align 4
  %or61 = or i32 1, %54
  %call62 = call %struct.param* @createparam(i8* %53, i32 %or61)
  store %struct.value* null, %struct.value** %v, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end60, %land.lhs.true36, %if.else29
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then27
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end23
  %55 = load %struct.value*, %struct.value** %v, align 4
  %tobool66 = icmp ne %struct.value* %55, null
  br i1 %tobool66, label %if.end92, label %if.then67

if.then67:                                        ; preds = %if.end65
  %call68 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %t, i32 1, i32 64)
  store %struct.value* %call68, %struct.value** %v, align 4
  %tobool69 = icmp ne %struct.value* %call68, null
  br i1 %tobool69, label %if.end91, label %if.then70

if.then70:                                        ; preds = %if.then67
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  %56 = load i32, i32* @queueing_enabled, align 4
  %dec72 = add nsw i32 %56, -1
  store i32 %dec72, i32* @queueing_enabled, align 4
  %tobool73 = icmp ne i32 %dec72, 0
  br i1 %tobool73, label %if.end89, label %if.then74

if.then74:                                        ; preds = %do.body71
  br label %do.body75

do.body75:                                        ; preds = %if.then74
  br label %while.cond76

while.cond76:                                     ; preds = %while.body78, %do.body75
  %57 = load i32, i32* @queue_front, align 4
  %58 = load i32, i32* @queue_rear, align 4
  %cmp77 = icmp ne i32 %57, %58
  br i1 %cmp77, label %while.body78, label %while.end87

while.body78:                                     ; preds = %while.cond76
  %59 = load i32, i32* @queue_front, align 4
  %add81 = add nsw i32 %59, 1
  %rem82 = srem i32 %add81, 128
  store i32 %rem82, i32* @queue_front, align 4
  %60 = load i32, i32* @queue_front, align 4
  %arrayidx83 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %60
  call void @signal_setmask(%struct.__sigset_t* sret %tmp84, %struct.__sigset_t* byval align 4 %arrayidx83)
  %61 = bitcast %struct.__sigset_t* %oset80 to i8*
  %62 = bitcast %struct.__sigset_t* %tmp84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %61, i8* %62, i32 128, i32 4, i1 false)
  %63 = load i32, i32* @queue_front, align 4
  %arrayidx85 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %63
  %64 = load i32, i32* %arrayidx85, align 4
  call void @zhandler(i32 %64)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp86, %struct.__sigset_t* byval align 4 %oset80)
  br label %while.cond76

while.end87:                                      ; preds = %while.cond76
  br label %do.end88

do.end88:                                         ; preds = %while.end87
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %do.body71
  br label %do.end90

do.end90:                                         ; preds = %if.end89
  %65 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %65)
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.then67
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end65
  %66 = load i32, i32* %flags.addr, align 4
  %and93 = and i32 %66, 6
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end92
  %67 = load %struct.value*, %struct.value** %v, align 4
  %pm96 = getelementptr inbounds %struct.value, %struct.value* %67, i32 0, i32 1
  %68 = load %struct.param*, %struct.param** %pm96, align 4
  %69 = load i32, i32* %created, align 4
  %70 = load i32, i32* %may_warn_about_nested_vars, align 4
  call void @check_warn_pm(%struct.param* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %69, i32 %70)
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end92
  %71 = load i32, i32* %flags.addr, align 4
  %and98 = and i32 %71, 16
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then100, label %if.end338

if.then100:                                       ; preds = %if.end97
  %72 = load %struct.value*, %struct.value** %v, align 4
  %pm102 = getelementptr inbounds %struct.value, %struct.value* %72, i32 0, i32 1
  %73 = load %struct.param*, %struct.param** %pm102, align 4
  %node103 = getelementptr inbounds %struct.param, %struct.param* %73, i32 0, i32 0
  %flags104 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node103, i32 0, i32 2
  %74 = load i32, i32* %flags104, align 8
  %and105 = and i32 %74, 31
  %and106 = and i32 %and105, 1
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then108, label %if.else274

if.then108:                                       ; preds = %if.then100
  %75 = load i8**, i8*** %val.addr, align 4
  %call115 = call i32 @arrlen(i8** %75)
  %mul116 = mul i32 %call115, 4
  %call117 = call i8* @zhalloc(i32 %mul116)
  %76 = bitcast i8* %call117 to i32*
  store i32* %76, i32** %subscripts, align 4
  %77 = load i32*, i32** %subscripts, align 4
  store i32* %77, i32** %iptr, align 4
  %78 = load i32, i32* %flags.addr, align 4
  %and119 = and i32 %78, 1
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then121, label %if.else126

if.then121:                                       ; preds = %if.then108
  %79 = load %struct.value*, %struct.value** %v, align 4
  %pm122 = getelementptr inbounds %struct.value, %struct.value* %79, i32 0, i32 1
  %80 = load %struct.param*, %struct.param** %pm122, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %80, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %81 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %getfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %81, i32 0, i32 0
  %82 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn, align 4
  %83 = load %struct.value*, %struct.value** %v, align 4
  %pm123 = getelementptr inbounds %struct.value, %struct.value* %83, i32 0, i32 1
  %84 = load %struct.param*, %struct.param** %pm123, align 4
  %call124 = call i8** %82(%struct.param* %84)
  store i8** %call124, i8*** %origptr, align 4
  %85 = load i8**, i8*** %origptr, align 4
  %call125 = call i32 @arrlen(i8** %85)
  store i32 %call125, i32* %origlen, align 4
  store i32 %call125, i32* %maxlen, align 4
  br label %if.end127

if.else126:                                       ; preds = %if.then108
  store i32 0, i32* %origlen, align 4
  store i32 0, i32* %maxlen, align 4
  store i8** null, i8*** %origptr, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.then121
  store i32 0, i32* %nextind, align 4
  %86 = load i8**, i8*** %val.addr, align 4
  store i8** %86, i8*** %aptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end176, %if.end127
  %87 = load i8**, i8*** %aptr, align 4
  %88 = load i8*, i8** %87, align 4
  %tobool128 = icmp ne i8* %88, null
  br i1 %tobool128, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i8**, i8*** %aptr, align 4
  %90 = load i8*, i8** %89, align 4
  %91 = load i8, i8* %90, align 1
  %conv = sext i8 %91 to i32
  %cmp129 = icmp eq i32 %conv, -94
  br i1 %cmp129, label %if.then131, label %if.else169

if.then131:                                       ; preds = %for.body
  %92 = load i8**, i8*** %aptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %incdec.ptr, i8*** %aptr, align 4
  %93 = load i8*, i8** %incdec.ptr, align 4
  %call132 = call i32 @mathevali(i8* %93)
  %94 = load i32*, i32** %iptr, align 4
  store i32 %call132, i32* %94, align 4
  %95 = load i32*, i32** %iptr, align 4
  %96 = load i32, i32* %95, align 4
  %cmp133 = icmp slt i32 %96, 0
  br i1 %cmp133, label %if.then139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then131
  %97 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool135 = icmp ne i8 %97, 0
  br i1 %tobool135, label %if.end161, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %lor.lhs.false
  %98 = load i32*, i32** %iptr, align 4
  %99 = load i32, i32* %98, align 4
  %cmp137 = icmp eq i32 %99, 0
  br i1 %cmp137, label %if.then139, label %if.end161

if.then139:                                       ; preds = %land.lhs.true136, %if.then131
  br label %do.body140

do.body140:                                       ; preds = %if.then139
  %100 = load i32, i32* @queueing_enabled, align 4
  %dec141 = add nsw i32 %100, -1
  store i32 %dec141, i32* @queueing_enabled, align 4
  %tobool142 = icmp ne i32 %dec141, 0
  br i1 %tobool142, label %if.end159, label %if.then143

if.then143:                                       ; preds = %do.body140
  br label %do.body144

do.body144:                                       ; preds = %if.then143
  br label %while.cond145

while.cond145:                                    ; preds = %while.body148, %do.body144
  %101 = load i32, i32* @queue_front, align 4
  %102 = load i32, i32* @queue_rear, align 4
  %cmp146 = icmp ne i32 %101, %102
  br i1 %cmp146, label %while.body148, label %while.end157

while.body148:                                    ; preds = %while.cond145
  %103 = load i32, i32* @queue_front, align 4
  %add151 = add nsw i32 %103, 1
  %rem152 = srem i32 %add151, 128
  store i32 %rem152, i32* @queue_front, align 4
  %104 = load i32, i32* @queue_front, align 4
  %arrayidx153 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %104
  call void @signal_setmask(%struct.__sigset_t* sret %tmp154, %struct.__sigset_t* byval align 4 %arrayidx153)
  %105 = bitcast %struct.__sigset_t* %oset150 to i8*
  %106 = bitcast %struct.__sigset_t* %tmp154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %105, i8* %106, i32 128, i32 4, i1 false)
  %107 = load i32, i32* @queue_front, align 4
  %arrayidx155 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %107
  %108 = load i32, i32* %arrayidx155, align 4
  call void @zhandler(i32 %108)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp156, %struct.__sigset_t* byval align 4 %oset150)
  br label %while.cond145

while.end157:                                     ; preds = %while.cond145
  br label %do.end158

do.end158:                                        ; preds = %while.end157
  br label %if.end159

if.end159:                                        ; preds = %do.end158, %do.body140
  br label %do.end160

do.end160:                                        ; preds = %if.end159
  %109 = load i8**, i8*** %aptr, align 4
  %110 = load i8*, i8** %109, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0), i8* %110)
  %111 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %111)
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end161:                                        ; preds = %land.lhs.true136, %lor.lhs.false
  %112 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool162 = icmp ne i8 %112, 0
  br i1 %tobool162, label %if.end165, label %if.then163

if.then163:                                       ; preds = %if.end161
  %113 = load i32*, i32** %iptr, align 4
  %114 = load i32, i32* %113, align 4
  %dec164 = add nsw i32 %114, -1
  store i32 %dec164, i32* %113, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end161
  %115 = load i32*, i32** %iptr, align 4
  %116 = load i32, i32* %115, align 4
  %add166 = add nsw i32 %116, 1
  store i32 %add166, i32* %nextind, align 4
  %117 = load i32*, i32** %iptr, align 4
  %incdec.ptr167 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %incdec.ptr167, i32** %iptr, align 4
  %118 = load i8**, i8*** %aptr, align 4
  %add.ptr168 = getelementptr inbounds i8*, i8** %118, i32 2
  store i8** %add.ptr168, i8*** %aptr, align 4
  br label %if.end172

if.else169:                                       ; preds = %for.body
  %119 = load i32, i32* %nextind, align 4
  %inc170 = add nsw i32 %119, 1
  store i32 %inc170, i32* %nextind, align 4
  %120 = load i8**, i8*** %aptr, align 4
  %incdec.ptr171 = getelementptr inbounds i8*, i8** %120, i32 1
  store i8** %incdec.ptr171, i8*** %aptr, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.else169, %if.end165
  %121 = load i32, i32* %nextind, align 4
  %122 = load i32, i32* %maxlen, align 4
  %cmp173 = icmp sgt i32 %121, %122
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end172
  %123 = load i32, i32* %nextind, align 4
  store i32 %123, i32* %maxlen, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %if.end172
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %124 = load i32, i32* %maxlen, align 4
  %add177 = add nsw i32 %124, 1
  %mul178 = mul i32 %add177, 4
  %call179 = call i8* @zshcalloc(i32 %mul178)
  %125 = bitcast i8* %call179 to i8**
  store i8** %125, i8*** %fullval, align 4
  %126 = load i8**, i8*** %fullval, align 4
  %tobool180 = icmp ne i8** %126, null
  br i1 %tobool180, label %if.end182, label %if.then181

if.then181:                                       ; preds = %for.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0))
  %127 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %127)
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end182:                                        ; preds = %for.end
  %128 = load i8**, i8*** %fullval, align 4
  %129 = load i32, i32* %maxlen, align 4
  %arrayidx183 = getelementptr inbounds i8*, i8** %128, i32 %129
  store i8* null, i8** %arrayidx183, align 4
  %130 = load i32, i32* %flags.addr, align 4
  %and184 = and i32 %130, 1
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then186, label %if.end197

if.then186:                                       ; preds = %if.end182
  %131 = load i8**, i8*** %origptr, align 4
  store i8** %131, i8*** %srcptr, align 4
  %132 = load i8**, i8*** %fullval, align 4
  store i8** %132, i8*** %aptr, align 4
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc, %if.then186
  %133 = load i8**, i8*** %aptr, align 4
  %134 = load i8**, i8*** %fullval, align 4
  %135 = load i32, i32* %origlen, align 4
  %add.ptr189 = getelementptr inbounds i8*, i8** %134, i32 %135
  %cmp190 = icmp ule i8** %133, %add.ptr189
  br i1 %cmp190, label %for.body192, label %for.end196

for.body192:                                      ; preds = %for.cond188
  %136 = load i8**, i8*** %srcptr, align 4
  %137 = load i8*, i8** %136, align 4
  %call193 = call i8* @ztrdup(i8* %137)
  %138 = load i8**, i8*** %aptr, align 4
  store i8* %call193, i8** %138, align 4
  %139 = load i8**, i8*** %srcptr, align 4
  %incdec.ptr194 = getelementptr inbounds i8*, i8** %139, i32 1
  store i8** %incdec.ptr194, i8*** %srcptr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body192
  %140 = load i8**, i8*** %aptr, align 4
  %incdec.ptr195 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %incdec.ptr195, i8*** %aptr, align 4
  br label %for.cond188

for.end196:                                       ; preds = %for.cond188
  br label %if.end197

if.end197:                                        ; preds = %for.end196, %if.end182
  %141 = load i32*, i32** %subscripts, align 4
  store i32* %141, i32** %iptr, align 4
  store i32 0, i32* %nextind, align 4
  %142 = load i8**, i8*** %val.addr, align 4
  store i8** %142, i8*** %aptr, align 4
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc234, %if.end197
  %143 = load i8**, i8*** %aptr, align 4
  %144 = load i8*, i8** %143, align 4
  %tobool199 = icmp ne i8* %144, null
  br i1 %tobool199, label %for.body200, label %for.end236

for.body200:                                      ; preds = %for.cond198
  %145 = load i8**, i8*** %aptr, align 4
  %146 = load i8*, i8** %145, align 4
  %147 = load i8, i8* %146, align 1
  %conv202 = sext i8 %147 to i32
  %cmp203 = icmp eq i32 %conv202, -94
  br i1 %cmp203, label %if.then205, label %if.else226

if.then205:                                       ; preds = %for.body200
  %148 = load i8**, i8*** %aptr, align 4
  %149 = load i8*, i8** %148, align 4
  %arrayidx207 = getelementptr inbounds i8, i8* %149, i32 1
  %150 = load i8, i8* %arrayidx207, align 1
  %conv208 = sext i8 %150 to i32
  %cmp209 = icmp eq i32 %conv208, 43
  %conv210 = zext i1 %cmp209 to i32
  store i32 %conv210, i32* %augment, align 4
  %151 = load i8**, i8*** %aptr, align 4
  %152 = load i8*, i8** %151, align 4
  call void @zsfree(i8* %152)
  %153 = load i8**, i8*** %aptr, align 4
  %incdec.ptr211 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %incdec.ptr211, i8*** %aptr, align 4
  %154 = load i8*, i8** %incdec.ptr211, align 4
  call void @zsfree(i8* %154)
  %155 = load i8**, i8*** %fullval, align 4
  %156 = load i32*, i32** %iptr, align 4
  %157 = load i32, i32* %156, align 4
  %arrayidx212 = getelementptr inbounds i8*, i8** %155, i32 %157
  %158 = load i8*, i8** %arrayidx212, align 4
  store i8* %158, i8** %old, align 4
  %159 = load i32, i32* %augment, align 4
  %tobool213 = icmp ne i32 %159, 0
  br i1 %tobool213, label %land.lhs.true214, label %if.else220

land.lhs.true214:                                 ; preds = %if.then205
  %160 = load i8*, i8** %old, align 4
  %tobool215 = icmp ne i8* %160, null
  br i1 %tobool215, label %if.then216, label %if.else220

if.then216:                                       ; preds = %land.lhs.true214
  %161 = load i8*, i8** %old, align 4
  %162 = load i8**, i8*** %aptr, align 4
  %incdec.ptr217 = getelementptr inbounds i8*, i8** %162, i32 1
  store i8** %incdec.ptr217, i8*** %aptr, align 4
  %163 = load i8*, i8** %incdec.ptr217, align 4
  %call218 = call i8* @bicat(i8* %161, i8* %163)
  %164 = load i8**, i8*** %fullval, align 4
  %165 = load i32*, i32** %iptr, align 4
  %166 = load i32, i32* %165, align 4
  %arrayidx219 = getelementptr inbounds i8*, i8** %164, i32 %166
  store i8* %call218, i8** %arrayidx219, align 4
  %167 = load i8**, i8*** %aptr, align 4
  %168 = load i8*, i8** %167, align 4
  call void @zsfree(i8* %168)
  br label %if.end223

if.else220:                                       ; preds = %land.lhs.true214, %if.then205
  %169 = load i8**, i8*** %aptr, align 4
  %incdec.ptr221 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %incdec.ptr221, i8*** %aptr, align 4
  %170 = load i8*, i8** %incdec.ptr221, align 4
  %171 = load i8**, i8*** %fullval, align 4
  %172 = load i32*, i32** %iptr, align 4
  %173 = load i32, i32* %172, align 4
  %arrayidx222 = getelementptr inbounds i8*, i8** %171, i32 %173
  store i8* %170, i8** %arrayidx222, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.else220, %if.then216
  %174 = load i32*, i32** %iptr, align 4
  %175 = load i32, i32* %174, align 4
  %add224 = add nsw i32 %175, 1
  store i32 %add224, i32* %nextind, align 4
  %176 = load i32*, i32** %iptr, align 4
  %incdec.ptr225 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %incdec.ptr225, i32** %iptr, align 4
  br label %if.end230

if.else226:                                       ; preds = %for.body200
  %177 = load i8**, i8*** %fullval, align 4
  %178 = load i32, i32* %nextind, align 4
  %arrayidx227 = getelementptr inbounds i8*, i8** %177, i32 %178
  %179 = load i8*, i8** %arrayidx227, align 4
  store i8* %179, i8** %old, align 4
  %180 = load i8**, i8*** %aptr, align 4
  %181 = load i8*, i8** %180, align 4
  %182 = load i8**, i8*** %fullval, align 4
  %183 = load i32, i32* %nextind, align 4
  %arrayidx228 = getelementptr inbounds i8*, i8** %182, i32 %183
  store i8* %181, i8** %arrayidx228, align 4
  %184 = load i32, i32* %nextind, align 4
  %inc229 = add nsw i32 %184, 1
  store i32 %inc229, i32* %nextind, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.else226, %if.end223
  %185 = load i8*, i8** %old, align 4
  %tobool231 = icmp ne i8* %185, null
  br i1 %tobool231, label %if.then232, label %if.end233

if.then232:                                       ; preds = %if.end230
  %186 = load i8*, i8** %old, align 4
  call void @zsfree(i8* %186)
  br label %if.end233

if.end233:                                        ; preds = %if.then232, %if.end230
  br label %for.inc234

for.inc234:                                       ; preds = %if.end233
  %187 = load i8**, i8*** %aptr, align 4
  %incdec.ptr235 = getelementptr inbounds i8*, i8** %187, i32 1
  store i8** %incdec.ptr235, i8*** %aptr, align 4
  br label %for.cond198

for.end236:                                       ; preds = %for.cond198
  %188 = load i8**, i8*** %aptr, align 4
  %189 = load i8*, i8** %188, align 4
  %tobool237 = icmp ne i8* %189, null
  br i1 %tobool237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %for.end236
  %190 = load i8**, i8*** %aptr, align 4
  %191 = load i8*, i8** %190, align 4
  call void @zsfree(i8* %191)
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %for.end236
  %192 = load i8**, i8*** %val.addr, align 4
  %193 = bitcast i8** %192 to i8*
  call void @free(i8* %193)
  %194 = load i8**, i8*** %fullval, align 4
  store i8** %194, i8*** %aptr, align 4
  br label %for.cond240

for.cond240:                                      ; preds = %for.inc249, %if.end239
  %195 = load i8**, i8*** %aptr, align 4
  %196 = load i8**, i8*** %fullval, align 4
  %197 = load i32, i32* %maxlen, align 4
  %add.ptr241 = getelementptr inbounds i8*, i8** %196, i32 %197
  %cmp242 = icmp ult i8** %195, %add.ptr241
  br i1 %cmp242, label %for.body244, label %for.end251

for.body244:                                      ; preds = %for.cond240
  %198 = load i8**, i8*** %aptr, align 4
  %199 = load i8*, i8** %198, align 4
  %tobool245 = icmp ne i8* %199, null
  br i1 %tobool245, label %if.end248, label %if.then246

if.then246:                                       ; preds = %for.body244
  %call247 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  %200 = load i8**, i8*** %aptr, align 4
  store i8* %call247, i8** %200, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %for.body244
  br label %for.inc249

for.inc249:                                       ; preds = %if.end248
  %201 = load i8**, i8*** %aptr, align 4
  %incdec.ptr250 = getelementptr inbounds i8*, i8** %201, i32 1
  store i8** %incdec.ptr250, i8*** %aptr, align 4
  br label %for.cond240

for.end251:                                       ; preds = %for.cond240
  %202 = load %struct.value*, %struct.value** %v, align 4
  %203 = load i8**, i8*** %fullval, align 4
  call void @setarrvalue(%struct.value* %202, i8** %203)
  br label %do.body252

do.body252:                                       ; preds = %for.end251
  %204 = load i32, i32* @queueing_enabled, align 4
  %dec253 = add nsw i32 %204, -1
  store i32 %dec253, i32* @queueing_enabled, align 4
  %tobool254 = icmp ne i32 %dec253, 0
  br i1 %tobool254, label %if.end271, label %if.then255

if.then255:                                       ; preds = %do.body252
  br label %do.body256

do.body256:                                       ; preds = %if.then255
  br label %while.cond257

while.cond257:                                    ; preds = %while.body260, %do.body256
  %205 = load i32, i32* @queue_front, align 4
  %206 = load i32, i32* @queue_rear, align 4
  %cmp258 = icmp ne i32 %205, %206
  br i1 %cmp258, label %while.body260, label %while.end269

while.body260:                                    ; preds = %while.cond257
  %207 = load i32, i32* @queue_front, align 4
  %add263 = add nsw i32 %207, 1
  %rem264 = srem i32 %add263, 128
  store i32 %rem264, i32* @queue_front, align 4
  %208 = load i32, i32* @queue_front, align 4
  %arrayidx265 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %208
  call void @signal_setmask(%struct.__sigset_t* sret %tmp266, %struct.__sigset_t* byval align 4 %arrayidx265)
  %209 = bitcast %struct.__sigset_t* %oset262 to i8*
  %210 = bitcast %struct.__sigset_t* %tmp266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %209, i8* %210, i32 128, i32 4, i1 false)
  %211 = load i32, i32* @queue_front, align 4
  %arrayidx267 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %211
  %212 = load i32, i32* %arrayidx267, align 4
  call void @zhandler(i32 %212)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp268, %struct.__sigset_t* byval align 4 %oset262)
  br label %while.cond257

while.end269:                                     ; preds = %while.cond257
  br label %do.end270

do.end270:                                        ; preds = %while.end269
  br label %if.end271

if.end271:                                        ; preds = %do.end270, %do.body252
  br label %do.end272

do.end272:                                        ; preds = %if.end271
  %213 = load %struct.value*, %struct.value** %v, align 4
  %pm273 = getelementptr inbounds %struct.value, %struct.value* %213, i32 0, i32 1
  %214 = load %struct.param*, %struct.param** %pm273, align 4
  store %struct.param* %214, %struct.param** %retval, align 4
  br label %return

if.else274:                                       ; preds = %if.then100
  %215 = load %struct.value*, %struct.value** %v, align 4
  %pm275 = getelementptr inbounds %struct.value, %struct.value* %215, i32 0, i32 1
  %216 = load %struct.param*, %struct.param** %pm275, align 4
  %node276 = getelementptr inbounds %struct.param, %struct.param* %216, i32 0, i32 0
  %flags277 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node276, i32 0, i32 2
  %217 = load i32, i32* %flags277, align 8
  %and278 = and i32 %217, 16
  %and279 = and i32 %and278, 31
  %tobool280 = icmp ne i32 %and279, 0
  br i1 %tobool280, label %if.then281, label %if.else314

if.then281:                                       ; preds = %if.else274
  %218 = load i8**, i8*** %val.addr, align 4
  store i8** %218, i8*** %aptr, align 4
  br label %for.cond282

for.cond282:                                      ; preds = %for.inc311, %if.then281
  %219 = load i8**, i8*** %aptr, align 4
  %220 = load i8*, i8** %219, align 4
  %tobool283 = icmp ne i8* %220, null
  br i1 %tobool283, label %for.body284, label %for.end313

for.body284:                                      ; preds = %for.cond282
  %221 = load i8**, i8*** %aptr, align 4
  %222 = load i8*, i8** %221, align 4
  %223 = load i8, i8* %222, align 1
  %conv285 = sext i8 %223 to i32
  %cmp286 = icmp ne i32 %conv285, -94
  br i1 %cmp286, label %if.then288, label %if.end310

if.then288:                                       ; preds = %for.body284
  br label %do.body289

do.body289:                                       ; preds = %if.then288
  %224 = load i32, i32* @queueing_enabled, align 4
  %dec290 = add nsw i32 %224, -1
  store i32 %dec290, i32* @queueing_enabled, align 4
  %tobool291 = icmp ne i32 %dec290, 0
  br i1 %tobool291, label %if.end308, label %if.then292

if.then292:                                       ; preds = %do.body289
  br label %do.body293

do.body293:                                       ; preds = %if.then292
  br label %while.cond294

while.cond294:                                    ; preds = %while.body297, %do.body293
  %225 = load i32, i32* @queue_front, align 4
  %226 = load i32, i32* @queue_rear, align 4
  %cmp295 = icmp ne i32 %225, %226
  br i1 %cmp295, label %while.body297, label %while.end306

while.body297:                                    ; preds = %while.cond294
  %227 = load i32, i32* @queue_front, align 4
  %add300 = add nsw i32 %227, 1
  %rem301 = srem i32 %add300, 128
  store i32 %rem301, i32* @queue_front, align 4
  %228 = load i32, i32* @queue_front, align 4
  %arrayidx302 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %228
  call void @signal_setmask(%struct.__sigset_t* sret %tmp303, %struct.__sigset_t* byval align 4 %arrayidx302)
  %229 = bitcast %struct.__sigset_t* %oset299 to i8*
  %230 = bitcast %struct.__sigset_t* %tmp303 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %229, i8* %230, i32 128, i32 4, i1 false)
  %231 = load i32, i32* @queue_front, align 4
  %arrayidx304 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %231
  %232 = load i32, i32* %arrayidx304, align 4
  call void @zhandler(i32 %232)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp305, %struct.__sigset_t* byval align 4 %oset299)
  br label %while.cond294

while.end306:                                     ; preds = %while.cond294
  br label %do.end307

do.end307:                                        ; preds = %while.end306
  br label %if.end308

if.end308:                                        ; preds = %do.end307, %do.body289
  br label %do.end309

do.end309:                                        ; preds = %if.end308
  %233 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %233)
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0))
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end310:                                        ; preds = %for.body284
  br label %for.inc311

for.inc311:                                       ; preds = %if.end310
  %234 = load i8**, i8*** %aptr, align 4
  %add.ptr312 = getelementptr inbounds i8*, i8** %234, i32 3
  store i8** %add.ptr312, i8*** %aptr, align 4
  br label %for.cond282

for.end313:                                       ; preds = %for.cond282
  br label %if.end336

if.else314:                                       ; preds = %if.else274
  br label %do.body315

do.body315:                                       ; preds = %if.else314
  %235 = load i32, i32* @queueing_enabled, align 4
  %dec316 = add nsw i32 %235, -1
  store i32 %dec316, i32* @queueing_enabled, align 4
  %tobool317 = icmp ne i32 %dec316, 0
  br i1 %tobool317, label %if.end334, label %if.then318

if.then318:                                       ; preds = %do.body315
  br label %do.body319

do.body319:                                       ; preds = %if.then318
  br label %while.cond320

while.cond320:                                    ; preds = %while.body323, %do.body319
  %236 = load i32, i32* @queue_front, align 4
  %237 = load i32, i32* @queue_rear, align 4
  %cmp321 = icmp ne i32 %236, %237
  br i1 %cmp321, label %while.body323, label %while.end332

while.body323:                                    ; preds = %while.cond320
  %238 = load i32, i32* @queue_front, align 4
  %add326 = add nsw i32 %238, 1
  %rem327 = srem i32 %add326, 128
  store i32 %rem327, i32* @queue_front, align 4
  %239 = load i32, i32* @queue_front, align 4
  %arrayidx328 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %239
  call void @signal_setmask(%struct.__sigset_t* sret %tmp329, %struct.__sigset_t* byval align 4 %arrayidx328)
  %240 = bitcast %struct.__sigset_t* %oset325 to i8*
  %241 = bitcast %struct.__sigset_t* %tmp329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %240, i8* %241, i32 128, i32 4, i1 false)
  %242 = load i32, i32* @queue_front, align 4
  %arrayidx330 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %242
  %243 = load i32, i32* %arrayidx330, align 4
  call void @zhandler(i32 %243)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp331, %struct.__sigset_t* byval align 4 %oset325)
  br label %while.cond320

while.end332:                                     ; preds = %while.cond320
  br label %do.end333

do.end333:                                        ; preds = %while.end332
  br label %if.end334

if.end334:                                        ; preds = %do.end333, %do.body315
  br label %do.end335

do.end335:                                        ; preds = %if.end334
  %244 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %244)
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.47, i32 0, i32 0))
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end336:                                        ; preds = %for.end313
  br label %if.end337

if.end337:                                        ; preds = %if.end336
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.end97
  %245 = load i32, i32* %flags.addr, align 4
  %and339 = and i32 %245, 1
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %if.then341, label %if.end410

if.then341:                                       ; preds = %if.end338
  %246 = load %struct.value*, %struct.value** %v, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %246, i32 0, i32 3
  %247 = load i32, i32* %start, align 4
  %cmp342 = icmp eq i32 %247, 0
  br i1 %cmp342, label %land.lhs.true344, label %if.else378

land.lhs.true344:                                 ; preds = %if.then341
  %248 = load %struct.value*, %struct.value** %v, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %248, i32 0, i32 4
  %249 = load i32, i32* %end, align 4
  %cmp345 = icmp eq i32 %249, -1
  br i1 %cmp345, label %if.then347, label %if.else378

if.then347:                                       ; preds = %land.lhs.true344
  %250 = load %struct.value*, %struct.value** %v, align 4
  %pm348 = getelementptr inbounds %struct.value, %struct.value* %250, i32 0, i32 1
  %251 = load %struct.param*, %struct.param** %pm348, align 4
  %node349 = getelementptr inbounds %struct.param, %struct.param* %251, i32 0, i32 0
  %flags350 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node349, i32 0, i32 2
  %252 = load i32, i32* %flags350, align 8
  %and351 = and i32 %252, 31
  %and352 = and i32 %and351, 1
  %tobool353 = icmp ne i32 %and352, 0
  br i1 %tobool353, label %if.then354, label %if.else366

if.then354:                                       ; preds = %if.then347
  %253 = load %struct.value*, %struct.value** %v, align 4
  %pm355 = getelementptr inbounds %struct.value, %struct.value* %253, i32 0, i32 1
  %254 = load %struct.param*, %struct.param** %pm355, align 4
  %gsu356 = getelementptr inbounds %struct.param, %struct.param* %254, i32 0, i32 2
  %a357 = bitcast %union.anon.0* %gsu356 to %struct.gsu_array**
  %255 = load %struct.gsu_array*, %struct.gsu_array** %a357, align 8
  %getfn358 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %255, i32 0, i32 0
  %256 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn358, align 4
  %257 = load %struct.value*, %struct.value** %v, align 4
  %pm359 = getelementptr inbounds %struct.value, %struct.value* %257, i32 0, i32 1
  %258 = load %struct.param*, %struct.param** %pm359, align 4
  %call360 = call i8** %256(%struct.param* %258)
  %call361 = call i32 @arrlen(i8** %call360)
  %259 = load %struct.value*, %struct.value** %v, align 4
  %start362 = getelementptr inbounds %struct.value, %struct.value* %259, i32 0, i32 3
  store i32 %call361, i32* %start362, align 4
  %260 = load %struct.value*, %struct.value** %v, align 4
  %start363 = getelementptr inbounds %struct.value, %struct.value* %260, i32 0, i32 3
  %261 = load i32, i32* %start363, align 4
  %add364 = add nsw i32 %261, 1
  %262 = load %struct.value*, %struct.value** %v, align 4
  %end365 = getelementptr inbounds %struct.value, %struct.value* %262, i32 0, i32 4
  store i32 %add364, i32* %end365, align 4
  br label %if.end377

if.else366:                                       ; preds = %if.then347
  %263 = load %struct.value*, %struct.value** %v, align 4
  %pm367 = getelementptr inbounds %struct.value, %struct.value* %263, i32 0, i32 1
  %264 = load %struct.param*, %struct.param** %pm367, align 4
  %node368 = getelementptr inbounds %struct.param, %struct.param* %264, i32 0, i32 0
  %flags369 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node368, i32 0, i32 2
  %265 = load i32, i32* %flags369, align 8
  %and370 = and i32 %265, 31
  %and371 = and i32 %and370, 16
  %tobool372 = icmp ne i32 %and371, 0
  br i1 %tobool372, label %if.then373, label %if.end376

if.then373:                                       ; preds = %if.else366
  %266 = load %struct.value*, %struct.value** %v, align 4
  %start374 = getelementptr inbounds %struct.value, %struct.value* %266, i32 0, i32 3
  store i32 -1, i32* %start374, align 4
  %267 = load %struct.value*, %struct.value** %v, align 4
  %end375 = getelementptr inbounds %struct.value, %struct.value* %267, i32 0, i32 4
  store i32 0, i32* %end375, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.then373, %if.else366
  br label %if.end377

if.end377:                                        ; preds = %if.end376, %if.then354
  br label %if.end409

if.else378:                                       ; preds = %land.lhs.true344, %if.then341
  %268 = load %struct.value*, %struct.value** %v, align 4
  %end379 = getelementptr inbounds %struct.value, %struct.value* %268, i32 0, i32 4
  %269 = load i32, i32* %end379, align 4
  %cmp380 = icmp sgt i32 %269, 0
  br i1 %cmp380, label %if.then382, label %if.else386

if.then382:                                       ; preds = %if.else378
  %270 = load %struct.value*, %struct.value** %v, align 4
  %end383 = getelementptr inbounds %struct.value, %struct.value* %270, i32 0, i32 4
  %271 = load i32, i32* %end383, align 4
  %dec384 = add nsw i32 %271, -1
  store i32 %dec384, i32* %end383, align 4
  %272 = load %struct.value*, %struct.value** %v, align 4
  %start385 = getelementptr inbounds %struct.value, %struct.value* %272, i32 0, i32 3
  store i32 %271, i32* %start385, align 4
  br label %if.end408

if.else386:                                       ; preds = %if.else378
  %273 = load %struct.value*, %struct.value** %v, align 4
  %pm387 = getelementptr inbounds %struct.value, %struct.value* %273, i32 0, i32 1
  %274 = load %struct.param*, %struct.param** %pm387, align 4
  %node388 = getelementptr inbounds %struct.param, %struct.param* %274, i32 0, i32 0
  %flags389 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node388, i32 0, i32 2
  %275 = load i32, i32* %flags389, align 8
  %and390 = and i32 %275, 31
  %and391 = and i32 %and390, 1
  %tobool392 = icmp ne i32 %and391, 0
  br i1 %tobool392, label %if.then393, label %if.end407

if.then393:                                       ; preds = %if.else386
  %276 = load %struct.value*, %struct.value** %v, align 4
  %pm394 = getelementptr inbounds %struct.value, %struct.value* %276, i32 0, i32 1
  %277 = load %struct.param*, %struct.param** %pm394, align 4
  %gsu395 = getelementptr inbounds %struct.param, %struct.param* %277, i32 0, i32 2
  %a396 = bitcast %union.anon.0* %gsu395 to %struct.gsu_array**
  %278 = load %struct.gsu_array*, %struct.gsu_array** %a396, align 8
  %getfn397 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %278, i32 0, i32 0
  %279 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn397, align 4
  %280 = load %struct.value*, %struct.value** %v, align 4
  %pm398 = getelementptr inbounds %struct.value, %struct.value* %280, i32 0, i32 1
  %281 = load %struct.param*, %struct.param** %pm398, align 4
  %call399 = call i8** %279(%struct.param* %281)
  %call400 = call i32 @arrlen(i8** %call399)
  %282 = load %struct.value*, %struct.value** %v, align 4
  %end401 = getelementptr inbounds %struct.value, %struct.value* %282, i32 0, i32 4
  %283 = load i32, i32* %end401, align 4
  %add402 = add nsw i32 %call400, %283
  %284 = load %struct.value*, %struct.value** %v, align 4
  %end403 = getelementptr inbounds %struct.value, %struct.value* %284, i32 0, i32 4
  store i32 %add402, i32* %end403, align 4
  %285 = load %struct.value*, %struct.value** %v, align 4
  %end404 = getelementptr inbounds %struct.value, %struct.value* %285, i32 0, i32 4
  %286 = load i32, i32* %end404, align 4
  %add405 = add nsw i32 %286, 1
  %287 = load %struct.value*, %struct.value** %v, align 4
  %start406 = getelementptr inbounds %struct.value, %struct.value* %287, i32 0, i32 3
  store i32 %add405, i32* %start406, align 4
  br label %if.end407

if.end407:                                        ; preds = %if.then393, %if.else386
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.then382
  br label %if.end409

if.end409:                                        ; preds = %if.end408, %if.end377
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.end338
  %288 = load %struct.value*, %struct.value** %v, align 4
  %289 = load i8**, i8*** %val.addr, align 4
  call void @setarrvalue(%struct.value* %288, i8** %289)
  br label %do.body411

do.body411:                                       ; preds = %if.end410
  %290 = load i32, i32* @queueing_enabled, align 4
  %dec412 = add nsw i32 %290, -1
  store i32 %dec412, i32* @queueing_enabled, align 4
  %tobool413 = icmp ne i32 %dec412, 0
  br i1 %tobool413, label %if.end430, label %if.then414

if.then414:                                       ; preds = %do.body411
  br label %do.body415

do.body415:                                       ; preds = %if.then414
  br label %while.cond416

while.cond416:                                    ; preds = %while.body419, %do.body415
  %291 = load i32, i32* @queue_front, align 4
  %292 = load i32, i32* @queue_rear, align 4
  %cmp417 = icmp ne i32 %291, %292
  br i1 %cmp417, label %while.body419, label %while.end428

while.body419:                                    ; preds = %while.cond416
  %293 = load i32, i32* @queue_front, align 4
  %add422 = add nsw i32 %293, 1
  %rem423 = srem i32 %add422, 128
  store i32 %rem423, i32* @queue_front, align 4
  %294 = load i32, i32* @queue_front, align 4
  %arrayidx424 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %294
  call void @signal_setmask(%struct.__sigset_t* sret %tmp425, %struct.__sigset_t* byval align 4 %arrayidx424)
  %295 = bitcast %struct.__sigset_t* %oset421 to i8*
  %296 = bitcast %struct.__sigset_t* %tmp425 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %295, i8* %296, i32 128, i32 4, i1 false)
  %297 = load i32, i32* @queue_front, align 4
  %arrayidx426 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %297
  %298 = load i32, i32* %arrayidx426, align 4
  call void @zhandler(i32 %298)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp427, %struct.__sigset_t* byval align 4 %oset421)
  br label %while.cond416

while.end428:                                     ; preds = %while.cond416
  br label %do.end429

do.end429:                                        ; preds = %while.end428
  br label %if.end430

if.end430:                                        ; preds = %do.end429, %do.body411
  br label %do.end431

do.end431:                                        ; preds = %if.end430
  %299 = load %struct.value*, %struct.value** %v, align 4
  %pm432 = getelementptr inbounds %struct.value, %struct.value* %299, i32 0, i32 1
  %300 = load %struct.param*, %struct.param** %pm432, align 4
  store %struct.param* %300, %struct.param** %retval, align 4
  br label %return

return:                                           ; preds = %do.end431, %do.end335, %do.end309, %do.end272, %if.then181, %do.end160, %do.end90, %do.end19, %if.then
  %301 = load %struct.param*, %struct.param** %retval, align 4
  ret %struct.param* %301
}

declare i8* @bicat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define %struct.param* @sethparam(i8* %s, i8** %val) #0 {
entry:
  %retval = alloca %struct.param*, align 4
  %s.addr = alloca i8*, align 4
  %val.addr = alloca i8**, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %t = alloca i8*, align 4
  %checkcreate = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp28 = alloca %struct.__sigset_t, align 4
  %oset48 = alloca %struct.__sigset_t, align 4
  %tmp52 = alloca %struct.__sigset_t, align 4
  %tmp54 = alloca %struct.__sigset_t, align 4
  %oset71 = alloca %struct.__sigset_t, align 4
  %tmp75 = alloca %struct.__sigset_t, align 4
  %tmp77 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8** %val, i8*** %val.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %t, align 4
  store i32 0, i32* %checkcreate, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @isident(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* %2)
  %3 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %3)
  %4 = load i32, i32* @errflag, align 4
  %or = or i32 %4, 1
  store i32 %or, i32* @errflag, align 4
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %s.addr, align 4
  %call1 = call i8* @strchr(i8* %5, i32 91)
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load i8**, i8*** %val.addr, align 4
  call void @freearray(i8** %6)
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i32 0, i32 0))
  %7 = load i32, i32* @errflag, align 4
  %or4 = or i32 %7, 1
  store i32 %or4, i32* @errflag, align 4
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %9 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call9 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 64)
  store %struct.value* %call9, %struct.value** %v, align 4
  %tobool10 = icmp ne %struct.value* %call9, null
  br i1 %tobool10, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  %10 = load i8*, i8** %t, align 4
  %call12 = call %struct.param* @createparam(i8* %10, i32 16)
  store i32 1, i32* %checkcreate, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end8
  %11 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags, align 8
  %and = and i32 %13, 31
  %and13 = and i32 %and, 16
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end32, label %if.then15

if.then15:                                        ; preds = %if.else
  %14 = load %struct.value*, %struct.value** %v, align 4
  %pm16 = getelementptr inbounds %struct.value, %struct.value* %14, i32 0, i32 1
  %15 = load %struct.param*, %struct.param** %pm16, align 4
  %node17 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags18 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node17, i32 0, i32 2
  %16 = load i32, i32* %flags18, align 8
  %and19 = and i32 %16, 4194304
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.then15
  %17 = load i8*, i8** %t, align 4
  call void @unsetparam(i8* %17)
  %18 = load i8*, i8** %t, align 4
  %call22 = call %struct.param* @createparam(i8* %18, i32 16)
  store %struct.value* null, %struct.value** %v, align 4
  br label %if.end31

if.else23:                                        ; preds = %if.then15
  %19 = load i8*, i8** %t, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.49, i32 0, i32 0), i8* %19)
  br label %do.body

do.body:                                          ; preds = %if.else23
  %20 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool24 = icmp ne i32 %dec, 0
  br i1 %tobool24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %do.body
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body26
  %21 = load i32, i32* @queue_front, align 4
  %22 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %21, %22
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %23, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %24 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %24
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %25 = bitcast %struct.__sigset_t* %oset to i8*
  %26 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 128, i32 4, i1 false)
  %27 = load i32, i32* @queue_front, align 4
  %arrayidx27 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %27
  %28 = load i32, i32* %arrayidx27, align 4
  call void @zhandler(i32 %28)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp28, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end29

if.end29:                                         ; preds = %do.end, %do.body
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then21
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then11
  %29 = load %struct.value*, %struct.value** %v, align 4
  %tobool34 = icmp ne %struct.value* %29, null
  br i1 %tobool34, label %if.end60, label %if.then35

if.then35:                                        ; preds = %if.end33
  %call36 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %t, i32 1, i32 64)
  store %struct.value* %call36, %struct.value** %v, align 4
  %tobool37 = icmp ne %struct.value* %call36, null
  br i1 %tobool37, label %if.end59, label %if.then38

if.then38:                                        ; preds = %if.then35
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  %30 = load i32, i32* @queueing_enabled, align 4
  %dec40 = add nsw i32 %30, -1
  store i32 %dec40, i32* @queueing_enabled, align 4
  %tobool41 = icmp ne i32 %dec40, 0
  br i1 %tobool41, label %if.end57, label %if.then42

if.then42:                                        ; preds = %do.body39
  br label %do.body43

do.body43:                                        ; preds = %if.then42
  br label %while.cond44

while.cond44:                                     ; preds = %while.body46, %do.body43
  %31 = load i32, i32* @queue_front, align 4
  %32 = load i32, i32* @queue_rear, align 4
  %cmp45 = icmp ne i32 %31, %32
  br i1 %cmp45, label %while.body46, label %while.end55

while.body46:                                     ; preds = %while.cond44
  %33 = load i32, i32* @queue_front, align 4
  %add49 = add nsw i32 %33, 1
  %rem50 = srem i32 %add49, 128
  store i32 %rem50, i32* @queue_front, align 4
  %34 = load i32, i32* @queue_front, align 4
  %arrayidx51 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %34
  call void @signal_setmask(%struct.__sigset_t* sret %tmp52, %struct.__sigset_t* byval align 4 %arrayidx51)
  %35 = bitcast %struct.__sigset_t* %oset48 to i8*
  %36 = bitcast %struct.__sigset_t* %tmp52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 128, i32 4, i1 false)
  %37 = load i32, i32* @queue_front, align 4
  %arrayidx53 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %37
  %38 = load i32, i32* %arrayidx53, align 4
  call void @zhandler(i32 %38)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp54, %struct.__sigset_t* byval align 4 %oset48)
  br label %while.cond44

while.end55:                                      ; preds = %while.cond44
  br label %do.end56

do.end56:                                         ; preds = %while.end55
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %do.body39
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.then35
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end33
  %39 = load %struct.value*, %struct.value** %v, align 4
  %pm61 = getelementptr inbounds %struct.value, %struct.value* %39, i32 0, i32 1
  %40 = load %struct.param*, %struct.param** %pm61, align 4
  %41 = load i32, i32* %checkcreate, align 4
  call void @check_warn_pm(%struct.param* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %41, i32 1)
  %42 = load %struct.value*, %struct.value** %v, align 4
  %43 = load i8**, i8*** %val.addr, align 4
  call void @setarrvalue(%struct.value* %42, i8** %43)
  br label %do.body62

do.body62:                                        ; preds = %if.end60
  %44 = load i32, i32* @queueing_enabled, align 4
  %dec63 = add nsw i32 %44, -1
  store i32 %dec63, i32* @queueing_enabled, align 4
  %tobool64 = icmp ne i32 %dec63, 0
  br i1 %tobool64, label %if.end80, label %if.then65

if.then65:                                        ; preds = %do.body62
  br label %do.body66

do.body66:                                        ; preds = %if.then65
  br label %while.cond67

while.cond67:                                     ; preds = %while.body69, %do.body66
  %45 = load i32, i32* @queue_front, align 4
  %46 = load i32, i32* @queue_rear, align 4
  %cmp68 = icmp ne i32 %45, %46
  br i1 %cmp68, label %while.body69, label %while.end78

while.body69:                                     ; preds = %while.cond67
  %47 = load i32, i32* @queue_front, align 4
  %add72 = add nsw i32 %47, 1
  %rem73 = srem i32 %add72, 128
  store i32 %rem73, i32* @queue_front, align 4
  %48 = load i32, i32* @queue_front, align 4
  %arrayidx74 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %48
  call void @signal_setmask(%struct.__sigset_t* sret %tmp75, %struct.__sigset_t* byval align 4 %arrayidx74)
  %49 = bitcast %struct.__sigset_t* %oset71 to i8*
  %50 = bitcast %struct.__sigset_t* %tmp75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 128, i32 4, i1 false)
  %51 = load i32, i32* @queue_front, align 4
  %arrayidx76 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %51
  %52 = load i32, i32* %arrayidx76, align 4
  call void @zhandler(i32 %52)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp77, %struct.__sigset_t* byval align 4 %oset71)
  br label %while.cond67

while.end78:                                      ; preds = %while.cond67
  br label %do.end79

do.end79:                                         ; preds = %while.end78
  br label %if.end80

if.end80:                                         ; preds = %do.end79, %do.body62
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  %53 = load %struct.value*, %struct.value** %v, align 4
  %pm82 = getelementptr inbounds %struct.value, %struct.value* %53, i32 0, i32 1
  %54 = load %struct.param*, %struct.param** %pm82, align 4
  store %struct.param* %54, %struct.param** %retval, align 4
  br label %return

return:                                           ; preds = %do.end81, %do.end58, %do.end30, %if.then7, %if.then3, %if.then
  %55 = load %struct.param*, %struct.param** %retval, align 4
  ret %struct.param* %55
}

; Function Attrs: noinline nounwind
define %struct.param* @assignnparam(i8* %s, %struct.mnumber* byval align 8 %val, i32 %flags) #0 {
entry:
  %retval = alloca %struct.param*, align 4
  %s.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %t = alloca i8*, align 4
  %ss = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %was_unset = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp60 = alloca %struct.__sigset_t, align 4
  %oset87 = alloca %struct.__sigset_t, align 4
  %tmp91 = alloca %struct.__sigset_t, align 4
  %tmp93 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %t, align 4
  store i32 0, i32* %was_unset, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @isident(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* %2)
  %3 = load i32, i32* @errflag, align 4
  %or = or i32 %3, 1
  store i32 %or, i32* @errflag, align 4
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %6 = load i8*, i8** %s.addr, align 4
  %call4 = call i8* @strchr(i8* %6, i32 91)
  store i8* %call4, i8** %ss, align 4
  %call5 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s.addr, i32 1)
  store %struct.value* %call5, %struct.value** %v, align 4
  %7 = load %struct.value*, %struct.value** %v, align 4
  %tobool6 = icmp ne %struct.value* %7, null
  br i1 %tobool6, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end3
  %8 = load %struct.value*, %struct.value** %v, align 4
  %pm7 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 1
  %9 = load %struct.param*, %struct.param** %pm7, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %10 = load i32, i32* %flags8, align 8
  %and = and i32 %10, 17
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.end23

land.lhs.true10:                                  ; preds = %land.lhs.true
  %11 = load %struct.value*, %struct.value** %v, align 4
  %pm11 = getelementptr inbounds %struct.value, %struct.value* %11, i32 0, i32 1
  %12 = load %struct.param*, %struct.param** %pm11, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %13 = load i32, i32* %flags13, align 8
  %and14 = and i32 %13, 4259840
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end23, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %14 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool17 = icmp ne i8 %14, 0
  br i1 %tobool17, label %if.end23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %15 = load i8*, i8** %ss, align 4
  %tobool19 = icmp ne i8* %15, null
  br i1 %tobool19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %land.lhs.true18
  %16 = load %struct.value*, %struct.value** %v, align 4
  %pm21 = getelementptr inbounds %struct.value, %struct.value* %16, i32 0, i32 1
  %17 = load %struct.param*, %struct.param** %pm21, align 4
  %call22 = call i32 @unsetparam_pm(%struct.param* %17, i32 0, i32 1)
  store i32 1, i32* %was_unset, align 4
  %18 = load i8*, i8** %t, align 4
  store i8* %18, i8** %s.addr, align 4
  store %struct.value* null, %struct.value** %v, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true18, %land.lhs.true16, %land.lhs.true10, %land.lhs.true, %if.end3
  %19 = load %struct.value*, %struct.value** %v, align 4
  %tobool24 = icmp ne %struct.value* %19, null
  br i1 %tobool24, label %if.else70, label %if.then25

if.then25:                                        ; preds = %if.end23
  %20 = load i8*, i8** %s.addr, align 4
  %call26 = call i8* @strchr(i8* %20, i32 91)
  store i8* %call26, i8** %ss, align 4
  %21 = load i8*, i8** %ss, align 4
  %tobool27 = icmp ne i8* %21, null
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  %22 = load i8*, i8** %ss, align 4
  store i8 0, i8* %22, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then25
  %23 = load i8*, i8** %t, align 4
  %24 = load i8*, i8** %ss, align 4
  %tobool30 = icmp ne i8* %24, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end29
  br label %cond.end37

cond.false:                                       ; preds = %if.end29
  %25 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 134), align 1
  %conv = sext i8 %25 to i32
  %tobool31 = icmp ne i32 %conv, 0
  br i1 %tobool31, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.false
  br label %cond.end

cond.false33:                                     ; preds = %cond.false
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %26 = load i32, i32* %type, align 8
  %and34 = and i32 %26, 1
  %tobool35 = icmp ne i32 %and34, 0
  %cond = select i1 %tobool35, i32 2, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false33, %cond.true32
  %cond36 = phi i32 [ 0, %cond.true32 ], [ %cond, %cond.false33 ]
  br label %cond.end37

cond.end37:                                       ; preds = %cond.end, %cond.true
  %cond38 = phi i32 [ 1, %cond.true ], [ %cond36, %cond.end ]
  %call39 = call %struct.param* @createparam(i8* %23, i32 %cond38)
  store %struct.param* %call39, %struct.param** %pm, align 4
  %27 = load %struct.param*, %struct.param** %pm, align 4
  %tobool40 = icmp ne %struct.param* %27, null
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %cond.end37
  %28 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 9
  %29 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %30 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %31 = load i8*, i8** %t, align 4
  %call42 = call %struct.hashnode* %29(%struct.hashtable* %30, i8* %31)
  %32 = bitcast %struct.hashnode* %call42 to %struct.param*
  store %struct.param* %32, %struct.param** %pm, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %cond.end37
  %33 = load i8*, i8** %ss, align 4
  %tobool44 = icmp ne i8* %33, null
  br i1 %tobool44, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end43
  %34 = load i8*, i8** %ss, align 4
  store i8 91, i8* %34, align 1
  br label %if.end51

if.else:                                          ; preds = %if.end43
  %type46 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %35 = load i32, i32* %type46, align 8
  %and47 = and i32 %35, 1
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else
  %36 = load i32, i32* @outputradix, align 4
  %37 = load %struct.param*, %struct.param** %pm, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %37, i32 0, i32 3
  store i32 %36, i32* %base, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then45
  %call52 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %t, i32 1)
  store %struct.value* %call52, %struct.value** %v, align 4
  %tobool53 = icmp ne %struct.value* %call52, null
  br i1 %tobool53, label %if.end63, label %if.then54

if.then54:                                        ; preds = %if.end51
  br label %do.body

do.body:                                          ; preds = %if.then54
  %38 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool55 = icmp ne i32 %dec, 0
  br i1 %tobool55, label %if.end61, label %if.then56

if.then56:                                        ; preds = %do.body
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body57
  %39 = load i32, i32* @queue_front, align 4
  %40 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %39, %40
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %41, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %42 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %42
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %43 = bitcast %struct.__sigset_t* %oset to i8*
  %44 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 128, i32 4, i1 false)
  %45 = load i32, i32* @queue_front, align 4
  %arrayidx59 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %45
  %46 = load i32, i32* %arrayidx59, align 4
  call void @zhandler(i32 %46)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp60, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end61

if.end61:                                         ; preds = %do.end, %do.body
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  store %struct.param* null, %struct.param** %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end51
  %47 = load i32, i32* %flags.addr, align 4
  %and64 = and i32 %47, 6
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end63
  %48 = load %struct.value*, %struct.value** %v, align 4
  %pm67 = getelementptr inbounds %struct.value, %struct.value* %48, i32 0, i32 1
  %49 = load %struct.param*, %struct.param** %pm67, align 4
  %50 = load i32, i32* %was_unset, align 4
  %tobool68 = icmp ne i32 %50, 0
  %lnot = xor i1 %tobool68, true
  %lnot.ext = zext i1 %lnot to i32
  call void @check_warn_pm(%struct.param* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 %lnot.ext, i32 1)
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63
  br label %if.end76

if.else70:                                        ; preds = %if.end23
  %51 = load i32, i32* %flags.addr, align 4
  %and71 = and i32 %51, 6
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.else70
  %52 = load %struct.value*, %struct.value** %v, align 4
  %pm74 = getelementptr inbounds %struct.value, %struct.value* %52, i32 0, i32 1
  %53 = load %struct.param*, %struct.param** %pm74, align 4
  call void @check_warn_pm(%struct.param* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 1)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.else70
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end69
  %54 = load %struct.value*, %struct.value** %v, align 4
  call void @setnumvalue(%struct.value* %54, %struct.mnumber* byval align 8 %val)
  br label %do.body77

do.body77:                                        ; preds = %if.end76
  %55 = load i32, i32* @queueing_enabled, align 4
  %dec78 = add nsw i32 %55, -1
  store i32 %dec78, i32* @queueing_enabled, align 4
  %tobool79 = icmp ne i32 %dec78, 0
  br i1 %tobool79, label %if.end96, label %if.then80

if.then80:                                        ; preds = %do.body77
  br label %do.body81

do.body81:                                        ; preds = %if.then80
  br label %while.cond82

while.cond82:                                     ; preds = %while.body85, %do.body81
  %56 = load i32, i32* @queue_front, align 4
  %57 = load i32, i32* @queue_rear, align 4
  %cmp83 = icmp ne i32 %56, %57
  br i1 %cmp83, label %while.body85, label %while.end94

while.body85:                                     ; preds = %while.cond82
  %58 = load i32, i32* @queue_front, align 4
  %add88 = add nsw i32 %58, 1
  %rem89 = srem i32 %add88, 128
  store i32 %rem89, i32* @queue_front, align 4
  %59 = load i32, i32* @queue_front, align 4
  %arrayidx90 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %59
  call void @signal_setmask(%struct.__sigset_t* sret %tmp91, %struct.__sigset_t* byval align 4 %arrayidx90)
  %60 = bitcast %struct.__sigset_t* %oset87 to i8*
  %61 = bitcast %struct.__sigset_t* %tmp91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 128, i32 4, i1 false)
  %62 = load i32, i32* @queue_front, align 4
  %arrayidx92 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %62
  %63 = load i32, i32* %arrayidx92, align 4
  call void @zhandler(i32 %63)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp93, %struct.__sigset_t* byval align 4 %oset87)
  br label %while.cond82

while.end94:                                      ; preds = %while.cond82
  br label %do.end95

do.end95:                                         ; preds = %while.end94
  br label %if.end96

if.end96:                                         ; preds = %do.end95, %do.body77
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  %64 = load %struct.value*, %struct.value** %v, align 4
  %pm98 = getelementptr inbounds %struct.value, %struct.value* %64, i32 0, i32 1
  %65 = load %struct.param*, %struct.param** %pm98, align 4
  store %struct.param* %65, %struct.param** %retval, align 4
  br label %return

return:                                           ; preds = %do.end97, %do.end62, %if.then2, %if.then
  %66 = load %struct.param*, %struct.param** %retval, align 4
  ret %struct.param* %66
}

; Function Attrs: noinline nounwind
define i32 @unsetparam_pm(%struct.param* %pm, i32 %altflag, i32 %exp) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.param*, align 4
  %altflag.addr = alloca i32, align 4
  %exp.addr = alloca i32, align 4
  %oldpm = alloca %struct.param*, align 4
  %altpm = alloca %struct.param*, align 4
  %altremove = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %altflag, i32* %altflag.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 8
  %3 = load i32, i32* %level, align 8
  %4 = load i32, i32* @locallevel, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8* %6)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  %8 = load i32, i32* %flags3, align 8
  %and4 = and i32 %8, 16777216
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %land.lhs.true6, label %if.end11

land.lhs.true6:                                   ; preds = %if.end
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %conv = sext i8 %9 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %land.lhs.true6
  %10 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node9 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %nam10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 1
  %11 = load i8*, i8** %nam10, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* %11)
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true6, %if.end
  %12 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 6
  %13 = load i8*, i8** %ename, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %if.end11
  %14 = load i32, i32* %altflag.addr, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.else, label %if.then15

if.then15:                                        ; preds = %land.lhs.true13
  %15 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename16 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 6
  %16 = load i8*, i8** %ename16, align 8
  %call = call i8* @ztrdup(i8* %16)
  store i8* %call, i8** %altremove, align 4
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true13, %if.end11
  store i8* null, i8** %altremove, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %17 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node18 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags19 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node18, i32 0, i32 2
  %18 = load i32, i32* %flags19, align 8
  %and20 = and i32 %18, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end17
  %19 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %20 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %unsetfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %20, i32 0, i32 2
  %21 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %22 = load %struct.param*, %struct.param** %pm.addr, align 4
  %23 = load i32, i32* %exp.addr, align 4
  call void %21(%struct.param* %22, i32 %23)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17
  %24 = load %struct.param*, %struct.param** %pm.addr, align 4
  %env = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 5
  %25 = load i8*, i8** %env, align 4
  %tobool24 = icmp ne i8* %25, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  %26 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void @delenv(%struct.param* %26)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  %27 = load i8*, i8** %altremove, align 4
  %tobool27 = icmp ne i8* %27, null
  br i1 %tobool27, label %if.then28, label %if.end47

if.then28:                                        ; preds = %if.end26
  %28 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 9
  %29 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %30 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %31 = load i8*, i8** %altremove, align 4
  %call29 = call %struct.hashnode* %29(%struct.hashtable* %30, i8* %31)
  %32 = bitcast %struct.hashnode* %call29 to %struct.param*
  store %struct.param* %32, %struct.param** %altpm, align 4
  store %struct.param* null, %struct.param** %oldpm, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then28
  %33 = load %struct.param*, %struct.param** %altpm, align 4
  %tobool30 = icmp ne %struct.param* %33, null
  br i1 %tobool30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %34 = load %struct.param*, %struct.param** %altpm, align 4
  %level31 = getelementptr inbounds %struct.param, %struct.param* %34, i32 0, i32 8
  %35 = load i32, i32* %level31, align 8
  %36 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level32 = getelementptr inbounds %struct.param, %struct.param* %36, i32 0, i32 8
  %37 = load i32, i32* %level32, align 8
  %cmp33 = icmp sgt i32 %35, %37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %39 = load %struct.param*, %struct.param** %altpm, align 4
  store %struct.param* %39, %struct.param** %oldpm, align 4
  %40 = load %struct.param*, %struct.param** %altpm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %40, i32 0, i32 7
  %41 = load %struct.param*, %struct.param** %old, align 4
  store %struct.param* %41, %struct.param** %altpm, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load %struct.param*, %struct.param** %altpm, align 4
  %tobool35 = icmp ne %struct.param* %42, null
  br i1 %tobool35, label %if.then36, label %if.end46

if.then36:                                        ; preds = %while.end
  %43 = load %struct.param*, %struct.param** %oldpm, align 4
  %tobool37 = icmp ne %struct.param* %43, null
  br i1 %tobool37, label %land.lhs.true38, label %if.end44

land.lhs.true38:                                  ; preds = %if.then36
  %44 = load %struct.param*, %struct.param** %altpm, align 4
  %level39 = getelementptr inbounds %struct.param, %struct.param* %44, i32 0, i32 8
  %45 = load i32, i32* %level39, align 8
  %tobool40 = icmp ne i32 %45, 0
  br i1 %tobool40, label %if.end44, label %if.then41

if.then41:                                        ; preds = %land.lhs.true38
  %46 = load %struct.param*, %struct.param** %oldpm, align 4
  %old42 = getelementptr inbounds %struct.param, %struct.param* %46, i32 0, i32 7
  store %struct.param* null, %struct.param** %old42, align 4
  %47 = load %struct.param*, %struct.param** %altpm, align 4
  %level43 = getelementptr inbounds %struct.param, %struct.param* %47, i32 0, i32 8
  store i32 1, i32* %level43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %land.lhs.true38, %if.then36
  %48 = load %struct.param*, %struct.param** %altpm, align 4
  %49 = load i32, i32* %exp.addr, align 4
  %call45 = call i32 @unsetparam_pm(%struct.param* %48, i32 1, i32 %49)
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %while.end
  %50 = load i8*, i8** %altremove, align 4
  call void @zsfree(i8* %50)
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end26
  %51 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level48 = getelementptr inbounds %struct.param, %struct.param* %51, i32 0, i32 8
  %52 = load i32, i32* %level48, align 8
  %tobool49 = icmp ne i32 %52, 0
  br i1 %tobool49, label %land.lhs.true50, label %lor.lhs.false

land.lhs.true50:                                  ; preds = %if.end47
  %53 = load i32, i32* @locallevel, align 4
  %54 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level51 = getelementptr inbounds %struct.param, %struct.param* %54, i32 0, i32 8
  %55 = load i32, i32* %level51, align 8
  %cmp52 = icmp sge i32 %53, %55
  br i1 %cmp52, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true50, %if.end47
  %56 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node54 = getelementptr inbounds %struct.param, %struct.param* %56, i32 0, i32 0
  %flags55 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node54, i32 0, i32 2
  %57 = load i32, i32* %flags55, align 8
  %and56 = and i32 %57, 71303168
  %cmp57 = icmp eq i32 %and56, 4194304
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %lor.lhs.false, %land.lhs.true50
  store i32 0, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %lor.lhs.false
  %58 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %58, i32 0, i32 11
  %59 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %60 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %61 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node61 = getelementptr inbounds %struct.param, %struct.param* %61, i32 0, i32 0
  %nam62 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node61, i32 0, i32 1
  %62 = load i8*, i8** %nam62, align 4
  %call63 = call %struct.hashnode* %59(%struct.hashtable* %60, i8* %62)
  %63 = load %struct.param*, %struct.param** %pm.addr, align 4
  %old64 = getelementptr inbounds %struct.param, %struct.param* %63, i32 0, i32 7
  %64 = load %struct.param*, %struct.param** %old64, align 4
  %tobool65 = icmp ne %struct.param* %64, null
  br i1 %tobool65, label %if.then66, label %if.end100

if.then66:                                        ; preds = %if.end60
  %65 = load %struct.param*, %struct.param** %pm.addr, align 4
  %old67 = getelementptr inbounds %struct.param, %struct.param* %65, i32 0, i32 7
  %66 = load %struct.param*, %struct.param** %old67, align 4
  store %struct.param* %66, %struct.param** %oldpm, align 4
  %67 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %67, i32 0, i32 8
  %68 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %69 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %70 = load %struct.param*, %struct.param** %oldpm, align 4
  %node68 = getelementptr inbounds %struct.param, %struct.param* %70, i32 0, i32 0
  %nam69 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node68, i32 0, i32 1
  %71 = load i8*, i8** %nam69, align 4
  %72 = load %struct.param*, %struct.param** %oldpm, align 4
  %73 = bitcast %struct.param* %72 to i8*
  call void %68(%struct.hashtable* %69, i8* %71, i8* %73)
  %74 = load %struct.param*, %struct.param** %oldpm, align 4
  %node70 = getelementptr inbounds %struct.param, %struct.param* %74, i32 0, i32 0
  %flags71 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node70, i32 0, i32 2
  %75 = load i32, i32* %flags71, align 8
  %and72 = and i32 %75, 31
  %cmp73 = icmp eq i32 %and72, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.end93

land.lhs.true75:                                  ; preds = %if.then66
  %76 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node76 = getelementptr inbounds %struct.param, %struct.param* %76, i32 0, i32 0
  %flags77 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node76, i32 0, i32 2
  %77 = load i32, i32* %flags77, align 8
  %and78 = and i32 %77, 536870912
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.end93, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true75
  %78 = load %struct.param*, %struct.param** %oldpm, align 4
  %node81 = getelementptr inbounds %struct.param, %struct.param* %78, i32 0, i32 0
  %flags82 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node81, i32 0, i32 2
  %79 = load i32, i32* %flags82, align 8
  %and83 = and i32 %79, 1073741824
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %land.lhs.true85, label %if.end93

land.lhs.true85:                                  ; preds = %land.lhs.true80
  %80 = load %struct.param*, %struct.param** %oldpm, align 4
  %gsu86 = getelementptr inbounds %struct.param, %struct.param* %80, i32 0, i32 2
  %s87 = bitcast %union.anon.0* %gsu86 to %struct.gsu_scalar**
  %81 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s87, align 8
  %cmp88 = icmp eq %struct.gsu_scalar* %81, bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @stdscalar_gsu to %struct.gsu_scalar*)
  br i1 %cmp88, label %if.then90, label %if.end93

if.then90:                                        ; preds = %land.lhs.true85
  %82 = load %struct.param*, %struct.param** %oldpm, align 4
  %node91 = getelementptr inbounds %struct.param, %struct.param* %82, i32 0, i32 0
  %nam92 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node91, i32 0, i32 1
  %83 = load i8*, i8** %nam92, align 4
  %84 = load %struct.param*, %struct.param** %oldpm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %84, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  %85 = load i8*, i8** %str, align 8
  call void @adduserdir(i8* %83, i8* %85, i32 0, i32 0)
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true85, %land.lhs.true80, %land.lhs.true75, %if.then66
  %86 = load %struct.param*, %struct.param** %oldpm, align 4
  %node94 = getelementptr inbounds %struct.param, %struct.param* %86, i32 0, i32 0
  %flags95 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node94, i32 0, i32 2
  %87 = load i32, i32* %flags95, align 8
  %and96 = and i32 %87, 4096
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end93
  %88 = load %struct.param*, %struct.param** %oldpm, align 4
  call void @export_param(%struct.param* %88)
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end93
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end60
  %89 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %89, i32 0, i32 14
  %90 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %91 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node101 = getelementptr inbounds %struct.param, %struct.param* %91, i32 0, i32 0
  call void %90(%struct.hashnode* %node101)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end100, %if.then59, %if.then8, %if.then
  %92 = load i32, i32* %retval, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind
define %struct.param* @setnparam(i8* %s, %struct.mnumber* byval align 8 %val) #0 {
entry:
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call %struct.param* @assignnparam(i8* %0, %struct.mnumber* byval align 8 %val, i32 6)
  ret %struct.param* %call
}

; Function Attrs: noinline nounwind
define %struct.param* @assigniparam(i8* %s, i32 %val, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %val.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %mnval = alloca %struct.mnumber, align 8
  store i8* %s, i8** %s.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mnval, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %0 = load i32, i32* %val.addr, align 4
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mnval, i32 0, i32 0
  %l = bitcast %union.anon.1* %u to i32*
  store i32 %0, i32* %l, align 8
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %call = call %struct.param* @assignnparam(i8* %1, %struct.mnumber* byval align 8 %mnval, i32 %2)
  ret %struct.param* %call
}

; Function Attrs: noinline nounwind
define %struct.param* @setiparam_no_convert(i8* %s, i32 %val) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %val.addr = alloca i32, align 4
  %buf = alloca [36 x i8], align 1
  store i8* %s, i8** %s.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %0 = load i32, i32* %val.addr, align 4
  call void @convbase(i8* %arraydecay, i32 %0, i32 10)
  %1 = load i8*, i8** %s.addr, align 4
  %arraydecay1 = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %call = call i8* @ztrdup(i8* %arraydecay1)
  %call2 = call %struct.param* @assignsparam(i8* %1, i8* %call, i32 6)
  ret %struct.param* %call2
}

; Function Attrs: noinline nounwind
define void @uniqarray(i8** %x) #0 {
entry:
  %x.addr = alloca i8**, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load i8**, i8*** %x.addr, align 4
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %x.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %x.addr, align 4
  %4 = load i8**, i8*** %x.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %call = call i8* @zheapptr(i8* %5)
  %tobool2 = icmp ne i8* %call, null
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  call void @arrayuniq(i8** %3, i32 %lnot.ext)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @arrfixenv(i8* %s, i8** %t) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8**, align 4
  %pm = alloca %struct.param*, align 4
  %joinchar = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8** %t, i8*** %t.addr, align 4
  %0 = load i8**, i8*** %t.addr, align 4
  %1 = load i8**, i8*** @path, align 4
  %cmp = icmp eq i8** %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 5
  %3 = load void (%struct.hashtable*)*, void (%struct.hashtable*)** %emptytable, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  call void %3(%struct.hashtable* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %8 = load i8*, i8** %s.addr, align 4
  %call = call %struct.hashnode* %6(%struct.hashtable* %7, i8* %8)
  %9 = bitcast %struct.hashnode* %call to %struct.param*
  store %struct.param* %9, %struct.param** %pm, align 4
  %10 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %11 = load i32, i32* %flags, align 8
  %and = and i32 %11, 536870912
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %return

if.end2:                                          ; preds = %if.end
  %12 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 3), align 1
  %tobool3 = icmp ne i8 %12, 0
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end2
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %14 = load i32, i32* %flags6, align 8
  %or = or i32 %14, 4096
  store i32 %or, i32* %flags6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end2
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %16 = load i32, i32* %flags9, align 8
  %and10 = and i32 %16, 4096
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end7
  br label %return

if.end13:                                         ; preds = %if.end7
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags15 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 2
  %18 = load i32, i32* %flags15, align 8
  %and16 = and i32 %18, 65536
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end13
  %19 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct.tieddata*
  %joinchar19 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %21, i32 0, i32 1
  %22 = load i32, i32* %joinchar19, align 4
  %conv = trunc i32 %22 to i8
  %conv20 = zext i8 %conv to i32
  store i32 %conv20, i32* %joinchar, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end13
  store i32 58, i32* %joinchar, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %23 = load %struct.param*, %struct.param** %pm, align 4
  %24 = load i8**, i8*** %t.addr, align 4
  %tobool22 = icmp ne i8** %24, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end21
  %25 = load i8**, i8*** %t.addr, align 4
  %26 = load i32, i32* %joinchar, align 4
  %call23 = call i8* @zjoin(i8** %25, i32 %26, i32 1)
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call23, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), %cond.false ]
  call void @addenv(%struct.param* %23, i8* %cond)
  br label %return

return:                                           ; preds = %cond.end, %if.then12, %if.then1
  ret void
}

; Function Attrs: noinline nounwind
define void @nullintsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @zlevarsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  %p = alloca i32*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %valptr = bitcast %union.anon* %u to i32**
  %1 = load i32*, i32** %valptr, align 8
  store i32* %1, i32** %p, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32*, i32** %p, align 4
  store i32 %2, i32* %3, align 4
  %4 = load i32*, i32** %p, align 4
  %cmp = icmp eq i32* %4, @zterm_lines
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32*, i32** %p, align 4
  %cmp1 = icmp eq i32* %5, @zterm_columns
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32*, i32** %p, align 4
  %cmp2 = icmp eq i32* %6, @zterm_columns
  %conv = zext i1 %cmp2 to i32
  %add = add nsw i32 2, %conv
  call void @adjustwinsize(i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @adjustwinsize(i32) #1

declare i8** @mkarray(i8*) #1

; Function Attrs: noinline nounwind
define i8* @colonarrgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %dptr = alloca i8***, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to i8***
  store i8*** %2, i8**** %dptr, align 4
  %3 = load i8***, i8**** %dptr, align 4
  %4 = load i8**, i8*** %3, align 4
  %tobool = icmp ne i8** %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8***, i8**** %dptr, align 4
  %6 = load i8**, i8*** %5, align 4
  %call = call i8* @zjoin(i8** %6, i32 58, i32 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

declare i8* @zjoin(i8**, i32, i32) #1

; Function Attrs: noinline nounwind
define void @colonarrsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %dptr = alloca i8***, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to i8***
  store i8*** %2, i8**** %dptr, align 4
  %3 = load i8***, i8**** %dptr, align 4
  %4 = load i8**, i8*** %3, align 4
  %tobool = icmp ne i8** %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8***, i8**** %dptr, align 4
  %6 = load i8**, i8*** %5, align 4
  call void @freearray(i8** %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %x.addr, align 4
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i8*, i8** %x.addr, align 4
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %10 = load i32, i32* %flags, align 8
  %and = and i32 %10, 8192
  %call = call i8** @colonsplit(i8* %8, i32 %and)
  %11 = load i8***, i8**** %dptr, align 4
  store i8** %call, i8*** %11, align 4
  br label %if.end4

if.else:                                          ; preds = %if.end
  %call3 = call i8** @mkarray(i8* null)
  %12 = load i8***, i8**** %dptr, align 4
  store i8** %call3, i8*** %12, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  %14 = load i8*, i8** %nam, align 4
  %15 = load i8***, i8**** %dptr, align 4
  %16 = load i8**, i8*** %15, align 4
  call void @arrfixenv(i8* %14, i8** %16)
  %17 = load i8*, i8** %x.addr, align 4
  call void @zsfree(i8* %17)
  ret void
}

declare i8** @colonsplit(i8*, i32) #1

; Function Attrs: noinline nounwind
define i8* @tiedarrgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %dptr = alloca %struct.tieddata*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.tieddata*
  store %struct.tieddata* %2, %struct.tieddata** %dptr, align 4
  %3 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr = getelementptr inbounds %struct.tieddata, %struct.tieddata* %3, i32 0, i32 0
  %4 = load i8***, i8**** %arrptr, align 4
  %5 = load i8**, i8*** %4, align 4
  %tobool = icmp ne i8** %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr1 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %6, i32 0, i32 0
  %7 = load i8***, i8**** %arrptr1, align 4
  %8 = load i8**, i8*** %7, align 4
  %9 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %joinchar = getelementptr inbounds %struct.tieddata, %struct.tieddata* %9, i32 0, i32 1
  %10 = load i32, i32* %joinchar, align 4
  %conv = trunc i32 %10 to i8
  %conv2 = zext i8 %conv to i32
  %call = call i8* @zjoin(i8** %8, i32 %conv2, i32 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind
define void @tiedarrsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %dptr = alloca %struct.tieddata*, align 4
  %sepbuf = alloca [3 x i8], align 1
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct.tieddata*
  store %struct.tieddata* %2, %struct.tieddata** %dptr, align 4
  %3 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr = getelementptr inbounds %struct.tieddata, %struct.tieddata* %3, i32 0, i32 0
  %4 = load i8***, i8**** %arrptr, align 4
  %5 = load i8**, i8*** %4, align 4
  %tobool = icmp ne i8** %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr1 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %6, i32 0, i32 0
  %7 = load i8***, i8**** %arrptr1, align 4
  %8 = load i8**, i8*** %7, align 4
  call void @freearray(i8** %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %x.addr, align 4
  %tobool2 = icmp ne i8* %9, null
  br i1 %tobool2, label %if.then3, label %if.else23

if.then3:                                         ; preds = %if.end
  %10 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %joinchar = getelementptr inbounds %struct.tieddata, %struct.tieddata* %10, i32 0, i32 1
  %11 = load i32, i32* %joinchar, align 4
  %conv = trunc i32 %11 to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv4 = sext i16 %12 to i32
  %and = and i32 %conv4, 4096
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %sepbuf, i32 0, i32 0
  store i8 -125, i8* %arrayidx7, align 1
  %13 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %joinchar8 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %13, i32 0, i32 1
  %14 = load i32, i32* %joinchar8, align 4
  %xor = xor i32 %14, 32
  %conv9 = trunc i32 %xor to i8
  %arrayidx10 = getelementptr inbounds [3 x i8], [3 x i8]* %sepbuf, i32 0, i32 1
  store i8 %conv9, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [3 x i8], [3 x i8]* %sepbuf, i32 0, i32 2
  store i8 0, i8* %arrayidx11, align 1
  br label %if.end16

if.else:                                          ; preds = %if.then3
  %15 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %joinchar12 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %15, i32 0, i32 1
  %16 = load i32, i32* %joinchar12, align 4
  %conv13 = trunc i32 %16 to i8
  %arrayidx14 = getelementptr inbounds [3 x i8], [3 x i8]* %sepbuf, i32 0, i32 0
  store i8 %conv13, i8* %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds [3 x i8], [3 x i8]* %sepbuf, i32 0, i32 1
  store i8 0, i8* %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6
  %17 = load i8*, i8** %x.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %sepbuf, i32 0, i32 0
  %call = call i8** @sepsplit(i8* %17, i8* %arraydecay, i32 0, i32 0)
  %18 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr17 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %18, i32 0, i32 0
  %19 = load i8***, i8**** %arrptr17, align 4
  store i8** %call, i8*** %19, align 4
  %20 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %20, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %21 = load i32, i32* %flags, align 8
  %and18 = and i32 %21, 8192
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  %22 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr21 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %22, i32 0, i32 0
  %23 = load i8***, i8**** %arrptr21, align 4
  %24 = load i8**, i8*** %23, align 4
  call void @uniqarray(i8** %24)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16
  %25 = load i8*, i8** %x.addr, align 4
  call void @zsfree(i8* %25)
  br label %if.end25

if.else23:                                        ; preds = %if.end
  %26 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr24 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %26, i32 0, i32 0
  %27 = load i8***, i8**** %arrptr24, align 4
  store i8** null, i8*** %27, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.end22
  %28 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %28, i32 0, i32 6
  %29 = load i8*, i8** %ename, align 8
  %tobool26 = icmp ne i8* %29, null
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  %30 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node28 = getelementptr inbounds %struct.param, %struct.param* %30, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node28, i32 0, i32 1
  %31 = load i8*, i8** %nam, align 4
  %32 = load %struct.tieddata*, %struct.tieddata** %dptr, align 4
  %arrptr29 = getelementptr inbounds %struct.tieddata, %struct.tieddata* %32, i32 0, i32 0
  %33 = load i8***, i8**** %arrptr29, align 4
  %34 = load i8**, i8*** %33, align 4
  call void @arrfixenv(i8* %31, i8** %34)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25
  ret void
}

declare i8** @sepsplit(i8*, i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define void @tiedarrunsetfn(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %1 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %setfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %1, i32 0, i32 1
  %2 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void %2(%struct.param* %3, i8* null)
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %5 = load i8*, i8** %data, align 8
  call void @zfree(i8* %5, i32 8)
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u1 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 1
  %data2 = bitcast %union.anon* %u1 to i8**
  store i8* null, i8** %data2, align 8
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 6
  %8 = load i8*, i8** %ename, align 8
  call void @zsfree(i8* %8)
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %ename3 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 6
  store i8* null, i8** %ename3, align 8
  %10 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %11 = load i32, i32* %flags, align 8
  %and = and i32 %11, -65537
  store i32 %and, i32* %flags, align 8
  %12 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node4 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 2
  %13 = load i32, i32* %flags5, align 8
  %or = or i32 %13, 33554432
  store i32 %or, i32* %flags5, align 8
  ret void
}

; Function Attrs: noinline nounwind
define %struct.hashtable* @newuniqtable(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %ht = alloca %struct.hashtable*, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %call = call %struct.hashtable* @newhashtable(i32 %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** %ht, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 14
  store void (%struct.hashnode*)* @arrayuniq_freenode, void (%struct.hashnode*)** %freenode, align 4
  %12 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 15
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %printnode, align 4
  %13 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  ret %struct.hashtable* %13
}

declare void @disablehashnode(%struct.hashnode*, i32) #1

declare void @enablehashnode(%struct.hashnode*, i32) #1

; Function Attrs: noinline nounwind
define internal void @arrayuniq_freenode(%struct.hashnode* %hn) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @arrayuniq(i8** %x, i32 %freeok) #0 {
entry:
  %x.addr = alloca i8**, align 4
  %freeok.addr = alloca i32, align 4
  %it = alloca i8**, align 4
  %write_it = alloca i8**, align 4
  %array_size = alloca i32, align 4
  %ht = alloca %struct.hashtable*, align 4
  %new_node = alloca %struct.hashnode*, align 4
  store i8** %x, i8*** %x.addr, align 4
  store i32 %freeok, i32* %freeok.addr, align 4
  %0 = load i8**, i8*** %x.addr, align 4
  %call = call i32 @arrlen(i8** %0)
  store i32 %call, i32* %array_size, align 4
  %1 = load i32, i32* %array_size, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %array_size, align 4
  %cmp1 = icmp slt i32 %2, 10
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %array_size, align 4
  %add = add nsw i32 %3, 1
  %call2 = call %struct.hashtable* @newuniqtable(i32 %add)
  store %struct.hashtable* %call2, %struct.hashtable** %ht, align 4
  %tobool = icmp ne %struct.hashtable* %call2, null
  br i1 %tobool, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %4 = load i8**, i8*** %x.addr, align 4
  %5 = load i32, i32* %freeok.addr, align 4
  call void @simple_arrayuniq(i8** %4, i32 %5)
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load i8**, i8*** %x.addr, align 4
  store i8** %6, i8*** %it, align 4
  %7 = load i8**, i8*** %x.addr, align 4
  store i8** %7, i8*** %write_it, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %if.end4
  %8 = load i8**, i8*** %it, align 4
  %9 = load i8*, i8** %8, align 4
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %11 = load i8**, i8*** %it, align 4
  %12 = load i8*, i8** %11, align 4
  %call6 = call %struct.hashnode* @gethashnode2(%struct.hashtable* %10, i8* %12)
  %tobool7 = icmp ne %struct.hashnode* %call6, null
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  %call9 = call i8* @zhalloc(i32 12)
  %13 = bitcast i8* %call9 to %struct.hashnode*
  store %struct.hashnode* %13, %struct.hashnode** %new_node, align 4
  %14 = load %struct.hashnode*, %struct.hashnode** %new_node, align 4
  %tobool10 = icmp ne %struct.hashnode* %14, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.189, i32 0, i32 0))
  br label %for.end

if.end12:                                         ; preds = %if.then8
  %15 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %16 = load i8**, i8*** %it, align 4
  %17 = load i8*, i8** %16, align 4
  %18 = load %struct.hashnode*, %struct.hashnode** %new_node, align 4
  %19 = bitcast %struct.hashnode* %18 to i8*
  %call13 = call %struct.hashnode* @addhashnode2(%struct.hashtable* %15, i8* %17, i8* %19)
  %20 = load i8**, i8*** %it, align 4
  %21 = load i8*, i8** %20, align 4
  %22 = load i8**, i8*** %write_it, align 4
  store i8* %21, i8** %22, align 4
  %23 = load i8**, i8*** %it, align 4
  %24 = load i8**, i8*** %write_it, align 4
  %cmp14 = icmp ne i8** %23, %24
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %25 = load i8**, i8*** %it, align 4
  store i8* null, i8** %25, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %26 = load i8**, i8*** %write_it, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr, i8*** %write_it, align 4
  br label %if.end20

if.else:                                          ; preds = %for.body
  %27 = load i32, i32* %freeok.addr, align 4
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else
  %28 = load i8**, i8*** %it, align 4
  %29 = load i8*, i8** %28, align 4
  call void @zsfree(i8* %29)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else
  %30 = load i8**, i8*** %it, align 4
  store i8* null, i8** %30, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end16
  %31 = load i8**, i8*** %it, align 4
  %incdec.ptr21 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %incdec.ptr21, i8*** %it, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then11, %for.cond
  %32 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  call void @deletehashtable(%struct.hashtable* %32)
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  ret void
}

declare i8* @zheapptr(i8*) #1

; Function Attrs: noinline nounwind
define void @zhuniqarray(i8** %x) #0 {
entry:
  %x.addr = alloca i8**, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load i8**, i8*** %x.addr, align 4
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %x.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %x.addr, align 4
  call void @arrayuniq(i8** %3, i32 0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i32 @poundgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8**, i8*** @pparams, align 4
  %call = call i32 @arrlen(i8** %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define i32 @randomgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @rand()
  %and = and i32 %call, 32767
  ret i32 %and
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind
define void @randomsetfn(%struct.param* %pm, i32 %v) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %v.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  call void @srand(i32 %0)
  ret void
}

declare void @srand(i32) #1

; Function Attrs: noinline nounwind
define i32 @intsecondsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = bitcast %struct.timezone* %dummy_tz to i8*
  %call = call i32 @gettimeofday(%struct.timeval* %now, i8* %0)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %1 = load i32, i32* %tv_sec, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %sub = sub nsw i32 %1, %2
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %3 = load i32, i32* %tv_usec, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %3, %4
  %cond = select i1 %cmp, i32 1, i32 0
  %sub1 = sub nsw i32 %sub, %cond
  ret i32 %sub1
}

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

; Function Attrs: noinline nounwind
define void @intsecondssetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %diff = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = bitcast %struct.timezone* %dummy_tz to i8*
  %call = call i32 @gettimeofday(%struct.timeval* %now, i8* %0)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %1 = load i32, i32* %tv_sec, align 4
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %diff, align 4
  %3 = load i32, i32* %diff, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %5 = load i32, i32* %diff, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %6 = load i32, i32* %tv_usec, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 1), align 4
  ret void
}

declare void @zwarn(i8*, ...) #1

; Function Attrs: noinline nounwind
define double @floatsecondsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = bitcast %struct.timezone* %dummy_tz to i8*
  %call = call i32 @gettimeofday(%struct.timeval* %now, i8* %0)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %1 = load i32, i32* %tv_sec, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %sub = sub nsw i32 %1, %2
  %conv = sitofp i32 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %3 = load i32, i32* %tv_usec, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 1), align 4
  %sub1 = sub nsw i32 %3, %4
  %conv2 = sitofp i32 %sub1 to double
  %div = fdiv double %conv2, 1.000000e+06
  %add = fadd double %conv, %div
  ret double %add
}

; Function Attrs: noinline nounwind
define void @floatsecondssetfn(%struct.param* %pm, double %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca double, align 8
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store double %x, double* %x.addr, align 8
  %0 = bitcast %struct.timezone* %dummy_tz to i8*
  %call = call i32 @gettimeofday(%struct.timeval* %now, i8* %0)
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %1 = load i32, i32* %tv_sec, align 4
  %2 = load double, double* %x.addr, align 8
  %conv = fptosi double %2 to i32
  %sub = sub nsw i32 %1, %conv
  store i32 %sub, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %3 = load i32, i32* %tv_usec, align 4
  %4 = load double, double* %x.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %conv1 = fptosi double %5 to i32
  %conv2 = sitofp i32 %conv1 to double
  %sub3 = fsub double %4, %conv2
  %mul = fmul double %sub3, 1.000000e+06
  %conv4 = fptosi double %mul to i32
  %sub5 = sub nsw i32 %3, %conv4
  store i32 %sub5, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind
define double @getrawseconds() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 1), align 4
  %conv1 = sitofp i32 %1 to double
  %div = fdiv double %conv1, 1.000000e+06
  %add = fadd double %conv, %div
  ret double %add
}

; Function Attrs: noinline nounwind
define void @setrawseconds(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 0), align 4
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %conv1 = fptosi double %2 to i32
  %conv2 = sitofp i32 %conv1 to double
  %sub = fsub double %1, %conv2
  %mul = fmul double %sub, 1.000000e+06
  %conv3 = fptosi double %mul to i32
  store i32 %conv3, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @shtimer, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @setsecondstype(%struct.param* %pm, i32 %on, i32 %off) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.param*, align 4
  %on.addr = alloca i32, align 4
  %off.addr = alloca i32, align 4
  %newflags = alloca i32, align 4
  %tp = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %on, i32* %on.addr, align 4
  store i32 %off, i32* %off.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %2 = load i32, i32* %on.addr, align 4
  %or = or i32 %1, %2
  %3 = load i32, i32* %off.addr, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %or, %neg
  store i32 %and, i32* %newflags, align 4
  %4 = load i32, i32* %newflags, align 4
  %and1 = and i32 %4, 31
  store i32 %and1, i32* %tp, align 4
  %5 = load i32, i32* %tp, align 4
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %tp, align 4
  %cmp2 = icmp eq i32 %6, 8
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu to %struct.gsu_float**
  store %struct.gsu_float* @floatseconds_gsu, %struct.gsu_float** %f, align 8
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i32, i32* %tp, align 4
  %cmp3 = icmp eq i32 %8, 2
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu5 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu5 to %struct.gsu_integer**
  store %struct.gsu_integer* @intseconds_gsu, %struct.gsu_integer** %i, align 8
  br label %if.end

if.else6:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load i32, i32* %newflags, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  store i32 %10, i32* %flags9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.else6
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind
define i8* @usernamegetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i8* @get_username()
  ret i8* %call
}

declare i8* @get_username() #1

; Function Attrs: noinline nounwind
define void @usernamesetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %pswd = alloca %struct.passwd*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** %x.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %x.addr, align 4
  %call = call %struct.passwd* @getpwnam(i8* %1)
  store %struct.passwd* %call, %struct.passwd** %pswd, align 4
  %tobool1 = icmp ne %struct.passwd* %call, null
  br i1 %tobool1, label %land.lhs.true2, label %if.end18

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %2, i32 0, i32 2
  %3 = load i32, i32* %pw_uid, align 4
  %4 = load i32, i32* @cached_uid, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %land.lhs.true2
  %5 = load i8*, i8** %x.addr, align 4
  %6 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %6, i32 0, i32 3
  %7 = load i32, i32* %pw_gid, align 4
  %call3 = call i32 @initgroups(i8* %5, i32 %7)
  %8 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_gid4 = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 3
  %9 = load i32, i32* %pw_gid4, align 4
  %call5 = call i32 @setgid(i32 %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %call8 = call i32* @__errno_location()
  %10 = load i32, i32* %call8, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i32 %10)
  br label %if.end17

if.else:                                          ; preds = %if.then
  %11 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_uid9 = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 2
  %12 = load i32, i32* %pw_uid9, align 4
  %call10 = call i32 @setuid(i32 %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  %call13 = call i32* @__errno_location()
  %13 = load i32, i32* %call13, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i32 0, i32 0), i32 %13)
  br label %if.end

if.else14:                                        ; preds = %if.else
  %14 = load i8*, i8** @cached_username, align 4
  call void @zsfree(i8* %14)
  %15 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 0
  %16 = load i8*, i8** %pw_name, align 4
  %call15 = call i8* @ztrdup(i8* %16)
  store i8* %call15, i8** @cached_username, align 4
  %17 = load %struct.passwd*, %struct.passwd** %pswd, align 4
  %pw_uid16 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 2
  %18 = load i32, i32* %pw_uid16, align 4
  store i32 %18, i32* @cached_uid, align 4
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %land.lhs.true2, %land.lhs.true, %entry
  %19 = load i8*, i8** %x.addr, align 4
  call void @zsfree(i8* %19)
  ret void
}

declare %struct.passwd* @getpwnam(i8*) #1

declare i32 @initgroups(i8*, i32) #1

declare i32 @setgid(i32) #1

declare i32* @__errno_location() #1

declare i32 @setuid(i32) #1

; Function Attrs: noinline nounwind
define i32 @uidgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @getuid()
  ret i32 %call
}

declare i32 @getuid() #1

; Function Attrs: noinline nounwind
define void @uidsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @setuid(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location()
  %1 = load i32, i32* %call1, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define i32 @euidgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @geteuid()
  ret i32 %call
}

declare i32 @geteuid() #1

; Function Attrs: noinline nounwind
define void @euidsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @seteuid(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location()
  %1 = load i32, i32* %call1, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @seteuid(i32) #1

; Function Attrs: noinline nounwind
define i32 @gidgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @getgid()
  ret i32 %call
}

declare i32 @getgid() #1

; Function Attrs: noinline nounwind
define void @gidsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @setgid(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location()
  %1 = load i32, i32* %call1, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define i32 @egidgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @getegid()
  ret i32 %call
}

declare i32 @getegid() #1

; Function Attrs: noinline nounwind
define void @egidsetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @setegid(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location()
  %1 = load i32, i32* %call1, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @setegid(i32) #1

; Function Attrs: noinline nounwind
define i32 @ttyidlegetfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.param*, align 4
  %ttystat = alloca %struct.stat, align 8
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i32, i32* @SHTTY, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @SHTTY, align 4
  %call = call i32 @fstat(i32 %1, %struct.stat* %ttystat)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @time(i32* null)
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %ttystat, i32 0, i32 18
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %2 = load i32, i32* %tv_sec, align 8
  %sub = sub nsw i32 %call1, %2
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare i32 @fstat(i32, %struct.stat*) #1

declare i32 @time(i32*) #1

; Function Attrs: noinline nounwind
define i8* @ifsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8*, i8** @ifs, align 4
  ret i8* %0
}

; Function Attrs: noinline nounwind
define void @ifssetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** @ifs, align 4
  call void @zsfree(i8* %0)
  %1 = load i8*, i8** %x.addr, align 4
  store i8* %1, i8** @ifs, align 4
  call void @inittyptab()
  ret void
}

declare void @inittyptab() #1

; Function Attrs: noinline nounwind
define void @lc_allsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp10 = alloca %struct.__sigset_t, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %1 = load i8*, i8** %x.addr, align 4
  call void @strsetfn(%struct.param* %0, i8* %1)
  %2 = load i8*, i8** %x.addr, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %x.addr, align 4
  %4 = load i8, i8* %3, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @getsparam_u(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0))
  store i8* %call, i8** %x.addr, align 4
  %5 = load i8*, i8** %x.addr, align 4
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8*, i8** %x.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %9 = load i8*, i8** %x.addr, align 4
  call void @setlang(i8* %9)
  br label %do.body

do.body:                                          ; preds = %if.then4
  %10 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool5 = icmp ne i32 %dec, 0
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body7
  %11 = load i32, i32* @queue_front, align 4
  %12 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %11, %12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %13, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %14 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %14
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %15 = bitcast %struct.__sigset_t* %oset to i8*
  %16 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 4, i1 false)
  %17 = load i32, i32* @queue_front, align 4
  %arrayidx9 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %17
  %18 = load i32, i32* %arrayidx9, align 4
  call void @zhandler(i32 %18)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp10, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end11

do.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %land.lhs.true, %if.then
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %19 = load i8*, i8** %x.addr, align 4
  %call13 = call i8* @unmeta(i8* %19)
  %call14 = call i8* @setlocale(i32 6, i8* %call13)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end12
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setlang(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 4
  %ln = alloca %struct.localename*, align 4
  %x2 = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp20 = alloca %struct.__sigset_t, align 4
  store i8* %x, i8** %x.addr, align 4
  %call = call i8* @getsparam_u(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0))
  store i8* %call, i8** %x2, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i8*, i8** %x2, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.end22

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8*, i8** %x.addr, align 4
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i8*, i8** %x.addr, align 4
  %call3 = call i8* @unmeta(i8* %3)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), %cond.false ]
  %call4 = call i8* @setlocale(i32 6, i8* %cond)
  %4 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  store %struct.localename* getelementptr inbounds ([6 x %struct.localename], [6 x %struct.localename]* @lc_names, i32 0, i32 0), %struct.localename** %ln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load %struct.localename*, %struct.localename** %ln, align 4
  %name = getelementptr inbounds %struct.localename, %struct.localename* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 4
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.localename*, %struct.localename** %ln, align 4
  %name6 = getelementptr inbounds %struct.localename, %struct.localename* %7, i32 0, i32 0
  %8 = load i8*, i8** %name6, align 4
  %call7 = call i8* @getsparam_u(i8* %8)
  store i8* %call7, i8** %x.addr, align 4
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %land.lhs.true9, label %if.end14

land.lhs.true9:                                   ; preds = %for.body
  %9 = load i8*, i8** %x.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true9
  %11 = load %struct.localename*, %struct.localename** %ln, align 4
  %category = getelementptr inbounds %struct.localename, %struct.localename* %11, i32 0, i32 1
  %12 = load i32, i32* %category, align 4
  %13 = load i8*, i8** %x.addr, align 4
  %call13 = call i8* @setlocale(i32 %12, i8* %13)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %14 = load %struct.localename*, %struct.localename** %ln, align 4
  %incdec.ptr = getelementptr inbounds %struct.localename, %struct.localename* %14, i32 1
  store %struct.localename* %incdec.ptr, %struct.localename** %ln, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %15 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool15 = icmp ne i32 %dec, 0
  br i1 %tobool15, label %if.end21, label %if.then16

if.then16:                                        ; preds = %do.body
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body17
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

do.end22:                                         ; preds = %if.then, %if.end21
  ret void
}

declare i8* @setlocale(i32, i8*) #1

declare i8* @unmeta(i8*) #1

; Function Attrs: noinline nounwind
define void @langsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %1 = load i8*, i8** %x.addr, align 4
  call void @strsetfn(%struct.param* %0, i8* %1)
  %2 = load i8*, i8** %x.addr, align 4
  %call = call i8* @unmeta(i8* %2)
  call void @setlang(i8* %call)
  ret void
}

; Function Attrs: noinline nounwind
define void @lcsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %x2 = alloca i8*, align 4
  %ln = alloca %struct.localename*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp26 = alloca %struct.__sigset_t, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %1 = load i8*, i8** %x.addr, align 4
  call void @strsetfn(%struct.param* %0, i8* %1)
  %call = call i8* @getsparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0))
  store i8* %call, i8** %x2, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %x2, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.end28

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %5 = load i8*, i8** %x.addr, align 4
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i8*, i8** %x.addr, align 4
  %7 = load i8, i8* %6, align 1
  %tobool3 = icmp ne i8 %7, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %call5 = call i8* @getsparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0))
  store i8* %call5, i8** %x.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false
  %8 = load i8*, i8** %x.addr, align 4
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %land.lhs.true8, label %if.end20

land.lhs.true8:                                   ; preds = %if.end6
  %9 = load i8*, i8** %x.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv9 = sext i8 %10 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %land.lhs.true8
  store %struct.localename* getelementptr inbounds ([6 x %struct.localename], [6 x %struct.localename]* @lc_names, i32 0, i32 0), %struct.localename** %ln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %11 = load %struct.localename*, %struct.localename** %ln, align 4
  %name = getelementptr inbounds %struct.localename, %struct.localename* %11, i32 0, i32 0
  %12 = load i8*, i8** %name, align 4
  %tobool12 = icmp ne i8* %12, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.localename*, %struct.localename** %ln, align 4
  %name13 = getelementptr inbounds %struct.localename, %struct.localename* %13, i32 0, i32 0
  %14 = load i8*, i8** %name13, align 4
  %15 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %16 = load i8*, i8** %nam, align 4
  %call14 = call i32 @strcmp(i8* %14, i8* %16)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %for.body
  %17 = load %struct.localename*, %struct.localename** %ln, align 4
  %category = getelementptr inbounds %struct.localename, %struct.localename* %17, i32 0, i32 1
  %18 = load i32, i32* %category, align 4
  %19 = load i8*, i8** %x.addr, align 4
  %call17 = call i8* @unmeta(i8* %19)
  %call18 = call i8* @setlocale(i32 %18, i8* %call17)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %20 = load %struct.localename*, %struct.localename** %ln, align 4
  %incdec.ptr = getelementptr inbounds %struct.localename, %struct.localename* %20, i32 1
  store %struct.localename* %incdec.ptr, %struct.localename** %ln, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end20

if.end20:                                         ; preds = %for.end, %land.lhs.true8, %if.end6
  br label %do.body

do.body:                                          ; preds = %if.end20
  %21 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool21 = icmp ne i32 %dec, 0
  br i1 %tobool21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %do.body
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body23
  %22 = load i32, i32* @queue_front, align 4
  %23 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %22, %23
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %24, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %25 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %25
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %26 = bitcast %struct.__sigset_t* %oset to i8*
  %27 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 4, i1 false)
  %28 = load i32, i32* @queue_front, align 4
  %arrayidx25 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %28
  %29 = load i32, i32* %arrayidx25, align 4
  call void @zhandler(i32 %29)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp26, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end27

if.end27:                                         ; preds = %do.end, %do.body
  br label %do.end28

do.end28:                                         ; preds = %if.then, %if.end27
  ret void
}

; Function Attrs: noinline nounwind
define i32 @histsizegetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i32, i32* @histsiz, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind
define void @histsizesetfn(%struct.param* %pm, i32 %v) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %v.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  store i32 %0, i32* @histsiz, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @histsiz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @resizehistents()
  ret void
}

declare void @resizehistents() #1

; Function Attrs: noinline nounwind
define i32 @savehistsizegetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i32, i32* @savehistsiz, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind
define void @savehistsizesetfn(%struct.param* %pm, i32 %v) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %v.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  store i32 %0, i32* @savehistsiz, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @savehistsiz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @errnosetfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32* @__errno_location()
  store i32 %0, i32* %call, align 4
  %call1 = call i32* @__errno_location()
  %1 = load i32, i32* %call1, align 4
  %2 = load i32, i32* %x.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define i32 @errnogetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32* @__errno_location()
  %0 = load i32, i32* %call, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind
define i8* @keyboardhackgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8, i8* @keyboardhackchar, align 1
  store i8 %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @keyboardhackgetfn.buf, i32 0, i32 0), align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @keyboardhackgetfn.buf, i32 0, i32 1), align 1
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @keyboardhackgetfn.buf, i32 0, i32 0)
}

; Function Attrs: noinline nounwind
define void @keyboardhacksetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** %x.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %x.addr, align 4
  %call = call i8* @unmetafy(i8* %1, i32* %len)
  %2 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 1, i32* %len, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i8*, i8** %x.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 %6
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %call3 = call i32 @isascii(i32 %conv)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end10, label %if.then9

cond.false:                                       ; preds = %for.body
  %8 = load i8*, i8** %x.addr, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i32 %9
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp ult i32 %conv6, 128
  br i1 %cmp7, label %if.end10, label %if.then9

if.then9:                                         ; preds = %cond.false, %cond.true
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end17

if.end10:                                         ; preds = %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %len, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %cond.true12, label %cond.false15

cond.true12:                                      ; preds = %for.end
  %13 = load i8*, i8** %x.addr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i32 0
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  br label %cond.end

cond.false15:                                     ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false15, %cond.true12
  %cond = phi i32 [ %conv14, %cond.true12 ], [ 0, %cond.false15 ]
  %conv16 = trunc i32 %cond to i8
  store i8 %conv16, i8* @keyboardhackchar, align 1
  %15 = load i8*, i8** %x.addr, align 4
  call void @free(i8* %15)
  br label %if.end17

if.else:                                          ; preds = %entry
  store i8 0, i8* @keyboardhackchar, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.else, %cond.end
  ret void
}

declare i32 @isascii(i32) #1

; Function Attrs: noinline nounwind
define i8* @histcharsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8, i8* @bangchar, align 1
  store i8 %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @histcharsgetfn.buf, i32 0, i32 0), align 1
  %1 = load i8, i8* @hatchar, align 1
  store i8 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @histcharsgetfn.buf, i32 0, i32 1), align 1
  %2 = load i8, i8* @hashchar, align 1
  store i8 %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @histcharsgetfn.buf, i32 0, i32 2), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @histcharsgetfn.buf, i32 0, i32 3), align 1
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @histcharsgetfn.buf, i32 0, i32 0)
}

; Function Attrs: noinline nounwind
define void @histcharssetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** %x.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %x.addr, align 4
  %call = call i8* @unmetafy(i8* %1, i32* %len)
  %2 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 3, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i8*, i8** %x.addr, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 %6
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %call3 = call i32 @isascii(i32 %conv)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end10, label %if.then9

cond.false:                                       ; preds = %for.body
  %8 = load i8*, i8** %x.addr, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i32 %9
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp ult i32 %conv6, 128
  br i1 %cmp7, label %if.end10, label %if.then9

if.then9:                                         ; preds = %cond.false, %cond.true
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.63, i32 0, i32 0))
  br label %return

if.end10:                                         ; preds = %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %len, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %cond.true12, label %cond.false15

cond.true12:                                      ; preds = %for.end
  %13 = load i8*, i8** %x.addr, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i32 0
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  br label %cond.end

cond.false15:                                     ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false15, %cond.true12
  %cond = phi i32 [ %conv14, %cond.true12 ], [ 0, %cond.false15 ]
  %conv16 = trunc i32 %cond to i8
  store i8 %conv16, i8* @bangchar, align 1
  %15 = load i32, i32* %len, align 4
  %cmp17 = icmp sgt i32 %15, 1
  br i1 %cmp17, label %cond.true19, label %cond.false22

cond.true19:                                      ; preds = %cond.end
  %16 = load i8*, i8** %x.addr, align 4
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i32 1
  %17 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true19
  %cond24 = phi i32 [ %conv21, %cond.true19 ], [ 0, %cond.false22 ]
  %conv25 = trunc i32 %cond24 to i8
  store i8 %conv25, i8* @hatchar, align 1
  %18 = load i32, i32* %len, align 4
  %cmp26 = icmp sgt i32 %18, 2
  br i1 %cmp26, label %cond.true28, label %cond.false31

cond.true28:                                      ; preds = %cond.end23
  %19 = load i8*, i8** %x.addr, align 4
  %arrayidx29 = getelementptr inbounds i8, i8* %19, i32 2
  %20 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %20 to i32
  br label %cond.end32

cond.false31:                                     ; preds = %cond.end23
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.true28
  %cond33 = phi i32 [ %conv30, %cond.true28 ], [ 0, %cond.false31 ]
  %conv34 = trunc i32 %cond33 to i8
  store i8 %conv34, i8* @hashchar, align 1
  %21 = load i8*, i8** %x.addr, align 4
  call void @free(i8* %21)
  br label %if.end35

if.else:                                          ; preds = %entry
  store i8 33, i8* @bangchar, align 1
  store i8 35, i8* @hashchar, align 1
  store i8 94, i8* @hatchar, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.else, %cond.end32
  call void @inittyptab()
  br label %return

return:                                           ; preds = %if.end35, %if.then9
  ret void
}

; Function Attrs: noinline nounwind
define i8* @homegetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8*, i8** @home, align 4
  ret i8* %0
}

; Function Attrs: noinline nounwind
define void @homesetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** @home, align 4
  call void @zsfree(i8* %0)
  %1 = load i8*, i8** %x.addr, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 31), align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i8*, i8** %x.addr, align 4
  %call = call i8* @xsymlink(i8* %3, i32 0)
  store i8* %call, i8** @home, align 4
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true2
  %4 = load i8*, i8** %x.addr, align 4
  call void @zsfree(i8* %4)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %5 = load i8*, i8** %x.addr, align 4
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %6 = load i8*, i8** %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call5 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %call5, %cond.false ]
  store i8* %cond, i8** @home, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %call6 = call %struct.nameddir* @finddir(i8* null)
  ret void
}

declare i8* @xsymlink(i8*, i32) #1

declare %struct.nameddir* @finddir(i8*) #1

; Function Attrs: noinline nounwind
define i8* @wordcharsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8*, i8** @wordchars, align 4
  ret i8* %0
}

; Function Attrs: noinline nounwind
define void @wordcharssetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** @wordchars, align 4
  call void @zsfree(i8* %0)
  %1 = load i8*, i8** %x.addr, align 4
  store i8* %1, i8** @wordchars, align 4
  call void @inittyptab()
  ret void
}

; Function Attrs: noinline nounwind
define i8* @underscoregetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %u = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8*, i8** @zunderscore, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %u, align 4
  %1 = load i8*, i8** %u, align 4
  call void @untokenize(i8* %1)
  %2 = load i8*, i8** %u, align 4
  ret i8* %2
}

; Function Attrs: noinline nounwind
define i8* @termgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8*, i8** @term, align 4
  ret i8* %0
}

; Function Attrs: noinline nounwind
define void @termsetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** @term, align 4
  call void @zsfree(i8* %0)
  %1 = load i8*, i8** %x.addr, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** @term, align 4
  call void @term_reinit_from_pm()
  ret void
}

; Function Attrs: noinline nounwind
define internal void @term_reinit_from_pm() #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @term, align 4
  %2 = load i8, i8* %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* @termflags, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* @termflags, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %call = call i32 @init_term()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i8* @terminfogetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8*, i8** @zsh_terminfo, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @zsh_terminfo, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ %call, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind
define void @terminfosetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** @zsh_terminfo, align 4
  call void @zsfree(i8* %0)
  %1 = load i8*, i8** %x.addr, align 4
  store i8* %1, i8** @zsh_terminfo, align 4
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %x.addr, align 4
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %6 = load i8*, i8** %x.addr, align 4
  call void @addenv(%struct.param* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @term_reinit_from_pm()
  ret void
}

; Function Attrs: noinline nounwind
define i8* @terminfodirsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8*, i8** @zsh_terminfodirs, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @zsh_terminfodirs, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ %call, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind
define void @terminfodirssetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** @zsh_terminfodirs, align 4
  call void @zsfree(i8* %0)
  %1 = load i8*, i8** %x.addr, align 4
  store i8* %1, i8** @zsh_terminfodirs, align 4
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %x.addr, align 4
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %6 = load i8*, i8** %x.addr, align 4
  call void @addenv(%struct.param* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @term_reinit_from_pm()
  ret void
}

; Function Attrs: noinline nounwind
define i32 @zputenv(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %ret = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  store i8* %0, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %ptr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i8*, i8** %ptr, align 4
  %4 = load i8, i8* %3, align 1
  %conv1 = zext i8 %4 to i32
  %cmp = icmp slt i32 %conv1, 128
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %ptr, align 4
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp sge i32 %conv6, 128
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end
  %11 = load i8*, i8** %ptr, align 4
  %12 = load i8, i8* %11, align 1
  %tobool9 = icmp ne i8 %12, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %13 = load i8*, i8** %ptr, align 4
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %str.addr, align 4
  %15 = load i8*, i8** %ptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %15, i32 1
  %call = call i32 @setenv(i8* %14, i8* %add.ptr, i32 1)
  store i32 %call, i32* %ret, align 4
  %16 = load i8*, i8** %ptr, align 4
  store i8 61, i8* %16, align 1
  br label %if.end

if.else11:                                        ; preds = %if.else
  %17 = load i8*, i8** %str.addr, align 4
  %18 = load i8*, i8** %ptr, align 4
  %call12 = call i32 @setenv(i8* %17, i8* %18, i32 1)
  store i32 %call12, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare i32 @setenv(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define i8* @zgetenv(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i8* @getenv(i8* %0)
  ret i8* %call
}

declare i8* @getenv(i8*) #1

declare i32 @unsetenv(i8*) #1

; Function Attrs: noinline nounwind
define void @convbase_ptr(i8* %s, i32 %v, i32 %base, i32* %ndigits) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %v.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %ndigits.addr = alloca i32*, align 4
  %digs = alloca i32, align 4
  %x = alloca i32, align 4
  %dig = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32* %ndigits, i32** %ndigits.addr, align 4
  store i32 0, i32* %digs, align 4
  %0 = load i32, i32* %v.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  store i8 45, i8* %1, align 1
  %2 = load i32, i32* %v.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %v.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %base.addr, align 4
  %cmp1 = icmp sge i32 %3, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %base.addr, align 4
  %cmp2 = icmp sle i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 -10, i32* %base.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %5 = load i32, i32* %base.addr, align 4
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %if.then6, label %if.else31

if.then6:                                         ; preds = %if.end4
  %6 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 28), align 1
  %conv = sext i8 %6 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %if.then6
  %7 = load i32, i32* %base.addr, align 4
  %cmp8 = icmp eq i32 %7, 16
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true7
  %8 = load i8*, i8** %s.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true7, %if.then6
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 28), align 1
  %conv11 = sext i8 %9 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %land.lhs.true13, label %if.else21

land.lhs.true13:                                  ; preds = %if.else
  %10 = load i32, i32* %base.addr, align 4
  %cmp14 = icmp eq i32 %10, 8
  br i1 %cmp14, label %land.lhs.true16, label %if.else21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 125), align 1
  %conv17 = sext i8 %11 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %land.lhs.true16
  %12 = load i8*, i8** %s.addr, align 4
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end28

if.else21:                                        ; preds = %land.lhs.true16, %land.lhs.true13, %if.else
  %13 = load i32, i32* %base.addr, align 4
  %cmp22 = icmp ne i32 %13, 10
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else21
  %14 = load i8*, i8** %s.addr, align 4
  %15 = load i32, i32* %base.addr, align 4
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i32 %15)
  br label %if.end27

if.else26:                                        ; preds = %if.else21
  %16 = load i8*, i8** %s.addr, align 4
  store i8 0, i8* %16, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then24
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then19
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then10
  %17 = load i8*, i8** %s.addr, align 4
  %call30 = call i32 @strlen(i8* %17)
  %18 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %18, i32 %call30
  store i8* %add.ptr, i8** %s.addr, align 4
  br label %if.end33

if.else31:                                        ; preds = %if.end4
  %19 = load i32, i32* %base.addr, align 4
  %sub32 = sub nsw i32 0, %19
  store i32 %sub32, i32* %base.addr, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.end29
  %20 = load i32, i32* %v.addr, align 4
  store i32 %20, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %21 = load i32, i32* %x, align 4
  %tobool34 = icmp ne i32 %21, 0
  br i1 %tobool34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %base.addr, align 4
  %23 = load i32, i32* %x, align 4
  %div = udiv i32 %23, %22
  store i32 %div, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %digs, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %digs, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %digs, align 4
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.end
  store i32 1, i32* %digs, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.end
  %26 = load i32*, i32** %ndigits.addr, align 4
  %tobool38 = icmp ne i32* %26, null
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  %27 = load i32, i32* %digs, align 4
  %28 = load i32*, i32** %ndigits.addr, align 4
  store i32 %27, i32* %28, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37
  %29 = load i8*, i8** %s.addr, align 4
  %30 = load i32, i32* %digs, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %digs, align 4
  %arrayidx = getelementptr inbounds i8, i8* %29, i32 %30
  store i8 0, i8* %arrayidx, align 1
  %31 = load i32, i32* %v.addr, align 4
  store i32 %31, i32* %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end40
  %32 = load i32, i32* %digs, align 4
  %cmp41 = icmp sge i32 %32, 0
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* %base.addr, align 4
  %rem = urem i32 %33, %34
  store i32 %rem, i32* %dig, align 4
  %35 = load i32, i32* %dig, align 4
  %cmp43 = icmp slt i32 %35, 10
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %36 = load i32, i32* %dig, align 4
  %add = add nsw i32 48, %36
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %37 = load i32, i32* %dig, align 4
  %sub45 = sub nsw i32 %37, 10
  %add46 = add nsw i32 %sub45, 65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add46, %cond.false ]
  %conv47 = trunc i32 %cond to i8
  %38 = load i8*, i8** %s.addr, align 4
  %39 = load i32, i32* %digs, align 4
  %dec48 = add nsw i32 %39, -1
  store i32 %dec48, i32* %digs, align 4
  %arrayidx49 = getelementptr inbounds i8, i8* %38, i32 %39
  store i8 %conv47, i8* %arrayidx49, align 1
  %40 = load i32, i32* %base.addr, align 4
  %41 = load i32, i32* %x, align 4
  %div50 = udiv i32 %41, %40
  store i32 %div50, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @__FLOAT_BITS(float %__f) #0 {
entry:
  %__f.addr = alloca float, align 4
  %__u = alloca %union.anon.2, align 4
  store float %__f, float* %__f.addr, align 4
  %0 = load float, float* %__f.addr, align 4
  %__f1 = bitcast %union.anon.2* %__u to float*
  store float %0, float* %__f1, align 4
  %__i = bitcast %union.anon.2* %__u to i32*
  %1 = load i32, i32* %__i, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal i64 @__DOUBLE_BITS(double %__f) #0 {
entry:
  %__f.addr = alloca double, align 8
  %__u = alloca %union.anon.3, align 8
  store double %__f, double* %__f.addr, align 8
  %0 = load double, double* %__f.addr, align 8
  %__f1 = bitcast %union.anon.3* %__u to double*
  store double %0, double* %__f1, align 8
  %__i = bitcast %union.anon.3* %__u to i64*
  %1 = load i64, i64* %__i, align 8
  ret i64 %1
}

declare i32 @__fpclassifyl(double) #1

; Function Attrs: noinline nounwind
define void @startparamscope() #0 {
entry:
  %0 = load i32, i32* @locallevel, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @locallevel, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @endparamscope() #0 {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32, i32* @locallevel, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @locallevel, align 4
  %call = call i32 @saveandpophiststack(i32 0, i32 32768)
  %2 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call1 = call i32 @scanhashtable(%struct.hashtable* %2, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @scanendscope, i32 0)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @queueing_enabled, align 4
  %dec2 = add nsw i32 %3, -1
  store i32 %dec2, i32* @queueing_enabled, align 4
  %tobool = icmp ne i32 %dec2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body3
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
  %arrayidx4 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %10
  %11 = load i32, i32* %arrayidx4, align 4
  call void @zhandler(i32 %11)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp5, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  ret void
}

declare i32 @saveandpophiststack(i32, i32) #1

; Function Attrs: noinline nounwind
define internal void @scanendscope(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %tpm = alloca %struct.param*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %pm, align 4
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 8
  %3 = load i32, i32* %level, align 8
  %4 = load i32, i32* @locallevel, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end64

if.then:                                          ; preds = %entry
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %6 = load i32, i32* %flags1, align 8
  %and = and i32 %6, 71303168
  %cmp2 = icmp eq i32 %and, 4194304
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 7
  %8 = load %struct.param*, %struct.param** %old, align 4
  store %struct.param* %8, %struct.param** %tpm, align 4
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %node4 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %10 = load i8*, i8** %nam, align 4
  %call = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %12 = load %struct.param*, %struct.param** %tpm, align 4
  %node6 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %13 = load i32, i32* %flags7, align 8
  %and8 = and i32 %13, 31
  %14 = load %struct.param*, %struct.param** %pm, align 4
  %node9 = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 0
  %flags10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 2
  %15 = load i32, i32* %flags10, align 8
  %and11 = and i32 %15, 31
  %call12 = call i32 @setsecondstype(%struct.param* %11, i32 %and8, i32 %and11)
  %16 = load %struct.param*, %struct.param** %tpm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 1
  %dval = bitcast %union.anon* %u to double*
  %17 = load double, double* %dval, align 8
  call void @setrawseconds(double %17)
  %18 = load %struct.param*, %struct.param** %tpm, align 4
  %node13 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 0
  %flags14 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node13, i32 0, i32 2
  %19 = load i32, i32* %flags14, align 8
  %or = or i32 %19, 268435456
  store i32 %or, i32* %flags14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %20 = load %struct.param*, %struct.param** %tpm, align 4
  %old15 = getelementptr inbounds %struct.param, %struct.param* %20, i32 0, i32 7
  %21 = load %struct.param*, %struct.param** %old15, align 4
  %22 = load %struct.param*, %struct.param** %pm, align 4
  %old16 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 7
  store %struct.param* %21, %struct.param** %old16, align 4
  %23 = load %struct.param*, %struct.param** %tpm, align 4
  %node17 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 0
  %flags18 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node17, i32 0, i32 2
  %24 = load i32, i32* %flags18, align 8
  %and19 = and i32 %24, -268435457
  %25 = load %struct.param*, %struct.param** %pm, align 4
  %node20 = getelementptr inbounds %struct.param, %struct.param* %25, i32 0, i32 0
  %flags21 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node20, i32 0, i32 2
  store i32 %and19, i32* %flags21, align 8
  %26 = load %struct.param*, %struct.param** %tpm, align 4
  %level22 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 8
  %27 = load i32, i32* %level22, align 8
  %28 = load %struct.param*, %struct.param** %pm, align 4
  %level23 = getelementptr inbounds %struct.param, %struct.param* %28, i32 0, i32 8
  store i32 %27, i32* %level23, align 8
  %29 = load %struct.param*, %struct.param** %tpm, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 3
  %30 = load i32, i32* %base, align 4
  %31 = load %struct.param*, %struct.param** %pm, align 4
  %base24 = getelementptr inbounds %struct.param, %struct.param* %31, i32 0, i32 3
  store i32 %30, i32* %base24, align 4
  %32 = load %struct.param*, %struct.param** %tpm, align 4
  %width = getelementptr inbounds %struct.param, %struct.param* %32, i32 0, i32 4
  %33 = load i32, i32* %width, align 8
  %34 = load %struct.param*, %struct.param** %pm, align 4
  %width25 = getelementptr inbounds %struct.param, %struct.param* %34, i32 0, i32 4
  store i32 %33, i32* %width25, align 8
  %35 = load %struct.param*, %struct.param** %pm, align 4
  %env = getelementptr inbounds %struct.param, %struct.param* %35, i32 0, i32 5
  %36 = load i8*, i8** %env, align 4
  %tobool26 = icmp ne i8* %36, null
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  %37 = load %struct.param*, %struct.param** %pm, align 4
  call void @delenv(%struct.param* %37)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end
  %38 = load %struct.param*, %struct.param** %tpm, align 4
  %node29 = getelementptr inbounds %struct.param, %struct.param* %38, i32 0, i32 0
  %flags30 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node29, i32 0, i32 2
  %39 = load i32, i32* %flags30, align 8
  %and31 = and i32 %39, 268436480
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.end55, label %if.then33

if.then33:                                        ; preds = %if.end28
  %40 = load %struct.param*, %struct.param** %pm, align 4
  %node34 = getelementptr inbounds %struct.param, %struct.param* %40, i32 0, i32 0
  %flags35 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node34, i32 0, i32 2
  %41 = load i32, i32* %flags35, align 8
  %and36 = and i32 %41, 31
  switch i32 %and36, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb38
    i32 4, label %sw.bb42
    i32 8, label %sw.bb42
    i32 1, label %sw.bb47
    i32 16, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.then33
  %42 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %42, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %43 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %setfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %43, i32 0, i32 1
  %44 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn, align 4
  %45 = load %struct.param*, %struct.param** %pm, align 4
  %46 = load %struct.param*, %struct.param** %tpm, align 4
  %u37 = getelementptr inbounds %struct.param, %struct.param* %46, i32 0, i32 1
  %str = bitcast %union.anon* %u37 to i8**
  %47 = load i8*, i8** %str, align 8
  call void %44(%struct.param* %45, i8* %47)
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then33
  %48 = load %struct.param*, %struct.param** %pm, align 4
  %gsu39 = getelementptr inbounds %struct.param, %struct.param* %48, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu39 to %struct.gsu_integer**
  %49 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %setfn40 = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %49, i32 0, i32 1
  %50 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %setfn40, align 4
  %51 = load %struct.param*, %struct.param** %pm, align 4
  %52 = load %struct.param*, %struct.param** %tpm, align 4
  %u41 = getelementptr inbounds %struct.param, %struct.param* %52, i32 0, i32 1
  %val = bitcast %union.anon* %u41 to i32*
  %53 = load i32, i32* %val, align 8
  call void %50(%struct.param* %51, i32 %53)
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then33, %if.then33
  %54 = load %struct.param*, %struct.param** %pm, align 4
  %gsu43 = getelementptr inbounds %struct.param, %struct.param* %54, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu43 to %struct.gsu_float**
  %55 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %setfn44 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %55, i32 0, i32 1
  %56 = load void (%struct.param*, double)*, void (%struct.param*, double)** %setfn44, align 4
  %57 = load %struct.param*, %struct.param** %pm, align 4
  %58 = load %struct.param*, %struct.param** %tpm, align 4
  %u45 = getelementptr inbounds %struct.param, %struct.param* %58, i32 0, i32 1
  %dval46 = bitcast %union.anon* %u45 to double*
  %59 = load double, double* %dval46, align 8
  call void %56(%struct.param* %57, double %59)
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.then33
  %60 = load %struct.param*, %struct.param** %pm, align 4
  %gsu48 = getelementptr inbounds %struct.param, %struct.param* %60, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu48 to %struct.gsu_array**
  %61 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %setfn49 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %61, i32 0, i32 1
  %62 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn49, align 4
  %63 = load %struct.param*, %struct.param** %pm, align 4
  %64 = load %struct.param*, %struct.param** %tpm, align 4
  %u50 = getelementptr inbounds %struct.param, %struct.param* %64, i32 0, i32 1
  %arr = bitcast %union.anon* %u50 to i8***
  %65 = load i8**, i8*** %arr, align 8
  call void %62(%struct.param* %63, i8** %65)
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.then33
  %66 = load %struct.param*, %struct.param** %pm, align 4
  %gsu52 = getelementptr inbounds %struct.param, %struct.param* %66, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu52 to %struct.gsu_hash**
  %67 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %setfn53 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %67, i32 0, i32 1
  %68 = load void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, %struct.hashtable*)** %setfn53, align 4
  %69 = load %struct.param*, %struct.param** %pm, align 4
  %70 = load %struct.param*, %struct.param** %tpm, align 4
  %u54 = getelementptr inbounds %struct.param, %struct.param* %70, i32 0, i32 1
  %hash = bitcast %union.anon* %u54 to %struct.hashtable**
  %71 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  call void %68(%struct.param* %69, %struct.hashtable* %71)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then33, %sw.bb51, %sw.bb47, %sw.bb42, %sw.bb38, %sw.bb
  br label %if.end55

if.end55:                                         ; preds = %sw.epilog, %if.end28
  %72 = load %struct.param*, %struct.param** %tpm, align 4
  %73 = bitcast %struct.param* %72 to i8*
  call void @zfree(i8* %73, i32 56)
  %74 = load %struct.param*, %struct.param** %pm, align 4
  %node56 = getelementptr inbounds %struct.param, %struct.param* %74, i32 0, i32 0
  %flags57 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node56, i32 0, i32 2
  %75 = load i32, i32* %flags57, align 8
  %and58 = and i32 %75, 4096
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end55
  %76 = load %struct.param*, %struct.param** %pm, align 4
  call void @export_param(%struct.param* %76)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end55
  br label %if.end63

if.else:                                          ; preds = %if.then
  %77 = load %struct.param*, %struct.param** %pm, align 4
  %call62 = call i32 @unsetparam_pm(%struct.param* %77, i32 0, i32 0)
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.end61
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %entry
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

declare i32 @zputs(i8*, %struct._IO_FILE*) #1

declare i8* @quotedzputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define internal void @printparamvalue(%struct.param* %p, i32 %printflags) #0 {
entry:
  %p.addr = alloca %struct.param*, align 4
  %printflags.addr = alloca i32, align 4
  %t = alloca i8*, align 4
  %u = alloca i8**, align 4
  %ht = alloca %struct.hashtable*, align 4
  %found = alloca i32, align 4
  store %struct.param* %p, %struct.param** %p.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load i32, i32* %printflags.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 61)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.param*, %struct.param** %p.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %2 = load i32, i32* %flags, align 8
  %and1 = and i32 %2, 31
  switch i32 %and1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb13
    i32 4, label %sw.bb18
    i32 8, label %sw.bb18
    i32 1, label %sw.bb25
    i32 16, label %sw.bb77
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.param*, %struct.param** %p.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 2
  %s = bitcast %union.anon.0* %gsu to %struct.gsu_scalar**
  %4 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %getfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %4, i32 0, i32 0
  %getfn2 = bitcast {}** %getfn to i8* (%struct.param*)**
  %5 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn2, align 4
  %tobool3 = icmp ne i8* (%struct.param*)* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load %struct.param*, %struct.param** %p.addr, align 4
  %gsu4 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 2
  %s5 = bitcast %union.anon.0* %gsu4 to %struct.gsu_scalar**
  %7 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s5, align 8
  %getfn6 = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %7, i32 0, i32 0
  %getfn7 = bitcast {}** %getfn6 to i8* (%struct.param*)**
  %8 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn7, align 4
  %9 = load %struct.param*, %struct.param** %p.addr, align 4
  %call8 = call i8* %8(%struct.param* %9)
  store i8* %call8, i8** %t, align 4
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %t, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call11 = call i8* @quotedzputs(i8* %10, %struct._IO_FILE* %11)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %12 = load %struct.param*, %struct.param** %p.addr, align 4
  %gsu14 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu14 to %struct.gsu_integer**
  %13 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %getfn15 = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %13, i32 0, i32 0
  %14 = load i32 (%struct.param*)*, i32 (%struct.param*)** %getfn15, align 4
  %15 = load %struct.param*, %struct.param** %p.addr, align 4
  %call16 = call i32 %14(%struct.param* %15)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.203, i32 0, i32 0), i32 %call16)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end, %if.end
  %16 = load %struct.param*, %struct.param** %p.addr, align 4
  %gsu19 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu19 to %struct.gsu_float**
  %17 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %getfn20 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %17, i32 0, i32 0
  %18 = load double (%struct.param*)*, double (%struct.param*)** %getfn20, align 4
  %19 = load %struct.param*, %struct.param** %p.addr, align 4
  %call21 = call double %18(%struct.param* %19)
  %20 = load %struct.param*, %struct.param** %p.addr, align 4
  %base = getelementptr inbounds %struct.param, %struct.param* %20, i32 0, i32 3
  %21 = load i32, i32* %base, align 4
  %22 = load %struct.param*, %struct.param** %p.addr, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 0
  %flags23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 2
  %23 = load i32, i32* %flags23, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call24 = call i8* @convfloat(double %call21, i32 %21, i32 %23, %struct._IO_FILE* %24)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %25 = load i32, i32* %printflags.addr, align 4
  %and26 = and i32 %25, 8
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.end35, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  %call29 = call i32 @putchar(i32 40)
  %26 = load i32, i32* %printflags.addr, align 4
  %and30 = and i32 %26, 64
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.then28
  %call33 = call i32 @putchar(i32 32)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %sw.bb25
  %27 = load %struct.param*, %struct.param** %p.addr, align 4
  %gsu36 = getelementptr inbounds %struct.param, %struct.param* %27, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu36 to %struct.gsu_array**
  %28 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %getfn37 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %28, i32 0, i32 0
  %29 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn37, align 4
  %30 = load %struct.param*, %struct.param** %p.addr, align 4
  %call38 = call i8** %29(%struct.param* %30)
  store i8** %call38, i8*** %u, align 4
  %31 = load i8**, i8*** %u, align 4
  %32 = load i8*, i8** %31, align 4
  %tobool39 = icmp ne i8* %32, null
  br i1 %tobool39, label %if.then40, label %if.end66

if.then40:                                        ; preds = %if.end35
  %33 = load i32, i32* %printflags.addr, align 4
  %and41 = and i32 %33, 64
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.then40
  %34 = load i32, i32* %printflags.addr, align 4
  %and44 = and i32 %34, 8
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then43
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end49

if.else:                                          ; preds = %if.then43
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then46
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then40
  %35 = load i8**, i8*** %u, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr, i8*** %u, align 4
  %36 = load i8*, i8** %35, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call51 = call i8* @quotedzputs(i8* %36, %struct._IO_FILE* %37)
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %if.end50
  %38 = load i8**, i8*** %u, align 4
  %39 = load i8*, i8** %38, align 4
  %tobool52 = icmp ne i8* %39, null
  br i1 %tobool52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i32, i32* %printflags.addr, align 4
  %and53 = and i32 %40, 64
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then55, label %if.else57

if.then55:                                        ; preds = %while.body
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end59

if.else57:                                        ; preds = %while.body
  %call58 = call i32 @putchar(i32 32)
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  %41 = load i8**, i8*** %u, align 4
  %incdec.ptr60 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %incdec.ptr60, i8*** %u, align 4
  %42 = load i8*, i8** %41, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call61 = call i8* @quotedzputs(i8* %42, %struct._IO_FILE* %43)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i32, i32* %printflags.addr, align 4
  %and62 = and i32 %44, 72
  %cmp = icmp eq i32 %and62, 64
  br i1 %cmp, label %if.then63, label %if.end65

if.then63:                                        ; preds = %while.end
  %call64 = call i32 @putchar(i32 10)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %while.end
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end35
  %45 = load i32, i32* %printflags.addr, align 4
  %and67 = and i32 %45, 8
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.end76, label %if.then69

if.then69:                                        ; preds = %if.end66
  %46 = load i32, i32* %printflags.addr, align 4
  %and70 = and i32 %46, 64
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.then69
  %call73 = call i32 @putchar(i32 32)
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.then69
  %call75 = call i32 @putchar(i32 41)
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %if.end66
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end
  store i32 0, i32* %found, align 4
  %47 = load i32, i32* %printflags.addr, align 4
  %and78 = and i32 %47, 8
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.end87, label %if.then80

if.then80:                                        ; preds = %sw.bb77
  %call81 = call i32 @putchar(i32 40)
  %48 = load i32, i32* %printflags.addr, align 4
  %and82 = and i32 %48, 64
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.end86, label %if.then84

if.then84:                                        ; preds = %if.then80
  %call85 = call i32 @putchar(i32 32)
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then80
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %sw.bb77
  %49 = load %struct.param*, %struct.param** %p.addr, align 4
  %gsu88 = getelementptr inbounds %struct.param, %struct.param* %49, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu88 to %struct.gsu_hash**
  %50 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn89 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %50, i32 0, i32 0
  %51 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn89, align 4
  %52 = load %struct.param*, %struct.param** %p.addr, align 4
  %call90 = call %struct.hashtable* %51(%struct.param* %52)
  store %struct.hashtable* %call90, %struct.hashtable** %ht, align 4
  %53 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %tobool91 = icmp ne %struct.hashtable* %53, null
  br i1 %tobool91, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end87
  %54 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %55 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %55, i32 0, i32 15
  %56 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %57 = load i32, i32* %printflags.addr, align 4
  %and93 = and i32 %57, 64
  %or = or i32 8, %and93
  %call94 = call i32 @scanhashtable(%struct.hashtable* %54, i32 1, i32 0, i32 33554432, void (%struct.hashnode*, i32)* %56, i32 %or)
  store i32 %call94, i32* %found, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end87
  %58 = load i32, i32* %printflags.addr, align 4
  %and96 = and i32 %58, 8
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.end107, label %if.then98

if.then98:                                        ; preds = %if.end95
  %59 = load i32, i32* %found, align 4
  %tobool99 = icmp ne i32 %59, 0
  br i1 %tobool99, label %land.lhs.true100, label %if.end105

land.lhs.true100:                                 ; preds = %if.then98
  %60 = load i32, i32* %printflags.addr, align 4
  %and101 = and i32 %60, 64
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.end105

if.then103:                                       ; preds = %land.lhs.true100
  %call104 = call i32 @putchar(i32 10)
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %land.lhs.true100, %if.then98
  %call106 = call i32 @putchar(i32 41)
  br label %if.end107

if.end107:                                        ; preds = %if.end105, %if.end95
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end107, %if.end76, %sw.bb18, %sw.bb13, %if.end12
  %61 = load i32, i32* %printflags.addr, align 4
  %and108 = and i32 %61, 72
  %cmp109 = icmp eq i32 %and108, 8
  br i1 %cmp109, label %if.then110, label %if.else112

if.then110:                                       ; preds = %sw.epilog
  %call111 = call i32 @putchar(i32 32)
  br label %if.end118

if.else112:                                       ; preds = %sw.epilog
  %62 = load i32, i32* %printflags.addr, align 4
  %and113 = and i32 %62, 8
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.end117, label %if.then115

if.then115:                                       ; preds = %if.else112
  %call116 = call i32 @putchar(i32 10)
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.else112
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then110
  ret void
}

declare i32 @ensurefeature(i8*, i8*, i8*) #1

declare void @tokenize(i8*) #1

declare void @remnulargs(i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

declare i8* @dashgetfn(%struct.param*) #1

; Function Attrs: noinline nounwind
define internal i8* @argzerogetfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca i8*, align 4
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 131), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @posixzero, align 4
  store i8* %1, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @argzero, align 4
  store i8* %2, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 4
  ret i8* %3
}

; Function Attrs: noinline nounwind
define internal void @argzerosetfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load i8*, i8** %x.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 131), align 1
  %tobool1 = icmp ne i8 %1, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.178, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %2 = load i8*, i8** @argzero, align 4
  call void @zsfree(i8* %2)
  %3 = load i8*, i8** %x.addr, align 4
  %call = call i8* @ztrdup(i8* %3)
  store i8* %call, i8** @argzero, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %4 = load i8*, i8** %x.addr, align 4
  call void @zsfree(i8* %4)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @rprompt_indent_unsetfn(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %1 = load i32, i32* %exp.addr, align 4
  call void @stdunsetfn(%struct.param* %0, i32 %1)
  store i32 1, i32* @rprompt_indent, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal i8** @pipestatgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x = alloca i8**, align 4
  %buf = alloca [12 x i8], align 1
  %p = alloca i8**, align 4
  %q = alloca i32*, align 4
  %i = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load i32, i32* @numpipestats, align 4
  %add = add nsw i32 %0, 1
  %mul = mul i32 %add, 4
  %call = call i8* @zhalloc(i32 %mul)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %x, align 4
  %2 = load i8**, i8*** %x, align 4
  store i8** %2, i8*** %p, align 4
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @pipestats, i32 0, i32 0), i32** %q, align 4
  %3 = load i32, i32* @numpipestats, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %5 = load i32*, i32** %q, align 4
  %6 = load i32, i32* %5, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %6)
  %arraydecay2 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call3 = call i8* @dupstring(i8* %arraydecay2)
  %7 = load i8**, i8*** %p, align 4
  store i8* %call3, i8** %7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  %9 = load i32*, i32** %q, align 4
  %incdec.ptr4 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr4, i32** %q, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8**, i8*** %p, align 4
  store i8* null, i8** %10, align 4
  %11 = load i8**, i8*** %x, align 4
  ret i8** %11
}

; Function Attrs: noinline nounwind
define internal void @pipestatsetfn(%struct.param* %pm, i8** %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8**, align 4
  %i = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load i8**, i8*** %x.addr, align 4
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i8**, i8*** %x.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i8**, i8*** %x.addr, align 4
  %6 = load i8*, i8** %5, align 4
  %call = call i32 @atoi(i8* %6)
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @pipestats, i32 0, i32 %7
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  %9 = load i8**, i8*** %x.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %x.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* @numpipestats, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @numpipestats, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

declare i32 @atoi(i8*) #1

declare i8* @get_strarg(i8*, i32*) #1

declare i32 @mathevalarg(i8*, i8**) #1

declare i8* @getkeystring(i8*, i32*, i32, i32*) #1

declare i8* @dupstrpfx(i8*, i32) #1

declare i32 @parsestr(i8**) #1

declare void @singsub(i8**) #1

declare i32 @wordcount(i8*, i8*, i32) #1

declare i8* @findword(i8**, i8*) #1

; Function Attrs: noinline nounwind
define internal void @simple_arrayuniq(i8** %x, i32 %freeok) #0 {
entry:
  %x.addr = alloca i8**, align 4
  %freeok.addr = alloca i32, align 4
  %t = alloca i8**, align 4
  %p = alloca i8**, align 4
  %hole = alloca i8*, align 4
  store i8** %x, i8*** %x.addr, align 4
  store i32 %freeok, i32* %freeok.addr, align 4
  %0 = load i8**, i8*** %x.addr, align 4
  store i8** %0, i8*** %p, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0), i8** %hole, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %1 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  %2 = load i8*, i8** %incdec.ptr, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8**, i8*** %x.addr, align 4
  store i8** %3, i8*** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i8**, i8*** %t, align 4
  %5 = load i8**, i8*** %p, align 4
  %cmp = icmp ult i8** %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8**, i8*** %t, align 4
  %7 = load i8*, i8** %6, align 4
  %8 = load i8*, i8** %hole, align 4
  %cmp1 = icmp ne i8* %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8**, i8*** %p, align 4
  %10 = load i8*, i8** %9, align 4
  %11 = load i8**, i8*** %t, align 4
  %12 = load i8*, i8** %11, align 4
  %call = call i32 @strcmp(i8* %10, i8* %12)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end5, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %freeok.addr, align 4
  %tobool3 = icmp ne i32 %13, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %14 = load i8**, i8*** %p, align 4
  %15 = load i8*, i8** %14, align 4
  call void @zsfree(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %16 = load i8*, i8** %hole, align 4
  %17 = load i8**, i8*** %p, align 4
  store i8* %16, i8** %17, align 4
  br label %for.end

if.end5:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %18 = load i8**, i8*** %t, align 4
  %incdec.ptr6 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr6, i8*** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i8**, i8*** %x.addr, align 4
  store i8** %19, i8*** %t, align 4
  store i8** %19, i8*** %p, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc26, %while.end
  %20 = load i8**, i8*** %t, align 4
  %21 = load i8*, i8** %20, align 4
  %cmp8 = icmp ne i8* %21, null
  br i1 %cmp8, label %for.body9, label %for.end28

for.body9:                                        ; preds = %for.cond7
  %22 = load i8**, i8*** %t, align 4
  %23 = load i8*, i8** %22, align 4
  %24 = load i8*, i8** %hole, align 4
  %cmp10 = icmp eq i8* %23, %24
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body9
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %if.then11
  %25 = load i8**, i8*** %p, align 4
  %26 = load i8*, i8** %25, align 4
  %27 = load i8*, i8** %hole, align 4
  %cmp13 = icmp eq i8* %26, %27
  br i1 %cmp13, label %while.body14, label %while.end16

while.body14:                                     ; preds = %while.cond12
  %28 = load i8**, i8*** %p, align 4
  %incdec.ptr15 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %incdec.ptr15, i8*** %p, align 4
  br label %while.cond12

while.end16:                                      ; preds = %while.cond12
  %29 = load i8**, i8*** %p, align 4
  %30 = load i8*, i8** %29, align 4
  %31 = load i8**, i8*** %t, align 4
  store i8* %30, i8** %31, align 4
  %cmp17 = icmp ne i8* %30, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %while.end16
  %32 = load i8*, i8** %hole, align 4
  %33 = load i8**, i8*** %p, align 4
  %incdec.ptr19 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr19, i8*** %p, align 4
  store i8* %32, i8** %33, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.end16
  br label %if.end25

if.else:                                          ; preds = %for.body9
  %34 = load i8**, i8*** %p, align 4
  %35 = load i8**, i8*** %t, align 4
  %cmp21 = icmp eq i8** %34, %35
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else
  %36 = load i8**, i8*** %p, align 4
  %incdec.ptr23 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %incdec.ptr23, i8*** %p, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end20
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %37 = load i8**, i8*** %t, align 4
  %incdec.ptr27 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %incdec.ptr27, i8*** %t, align 4
  br label %for.cond7

for.end28:                                        ; preds = %for.cond7
  br label %while.cond29

while.cond29:                                     ; preds = %while.body32, %for.end28
  %38 = load i8**, i8*** %t, align 4
  %incdec.ptr30 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %incdec.ptr30, i8*** %t, align 4
  %39 = load i8**, i8*** %p, align 4
  %cmp31 = icmp ult i8** %incdec.ptr30, %39
  br i1 %cmp31, label %while.body32, label %while.end33

while.body32:                                     ; preds = %while.cond29
  %40 = load i8**, i8*** %t, align 4
  store i8* null, i8** %40, align 4
  br label %while.cond29

while.end33:                                      ; preds = %while.cond29
  ret void
}

declare %struct.hashnode* @addhashnode2(%struct.hashtable*, i8*, i8*) #1

declare i32 @init_term() #1

; Function Attrs: noinline nounwind
define internal void @copyenvstr(i8* %s, i8* %value, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %value.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %value.addr, align 4
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %value.addr, align 4
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %s.addr, align 4
  store i8 %3, i8* %4, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -125
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %value.addr, align 4
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %value.addr, align 4
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %xor = xor i32 %conv4, 32
  %conv5 = trunc i32 %xor to i8
  %7 = load i8*, i8** %s.addr, align 4
  store i8 %conv5, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i32, i32* %flags.addr, align 4
  %and = and i32 %8, 256
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %9 = load i8*, i8** %s.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %call = call i32 @tulower(i32 %conv8)
  %conv9 = trunc i32 %call to i8
  %11 = load i8*, i8** %s.addr, align 4
  store i8 %conv9, i8* %11, align 1
  br label %if.end17

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %12, 512
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.else
  %13 = load i8*, i8** %s.addr, align 4
  %14 = load i8, i8* %13, align 1
  %conv13 = sext i8 %14 to i32
  %call14 = call i32 @tuupper(i32 %conv13)
  %conv15 = trunc i32 %call14 to i8
  %15 = load i8*, i8** %s.addr, align 4
  store i8 %conv15, i8* %15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @tulower(i32) #1

declare i32 @tuupper(i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
