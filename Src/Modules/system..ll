; ModuleID = 'system.c'
source_filename = "system.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.features = type { %struct.builtin*, i32, %struct.conddef*, i32, %struct.mathfunc*, i32, %struct.paramdef*, i32, i32 }
%struct.builtin = type { %struct.hashnode, i32 (i8*, i8**, %struct.options*, i32)*, i32, i32, i32, i8*, i8* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.mathfunc = type { %struct.mathfunc*, i8*, i32, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)*, void (%struct.mnumber*, i8*, i8*, i32)*, i8*, i32, i32, i32 }
%struct.mnumber = type { %union.anon.0, i32 }
%union.anon.0 = type { double }
%struct.paramdef = type { i8*, i32, i8*, i8*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, %struct.param* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, {}*, {}*, {}*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.param = type { %struct.hashnode, %union.anon.1, %union.anon.2, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.1 = type { double }
%union.anon.2 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct._IO_FILE = type opaque
%struct.anon = type { i8*, i32 }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.pollfd = type { i32, i16, i16 }
%struct.flock = type { i16, i16, i32, i32, i32 }

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([6 x %struct.builtin], [6 x %struct.builtin]* @bintab, i32 0, i32 0), i32 6, %struct.conddef* null, i32 0, %struct.mathfunc* getelementptr inbounds ([1 x %struct.mathfunc], [1 x %struct.mathfunc]* @mftab, i32 0, i32 0), i32 1, %struct.paramdef* getelementptr inbounds ([2 x %struct.paramdef], [2 x %struct.paramdef]* @partab, i32 0, i32 0), i32 2, i32 0 }, align 4
@bintab = internal global [6 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_syserror, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_sysread, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_syswrite, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_sysopen, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_sysseek, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_zsystem, i32 1, i32 -1, i32 0, i8* null, i8* null }], align 4
@mftab = internal global [1 x %struct.mathfunc] [%struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_systell, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 0 }], align 4
@partab = internal global [2 x %struct.paramdef] [%struct.paramdef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @errnos_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmsysparams, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmsysparams, %struct.param* null }], align 4
@.str = private unnamed_addr constant [9 x i8] c"syserror\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"e:p:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sysread\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"c:i:o:s:t:\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"syswrite\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"c:o:\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"rwau:o:m:\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sysseek\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"u:w:\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"zsystem\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"not an identifier: %s\00", align 1
@typtab = external global [256 x i16], align 2
@sys_errnames = external global [134 x i8*], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"no argument allowed with -o\00", align 1
@errflag = external global i32, align 4
@retflag = external global i32, align 4
@breaks = external global i32, align 4
@contflag = external global i32, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"integer expected: %s\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"file descriptor not specified\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"O_\00", align 1
@openopts = internal global [9 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 524288 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 131072 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 1052672 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 262144 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 192 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 64 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 64 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 512 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 512 }], align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"unsupported option: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"can't open file %s: %e\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"can't open file %s\00", align 1
@fdtable = external global i8*, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"cloexec\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"nofollow\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"noatime\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"excl\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"creat\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"unknown argument to -w: %s\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"supports\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"unknown subcommand: %s\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"flock: option %c requires a variable name\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"flock: option %c requires a numeric timeout\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"flock: unknown option: %c\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"flock: not enough arguments\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"flock: too many arguments\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"flock: file descriptor %d not in use for locking\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"failed to open %s for writing: %e\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"failed to lock file %s: %e\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"supports: not enough arguments\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"supports: too many arguments\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"systell\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"file descriptor out of range\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"errnos\00", align 1
@errnos_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @errnosgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.57 = private unnamed_addr constant [10 x i8] c"sysparams\00", align 1
@nullsetscalar_gsu = external constant %struct.gsu_scalar, align 4
@.str.58 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"ppid\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind
define i32 @setup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @features_(%struct.module* %m, i8*** %features) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %features.addr = alloca i8***, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i8*** %features, i8**** %features.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i8** @featuresarray(%struct.module* %0, %struct.features* @module_features)
  %1 = load i8***, i8**** %features.addr, align 4
  store i8** %call, i8*** %1, align 4
  ret i32 0
}

declare i8** @featuresarray(%struct.module*, %struct.features*) #1

; Function Attrs: noinline nounwind
define i32 @enables_(%struct.module* %m, i32** %enables) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %enables.addr = alloca i32**, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %1 = load i32**, i32*** %enables.addr, align 4
  %call = call i32 @handlefeatures(%struct.module* %0, %struct.features* @module_features, i32** %1)
  ret i32 %call
}

declare i32 @handlefeatures(%struct.module*, %struct.features*, i32**) #1

; Function Attrs: noinline nounwind
define i32 @boot_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @cleanup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 @setfeatureenables(%struct.module* %0, %struct.features* @module_features, i32* null)
  ret i32 %call
}

declare i32 @setfeatureenables(%struct.module*, %struct.features*, i32*) #1

; Function Attrs: noinline nounwind
define i32 @finish_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define internal i32 @bin_syserror(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %num = alloca i32, align 4
  %errvar = alloca i8*, align 4
  %msg = alloca i8*, align 4
  %pfx = alloca i8*, align 4
  %str = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %eptr = alloca i8**, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %num, align 4
  store i8* null, i8** %errvar, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %pfx, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 101
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 1
  %3 = load i8**, i8*** %args2, align 4
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 101
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shr = ashr i32 %conv5, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx6 = getelementptr inbounds i8*, i8** %3, i32 %sub
  %6 = load i8*, i8** %arrayidx6, align 4
  store i8* %6, i8** %errvar, align 4
  %7 = load i8*, i8** %errvar, align 4
  %call = call i32 @isident(i8* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  %8 = load i8*, i8** %nam.addr, align 4
  %9 = load i8*, i8** %errvar, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* %9)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %10 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind9 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* %ind9, i32 0, i32 112
  %11 = load i8, i8* %arrayidx10, align 4
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end8
  %12 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args15 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 1
  %13 = load i8**, i8*** %args15, align 4
  %14 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind16 = getelementptr inbounds %struct.options, %struct.options* %14, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [128 x i8], [128 x i8]* %ind16, i32 0, i32 112
  %15 = load i8, i8* %arrayidx17, align 4
  %conv18 = zext i8 %15 to i32
  %shr19 = ashr i32 %conv18, 2
  %sub20 = sub nsw i32 %shr19, 1
  %arrayidx21 = getelementptr inbounds i8*, i8** %13, i32 %sub20
  %16 = load i8*, i8** %arrayidx21, align 4
  store i8* %16, i8** %pfx, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end8
  %17 = load i8**, i8*** %args.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %tobool23 = icmp ne i8* %18, null
  br i1 %tobool23, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end22
  %call25 = call i32* @__errno_location()
  %19 = load i32, i32* %call25, align 4
  store i32 %19, i32* %num, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end22
  %20 = load i8**, i8*** %args.addr, align 4
  %21 = load i8*, i8** %20, align 4
  store i8* %21, i8** %ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %22 = load i8*, i8** %ptr, align 4
  %23 = load i8, i8* %22, align 1
  %conv26 = sext i8 %23 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i8*, i8** %ptr, align 4
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx28 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %26 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %26 to i32
  %and = and i32 %conv29, 1
  %tobool30 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %29 = load i8*, i8** %ptr, align 4
  %30 = load i8, i8* %29, align 1
  %tobool31 = icmp ne i8 %30, 0
  br i1 %tobool31, label %if.else36, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %31 = load i8*, i8** %ptr, align 4
  %32 = load i8**, i8*** %args.addr, align 4
  %33 = load i8*, i8** %32, align 4
  %cmp32 = icmp ugt i8* %31, %33
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %land.lhs.true
  %34 = load i8**, i8*** %args.addr, align 4
  %35 = load i8*, i8** %34, align 4
  %call35 = call i32 @atoi(i8* %35)
  store i32 %call35, i32* %num, align 4
  br label %if.end46

if.else36:                                        ; preds = %land.lhs.true, %while.end
  store i8** getelementptr inbounds ([134 x i8*], [134 x i8*]* @sys_errnames, i32 0, i32 0), i8*** %eptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else36
  %36 = load i8**, i8*** %eptr, align 4
  %37 = load i8*, i8** %36, align 4
  %tobool37 = icmp ne i8* %37, null
  br i1 %tobool37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i8**, i8*** %eptr, align 4
  %39 = load i8*, i8** %38, align 4
  %40 = load i8**, i8*** %args.addr, align 4
  %41 = load i8*, i8** %40, align 4
  %call38 = call i32 @strcmp(i8* %39, i8* %41)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %for.body
  %42 = load i8**, i8*** %eptr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8** %42 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint ([134 x i8*]* @sys_errnames to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %add = add nsw i32 %sub.ptr.div, 1
  store i32 %add, i32* %num, align 4
  br label %for.end

if.end41:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end41
  %43 = load i8**, i8*** %eptr, align 4
  %incdec.ptr42 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %incdec.ptr42, i8*** %eptr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then40, %for.cond
  %44 = load i8**, i8*** %eptr, align 4
  %45 = load i8*, i8** %44, align 4
  %tobool43 = icmp ne i8* %45, null
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %for.end
  store i32 2, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %for.end
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then24
  %46 = load i32, i32* %num, align 4
  %call48 = call i8* @strerror(i32 %46)
  store i8* %call48, i8** %msg, align 4
  %47 = load i8*, i8** %errvar, align 4
  %tobool49 = icmp ne i8* %47, null
  br i1 %tobool49, label %if.then50, label %if.else58

if.then50:                                        ; preds = %if.end47
  %48 = load i8*, i8** %msg, align 4
  %call51 = call i32 @strlen(i8* %48)
  %49 = load i8*, i8** %pfx, align 4
  %call52 = call i32 @strlen(i8* %49)
  %add53 = add i32 %call51, %call52
  %add54 = add i32 %add53, 1
  %call55 = call i8* @zalloc(i32 %add54)
  store i8* %call55, i8** %str, align 4
  %50 = load i8*, i8** %str, align 4
  %51 = load i8*, i8** %pfx, align 4
  %52 = load i8*, i8** %msg, align 4
  %call56 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %51, i8* %52)
  %53 = load i8*, i8** %errvar, align 4
  %54 = load i8*, i8** %str, align 4
  %call57 = call %struct.param* @setsparam(i8* %53, i8* %54)
  br label %if.end60

if.else58:                                        ; preds = %if.end47
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %56 = load i8*, i8** %pfx, align 4
  %57 = load i8*, i8** %msg, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %56, i8* %57)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then50
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end60, %if.then44, %if.then7
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind
define internal i32 @bin_sysread(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %infd = alloca i32, align 4
  %outfd = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %count = alloca i32, align 4
  %outvar = alloca i8*, align 4
  %countvar = alloca i8*, align 4
  %inbuf = alloca i8*, align 4
  %poll_fd = alloca %struct.pollfd, align 4
  %to_mn = alloca %struct.mnumber, align 8
  %to_int = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca %struct.mnumber, align 8
  %ret159 = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %infd, align 4
  store i32 -1, i32* %outfd, align 4
  store i32 8192, i32* %bufsize, align 4
  store i8* null, i8** %outvar, align 4
  store i8* null, i8** %countvar, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 105
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 1
  %3 = load i8**, i8*** %args2, align 4
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 105
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shr = ashr i32 %conv5, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx6 = getelementptr inbounds i8*, i8** %3, i32 %sub
  %6 = load i8*, i8** %arrayidx6, align 4
  %7 = load i8*, i8** %nam.addr, align 4
  %call = call i32 @getposint(i8* %6, i8* %7)
  store i32 %call, i32* %infd, align 4
  %8 = load i32, i32* %infd, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %9 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind11 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [128 x i8], [128 x i8]* %ind11, i32 0, i32 111
  %10 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end31

if.then16:                                        ; preds = %if.end10
  %11 = load i8**, i8*** %args.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then16
  %13 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then16
  %14 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args19 = getelementptr inbounds %struct.options, %struct.options* %14, i32 0, i32 1
  %15 = load i8**, i8*** %args19, align 4
  %16 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind20 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [128 x i8], [128 x i8]* %ind20, i32 0, i32 111
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %shr23 = ashr i32 %conv22, 2
  %sub24 = sub nsw i32 %shr23, 1
  %arrayidx25 = getelementptr inbounds i8*, i8** %15, i32 %sub24
  %18 = load i8*, i8** %arrayidx25, align 4
  %19 = load i8*, i8** %nam.addr, align 4
  %call26 = call i32 @getposint(i8* %18, i8* %19)
  store i32 %call26, i32* %outfd, align 4
  %20 = load i32, i32* %outfd, align 4
  %cmp27 = icmp slt i32 %20, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end18
  store i32 1, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end18
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end10
  %21 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind32 = getelementptr inbounds %struct.options, %struct.options* %21, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [128 x i8], [128 x i8]* %ind32, i32 0, i32 115
  %22 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %22 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.end50

if.then37:                                        ; preds = %if.end31
  %23 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args38 = getelementptr inbounds %struct.options, %struct.options* %23, i32 0, i32 1
  %24 = load i8**, i8*** %args38, align 4
  %25 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind39 = getelementptr inbounds %struct.options, %struct.options* %25, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [128 x i8], [128 x i8]* %ind39, i32 0, i32 115
  %26 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %26 to i32
  %shr42 = ashr i32 %conv41, 2
  %sub43 = sub nsw i32 %shr42, 1
  %arrayidx44 = getelementptr inbounds i8*, i8** %24, i32 %sub43
  %27 = load i8*, i8** %arrayidx44, align 4
  %28 = load i8*, i8** %nam.addr, align 4
  %call45 = call i32 @getposint(i8* %27, i8* %28)
  store i32 %call45, i32* %bufsize, align 4
  %29 = load i32, i32* %bufsize, align 4
  %cmp46 = icmp slt i32 %29, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then37
  store i32 1, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then37
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end31
  %30 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind51 = getelementptr inbounds %struct.options, %struct.options* %30, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [128 x i8], [128 x i8]* %ind51, i32 0, i32 99
  %31 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %31 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then56, label %if.end68

if.then56:                                        ; preds = %if.end50
  %32 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args57 = getelementptr inbounds %struct.options, %struct.options* %32, i32 0, i32 1
  %33 = load i8**, i8*** %args57, align 4
  %34 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind58 = getelementptr inbounds %struct.options, %struct.options* %34, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [128 x i8], [128 x i8]* %ind58, i32 0, i32 99
  %35 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %35 to i32
  %shr61 = ashr i32 %conv60, 2
  %sub62 = sub nsw i32 %shr61, 1
  %arrayidx63 = getelementptr inbounds i8*, i8** %33, i32 %sub62
  %36 = load i8*, i8** %arrayidx63, align 4
  store i8* %36, i8** %countvar, align 4
  %37 = load i8*, i8** %countvar, align 4
  %call64 = call i32 @isident(i8* %37)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.then56
  %38 = load i8*, i8** %nam.addr, align 4
  %39 = load i8*, i8** %countvar, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* %39)
  store i32 1, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.then56
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end50
  %40 = load i8**, i8*** %args.addr, align 4
  %41 = load i8*, i8** %40, align 4
  %tobool69 = icmp ne i8* %41, null
  br i1 %tobool69, label %if.then70, label %if.end75

if.then70:                                        ; preds = %if.end68
  %42 = load i8**, i8*** %args.addr, align 4
  %43 = load i8*, i8** %42, align 4
  store i8* %43, i8** %outvar, align 4
  %44 = load i8*, i8** %outvar, align 4
  %call71 = call i32 @isident(i8* %44)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.then70
  %45 = load i8*, i8** %nam.addr, align 4
  %46 = load i8*, i8** %outvar, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* %46)
  store i32 1, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.then70
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end68
  %47 = load i32, i32* %bufsize, align 4
  %call76 = call i8* @zhalloc(i32 %47)
  store i8* %call76, i8** %inbuf, align 4
  %48 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind77 = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [128 x i8], [128 x i8]* %ind77, i32 0, i32 116
  %49 = load i8, i8* %arrayidx78, align 4
  %conv79 = zext i8 %49 to i32
  %cmp80 = icmp ne i32 %conv79, 0
  br i1 %cmp80, label %if.then82, label %if.end120

if.then82:                                        ; preds = %if.end75
  %50 = load i32, i32* %infd, align 4
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %poll_fd, i32 0, i32 0
  store i32 %50, i32* %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %poll_fd, i32 0, i32 1
  store i16 1, i16* %events, align 4
  %51 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args83 = getelementptr inbounds %struct.options, %struct.options* %51, i32 0, i32 1
  %52 = load i8**, i8*** %args83, align 4
  %53 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind84 = getelementptr inbounds %struct.options, %struct.options* %53, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [128 x i8], [128 x i8]* %ind84, i32 0, i32 116
  %54 = load i8, i8* %arrayidx85, align 4
  %conv86 = zext i8 %54 to i32
  %shr87 = ashr i32 %conv86, 2
  %sub88 = sub nsw i32 %shr87, 1
  %arrayidx89 = getelementptr inbounds i8*, i8** %52, i32 %sub88
  %55 = load i8*, i8** %arrayidx89, align 4
  call void @matheval(%struct.mnumber* sret %tmp, i8* %55)
  %56 = bitcast %struct.mnumber* %to_mn to i8*
  %57 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %57, i32 16, i32 8, i1 false)
  %58 = load i32, i32* @errflag, align 4
  %tobool90 = icmp ne i32 %58, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then82
  store i32 1, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.then82
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %to_mn, i32 0, i32 1
  %59 = load i32, i32* %type, align 8
  %cmp93 = icmp eq i32 %59, 2
  br i1 %cmp93, label %if.then95, label %if.else

if.then95:                                        ; preds = %if.end92
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %to_mn, i32 0, i32 0
  %d = bitcast %union.anon.0* %u to double*
  %60 = load double, double* %d, align 8
  %mul = fmul double 1.000000e+03, %60
  %conv96 = fptosi double %mul to i32
  store i32 %conv96, i32* %to_int, align 4
  br label %if.end99

if.else:                                          ; preds = %if.end92
  %u97 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %to_mn, i32 0, i32 0
  %l = bitcast %union.anon.0* %u97 to i32*
  %61 = load i32, i32* %l, align 8
  %mul98 = mul nsw i32 1000, %61
  store i32 %mul98, i32* %to_int, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then95
  br label %while.cond

while.cond:                                       ; preds = %if.end114, %if.end99
  %62 = load i32, i32* %to_int, align 4
  %call100 = call i32 @poll(%struct.pollfd* %poll_fd, i32 1, i32 %62)
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call103 = call i32* @__errno_location()
  %63 = load i32, i32* %call103, align 4
  %cmp104 = icmp ne i32 %63, 4
  br i1 %cmp104, label %if.then113, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %64 = load i32, i32* @errflag, align 4
  %tobool106 = icmp ne i32 %64, 0
  br i1 %tobool106, label %if.then113, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %lor.lhs.false
  %65 = load i32, i32* @retflag, align 4
  %tobool108 = icmp ne i32 %65, 0
  br i1 %tobool108, label %if.then113, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false107
  %66 = load i32, i32* @breaks, align 4
  %tobool110 = icmp ne i32 %66, 0
  br i1 %tobool110, label %if.then113, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %lor.lhs.false109
  %67 = load i32, i32* @contflag, align 4
  %tobool112 = icmp ne i32 %67, 0
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %lor.lhs.false111, %lor.lhs.false109, %lor.lhs.false107, %lor.lhs.false, %while.body
  br label %while.end

if.end114:                                        ; preds = %lor.lhs.false111
  br label %while.cond

while.end:                                        ; preds = %if.then113, %while.cond
  %68 = load i32, i32* %ret, align 4
  %cmp115 = icmp sle i32 %68, 0
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %while.end
  %69 = load i32, i32* %ret, align 4
  %tobool118 = icmp ne i32 %69, 0
  %cond = select i1 %tobool118, i32 2, i32 4
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end119:                                        ; preds = %while.end
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end75
  br label %while.cond121

while.cond121:                                    ; preds = %if.end138, %if.end120
  %70 = load i32, i32* %infd, align 4
  %71 = load i8*, i8** %inbuf, align 4
  %72 = load i32, i32* %bufsize, align 4
  %call122 = call i32 @read(i32 %70, i8* %71, i32 %72)
  store i32 %call122, i32* %count, align 4
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %while.body125, label %while.end139

while.body125:                                    ; preds = %while.cond121
  %call126 = call i32* @__errno_location()
  %73 = load i32, i32* %call126, align 4
  %cmp127 = icmp ne i32 %73, 4
  br i1 %cmp127, label %if.then137, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %while.body125
  %74 = load i32, i32* @errflag, align 4
  %tobool130 = icmp ne i32 %74, 0
  br i1 %tobool130, label %if.then137, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false129
  %75 = load i32, i32* @retflag, align 4
  %tobool132 = icmp ne i32 %75, 0
  br i1 %tobool132, label %if.then137, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false131
  %76 = load i32, i32* @breaks, align 4
  %tobool134 = icmp ne i32 %76, 0
  br i1 %tobool134, label %if.then137, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false133
  %77 = load i32, i32* @contflag, align 4
  %tobool136 = icmp ne i32 %77, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %lor.lhs.false135, %lor.lhs.false133, %lor.lhs.false131, %lor.lhs.false129, %while.body125
  br label %while.end139

if.end138:                                        ; preds = %lor.lhs.false135
  br label %while.cond121

while.end139:                                     ; preds = %if.then137, %while.cond121
  %78 = load i8*, i8** %countvar, align 4
  %tobool140 = icmp ne i8* %78, null
  br i1 %tobool140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %while.end139
  %79 = load i8*, i8** %countvar, align 4
  %80 = load i32, i32* %count, align 4
  %call142 = call %struct.param* @setiparam(i8* %79, i32 %80)
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %while.end139
  %81 = load i32, i32* %count, align 4
  %cmp144 = icmp slt i32 %81, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end143
  store i32 2, i32* %retval, align 4
  br label %return

if.end147:                                        ; preds = %if.end143
  %82 = load i32, i32* %outfd, align 4
  %cmp148 = icmp sge i32 %82, 0
  br i1 %cmp148, label %if.then150, label %if.end188

if.then150:                                       ; preds = %if.end147
  %83 = load i32, i32* %count, align 4
  %tobool151 = icmp ne i32 %83, 0
  br i1 %tobool151, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.then150
  store i32 5, i32* %retval, align 4
  br label %return

if.end153:                                        ; preds = %if.then150
  br label %while.cond154

while.cond154:                                    ; preds = %if.end185, %if.then174, %if.end153
  %84 = load i32, i32* %count, align 4
  %cmp155 = icmp sgt i32 %84, 0
  br i1 %cmp155, label %while.body157, label %while.end187

while.body157:                                    ; preds = %while.cond154
  %85 = load i32, i32* %outfd, align 4
  %86 = load i8*, i8** %inbuf, align 4
  %87 = load i32, i32* %count, align 4
  %call160 = call i32 @write(i32 %85, i8* %86, i32 %87)
  store i32 %call160, i32* %ret159, align 4
  %88 = load i32, i32* %ret159, align 4
  %cmp161 = icmp slt i32 %88, 0
  br i1 %cmp161, label %if.then163, label %if.end185

if.then163:                                       ; preds = %while.body157
  %call164 = call i32* @__errno_location()
  %89 = load i32, i32* %call164, align 4
  %cmp165 = icmp eq i32 %89, 4
  br i1 %cmp165, label %land.lhs.true, label %if.end175

land.lhs.true:                                    ; preds = %if.then163
  %90 = load i32, i32* @errflag, align 4
  %tobool167 = icmp ne i32 %90, 0
  br i1 %tobool167, label %if.end175, label %land.lhs.true168

land.lhs.true168:                                 ; preds = %land.lhs.true
  %91 = load i32, i32* @retflag, align 4
  %tobool169 = icmp ne i32 %91, 0
  br i1 %tobool169, label %if.end175, label %land.lhs.true170

land.lhs.true170:                                 ; preds = %land.lhs.true168
  %92 = load i32, i32* @breaks, align 4
  %tobool171 = icmp ne i32 %92, 0
  br i1 %tobool171, label %if.end175, label %land.lhs.true172

land.lhs.true172:                                 ; preds = %land.lhs.true170
  %93 = load i32, i32* @contflag, align 4
  %tobool173 = icmp ne i32 %93, 0
  br i1 %tobool173, label %if.end175, label %if.then174

if.then174:                                       ; preds = %land.lhs.true172
  br label %while.cond154

if.end175:                                        ; preds = %land.lhs.true172, %land.lhs.true170, %land.lhs.true168, %land.lhs.true, %if.then163
  %94 = load i8*, i8** %outvar, align 4
  %tobool176 = icmp ne i8* %94, null
  br i1 %tobool176, label %if.then177, label %if.end180

if.then177:                                       ; preds = %if.end175
  %95 = load i8*, i8** %outvar, align 4
  %96 = load i8*, i8** %inbuf, align 4
  %97 = load i32, i32* %count, align 4
  %call178 = call i8* @metafy(i8* %96, i32 %97, i32 3)
  %call179 = call %struct.param* @setsparam(i8* %95, i8* %call178)
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %if.end175
  %98 = load i8*, i8** %countvar, align 4
  %tobool181 = icmp ne i8* %98, null
  br i1 %tobool181, label %if.then182, label %if.end184

if.then182:                                       ; preds = %if.end180
  %99 = load i8*, i8** %countvar, align 4
  %100 = load i32, i32* %count, align 4
  %call183 = call %struct.param* @setiparam(i8* %99, i32 %100)
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.end180
  store i32 3, i32* %retval, align 4
  br label %return

if.end185:                                        ; preds = %while.body157
  %101 = load i32, i32* %ret159, align 4
  %102 = load i8*, i8** %inbuf, align 4
  %add.ptr = getelementptr inbounds i8, i8* %102, i32 %101
  store i8* %add.ptr, i8** %inbuf, align 4
  %103 = load i32, i32* %ret159, align 4
  %104 = load i32, i32* %count, align 4
  %sub186 = sub nsw i32 %104, %103
  store i32 %sub186, i32* %count, align 4
  br label %while.cond154

while.end187:                                     ; preds = %while.cond154
  store i32 0, i32* %retval, align 4
  br label %return

if.end188:                                        ; preds = %if.end147
  %105 = load i8*, i8** %outvar, align 4
  %tobool189 = icmp ne i8* %105, null
  br i1 %tobool189, label %if.end191, label %if.then190

if.then190:                                       ; preds = %if.end188
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8** %outvar, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.end188
  %106 = load i8*, i8** %outvar, align 4
  %107 = load i8*, i8** %inbuf, align 4
  %108 = load i32, i32* %count, align 4
  %call192 = call i8* @metafy(i8* %107, i32 %108, i32 3)
  %call193 = call %struct.param* @setsparam(i8* %106, i8* %call192)
  %109 = load i32, i32* %count, align 4
  %tobool194 = icmp ne i32 %109, 0
  %cond195 = select i1 %tobool194, i32 0, i32 5
  store i32 %cond195, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end191, %while.end187, %if.end184, %if.then152, %if.then146, %if.then117, %if.then91, %if.then73, %if.then66, %if.then48, %if.then29, %if.then17, %if.then9
  %110 = load i32, i32* %retval, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind
define internal i32 @bin_syswrite(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %outfd = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %totcount = alloca i32, align 4
  %countvar = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 1, i32* %outfd, align 4
  store i8* null, i8** %countvar, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 111
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 1
  %3 = load i8**, i8*** %args2, align 4
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 111
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shr = ashr i32 %conv5, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx6 = getelementptr inbounds i8*, i8** %3, i32 %sub
  %6 = load i8*, i8** %arrayidx6, align 4
  %7 = load i8*, i8** %nam.addr, align 4
  %call = call i32 @getposint(i8* %6, i8* %7)
  store i32 %call, i32* %outfd, align 4
  %8 = load i32, i32* %outfd, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %9 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind11 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [128 x i8], [128 x i8]* %ind11, i32 0, i32 99
  %10 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end27

if.then16:                                        ; preds = %if.end10
  %11 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args17 = getelementptr inbounds %struct.options, %struct.options* %11, i32 0, i32 1
  %12 = load i8**, i8*** %args17, align 4
  %13 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind18 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [128 x i8], [128 x i8]* %ind18, i32 0, i32 99
  %14 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %14 to i32
  %shr21 = ashr i32 %conv20, 2
  %sub22 = sub nsw i32 %shr21, 1
  %arrayidx23 = getelementptr inbounds i8*, i8** %12, i32 %sub22
  %15 = load i8*, i8** %arrayidx23, align 4
  store i8* %15, i8** %countvar, align 4
  %16 = load i8*, i8** %countvar, align 4
  %call24 = call i32 @isident(i8* %16)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then16
  %17 = load i8*, i8** %nam.addr, align 4
  %18 = load i8*, i8** %countvar, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* %18)
  store i32 1, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then16
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end10
  store i32 0, i32* %totcount, align 4
  %19 = load i8**, i8*** %args.addr, align 4
  %20 = load i8*, i8** %19, align 4
  %call28 = call i8* @unmetafy(i8* %20, i32* %len)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end27
  %21 = load i32, i32* %len, align 4
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %while.body, label %while.end52

while.body:                                       ; preds = %while.cond
  br label %while.cond30

while.cond30:                                     ; preds = %if.end50, %while.body
  %22 = load i32, i32* %outfd, align 4
  %23 = load i8**, i8*** %args.addr, align 4
  %24 = load i8*, i8** %23, align 4
  %25 = load i32, i32* %len, align 4
  %call31 = call i32 @write(i32 %22, i8* %24, i32 %25)
  store i32 %call31, i32* %count, align 4
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %while.body34, label %while.end

while.body34:                                     ; preds = %while.cond30
  %call35 = call i32* @__errno_location()
  %26 = load i32, i32* %call35, align 4
  %cmp36 = icmp ne i32 %26, 4
  br i1 %cmp36, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body34
  %27 = load i32, i32* @errflag, align 4
  %tobool38 = icmp ne i32 %27, 0
  br i1 %tobool38, label %if.then45, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %28 = load i32, i32* @retflag, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then45, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false39
  %29 = load i32, i32* @breaks, align 4
  %tobool42 = icmp ne i32 %29, 0
  br i1 %tobool42, label %if.then45, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false41
  %30 = load i32, i32* @contflag, align 4
  %tobool44 = icmp ne i32 %30, 0
  br i1 %tobool44, label %if.then45, label %if.end50

if.then45:                                        ; preds = %lor.lhs.false43, %lor.lhs.false41, %lor.lhs.false39, %lor.lhs.false, %while.body34
  %31 = load i8*, i8** %countvar, align 4
  %tobool46 = icmp ne i8* %31, null
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then45
  %32 = load i8*, i8** %countvar, align 4
  %33 = load i32, i32* %totcount, align 4
  %call48 = call %struct.param* @setiparam(i8* %32, i32 %33)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then45
  store i32 2, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false43
  br label %while.cond30

while.end:                                        ; preds = %while.cond30
  %34 = load i32, i32* %count, align 4
  %35 = load i8**, i8*** %args.addr, align 4
  %36 = load i8*, i8** %35, align 4
  %add.ptr = getelementptr inbounds i8, i8* %36, i32 %34
  store i8* %add.ptr, i8** %35, align 4
  %37 = load i32, i32* %count, align 4
  %38 = load i32, i32* %totcount, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %totcount, align 4
  %39 = load i32, i32* %count, align 4
  %40 = load i32, i32* %len, align 4
  %sub51 = sub nsw i32 %40, %39
  store i32 %sub51, i32* %len, align 4
  br label %while.cond

while.end52:                                      ; preds = %while.cond
  %41 = load i8*, i8** %countvar, align 4
  %tobool53 = icmp ne i8* %41, null
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %while.end52
  %42 = load i8*, i8** %countvar, align 4
  %43 = load i32, i32* %totcount, align 4
  %call55 = call %struct.param* @setiparam(i8* %42, i32 %43)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %while.end52
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.end49, %if.then25, %if.then9
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind
define internal i32 @bin_sysopen(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %read = alloca i32, align 4
  %write = alloca i32, align 4
  %append = alloca i32, align 4
  %flags = alloca i32, align 4
  %opt = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %nextopt = alloca i8*, align 4
  %fdvar = alloca i8*, align 4
  %o = alloca i32, align 4
  %fd = alloca i32, align 4
  %moved_fd = alloca i32, align 4
  %explicit = alloca i32, align 4
  %perms = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 114
  %1 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %read, align 4
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 119
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %write, align 4
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind7 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [128 x i8], [128 x i8]* %ind7, i32 0, i32 97
  %5 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  %cond = select i1 %cmp10, i32 1024, i32 0
  store i32 %cond, i32* %append, align 4
  %6 = load i32, i32* %append, align 4
  %or = or i32 256, %6
  %7 = load i32, i32* %append, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %write, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %read, align 4
  %tobool13 = icmp ne i32 %9, 0
  %cond14 = select i1 %tobool13, i32 2, i32 1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i32 [ %cond14, %cond.true ], [ 0, %cond.false ]
  %or16 = or i32 %or, %cond15
  store i32 %or16, i32* %flags, align 4
  store i32 -1, i32* %explicit, align 4
  store i32 438, i32* %perms, align 4
  %10 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind17 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [128 x i8], [128 x i8]* %ind17, i32 0, i32 117
  %11 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %cmp20 = icmp ne i32 %conv19, 0
  br i1 %cmp20, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %12 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args22 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 1
  %14 = load i8**, i8*** %args22, align 4
  %15 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind23 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [128 x i8], [128 x i8]* %ind23, i32 0, i32 117
  %16 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %16 to i32
  %shr = ashr i32 %conv25, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx26 = getelementptr inbounds i8*, i8** %14, i32 %sub
  %17 = load i8*, i8** %arrayidx26, align 4
  store i8* %17, i8** %fdvar, align 4
  %18 = load i8*, i8** %fdvar, align 4
  %19 = load i8, i8* %18, align 1
  %idxprom = zext i8 %19 to i32
  %arrayidx27 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %20 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %20 to i32
  %and = and i32 %conv28, 1
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %21 = load i8*, i8** %fdvar, align 4
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %22, 0
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  %23 = load i8*, i8** %fdvar, align 4
  %call = call i32 @atoi(i8* %23)
  store i32 %call, i32* %explicit, align 4
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true, %if.end
  %24 = load i8*, i8** %fdvar, align 4
  %call33 = call i32 @isident(i8* %24)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.else
  %25 = load i8*, i8** %nam.addr, align 4
  %26 = load i8*, i8** %fdvar, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* %26)
  store i32 1, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then32
  %27 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind38 = getelementptr inbounds %struct.options, %struct.options* %27, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [128 x i8], [128 x i8]* %ind38, i32 0, i32 111
  %28 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %28 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.end71

if.then43:                                        ; preds = %if.end37
  %29 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args44 = getelementptr inbounds %struct.options, %struct.options* %29, i32 0, i32 1
  %30 = load i8**, i8*** %args44, align 4
  %31 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind45 = getelementptr inbounds %struct.options, %struct.options* %31, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [128 x i8], [128 x i8]* %ind45, i32 0, i32 111
  %32 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %32 to i32
  %shr48 = ashr i32 %conv47, 2
  %sub49 = sub nsw i32 %shr48, 1
  %arrayidx50 = getelementptr inbounds i8*, i8** %30, i32 %sub49
  %33 = load i8*, i8** %arrayidx50, align 4
  store i8* %33, i8** %opt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.then43
  %34 = load i8*, i8** %opt, align 4
  %tobool51 = icmp ne i8* %34, null
  br i1 %tobool51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i8*, i8** %opt, align 4
  %call52 = call i32 @strncasecmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 2)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %while.body
  %36 = load i8*, i8** %opt, align 4
  %add.ptr = getelementptr inbounds i8, i8* %36, i32 2
  store i8* %add.ptr, i8** %opt, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %while.body
  %37 = load i8*, i8** %opt, align 4
  %call56 = call i8* @strchr(i8* %37, i32 44)
  store i8* %call56, i8** %nextopt, align 4
  %tobool57 = icmp ne i8* %call56, null
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end55
  %38 = load i8*, i8** %nextopt, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %nextopt, align 4
  store i8 0, i8* %38, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end55
  store i32 8, i32* %o, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end59
  %39 = load i32, i32* %o, align 4
  %cmp60 = icmp sge i32 %39, 0
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %40 = load i32, i32* %o, align 4
  %arrayidx62 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @openopts, i32 0, i32 %40
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx62, i32 0, i32 0
  %41 = load i8*, i8** %name, align 4
  %42 = load i8*, i8** %opt, align 4
  %call63 = call i32 @strcasecmp(i8* %41, i8* %42)
  %tobool64 = icmp ne i32 %call63, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %43 = phi i1 [ false, %for.cond ], [ %tobool64, %land.rhs ]
  br i1 %43, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %o, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %o, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %45 = load i32, i32* %o, align 4
  %cmp65 = icmp slt i32 %45, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.end
  %46 = load i8*, i8** %nam.addr, align 4
  %47 = load i8*, i8** %opt, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* %47)
  store i32 1, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %for.end
  %48 = load i32, i32* %o, align 4
  %arrayidx69 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @openopts, i32 0, i32 %48
  %oflag = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx69, i32 0, i32 1
  %49 = load i32, i32* %oflag, align 4
  %50 = load i32, i32* %flags, align 4
  %or70 = or i32 %50, %49
  store i32 %or70, i32* %flags, align 4
  %51 = load i8*, i8** %nextopt, align 4
  store i8* %51, i8** %opt, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end71

if.end71:                                         ; preds = %while.end, %if.end37
  %52 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind72 = getelementptr inbounds %struct.options, %struct.options* %52, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [128 x i8], [128 x i8]* %ind72, i32 0, i32 109
  %53 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %53 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %if.then77, label %if.end105

if.then77:                                        ; preds = %if.end71
  %54 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args78 = getelementptr inbounds %struct.options, %struct.options* %54, i32 0, i32 1
  %55 = load i8**, i8*** %args78, align 4
  %56 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind79 = getelementptr inbounds %struct.options, %struct.options* %56, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [128 x i8], [128 x i8]* %ind79, i32 0, i32 109
  %57 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %57 to i32
  %shr82 = ashr i32 %conv81, 2
  %sub83 = sub nsw i32 %shr82, 1
  %arrayidx84 = getelementptr inbounds i8*, i8** %55, i32 %sub83
  %58 = load i8*, i8** %arrayidx84, align 4
  store i8* %58, i8** %opt, align 4
  store i8* %58, i8** %ptr, align 4
  br label %while.cond85

while.cond85:                                     ; preds = %while.body94, %if.then77
  %59 = load i8*, i8** %ptr, align 4
  %60 = load i8, i8* %59, align 1
  %conv86 = sext i8 %60 to i32
  %cmp87 = icmp sge i32 %conv86, 48
  br i1 %cmp87, label %land.rhs89, label %land.end93

land.rhs89:                                       ; preds = %while.cond85
  %61 = load i8*, i8** %ptr, align 4
  %62 = load i8, i8* %61, align 1
  %conv90 = sext i8 %62 to i32
  %cmp91 = icmp sle i32 %conv90, 55
  br label %land.end93

land.end93:                                       ; preds = %land.rhs89, %while.cond85
  %63 = phi i1 [ false, %while.cond85 ], [ %cmp91, %land.rhs89 ]
  br i1 %63, label %while.body94, label %while.end96

while.body94:                                     ; preds = %land.end93
  %64 = load i8*, i8** %ptr, align 4
  %incdec.ptr95 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr95, i8** %ptr, align 4
  br label %while.cond85

while.end96:                                      ; preds = %land.end93
  %65 = load i8*, i8** %ptr, align 4
  %66 = load i8, i8* %65, align 1
  %conv97 = sext i8 %66 to i32
  %tobool98 = icmp ne i32 %conv97, 0
  br i1 %tobool98, label %if.then102, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %while.end96
  %67 = load i8*, i8** %ptr, align 4
  %68 = load i8*, i8** %opt, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %67 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %68 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp100 = icmp slt i32 %sub.ptr.sub, 3
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %lor.lhs.false99, %while.end96
  %69 = load i8*, i8** %nam.addr, align 4
  %70 = load i8*, i8** %opt, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* %70)
  store i32 1, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %lor.lhs.false99
  %71 = load i8*, i8** %opt, align 4
  %call104 = call i32 @zstrtol(i8* %71, i8** null, i32 8)
  store i32 %call104, i32* %perms, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end103, %if.end71
  %72 = load i32, i32* %flags, align 4
  %and106 = and i32 %72, 64
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.end105
  %73 = load i8**, i8*** %args.addr, align 4
  %74 = load i8*, i8** %73, align 4
  %75 = load i32, i32* %flags, align 4
  %76 = load i32, i32* %perms, align 4
  %call109 = call i32 (i8*, i32, ...) @open(i8* %74, i32 %75, i32 %76)
  store i32 %call109, i32* %fd, align 4
  br label %if.end112

if.else110:                                       ; preds = %if.end105
  %77 = load i8**, i8*** %args.addr, align 4
  %78 = load i8*, i8** %77, align 4
  %79 = load i32, i32* %flags, align 4
  %call111 = call i32 (i8*, i32, ...) @open(i8* %78, i32 %79)
  store i32 %call111, i32* %fd, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.else110, %if.then108
  %80 = load i32, i32* %fd, align 4
  %cmp113 = icmp eq i32 %80, -1
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end112
  %81 = load i8*, i8** %nam.addr, align 4
  %82 = load i8**, i8*** %args.addr, align 4
  %83 = load i8*, i8** %82, align 4
  %call116 = call i32* @__errno_location()
  %84 = load i32, i32* %call116, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* %83, i32 %84)
  store i32 1, i32* %retval, align 4
  br label %return

if.end117:                                        ; preds = %if.end112
  %85 = load i32, i32* %explicit, align 4
  %cmp118 = icmp sgt i32 %85, -1
  br i1 %cmp118, label %cond.true120, label %cond.false122

cond.true120:                                     ; preds = %if.end117
  %86 = load i32, i32* %fd, align 4
  %87 = load i32, i32* %explicit, align 4
  %call121 = call i32 @redup(i32 %86, i32 %87)
  br label %cond.end124

cond.false122:                                    ; preds = %if.end117
  %88 = load i32, i32* %fd, align 4
  %call123 = call i32 @movefd(i32 %88)
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false122, %cond.true120
  %cond125 = phi i32 [ %call121, %cond.true120 ], [ %call123, %cond.false122 ]
  store i32 %cond125, i32* %moved_fd, align 4
  %89 = load i32, i32* %moved_fd, align 4
  %cmp126 = icmp eq i32 %89, -1
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %cond.end124
  %90 = load i8*, i8** %nam.addr, align 4
  %91 = load i8**, i8*** %args.addr, align 4
  %92 = load i8*, i8** %91, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* %92)
  store i32 1, i32* %retval, align 4
  br label %return

if.end129:                                        ; preds = %cond.end124
  %93 = load i32, i32* %flags, align 4
  %and130 = and i32 %93, 524288
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %land.lhs.true132, label %if.end137

land.lhs.true132:                                 ; preds = %if.end129
  %94 = load i32, i32* %fd, align 4
  %95 = load i32, i32* %moved_fd, align 4
  %cmp133 = icmp ne i32 %94, %95
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %land.lhs.true132
  %96 = load i32, i32* %moved_fd, align 4
  %call136 = call i32 (i32, i32, ...) @fcntl(i32 %96, i32 2, i32 1)
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %land.lhs.true132, %if.end129
  %97 = load i32, i32* %explicit, align 4
  %cmp138 = icmp eq i32 %97, -1
  br i1 %cmp138, label %if.then140, label %if.end147

if.then140:                                       ; preds = %if.end137
  %98 = load i8*, i8** @fdtable, align 4
  %99 = load i32, i32* %moved_fd, align 4
  %arrayidx141 = getelementptr inbounds i8, i8* %98, i32 %99
  store i8 2, i8* %arrayidx141, align 1
  %100 = load i8*, i8** %fdvar, align 4
  %101 = load i32, i32* %moved_fd, align 4
  %call142 = call %struct.param* @setiparam(i8* %100, i32 %101)
  %102 = load i32, i32* @errflag, align 4
  %tobool143 = icmp ne i32 %102, 0
  br i1 %tobool143, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.then140
  %103 = load i32, i32* %moved_fd, align 4
  %call145 = call i32 @zclose(i32 %103)
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.then140
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end137
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end147, %if.then128, %if.then115, %if.then102, %if.then67, %if.then35, %if.then
  %104 = load i32, i32* %retval, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind
define internal i32 @bin_sysseek(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %fd = alloca i32, align 4
  %whence = alloca i8*, align 4
  %pos = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %w, align 4
  store i32 0, i32* %fd, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 117
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 1
  %3 = load i8**, i8*** %args2, align 4
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 117
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shr = ashr i32 %conv5, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx6 = getelementptr inbounds i8*, i8** %3, i32 %sub
  %6 = load i8*, i8** %arrayidx6, align 4
  %7 = load i8*, i8** %nam.addr, align 4
  %call = call i32 @getposint(i8* %6, i8* %7)
  store i32 %call, i32* %fd, align 4
  %8 = load i32, i32* %fd, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %9 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind11 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [128 x i8], [128 x i8]* %ind11, i32 0, i32 119
  %10 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end44

if.then16:                                        ; preds = %if.end10
  %11 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args17 = getelementptr inbounds %struct.options, %struct.options* %11, i32 0, i32 1
  %12 = load i8**, i8*** %args17, align 4
  %13 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind18 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [128 x i8], [128 x i8]* %ind18, i32 0, i32 119
  %14 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %14 to i32
  %shr21 = ashr i32 %conv20, 2
  %sub22 = sub nsw i32 %shr21, 1
  %arrayidx23 = getelementptr inbounds i8*, i8** %12, i32 %sub22
  %15 = load i8*, i8** %arrayidx23, align 4
  store i8* %15, i8** %whence, align 4
  %16 = load i8*, i8** %whence, align 4
  %call24 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %land.lhs.true, label %if.then27

land.lhs.true:                                    ; preds = %if.then16
  %17 = load i8*, i8** %whence, align 4
  %call25 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else, label %if.then27

if.then27:                                        ; preds = %land.lhs.true, %if.then16
  store i32 1, i32* %w, align 4
  br label %if.end43

if.else:                                          ; preds = %land.lhs.true
  %18 = load i8*, i8** %whence, align 4
  %call28 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true30, label %if.then33

land.lhs.true30:                                  ; preds = %if.else
  %19 = load i8*, i8** %whence, align 4
  %call31 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0))
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true30, %if.else
  store i32 2, i32* %w, align 4
  br label %if.end42

if.else34:                                        ; preds = %land.lhs.true30
  %20 = load i8*, i8** %whence, align 4
  %call35 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true37, label %if.end41

land.lhs.true37:                                  ; preds = %if.else34
  %21 = load i8*, i8** %whence, align 4
  %call38 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true37
  %22 = load i8*, i8** %nam.addr, align 4
  %23 = load i8*, i8** %whence, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0), i8* %23)
  store i32 1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %land.lhs.true37, %if.else34
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then27
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end10
  %24 = load i8**, i8*** %args.addr, align 4
  %25 = load i8*, i8** %24, align 4
  %call45 = call i32 @mathevali(i8* %25)
  store i32 %call45, i32* %pos, align 4
  %26 = load i32, i32* %fd, align 4
  %27 = load i32, i32* %pos, align 4
  %28 = load i32, i32* %w, align 4
  %call46 = call i32 @lseek(i32 %26, i32 %27, i32 %28)
  %cmp47 = icmp eq i32 %call46, -1
  %cond = select i1 %cmp47, i32 2, i32 0
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then40, %if.then9
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zsystem(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %nam.addr, align 4
  %3 = load i8**, i8*** %args.addr, align 4
  %add.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %5 = load i32, i32* %func.addr, align 4
  %call1 = call i32 @bin_zsystem_flock(i8* %2, i8** %add.ptr, %struct.options* %4, i32 %5)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i8**, i8*** %args.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %call2 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.else
  %8 = load i8*, i8** %nam.addr, align 4
  %9 = load i8**, i8*** %args.addr, align 4
  %add.ptr5 = getelementptr inbounds i8*, i8** %9, i32 1
  %10 = load %struct.options*, %struct.options** %ops.addr, align 4
  %11 = load i32, i32* %func.addr, align 4
  %call6 = call i32 @bin_zsystem_supports(i8* %8, i8** %add.ptr5, %struct.options* %10, i32 %11)
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %12 = load i8*, i8** %nam.addr, align 4
  %13 = load i8**, i8*** %args.addr, align 4
  %14 = load i8*, i8** %13, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8* %14)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare i32 @isident(i8*) #1

declare void @zwarnnam(i8*, i8*, ...) #1

declare i32* @__errno_location() #1

declare i32 @atoi(i8*) #1

declare i32 @strcmp(i8*, i8*) #1

declare i8* @strerror(i32) #1

declare i8* @zalloc(i32) #1

declare i32 @strlen(i8*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @getposint(i8* %instr, i8* %nam) #0 {
entry:
  %retval = alloca i32, align 4
  %instr.addr = alloca i8*, align 4
  %nam.addr = alloca i8*, align 4
  %eptr = alloca i8*, align 4
  %ret = alloca i32, align 4
  store i8* %instr, i8** %instr.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load i8*, i8** %instr.addr, align 4
  %call = call i32 @zstrtol(i8* %0, i8** %eptr, i32 10)
  store i32 %call, i32* %ret, align 4
  %1 = load i8*, i8** %eptr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %nam.addr, align 4
  %5 = load i8*, i8** %instr.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* %5)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare i8* @zhalloc(i32) #1

declare void @matheval(%struct.mnumber* sret, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare i32 @poll(%struct.pollfd*, i32, i32) #1

declare i32 @read(i32, i8*, i32) #1

declare %struct.param* @setiparam(i8*, i32) #1

declare i32 @write(i32, i8*, i32) #1

declare i8* @metafy(i8*, i32, i32) #1

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i32 @strncasecmp(i8*, i8*, i32) #1

declare i8* @strchr(i8*, i32) #1

declare i32 @strcasecmp(i8*, i8*) #1

declare i32 @open(i8*, i32, ...) #1

declare i32 @redup(i32, i32) #1

declare i32 @movefd(i32) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @zclose(i32) #1

declare i32 @mathevali(i8*) #1

declare i32 @lseek(i32, i32, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @bin_zsystem_flock(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %cloexec = alloca i32, align 4
  %unlock = alloca i32, align 4
  %readlock = alloca i32, align 4
  %timeout = alloca i32, align 4
  %fdvar = alloca i8*, align 4
  %lck = alloca %struct.flock, align 4
  %flock_fd = alloca i32, align 4
  %flags = alloca i32, align 4
  %opt = alloca i32, align 4
  %optptr = alloca i8*, align 4
  %optarg = alloca i8*, align 4
  %fdflags = alloca i32, align 4
  %end = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 1, i32* %cloexec, align 4
  store i32 0, i32* %unlock, align 4
  store i32 0, i32* %readlock, align 4
  store i32 -1, i32* %timeout, align 4
  store i8* null, i8** %fdvar, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8**, i8*** %args.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end46

while.body:                                       ; preds = %land.end
  %6 = load i8**, i8*** %args.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %add.ptr, i8** %optptr, align 4
  %8 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  %9 = load i8*, i8** %optptr, align 4
  %10 = load i8, i8* %9, align 1
  %tobool2 = icmp ne i8 %10, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i8*, i8** %optptr, align 4
  %call = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end46

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond4

while.cond4:                                      ; preds = %sw.epilog, %if.end
  %12 = load i8*, i8** %optptr, align 4
  %13 = load i8, i8* %12, align 1
  %conv5 = sext i8 %13 to i32
  store i32 %conv5, i32* %opt, align 4
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond4
  %14 = load i32, i32* %opt, align 4
  switch i32 %14, label %sw.default [
    i32 101, label %sw.bb
    i32 102, label %sw.bb8
    i32 114, label %sw.bb26
    i32 116, label %sw.bb27
    i32 117, label %sw.bb43
  ]

sw.bb:                                            ; preds = %while.body7
  store i32 0, i32* %cloexec, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body7
  %15 = load i8*, i8** %optptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %15, i32 1
  %16 = load i8, i8* %arrayidx, align 1
  %tobool9 = icmp ne i8 %16, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb8
  %17 = load i8*, i8** %optptr, align 4
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %add.ptr11, i8** %fdvar, align 4
  %18 = load i8*, i8** %fdvar, align 4
  %call12 = call i32 @strlen(i8* %18)
  %sub = sub i32 %call12, 1
  %19 = load i8*, i8** %optptr, align 4
  %add.ptr13 = getelementptr inbounds i8, i8* %19, i32 %sub
  store i8* %add.ptr13, i8** %optptr, align 4
  br label %if.end18

if.else:                                          ; preds = %sw.bb8
  %20 = load i8**, i8*** %args.addr, align 4
  %21 = load i8*, i8** %20, align 4
  %tobool14 = icmp ne i8* %21, null
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %22 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr16 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr16, i8*** %args.addr, align 4
  %23 = load i8*, i8** %22, align 4
  store i8* %23, i8** %fdvar, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then10
  %24 = load i8*, i8** %fdvar, align 4
  %cmp19 = icmp eq i8* %24, null
  br i1 %cmp19, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end18
  %25 = load i8*, i8** %fdvar, align 4
  %call22 = call i32 @isident(i8* %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21, %if.end18
  %26 = load i8*, i8** %nam.addr, align 4
  %27 = load i32, i32* %opt, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0), i32 %27)
  store i32 1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false21
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body7
  store i32 1, i32* %readlock, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.body7
  %28 = load i8*, i8** %optptr, align 4
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i32 1
  %29 = load i8, i8* %arrayidx28, align 1
  %tobool29 = icmp ne i8 %29, 0
  br i1 %tobool29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %sw.bb27
  %30 = load i8*, i8** %optptr, align 4
  %add.ptr31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %add.ptr31, i8** %optarg, align 4
  %31 = load i8*, i8** %optarg, align 4
  %call32 = call i32 @strlen(i8* %31)
  %sub33 = sub i32 %call32, 1
  %32 = load i8*, i8** %optptr, align 4
  %add.ptr34 = getelementptr inbounds i8, i8* %32, i32 %sub33
  store i8* %add.ptr34, i8** %optptr, align 4
  br label %if.end41

if.else35:                                        ; preds = %sw.bb27
  %33 = load i8**, i8*** %args.addr, align 4
  %34 = load i8*, i8** %33, align 4
  %tobool36 = icmp ne i8* %34, null
  br i1 %tobool36, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.else35
  %35 = load i8*, i8** %nam.addr, align 4
  %36 = load i32, i32* %opt, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i32 0, i32 0), i32 %36)
  store i32 1, i32* %retval, align 4
  br label %return

if.else38:                                        ; preds = %if.else35
  %37 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr39 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %incdec.ptr39, i8*** %args.addr, align 4
  %38 = load i8*, i8** %37, align 4
  store i8* %38, i8** %optarg, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else38
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then30
  %39 = load i8*, i8** %optarg, align 4
  %call42 = call i32 @mathevali(i8* %39)
  store i32 %call42, i32* %timeout, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %while.body7
  store i32 1, i32* %unlock, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body7
  %40 = load i8*, i8** %nam.addr, align 4
  %41 = load i8*, i8** %optptr, align 4
  %42 = load i8, i8* %41, align 1
  %conv44 = sext i8 %42 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0), i32 %conv44)
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb43, %if.end41, %sw.bb26, %if.end25, %sw.bb
  %43 = load i8*, i8** %optptr, align 4
  %incdec.ptr45 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr45, i8** %optptr, align 4
  br label %while.cond4

while.end:                                        ; preds = %while.cond4
  br label %while.cond

while.end46:                                      ; preds = %if.then, %land.end
  %44 = load i8**, i8*** %args.addr, align 4
  %arrayidx47 = getelementptr inbounds i8*, i8** %44, i32 0
  %45 = load i8*, i8** %arrayidx47, align 4
  %tobool48 = icmp ne i8* %45, null
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %while.end46
  %46 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %while.end46
  %47 = load i8**, i8*** %args.addr, align 4
  %arrayidx51 = getelementptr inbounds i8*, i8** %47, i32 1
  %48 = load i8*, i8** %arrayidx51, align 4
  %tobool52 = icmp ne i8* %48, null
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  %49 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end50
  %50 = load i32, i32* %unlock, align 4
  %tobool55 = icmp ne i32 %50, 0
  br i1 %tobool55, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.end54
  %51 = load i8**, i8*** %args.addr, align 4
  %arrayidx57 = getelementptr inbounds i8*, i8** %51, i32 0
  %52 = load i8*, i8** %arrayidx57, align 4
  %call58 = call i32 @mathevali(i8* %52)
  store i32 %call58, i32* %flock_fd, align 4
  %53 = load i32, i32* %flock_fd, align 4
  %call59 = call i32 @zcloselockfd(i32 %53)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then56
  %54 = load i8*, i8** %nam.addr, align 4
  %55 = load i32, i32* %flock_fd, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.49, i32 0, i32 0), i32 %55)
  store i32 1, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.then56
  store i32 0, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end54
  %56 = load i32, i32* %readlock, align 4
  %tobool65 = icmp ne i32 %56, 0
  br i1 %tobool65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end64
  store i32 256, i32* %flags, align 4
  br label %if.end68

if.else67:                                        ; preds = %if.end64
  store i32 258, i32* %flags, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  %57 = load i8**, i8*** %args.addr, align 4
  %arrayidx69 = getelementptr inbounds i8*, i8** %57, i32 0
  %58 = load i8*, i8** %arrayidx69, align 4
  %call70 = call i8* @unmeta(i8* %58)
  %59 = load i32, i32* %flags, align 4
  %call71 = call i32 (i8*, i32, ...) @open(i8* %call70, i32 %59)
  store i32 %call71, i32* %flock_fd, align 4
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end68
  %60 = load i8*, i8** %nam.addr, align 4
  %61 = load i8**, i8*** %args.addr, align 4
  %arrayidx75 = getelementptr inbounds i8*, i8** %61, i32 0
  %62 = load i8*, i8** %arrayidx75, align 4
  %call76 = call i32* @__errno_location()
  %63 = load i32, i32* %call76, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0), i8* %62, i32 %63)
  store i32 1, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end68
  %64 = load i32, i32* %flock_fd, align 4
  %call78 = call i32 @movefd(i32 %64)
  store i32 %call78, i32* %flock_fd, align 4
  %65 = load i32, i32* %flock_fd, align 4
  %cmp79 = icmp eq i32 %65, -1
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end77
  store i32 1, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.end77
  %66 = load i32, i32* %cloexec, align 4
  %tobool83 = icmp ne i32 %66, 0
  br i1 %tobool83, label %if.then84, label %if.end91

if.then84:                                        ; preds = %if.end82
  %67 = load i32, i32* %flock_fd, align 4
  %call85 = call i32 (i32, i32, ...) @fcntl(i32 %67, i32 1, i32 0)
  store i32 %call85, i32* %fdflags, align 4
  %68 = load i32, i32* %fdflags, align 4
  %cmp86 = icmp ne i32 %68, -1
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.then84
  %69 = load i32, i32* %flock_fd, align 4
  %70 = load i32, i32* %fdflags, align 4
  %or = or i32 %70, 1
  %call89 = call i32 (i32, i32, ...) @fcntl(i32 %69, i32 2, i32 %or)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.then84
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end82
  %71 = load i32, i32* %flock_fd, align 4
  %72 = load i32, i32* %cloexec, align 4
  call void @addlockfd(i32 %71, i32 %72)
  %73 = load i32, i32* %readlock, align 4
  %tobool92 = icmp ne i32 %73, 0
  %cond = select i1 %tobool92, i32 0, i32 1
  %conv93 = trunc i32 %cond to i16
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 0
  store i16 %conv93, i16* %l_type, align 4
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 1
  store i16 0, i16* %l_whence, align 2
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 2
  store i32 0, i32* %l_start, align 4
  %l_len = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 3
  store i32 0, i32* %l_len, align 4
  %74 = load i32, i32* %timeout, align 4
  %cmp94 = icmp sgt i32 %74, 0
  br i1 %cmp94, label %if.then96, label %if.else130

if.then96:                                        ; preds = %if.end91
  %call97 = call i32 @time(i32* null)
  %75 = load i32, i32* %timeout, align 4
  %add = add nsw i32 %call97, %75
  store i32 %add, i32* %end, align 4
  br label %while.cond98

while.cond98:                                     ; preds = %if.end127, %if.then96
  %76 = load i32, i32* %flock_fd, align 4
  %call99 = call i32 (i32, i32, ...) @fcntl(i32 %76, i32 13, %struct.flock* %lck)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %while.body102, label %while.end129

while.body102:                                    ; preds = %while.cond98
  %77 = load i32, i32* @errflag, align 4
  %tobool103 = icmp ne i32 %77, 0
  br i1 %tobool103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %while.body102
  %78 = load i32, i32* %flock_fd, align 4
  %call105 = call i32 @zclose(i32 %78)
  store i32 1, i32* %retval, align 4
  br label %return

if.end106:                                        ; preds = %while.body102
  %call107 = call i32* @__errno_location()
  %79 = load i32, i32* %call107, align 4
  %cmp108 = icmp ne i32 %79, 4
  br i1 %cmp108, label %land.lhs.true, label %if.end121

land.lhs.true:                                    ; preds = %if.end106
  %call110 = call i32* @__errno_location()
  %80 = load i32, i32* %call110, align 4
  %cmp111 = icmp ne i32 %80, 13
  br i1 %cmp111, label %land.lhs.true113, label %if.end121

land.lhs.true113:                                 ; preds = %land.lhs.true
  %call114 = call i32* @__errno_location()
  %81 = load i32, i32* %call114, align 4
  %cmp115 = icmp ne i32 %81, 11
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %land.lhs.true113
  %82 = load i32, i32* %flock_fd, align 4
  %call118 = call i32 @zclose(i32 %82)
  %83 = load i8*, i8** %nam.addr, align 4
  %84 = load i8**, i8*** %args.addr, align 4
  %arrayidx119 = getelementptr inbounds i8*, i8** %84, i32 0
  %85 = load i8*, i8** %arrayidx119, align 4
  %call120 = call i32* @__errno_location()
  %86 = load i32, i32* %call120, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i8* %85, i32 %86)
  store i32 1, i32* %retval, align 4
  br label %return

if.end121:                                        ; preds = %land.lhs.true113, %land.lhs.true, %if.end106
  %call122 = call i32 @time(i32* null)
  %87 = load i32, i32* %end, align 4
  %cmp123 = icmp sge i32 %call122, %87
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end121
  %88 = load i32, i32* %flock_fd, align 4
  %call126 = call i32 @zclose(i32 %88)
  store i32 2, i32* %retval, align 4
  br label %return

if.end127:                                        ; preds = %if.end121
  %call128 = call i32 @sleep(i32 1)
  br label %while.cond98

while.end129:                                     ; preds = %while.cond98
  br label %if.end152

if.else130:                                       ; preds = %if.end91
  br label %while.cond131

while.cond131:                                    ; preds = %if.then146, %if.else130
  %89 = load i32, i32* %flock_fd, align 4
  %90 = load i32, i32* %timeout, align 4
  %cmp132 = icmp eq i32 %90, 0
  %cond134 = select i1 %cmp132, i32 13, i32 14
  %call135 = call i32 (i32, i32, ...) @fcntl(i32 %89, i32 %cond134, %struct.flock* %lck)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %while.body138, label %while.end151

while.body138:                                    ; preds = %while.cond131
  %91 = load i32, i32* @errflag, align 4
  %tobool139 = icmp ne i32 %91, 0
  br i1 %tobool139, label %if.then140, label %if.end142

if.then140:                                       ; preds = %while.body138
  %92 = load i32, i32* %flock_fd, align 4
  %call141 = call i32 @zclose(i32 %92)
  store i32 1, i32* %retval, align 4
  br label %return

if.end142:                                        ; preds = %while.body138
  %call143 = call i32* @__errno_location()
  %93 = load i32, i32* %call143, align 4
  %cmp144 = icmp eq i32 %93, 4
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end142
  br label %while.cond131

if.end147:                                        ; preds = %if.end142
  %94 = load i32, i32* %flock_fd, align 4
  %call148 = call i32 @zclose(i32 %94)
  %95 = load i8*, i8** %nam.addr, align 4
  %96 = load i8**, i8*** %args.addr, align 4
  %arrayidx149 = getelementptr inbounds i8*, i8** %96, i32 0
  %97 = load i8*, i8** %arrayidx149, align 4
  %call150 = call i32* @__errno_location()
  %98 = load i32, i32* %call150, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i8* %97, i32 %98)
  store i32 1, i32* %retval, align 4
  br label %return

while.end151:                                     ; preds = %while.cond131
  br label %if.end152

if.end152:                                        ; preds = %while.end151, %while.end129
  %99 = load i8*, i8** %fdvar, align 4
  %tobool153 = icmp ne i8* %99, null
  br i1 %tobool153, label %if.then154, label %if.end156

if.then154:                                       ; preds = %if.end152
  %100 = load i8*, i8** %fdvar, align 4
  %101 = load i32, i32* %flock_fd, align 4
  %call155 = call %struct.param* @setiparam(i8* %100, i32 %101)
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.end152
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end156, %if.end147, %if.then140, %if.then125, %if.then117, %if.then104, %if.then81, %if.then74, %if.end63, %if.then62, %if.then53, %if.then49, %sw.default, %if.then37, %if.then24
  %102 = load i32, i32* %retval, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zsystem_supports(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %0, i32 0
  %1 = load i8*, i8** %arrayidx, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i32 0, i32 0))
  store i32 255, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %args.addr, align 4
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i32 1
  %4 = load i8*, i8** %arrayidx1, align 4
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i32 0, i32 0))
  store i32 255, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i8**, i8*** %args.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %8 = load i8**, i8*** %args.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %call8 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then6, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare i32 @zcloselockfd(i32) #1

declare i8* @unmeta(i8*) #1

declare void @addlockfd(i32, i32) #1

declare i32 @time(i32*) #1

declare i32 @sleep(i32) #1

; Function Attrs: noinline nounwind
define internal void @math_systell(%struct.mnumber* noalias sret %agg.result, i8* %name, i32 %argc, %struct.mnumber* %argv, i32 %id) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca %struct.mnumber*, align 4
  %id.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %ret = alloca %struct.mnumber, align 8
  store i8* %name, i8** %name.addr, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store %struct.mnumber* %argv, %struct.mnumber** %argv.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %2, i32 0, i32 0
  %l = bitcast %union.anon.0* %u to i32*
  %3 = load i32, i32* %l, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u1 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %4, i32 0, i32 0
  %d = bitcast %union.anon.0* %u1 to double*
  %5 = load double, double* %d, align 8
  %conv = fptosi double %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %fd, align 4
  %type2 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 1, i32* %type2, align 8
  %u3 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l4 = bitcast %union.anon.0* %u3 to i32*
  store i32 0, i32* %l4, align 8
  %6 = load i32, i32* %fd, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i32 0, i32 0))
  %7 = bitcast %struct.mnumber* %agg.result to i8*
  %8 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load i32, i32* %fd, align 4
  %call = call i32 @lseek(i32 %9, i32 0, i32 1)
  %u7 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l8 = bitcast %union.anon.0* %u7 to i32*
  store i32 %call, i32* %l8, align 8
  %10 = bitcast %struct.mnumber* %agg.result to i8*
  %11 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @zerr(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmsysparams(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load %struct.param*, %struct.param** %pm, align 4
  %2 = load i8*, i8** %name.addr, align 4
  call void @fillpmsysparams(%struct.param* %1, i8* %2)
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  ret %struct.hashnode* %node
}

; Function Attrs: noinline nounwind
define internal void @scanpmsysparams(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %spm = alloca %struct.param, align 8
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @fillpmsysparams(%struct.param* %spm, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0))
  %0 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %spm, i32 0, i32 0
  %1 = load i32, i32* %flags.addr, align 4
  call void %0(%struct.hashnode* %node, i32 %1)
  call void @fillpmsysparams(%struct.param* %spm, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0))
  %2 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %spm, i32 0, i32 0
  %3 = load i32, i32* %flags.addr, align 4
  call void %2(%struct.hashnode* %node1, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind
define internal i8** @errnosgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i8** @arrdup(i8** getelementptr inbounds ([134 x i8*], [134 x i8*]* @sys_errnames, i32 0, i32 0))
  ret i8** %call
}

declare void @arrsetfn(%struct.param*, i8**) #1

declare void @stdunsetfn(%struct.param*, i32) #1

declare i8** @arrdup(i8**) #1

declare i8* @hcalloc(i32) #1

; Function Attrs: noinline nounwind
define internal void @fillpmsysparams(%struct.param* %pm, i8* %name) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %name.addr = alloca i8*, align 4
  %buf = alloca [12 x i8], align 1
  %num = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call, i8** %nam, align 4
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %4 = load i8*, i8** %name.addr, align 4
  %call2 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0))
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 @getpid()
  store i32 %call3, i32* %num, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %name.addr, align 4
  %call4 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = call i32 @getppid()
  store i32 %call7, i32* %num, align 4
  br label %if.end

if.else8:                                         ; preds = %if.else
  %call9 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0))
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call9, i8** %str, align 8
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node10 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 2
  %8 = load i32, i32* %flags11, align 8
  %or = or i32 %8, 33554432
  store i32 %or, i32* %flags11, align 8
  br label %return

if.end:                                           ; preds = %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %9 = load i32, i32* %num, align 4
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i32 %9)
  %arraydecay14 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call15 = call i8* @dupstring(i8* %arraydecay14)
  %10 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u16 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 1
  %str17 = bitcast %union.anon.1* %u16 to i8**
  store i8* %call15, i8** %str17, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.else8
  ret void
}

declare i8* @dupstring(i8*) #1

declare i32 @getpid() #1

declare i32 @getppid() #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
