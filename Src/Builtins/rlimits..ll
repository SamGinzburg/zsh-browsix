; ModuleID = 'rlimits.c'
source_filename = "rlimits.c"
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
%struct.rlimit = type { i64, i64 }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([3 x %struct.builtin], [3 x %struct.builtin]* @bintab, i32 0, i32 0), i32 3, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@bintab = internal global [3 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_limit, i32 0, i32 -1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_ulimit, i32 0, i32 -1, i32 0, i8* null, i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_unlimit, i32 0, i32 -1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* null }], align 4
@.str = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ulimit\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unlimit\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@typtab = external global [256 x i16], align 2
@recs = internal global [0 x i8*] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"ambiguous resource specification: %s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"no such resource: %s\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"unknown scaling factor: %s\00", align 1
@limtype = internal global [0 x i32] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"limit must be a number\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"can't read limit: %e\00", align 1
@limits = external global [15 x %struct.rlimit], align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%-16d\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"unlimited\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"%d:%02d:%02d\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%luus\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%luMB\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%lukB\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"can't raise hard limits\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"limit exceeds hard limit\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"warning: unrecognised limit %d, use -s to set\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"setrlimit failed: %e\00", align 1
@current_limits = external global [15 x %struct.rlimit], align 8
@.str.23 = private unnamed_addr constant [25 x i8] c"value exceeds hard limit\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"missing option letter\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"number required after -N\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"invalid number: %s\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"no limits allowed with -a\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"bad option: -%c\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"no arguments allowed after -a\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"can't remove hard limits\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"-c: core file size (blocks)         \00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"-d: data seg size (kbytes)          \00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"-f: file size (blocks)              \00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"-i: pending signals                 \00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"-l: locked-in-memory size (kbytes)  \00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"-m: resident set size (kbytes)      \00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"-n: file descriptors                \00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"-q: bytes in POSIX msg queues       \00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"-s: stack size (kbytes)             \00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"-t: cpu time (seconds)              \00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"-u: processes                       \00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"-v: address space (kbytes)          \00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"-x: file locks                      \00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"-e: max nice                        \00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"-r: max rt priority                 \00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"-N %2d:                              \00", align 1

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
define internal i32 @bin_limit(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  %hard = alloca i32, align 4
  %limnum = alloca i32, align 4
  %lim = alloca i32, align 4
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  %t = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 104
  %1 = load i8, i8* %arrayidx, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %hard, align 4
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 115
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @setlimits(i8* null)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i8**, i8*** %argv.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %tobool7 = icmp ne i8* %7, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %8 = load i8*, i8** %nam.addr, align 4
  %9 = load i32, i32* %hard, align 4
  %call9 = call i32 @showlimits(i8* %8, i32 %9, i32 -1)
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end173, %if.end10
  %10 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 4
  %11 = load i8*, i8** %10, align 4
  store i8* %11, i8** %s, align 4
  %tobool11 = icmp ne i8* %11, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %s, align 4
  %13 = load i8, i8* %12, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx12 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %14 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %14 to i32
  %and = and i32 %conv13, 1
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %while.body
  %15 = load i8*, i8** %s, align 4
  %call16 = call i32 @zstrtol(i8* %15, i8** null, i32 10)
  store i32 %call16, i32* %lim, align 4
  br label %if.end30

if.else:                                          ; preds = %while.body
  store i32 -1, i32* %lim, align 4
  store i32 0, i32* %limnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %16 = load i32, i32* %limnum, align 4
  %cmp17 = icmp slt i32 %16, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %limnum, align 4
  %arrayidx19 = getelementptr inbounds [0 x i8*], [0 x i8*]* @recs, i32 0, i32 %17
  %18 = load i8*, i8** %arrayidx19, align 4
  %19 = load i8*, i8** %s, align 4
  %20 = load i8*, i8** %s, align 4
  %call20 = call i32 @strlen(i8* %20)
  %call21 = call i32 @strncmp(i8* %18, i8* %19, i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end29, label %if.then23

if.then23:                                        ; preds = %for.body
  %21 = load i32, i32* %lim, align 4
  %cmp24 = icmp ne i32 %21, -1
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then23
  store i32 -2, i32* %lim, align 4
  br label %if.end28

if.else27:                                        ; preds = %if.then23
  %22 = load i32, i32* %limnum, align 4
  store i32 %22, i32* %lim, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %23 = load i32, i32* %limnum, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %limnum, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end30

if.end30:                                         ; preds = %for.end, %if.then15
  %24 = load i32, i32* %lim, align 4
  %cmp31 = icmp slt i32 %24, 0
  br i1 %cmp31, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %25 = load i8*, i8** %nam.addr, align 4
  %26 = load i32, i32* %lim, align 4
  %cmp34 = icmp eq i32 %26, -2
  %cond = select i1 %cmp34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)
  %27 = load i8*, i8** %s, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %25, i8* %cond, i8* %27)
  store i32 1, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end30
  %28 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr37 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %incdec.ptr37, i8*** %argv.addr, align 4
  %29 = load i8*, i8** %28, align 4
  store i8* %29, i8** %s, align 4
  %tobool38 = icmp ne i8* %29, null
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  %30 = load i8*, i8** %nam.addr, align 4
  %31 = load i32, i32* %hard, align 4
  %32 = load i32, i32* %lim, align 4
  %call40 = call i32 @showlimits(i8* %30, i32 %31, i32 %32)
  store i32 %call40, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end36
  %33 = load i32, i32* %lim, align 4
  %cmp42 = icmp sge i32 %33, 0
  br i1 %cmp42, label %if.then44, label %if.else49

if.then44:                                        ; preds = %if.end41
  %34 = load i8*, i8** %s, align 4
  %call45 = call i64 @zstrtorlimt(i8* %34, i8** %s, i32 10)
  store i64 %call45, i64* %val, align 8
  %35 = load i8*, i8** %s, align 4
  %36 = load i8, i8* %35, align 1
  %tobool46 = icmp ne i8 %36, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then44
  %37 = load i8*, i8** %nam.addr, align 4
  %38 = load i8*, i8** %s, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %38)
  store i32 1, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then44
  br label %if.end162

if.else49:                                        ; preds = %if.end41
  %39 = load i32, i32* %lim, align 4
  %arrayidx50 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %39
  %40 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp eq i32 %40, 2
  br i1 %cmp51, label %if.then53, label %if.else92

if.then53:                                        ; preds = %if.else49
  %41 = load i8*, i8** %s, align 4
  %call54 = call i64 @zstrtorlimt(i8* %41, i8** %s, i32 10)
  store i64 %call54, i64* %val, align 8
  %42 = load i8*, i8** %s, align 4
  %43 = load i8, i8* %42, align 1
  %tobool55 = icmp ne i8 %43, 0
  br i1 %tobool55, label %if.then56, label %if.end91

if.then56:                                        ; preds = %if.then53
  %44 = load i8*, i8** %s, align 4
  %45 = load i8, i8* %44, align 1
  %conv57 = sext i8 %45 to i32
  %cmp58 = icmp eq i32 %conv57, 104
  br i1 %cmp58, label %land.lhs.true63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then56
  %46 = load i8*, i8** %s, align 4
  %47 = load i8, i8* %46, align 1
  %conv60 = sext i8 %47 to i32
  %cmp61 = icmp eq i32 %conv60, 72
  br i1 %cmp61, label %land.lhs.true63, label %if.else67

land.lhs.true63:                                  ; preds = %lor.lhs.false, %if.then56
  %48 = load i8*, i8** %s, align 4
  %arrayidx64 = getelementptr inbounds i8, i8* %48, i32 1
  %49 = load i8, i8* %arrayidx64, align 1
  %tobool65 = icmp ne i8 %49, 0
  br i1 %tobool65, label %if.else67, label %if.then66

if.then66:                                        ; preds = %land.lhs.true63
  %50 = load i64, i64* %val, align 8
  %mul = mul i64 %50, 3600
  store i64 %mul, i64* %val, align 8
  br label %if.end90

if.else67:                                        ; preds = %land.lhs.true63, %lor.lhs.false
  %51 = load i8*, i8** %s, align 4
  %52 = load i8, i8* %51, align 1
  %conv68 = sext i8 %52 to i32
  %cmp69 = icmp eq i32 %conv68, 109
  br i1 %cmp69, label %land.lhs.true75, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.else67
  %53 = load i8*, i8** %s, align 4
  %54 = load i8, i8* %53, align 1
  %conv72 = sext i8 %54 to i32
  %cmp73 = icmp eq i32 %conv72, 77
  br i1 %cmp73, label %land.lhs.true75, label %if.else80

land.lhs.true75:                                  ; preds = %lor.lhs.false71, %if.else67
  %55 = load i8*, i8** %s, align 4
  %arrayidx76 = getelementptr inbounds i8, i8* %55, i32 1
  %56 = load i8, i8* %arrayidx76, align 1
  %tobool77 = icmp ne i8 %56, 0
  br i1 %tobool77, label %if.else80, label %if.then78

if.then78:                                        ; preds = %land.lhs.true75
  %57 = load i64, i64* %val, align 8
  %mul79 = mul i64 %57, 60
  store i64 %mul79, i64* %val, align 8
  br label %if.end89

if.else80:                                        ; preds = %land.lhs.true75, %lor.lhs.false71
  %58 = load i8*, i8** %s, align 4
  %59 = load i8, i8* %58, align 1
  %conv81 = sext i8 %59 to i32
  %cmp82 = icmp eq i32 %conv81, 58
  br i1 %cmp82, label %if.then84, label %if.else87

if.then84:                                        ; preds = %if.else80
  %60 = load i64, i64* %val, align 8
  %mul85 = mul i64 %60, 60
  %61 = load i8*, i8** %s, align 4
  %add.ptr = getelementptr inbounds i8, i8* %61, i32 1
  %call86 = call i64 @zstrtorlimt(i8* %add.ptr, i8** %s, i32 10)
  %add = add i64 %mul85, %call86
  store i64 %add, i64* %val, align 8
  br label %if.end88

if.else87:                                        ; preds = %if.else80
  %62 = load i8*, i8** %nam.addr, align 4
  %63 = load i8*, i8** %s, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %63)
  store i32 1, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.then84
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then78
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then66
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then53
  br label %if.end161

if.else92:                                        ; preds = %if.else49
  %64 = load i32, i32* %lim, align 4
  %arrayidx93 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %64
  %65 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp eq i32 %65, 1
  br i1 %cmp94, label %if.then104, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.else92
  %66 = load i32, i32* %lim, align 4
  %arrayidx97 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %66
  %67 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %67, 4
  br i1 %cmp98, label %if.then104, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false96
  %68 = load i32, i32* %lim, align 4
  %arrayidx101 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %68
  %69 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp eq i32 %69, 3
  br i1 %cmp102, label %if.then104, label %if.else110

if.then104:                                       ; preds = %lor.lhs.false100, %lor.lhs.false96, %if.else92
  %70 = load i8*, i8** %s, align 4
  store i8* %70, i8** %t, align 4
  %71 = load i8*, i8** %t, align 4
  %call105 = call i64 @zstrtorlimt(i8* %71, i8** %s, i32 10)
  store i64 %call105, i64* %val, align 8
  %72 = load i8*, i8** %s, align 4
  %73 = load i8*, i8** %t, align 4
  %cmp106 = icmp eq i8* %72, %73
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.then104
  %74 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end109:                                        ; preds = %if.then104
  br label %if.end160

if.else110:                                       ; preds = %lor.lhs.false100
  %75 = load i8*, i8** %s, align 4
  %call111 = call i64 @zstrtorlimt(i8* %75, i8** %s, i32 10)
  store i64 %call111, i64* %val, align 8
  %76 = load i8*, i8** %s, align 4
  %77 = load i8, i8* %76, align 1
  %tobool112 = icmp ne i8 %77, 0
  br i1 %tobool112, label %lor.lhs.false113, label %if.then124

lor.lhs.false113:                                 ; preds = %if.else110
  %78 = load i8*, i8** %s, align 4
  %79 = load i8, i8* %78, align 1
  %conv114 = sext i8 %79 to i32
  %cmp115 = icmp eq i32 %conv114, 107
  br i1 %cmp115, label %land.lhs.true121, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false113
  %80 = load i8*, i8** %s, align 4
  %81 = load i8, i8* %80, align 1
  %conv118 = sext i8 %81 to i32
  %cmp119 = icmp eq i32 %conv118, 75
  br i1 %cmp119, label %land.lhs.true121, label %if.else130

land.lhs.true121:                                 ; preds = %lor.lhs.false117, %lor.lhs.false113
  %82 = load i8*, i8** %s, align 4
  %arrayidx122 = getelementptr inbounds i8, i8* %82, i32 1
  %83 = load i8, i8* %arrayidx122, align 1
  %tobool123 = icmp ne i8 %83, 0
  br i1 %tobool123, label %if.else130, label %if.then124

if.then124:                                       ; preds = %land.lhs.true121, %if.else110
  %84 = load i64, i64* %val, align 8
  %cmp125 = icmp ne i64 %84, -1
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.then124
  %85 = load i64, i64* %val, align 8
  %mul128 = mul i64 %85, 1024
  store i64 %mul128, i64* %val, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.then124
  br label %if.end159

if.else130:                                       ; preds = %land.lhs.true121, %lor.lhs.false117
  %86 = load i8*, i8** %s, align 4
  %87 = load i8, i8* %86, align 1
  %conv131 = sext i8 %87 to i32
  %cmp132 = icmp eq i32 %conv131, 77
  br i1 %cmp132, label %land.lhs.true138, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.else130
  %88 = load i8*, i8** %s, align 4
  %89 = load i8, i8* %88, align 1
  %conv135 = sext i8 %89 to i32
  %cmp136 = icmp eq i32 %conv135, 109
  br i1 %cmp136, label %land.lhs.true138, label %if.else143

land.lhs.true138:                                 ; preds = %lor.lhs.false134, %if.else130
  %90 = load i8*, i8** %s, align 4
  %arrayidx139 = getelementptr inbounds i8, i8* %90, i32 1
  %91 = load i8, i8* %arrayidx139, align 1
  %tobool140 = icmp ne i8 %91, 0
  br i1 %tobool140, label %if.else143, label %if.then141

if.then141:                                       ; preds = %land.lhs.true138
  %92 = load i64, i64* %val, align 8
  %mul142 = mul i64 %92, 1048576
  store i64 %mul142, i64* %val, align 8
  br label %if.end158

if.else143:                                       ; preds = %land.lhs.true138, %lor.lhs.false134
  %93 = load i8*, i8** %s, align 4
  %94 = load i8, i8* %93, align 1
  %conv144 = sext i8 %94 to i32
  %cmp145 = icmp eq i32 %conv144, 71
  br i1 %cmp145, label %land.lhs.true151, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.else143
  %95 = load i8*, i8** %s, align 4
  %96 = load i8, i8* %95, align 1
  %conv148 = sext i8 %96 to i32
  %cmp149 = icmp eq i32 %conv148, 103
  br i1 %cmp149, label %land.lhs.true151, label %if.else156

land.lhs.true151:                                 ; preds = %lor.lhs.false147, %if.else143
  %97 = load i8*, i8** %s, align 4
  %arrayidx152 = getelementptr inbounds i8, i8* %97, i32 1
  %98 = load i8, i8* %arrayidx152, align 1
  %tobool153 = icmp ne i8 %98, 0
  br i1 %tobool153, label %if.else156, label %if.then154

if.then154:                                       ; preds = %land.lhs.true151
  %99 = load i64, i64* %val, align 8
  %mul155 = mul i64 %99, 1073741824
  store i64 %mul155, i64* %val, align 8
  br label %if.end157

if.else156:                                       ; preds = %land.lhs.true151, %lor.lhs.false147
  %100 = load i8*, i8** %nam.addr, align 4
  %101 = load i8*, i8** %s, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %101)
  store i32 1, i32* %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.then154
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then141
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end129
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.end109
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end91
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.end48
  %102 = load i8*, i8** %nam.addr, align 4
  %103 = load i32, i32* %lim, align 4
  %104 = load i64, i64* %val, align 8
  %105 = load i32, i32* %hard, align 4
  %106 = load i32, i32* %hard, align 4
  %tobool163 = icmp ne i32 %106, 0
  %lnot = xor i1 %tobool163, true
  %lnot.ext = zext i1 %lnot to i32
  %107 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind164 = getelementptr inbounds %struct.options, %struct.options* %107, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [128 x i8], [128 x i8]* %ind164, i32 0, i32 115
  %108 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %108 to i32
  %cmp167 = icmp ne i32 %conv166, 0
  %conv168 = zext i1 %cmp167 to i32
  %call169 = call i32 @do_limit(i8* %102, i32 %103, i64 %104, i32 %105, i32 %lnot.ext, i32 %conv168)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.end162
  %109 = load i32, i32* %ret, align 4
  %inc172 = add nsw i32 %109, 1
  store i32 %inc172, i32* %ret, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.end162
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %110 = load i32, i32* %ret, align 4
  store i32 %110, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.else156, %if.then108, %if.else87, %if.then47, %if.then39, %if.then33, %if.then8, %if.then
  %111 = load i32, i32* %retval, align 4
  ret i32 %111
}

; Function Attrs: noinline nounwind
define internal i32 @bin_ulimit(i8* %name, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %resmask = alloca i32, align 4
  %hard = alloca i32, align 4
  %soft = alloca i32, align 4
  %nres = alloca i32, align 4
  %all = alloca i32, align 4
  %ret = alloca i32, align 4
  %options = alloca i8*, align 4
  %eptr = alloca i8*, align 4
  %number = alloca i8*, align 4
  %limit = alloca i64, align 8
  %vals = alloca %struct.rlimit, align 8
  store i8* %name, i8** %name.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %resmask, align 4
  store i32 0, i32* %hard, align 4
  store i32 0, i32* %soft, align 4
  store i32 0, i32* %nres, align 4
  store i32 0, i32* %all, align 4
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8**, i8*** %argv.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %options, align 4
  %2 = load i8*, i8** %options, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load i8*, i8** %options, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load i8*, i8** %options, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 1
  %6 = load i8, i8* %arrayidx, align 1
  %tobool3 = icmp ne i8 %6, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %7 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %do.body
  store i32 -1, i32* %res, align 4
  %8 = load i8*, i8** %options, align 4
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %land.lhs.true5, label %if.end71

land.lhs.true5:                                   ; preds = %if.end
  %9 = load i8*, i8** %options, align 4
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 45
  br i1 %cmp7, label %if.then9, label %if.end71

if.then9:                                         ; preds = %land.lhs.true5
  %11 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end69, %if.end43, %sw.bb21, %sw.bb, %if.then9
  %12 = load i8*, i8** %options, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %options, align 4
  %13 = load i8, i8* %incdec.ptr10, align 1
  %tobool11 = icmp ne i8 %13, 0
  br i1 %tobool11, label %while.body, label %while.end70

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %options, align 4
  %15 = load i8, i8* %14, align 1
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, -125
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %while.body
  %16 = load i8*, i8** %options, align 4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr16, i8** %options, align 4
  %17 = load i8, i8* %incdec.ptr16, align 1
  %conv17 = sext i8 %17 to i32
  %xor = xor i32 %conv17, 32
  %conv18 = trunc i32 %xor to i8
  store i8 %conv18, i8* %incdec.ptr16, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %while.body
  store i32 -1, i32* %res, align 4
  %18 = load i8*, i8** %options, align 4
  %19 = load i8, i8* %18, align 1
  %conv20 = sext i8 %19 to i32
  switch i32 %conv20, label %sw.default [
    i32 72, label %sw.bb
    i32 83, label %sw.bb21
    i32 78, label %sw.bb22
    i32 97, label %sw.bb40
    i32 116, label %sw.bb44
    i32 102, label %sw.bb45
    i32 100, label %sw.bb46
    i32 115, label %sw.bb47
    i32 99, label %sw.bb48
    i32 108, label %sw.bb49
    i32 109, label %sw.bb50
    i32 110, label %sw.bb51
    i32 117, label %sw.bb52
    i32 118, label %sw.bb53
    i32 120, label %sw.bb54
    i32 105, label %sw.bb55
    i32 113, label %sw.bb56
    i32 101, label %sw.bb57
    i32 114, label %sw.bb58
  ]

sw.bb:                                            ; preds = %if.end19
  store i32 1, i32* %hard, align 4
  br label %while.cond

sw.bb21:                                          ; preds = %if.end19
  store i32 1, i32* %soft, align 4
  br label %while.cond

sw.bb22:                                          ; preds = %if.end19
  %20 = load i8*, i8** %options, align 4
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i32 1
  %21 = load i8, i8* %arrayidx23, align 1
  %tobool24 = icmp ne i8 %21, 0
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %sw.bb22
  %22 = load i8*, i8** %options, align 4
  %add.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %add.ptr, i8** %number, align 4
  br label %if.end31

if.else:                                          ; preds = %sw.bb22
  %23 = load i8**, i8*** %argv.addr, align 4
  %24 = load i8*, i8** %23, align 4
  %tobool26 = icmp ne i8* %24, null
  br i1 %tobool26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  %25 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr28 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr28, i8*** %argv.addr, align 4
  %26 = load i8*, i8** %25, align 4
  store i8* %26, i8** %number, align 4
  br label %if.end30

if.else29:                                        ; preds = %if.else
  %27 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then27
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then25
  %28 = load i8*, i8** %number, align 4
  %call = call i32 @zstrtol(i8* %28, i8** %eptr, i32 10)
  store i32 %call, i32* %res, align 4
  %29 = load i8*, i8** %eptr, align 4
  %30 = load i8, i8* %29, align 1
  %tobool32 = icmp ne i8 %30, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %31 = load i8*, i8** %name.addr, align 4
  %32 = load i8*, i8** %number, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* %32)
  store i32 1, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end31
  br label %while.cond35

while.cond35:                                     ; preds = %while.body38, %if.end34
  %33 = load i8*, i8** %options, align 4
  %arrayidx36 = getelementptr inbounds i8, i8* %33, i32 1
  %34 = load i8, i8* %arrayidx36, align 1
  %tobool37 = icmp ne i8 %34, 0
  br i1 %tobool37, label %while.body38, label %while.end

while.body38:                                     ; preds = %while.cond35
  %35 = load i8*, i8** %options, align 4
  %incdec.ptr39 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr39, i8** %options, align 4
  br label %while.cond35

while.end:                                        ; preds = %while.cond35
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end19
  %36 = load i32, i32* %resmask, align 4
  %tobool41 = icmp ne i32 %36, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.bb40
  %37 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb40
  store i32 1, i32* %all, align 4
  store i32 32767, i32* %resmask, align 4
  store i32 15, i32* %nres, align 4
  br label %while.cond

sw.bb44:                                          ; preds = %if.end19
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end19
  store i32 1, i32* %res, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end19
  store i32 2, i32* %res, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end19
  store i32 3, i32* %res, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end19
  store i32 4, i32* %res, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end19
  store i32 8, i32* %res, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end19
  store i32 5, i32* %res, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end19
  store i32 7, i32* %res, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end19
  store i32 6, i32* %res, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end19
  store i32 9, i32* %res, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end19
  store i32 10, i32* %res, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end19
  store i32 11, i32* %res, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end19
  store i32 12, i32* %res, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end19
  store i32 13, i32* %res, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end19
  store i32 14, i32* %res, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end19
  %38 = load i8*, i8** %name.addr, align 4
  %39 = load i8*, i8** %options, align 4
  %40 = load i8, i8* %39, align 1
  %conv59 = sext i8 %40 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %conv59)
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %while.end
  %41 = load i8*, i8** %options, align 4
  %arrayidx60 = getelementptr inbounds i8, i8* %41, i32 1
  %42 = load i8, i8* %arrayidx60, align 1
  %tobool61 = icmp ne i8 %42, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %sw.epilog
  %43 = load i32, i32* %res, align 4
  %shl = shl i32 1, %43
  %44 = load i32, i32* %resmask, align 4
  %or = or i32 %44, %shl
  store i32 %or, i32* %resmask, align 4
  %45 = load i32, i32* %nres, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %nres, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %sw.epilog
  %46 = load i32, i32* %all, align 4
  %tobool64 = icmp ne i32 %46, 0
  br i1 %tobool64, label %land.lhs.true65, label %if.end69

land.lhs.true65:                                  ; preds = %if.end63
  %47 = load i32, i32* %res, align 4
  %cmp66 = icmp ne i32 %47, -1
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %land.lhs.true65
  %48 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %land.lhs.true65, %if.end63
  br label %while.cond

while.end70:                                      ; preds = %while.cond
  br label %if.end71

if.end71:                                         ; preds = %while.end70, %land.lhs.true5, %if.end
  %49 = load i8**, i8*** %argv.addr, align 4
  %50 = load i8*, i8** %49, align 4
  %tobool72 = icmp ne i8* %50, null
  br i1 %tobool72, label %lor.lhs.false, label %if.then76

lor.lhs.false:                                    ; preds = %if.end71
  %51 = load i8**, i8*** %argv.addr, align 4
  %52 = load i8*, i8** %51, align 4
  %53 = load i8, i8* %52, align 1
  %conv73 = sext i8 %53 to i32
  %cmp74 = icmp eq i32 %conv73, 45
  br i1 %cmp74, label %if.then76, label %if.end90

if.then76:                                        ; preds = %lor.lhs.false, %if.end71
  %54 = load i32, i32* %res, align 4
  %cmp77 = icmp slt i32 %54, 0
  br i1 %cmp77, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.then76
  %55 = load i8**, i8*** %argv.addr, align 4
  %56 = load i8*, i8** %55, align 4
  %tobool80 = icmp ne i8* %56, null
  br i1 %tobool80, label %if.then83, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.then79
  %57 = load i32, i32* %nres, align 4
  %tobool82 = icmp ne i32 %57, 0
  br i1 %tobool82, label %if.then83, label %if.else84

if.then83:                                        ; preds = %lor.lhs.false81, %if.then79
  br label %do.cond

if.else84:                                        ; preds = %lor.lhs.false81
  store i32 1, i32* %res, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else84
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then76
  %58 = load i32, i32* %res, align 4
  %shl87 = shl i32 1, %58
  %59 = load i32, i32* %resmask, align 4
  %or88 = or i32 %59, %shl87
  store i32 %or88, i32* %resmask, align 4
  %60 = load i32, i32* %nres, align 4
  %inc89 = add nsw i32 %60, 1
  store i32 %inc89, i32* %nres, align 4
  br label %do.cond

if.end90:                                         ; preds = %lor.lhs.false
  %61 = load i32, i32* %all, align 4
  %tobool91 = icmp ne i32 %61, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end90
  %62 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.end90
  %63 = load i32, i32* %res, align 4
  %cmp94 = icmp slt i32 %63, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  store i32 1, i32* %res, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93
  %64 = load i8**, i8*** %argv.addr, align 4
  %65 = load i8*, i8** %64, align 4
  %call98 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.else126

if.then100:                                       ; preds = %if.end97
  %66 = load i8**, i8*** %argv.addr, align 4
  %67 = load i8*, i8** %66, align 4
  %call101 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.else111, label %if.then103

if.then103:                                       ; preds = %if.then100
  %68 = load i32, i32* %res, align 4
  %call104 = call i32 @getrlimit(i32 %68, %struct.rlimit* %vals)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %if.then103
  %69 = load i8*, i8** %name.addr, align 4
  %call108 = call i32* @__errno_location()
  %70 = load i32, i32* %call108, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %70)
  store i32 1, i32* %retval, align 4
  br label %return

if.else109:                                       ; preds = %if.then103
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  %71 = load i64, i64* %rlim_max, align 8
  store i64 %71, i64* %limit, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.else109
  br label %if.end120

if.else111:                                       ; preds = %if.then100
  %72 = load i8**, i8*** %argv.addr, align 4
  %73 = load i8*, i8** %72, align 4
  %call112 = call i64 @zstrtorlimt(i8* %73, i8** %eptr, i32 10)
  store i64 %call112, i64* %limit, align 8
  %74 = load i8*, i8** %eptr, align 4
  %75 = load i8, i8* %74, align 1
  %tobool113 = icmp ne i8 %75, 0
  br i1 %tobool113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.else111
  %76 = load i8*, i8** %name.addr, align 4
  %77 = load i8**, i8*** %argv.addr, align 4
  %78 = load i8*, i8** %77, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* %78)
  store i32 1, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.else111
  %79 = load i32, i32* %res, align 4
  switch i32 %79, label %sw.epilog119 [
    i32 1, label %sw.bb116
    i32 4, label %sw.bb116
    i32 2, label %sw.bb117
    i32 3, label %sw.bb117
    i32 5, label %sw.bb117
    i32 8, label %sw.bb117
    i32 9, label %sw.bb117
  ]

sw.bb116:                                         ; preds = %if.end115, %if.end115
  %80 = load i64, i64* %limit, align 8
  %mul = mul i64 %80, 512
  store i64 %mul, i64* %limit, align 8
  br label %sw.epilog119

sw.bb117:                                         ; preds = %if.end115, %if.end115, %if.end115, %if.end115, %if.end115
  %81 = load i64, i64* %limit, align 8
  %mul118 = mul i64 %81, 1024
  store i64 %mul118, i64* %limit, align 8
  br label %sw.epilog119

sw.epilog119:                                     ; preds = %if.end115, %sw.bb117, %sw.bb116
  br label %if.end120

if.end120:                                        ; preds = %sw.epilog119, %if.end110
  %82 = load i8*, i8** %name.addr, align 4
  %83 = load i32, i32* %res, align 4
  %84 = load i64, i64* %limit, align 8
  %85 = load i32, i32* %hard, align 4
  %86 = load i32, i32* %soft, align 4
  %call121 = call i32 @do_limit(i8* %82, i32 %83, i64 %84, i32 %85, i32 %86, i32 1)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.end120
  %87 = load i32, i32* %ret, align 4
  %inc124 = add nsw i32 %87, 1
  store i32 %inc124, i32* %ret, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end120
  br label %if.end133

if.else126:                                       ; preds = %if.end97
  %88 = load i8*, i8** %name.addr, align 4
  %89 = load i32, i32* %res, align 4
  %90 = load i32, i32* %hard, align 4
  %91 = load i32, i32* %soft, align 4
  %call127 = call i32 @geteuid()
  %call128 = call i32 @do_unlimit(i8* %88, i32 %89, i32 %90, i32 %91, i32 1, i32 %call127)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.else126
  %92 = load i32, i32* %ret, align 4
  %inc131 = add nsw i32 %92, 1
  store i32 %inc131, i32* %ret, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.else126
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end125
  %93 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr134 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %incdec.ptr134, i8*** %argv.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end133, %if.end86, %if.then83
  %94 = load i8**, i8*** %argv.addr, align 4
  %95 = load i8*, i8** %94, align 4
  %tobool135 = icmp ne i8* %95, null
  br i1 %tobool135, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %res, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %96 = load i32, i32* %resmask, align 4
  %tobool136 = icmp ne i32 %96, 0
  br i1 %tobool136, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load i32, i32* %resmask, align 4
  %and = and i32 %97, 1
  %tobool137 = icmp ne i32 %and, 0
  br i1 %tobool137, label %land.lhs.true138, label %if.end145

land.lhs.true138:                                 ; preds = %for.body
  %98 = load i8*, i8** %name.addr, align 4
  %99 = load i32, i32* %res, align 4
  %100 = load i32, i32* %hard, align 4
  %101 = load i32, i32* %nres, align 4
  %cmp139 = icmp sgt i32 %101, 1
  %conv140 = zext i1 %cmp139 to i32
  %call141 = call i32 @printulimit(i8* %98, i32 %99, i32 %100, i32 %conv140)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then143, label %if.end145

if.then143:                                       ; preds = %land.lhs.true138
  %102 = load i32, i32* %ret, align 4
  %inc144 = add nsw i32 %102, 1
  store i32 %inc144, i32* %ret, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %land.lhs.true138, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end145
  %103 = load i32, i32* %res, align 4
  %inc146 = add nsw i32 %103, 1
  store i32 %inc146, i32* %res, align 4
  %104 = load i32, i32* %resmask, align 4
  %shr = ashr i32 %104, 1
  store i32 %shr, i32* %resmask, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load i32, i32* %ret, align 4
  store i32 %105, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then114, %if.then107, %if.then92, %if.then68, %sw.default, %if.then42, %if.then33, %if.else29, %if.then
  %106 = load i32, i32* %retval, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind
define internal i32 @bin_unlimit(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %hard = alloca i32, align 4
  %limnum = alloca i32, align 4
  %lim = alloca i32, align 4
  %ret = alloca i32, align 4
  %euid = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %ret, align 4
  %call = call i32 @geteuid()
  store i32 %call, i32* %euid, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 104
  %1 = load i8, i8* %arrayidx, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %hard, align 4
  %2 = load i8**, i8*** %argv.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %limnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %limnum, align 4
  %cmp2 = icmp ne i32 %4, 15
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %hard, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then5, label %if.else13

if.then5:                                         ; preds = %for.body
  %6 = load i32, i32* %euid, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then5
  %7 = load i32, i32* %limnum, align 4
  %arrayidx7 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @current_limits, i32 0, i32 %7
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx7, i32 0, i32 1
  %8 = load i64, i64* %rlim_max, align 8
  %cmp8 = icmp ne i64 %8, -1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %ret, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then5
  %10 = load i32, i32* %limnum, align 4
  %arrayidx11 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %10
  %rlim_max12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx11, i32 0, i32 1
  store i64 -1, i64* %rlim_max12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end17

if.else13:                                        ; preds = %for.body
  %11 = load i32, i32* %limnum, align 4
  %arrayidx14 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %11
  %rlim_max15 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx14, i32 0, i32 1
  %12 = load i64, i64* %rlim_max15, align 8
  %13 = load i32, i32* %limnum, align 4
  %arrayidx16 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %13
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx16, i32 0, i32 0
  store i64 %12, i64* %rlim_cur, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %14 = load i32, i32* %limnum, align 4
  %inc18 = add nsw i32 %14, 1
  store i32 %inc18, i32* %limnum, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind19 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [128 x i8], [128 x i8]* %ind19, i32 0, i32 115
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %for.end
  %17 = load i8*, i8** %nam.addr, align 4
  %call25 = call i32 @setlimits(i8* %17)
  %18 = load i32, i32* %ret, align 4
  %add = add nsw i32 %18, %call25
  store i32 %add, i32* %ret, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %for.end
  %19 = load i32, i32* %ret, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %20 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  br label %if.end79

if.else30:                                        ; preds = %entry
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc77, %if.else30
  %21 = load i8**, i8*** %argv.addr, align 4
  %22 = load i8*, i8** %21, align 4
  %tobool32 = icmp ne i8* %22, null
  br i1 %tobool32, label %for.body33, label %for.end78

for.body33:                                       ; preds = %for.cond31
  %23 = load i8**, i8*** %argv.addr, align 4
  %24 = load i8*, i8** %23, align 4
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx34 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %26 = load i16, i16* %arrayidx34, align 2
  %conv35 = sext i16 %26 to i32
  %and = and i32 %conv35, 1
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %for.body33
  %27 = load i8**, i8*** %argv.addr, align 4
  %28 = load i8*, i8** %27, align 4
  %call38 = call i32 @zstrtol(i8* %28, i8** null, i32 10)
  store i32 %call38, i32* %lim, align 4
  br label %if.end58

if.else39:                                        ; preds = %for.body33
  store i32 -1, i32* %lim, align 4
  store i32 0, i32* %limnum, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc55, %if.else39
  %29 = load i32, i32* %limnum, align 4
  %cmp41 = icmp slt i32 %29, 0
  br i1 %cmp41, label %for.body43, label %for.end57

for.body43:                                       ; preds = %for.cond40
  %30 = load i32, i32* %limnum, align 4
  %arrayidx44 = getelementptr inbounds [0 x i8*], [0 x i8*]* @recs, i32 0, i32 %30
  %31 = load i8*, i8** %arrayidx44, align 4
  %32 = load i8**, i8*** %argv.addr, align 4
  %33 = load i8*, i8** %32, align 4
  %34 = load i8**, i8*** %argv.addr, align 4
  %35 = load i8*, i8** %34, align 4
  %call45 = call i32 @strlen(i8* %35)
  %call46 = call i32 @strncmp(i8* %31, i8* %33, i32 %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end54, label %if.then48

if.then48:                                        ; preds = %for.body43
  %36 = load i32, i32* %lim, align 4
  %cmp49 = icmp ne i32 %36, -1
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.then48
  store i32 -2, i32* %lim, align 4
  br label %if.end53

if.else52:                                        ; preds = %if.then48
  %37 = load i32, i32* %limnum, align 4
  store i32 %37, i32* %lim, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then51
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %for.body43
  br label %for.inc55

for.inc55:                                        ; preds = %if.end54
  %38 = load i32, i32* %limnum, align 4
  %inc56 = add nsw i32 %38, 1
  store i32 %inc56, i32* %limnum, align 4
  br label %for.cond40

for.end57:                                        ; preds = %for.cond40
  br label %if.end58

if.end58:                                         ; preds = %for.end57, %if.then37
  %39 = load i32, i32* %lim, align 4
  %cmp59 = icmp slt i32 %39, 0
  br i1 %cmp59, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.end58
  %40 = load i8*, i8** %nam.addr, align 4
  %41 = load i32, i32* %lim, align 4
  %cmp62 = icmp eq i32 %41, -2
  %cond = select i1 %cmp62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)
  %42 = load i8**, i8*** %argv.addr, align 4
  %43 = load i8*, i8** %42, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %40, i8* %cond, i8* %43)
  store i32 1, i32* %retval, align 4
  br label %return

if.else64:                                        ; preds = %if.end58
  %44 = load i8*, i8** %nam.addr, align 4
  %45 = load i32, i32* %lim, align 4
  %46 = load i32, i32* %hard, align 4
  %47 = load i32, i32* %hard, align 4
  %tobool65 = icmp ne i32 %47, 0
  %lnot = xor i1 %tobool65, true
  %lnot.ext = zext i1 %lnot to i32
  %48 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind66 = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [128 x i8], [128 x i8]* %ind66, i32 0, i32 115
  %49 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %49 to i32
  %cmp69 = icmp ne i32 %conv68, 0
  %conv70 = zext i1 %cmp69 to i32
  %50 = load i32, i32* %euid, align 4
  %call71 = call i32 @do_unlimit(i8* %44, i32 %45, i32 %46, i32 %lnot.ext, i32 %conv70, i32 %50)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.else64
  %51 = load i32, i32* %ret, align 4
  %inc74 = add nsw i32 %51, 1
  store i32 %inc74, i32* %ret, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.else64
  br label %if.end76

if.end76:                                         ; preds = %if.end75
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %52 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 4
  br label %for.cond31

for.end78:                                        ; preds = %for.cond31
  br label %if.end79

if.end79:                                         ; preds = %for.end78, %if.end29
  %53 = load i32, i32* %ret, align 4
  store i32 %53, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then61
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
}

declare i32 @setlimits(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @showlimits(i8* %nam, i32 %hard, i32 %lim) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %hard.addr = alloca i32, align 4
  %lim.addr = alloca i32, align 4
  %rt = alloca i32, align 4
  %vals = alloca %struct.rlimit, align 8
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %hard, i32* %hard.addr, align 4
  store i32 %lim, i32* %lim.addr, align 4
  %0 = load i32, i32* %lim.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lim.addr, align 4
  %call = call i32 @getrlimit(i32 %1, %struct.rlimit* %vals)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %nam.addr, align 4
  %call3 = call i32* @__errno_location()
  %3 = load i32, i32* %call3, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %3)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %lim.addr, align 4
  %5 = load i32, i32* %hard.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  %6 = load i64, i64* %rlim_max, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 0
  %7 = load i64, i64* %rlim_cur, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ]
  call void @showlimitvalue(i32 %4, i64 %cond)
  br label %if.end26

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %lim.addr, align 4
  %cmp4 = icmp ne i32 %8, -1
  br i1 %cmp4, label %if.then5, label %if.else14

if.then5:                                         ; preds = %if.else
  %9 = load i32, i32* %lim.addr, align 4
  %10 = load i32, i32* %hard.addr, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %if.then5
  %11 = load i32, i32* %lim.addr, align 4
  %arrayidx = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %11
  %rlim_max8 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx, i32 0, i32 1
  %12 = load i64, i64* %rlim_max8, align 8
  br label %cond.end12

cond.false9:                                      ; preds = %if.then5
  %13 = load i32, i32* %lim.addr, align 4
  %arrayidx10 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %13
  %rlim_cur11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx10, i32 0, i32 0
  %14 = load i64, i64* %rlim_cur11, align 8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false9, %cond.true7
  %cond13 = phi i64 [ %12, %cond.true7 ], [ %14, %cond.false9 ]
  call void @showlimitvalue(i32 %9, i64 %cond13)
  br label %if.end25

if.else14:                                        ; preds = %if.else
  store i32 0, i32* %rt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else14
  %15 = load i32, i32* %rt, align 4
  %cmp15 = icmp ne i32 %15, 0
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %rt, align 4
  %17 = load i32, i32* %hard.addr, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %cond.true17, label %cond.false20

cond.true17:                                      ; preds = %for.body
  %18 = load i32, i32* %rt, align 4
  %arrayidx18 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %18
  %rlim_max19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx18, i32 0, i32 1
  %19 = load i64, i64* %rlim_max19, align 8
  br label %cond.end23

cond.false20:                                     ; preds = %for.body
  %20 = load i32, i32* %rt, align 4
  %arrayidx21 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %20
  %rlim_cur22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx21, i32 0, i32 0
  %21 = load i64, i64* %rlim_cur22, align 8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false20, %cond.true17
  %cond24 = phi i64 [ %19, %cond.true17 ], [ %21, %cond.false20 ]
  call void @showlimitvalue(i32 %16, i64 %cond24)
  br label %for.inc

for.inc:                                          ; preds = %cond.end23
  %22 = load i32, i32* %rt, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %rt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end25

if.end25:                                         ; preds = %for.end, %cond.end12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then2
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare i32 @strlen(i8*) #1

declare void @zwarnnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i64 @zstrtorlimt(i8* %s, i8** %t, i32 %base) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 4
  %t.addr = alloca i8**, align 4
  %base.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 4
  store i8** %t, i8*** %t.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i64 0, i64* %ret, align 8
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %t.addr, align 4
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 9
  %3 = load i8**, i8*** %t.addr, align 4
  store i8* %add.ptr, i8** %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i64 -1, i64* %retval, align 8
  br label %return

if.end2:                                          ; preds = %entry
  %4 = load i32, i32* %base.addr, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.end19, label %if.then4

if.then4:                                         ; preds = %if.end2
  %5 = load i8*, i8** %s.addr, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv, 48
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  store i32 10, i32* %base.addr, align 4
  br label %if.end18

if.else:                                          ; preds = %if.then4
  %7 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %8 = load i8, i8* %incdec.ptr, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 120
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %9 = load i8*, i8** %s.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 88
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %lor.lhs.false, %if.else
  store i32 16, i32* %base.addr, align 4
  %11 = load i8*, i8** %s.addr, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr15, i8** %s.addr, align 4
  br label %if.end17

if.else16:                                        ; preds = %lor.lhs.false
  store i32 8, i32* %base.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then7
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end2
  %12 = load i32, i32* %base.addr, align 4
  %cmp20 = icmp sle i32 %12, 10
  br i1 %cmp20, label %if.then22, label %if.else33

if.then22:                                        ; preds = %if.end19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then22
  %13 = load i8*, i8** %s.addr, align 4
  %14 = load i8, i8* %13, align 1
  %conv23 = sext i8 %14 to i32
  %cmp24 = icmp sge i32 %conv23, 48
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i8*, i8** %s.addr, align 4
  %16 = load i8, i8* %15, align 1
  %conv26 = sext i8 %16 to i32
  %17 = load i32, i32* %base.addr, align 4
  %add = add nsw i32 48, %17
  %cmp27 = icmp slt i32 %conv26, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %cmp27, %land.rhs ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %19 = load i64, i64* %ret, align 8
  %20 = load i32, i32* %base.addr, align 4
  %conv29 = sext i32 %20 to i64
  %mul = mul i64 %19, %conv29
  %21 = load i8*, i8** %s.addr, align 4
  %22 = load i8, i8* %21, align 1
  %conv30 = sext i8 %22 to i64
  %add31 = add i64 %mul, %conv30
  %sub = sub i64 %add31, 48
  store i64 %sub, i64* %ret, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i8*, i8** %s.addr, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr32, i8** %s.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end74

if.else33:                                        ; preds = %if.end19
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc71, %if.else33
  %24 = load i8*, i8** %s.addr, align 4
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %26 = load i16, i16* %arrayidx, align 2
  %conv35 = sext i16 %26 to i32
  %and = and i32 %conv35, 1
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %lor.end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %for.cond34
  %27 = load i8*, i8** %s.addr, align 4
  %28 = load i8, i8* %27, align 1
  %conv38 = sext i8 %28 to i32
  %cmp39 = icmp sge i32 %conv38, 97
  br i1 %cmp39, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false37
  %29 = load i8*, i8** %s.addr, align 4
  %30 = load i8, i8* %29, align 1
  %conv41 = sext i8 %30 to i32
  %31 = load i32, i32* %base.addr, align 4
  %add42 = add nsw i32 97, %31
  %sub43 = sub nsw i32 %add42, 10
  %cmp44 = icmp slt i32 %conv41, %sub43
  br i1 %cmp44, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false37
  %32 = load i8*, i8** %s.addr, align 4
  %33 = load i8, i8* %32, align 1
  %conv46 = sext i8 %33 to i32
  %cmp47 = icmp sge i32 %conv46, 65
  br i1 %cmp47, label %land.rhs49, label %land.end55

land.rhs49:                                       ; preds = %lor.rhs
  %34 = load i8*, i8** %s.addr, align 4
  %35 = load i8, i8* %34, align 1
  %conv50 = sext i8 %35 to i32
  %36 = load i32, i32* %base.addr, align 4
  %add51 = add nsw i32 65, %36
  %sub52 = sub nsw i32 %add51, 10
  %cmp53 = icmp slt i32 %conv50, %sub52
  br label %land.end55

land.end55:                                       ; preds = %land.rhs49, %lor.rhs
  %37 = phi i1 [ false, %lor.rhs ], [ %cmp53, %land.rhs49 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end55, %land.lhs.true, %for.cond34
  %38 = phi i1 [ true, %land.lhs.true ], [ true, %for.cond34 ], [ %37, %land.end55 ]
  br i1 %38, label %for.body56, label %for.end73

for.body56:                                       ; preds = %lor.end
  %39 = load i64, i64* %ret, align 8
  %40 = load i32, i32* %base.addr, align 4
  %conv57 = sext i32 %40 to i64
  %mul58 = mul i64 %39, %conv57
  %41 = load i8*, i8** %s.addr, align 4
  %42 = load i8, i8* %41, align 1
  %idxprom59 = zext i8 %42 to i32
  %arrayidx60 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom59
  %43 = load i16, i16* %arrayidx60, align 2
  %conv61 = sext i16 %43 to i32
  %and62 = and i32 %conv61, 1
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body56
  %44 = load i8*, i8** %s.addr, align 4
  %45 = load i8, i8* %44, align 1
  %conv64 = sext i8 %45 to i32
  %sub65 = sub nsw i32 %conv64, 48
  br label %cond.end

cond.false:                                       ; preds = %for.body56
  %46 = load i8*, i8** %s.addr, align 4
  %47 = load i8, i8* %46, align 1
  %conv66 = sext i8 %47 to i32
  %and67 = and i32 %conv66, 31
  %add68 = add nsw i32 %and67, 9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub65, %cond.true ], [ %add68, %cond.false ]
  %conv69 = sext i32 %cond to i64
  %add70 = add i64 %mul58, %conv69
  store i64 %add70, i64* %ret, align 8
  br label %for.inc71

for.inc71:                                        ; preds = %cond.end
  %48 = load i8*, i8** %s.addr, align 4
  %incdec.ptr72 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr72, i8** %s.addr, align 4
  br label %for.cond34

for.end73:                                        ; preds = %lor.end
  br label %if.end74

if.end74:                                         ; preds = %for.end73, %for.end
  %49 = load i8**, i8*** %t.addr, align 4
  %tobool75 = icmp ne i8** %49, null
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end74
  %50 = load i8*, i8** %s.addr, align 4
  %51 = load i8**, i8*** %t.addr, align 4
  store i8* %50, i8** %51, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74
  %52 = load i64, i64* %ret, align 8
  store i64 %52, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end77, %if.end
  %53 = load i64, i64* %retval, align 8
  ret i64 %53
}

; Function Attrs: noinline nounwind
define internal i32 @do_limit(i8* %nam, i32 %lim, i64 %val, i32 %hard, i32 %soft, i32 %set) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %lim.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %hard.addr = alloca i32, align 4
  %soft.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %vals = alloca %struct.rlimit, align 8
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %lim, i32* %lim.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  store i32 %hard, i32* %hard.addr, align 4
  store i32 %soft, i32* %soft.addr, align 4
  store i32 %set, i32* %set.addr, align 4
  %0 = load i32, i32* %lim.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else34

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lim.addr, align 4
  %call = call i32 @getrlimit(i32 %1, %struct.rlimit* %vals)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %nam.addr, align 4
  %call3 = call i32* @__errno_location()
  %3 = load i32, i32* %call3, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %3)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %hard.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %5 = load i64, i64* %val.addr, align 8
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  %6 = load i64, i64* %rlim_max, align 8
  %cmp5 = icmp ugt i64 %5, %6
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.then4
  %call6 = call i32 @geteuid()
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.then4
  %8 = load i64, i64* %val.addr, align 8
  %rlim_max10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  store i64 %8, i64* %rlim_max10, align 8
  %9 = load i64, i64* %val.addr, align 8
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 0
  %10 = load i64, i64* %rlim_cur, align 8
  %cmp11 = icmp ult i64 %9, %10
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %11 = load i64, i64* %val.addr, align 8
  %rlim_cur13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 0
  store i64 %11, i64* %rlim_cur13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %12 = load i32, i32* %soft.addr, align 4
  %tobool16 = icmp ne i32 %12, 0
  br i1 %tobool16, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %13 = load i32, i32* %hard.addr, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.end24, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %if.end15
  %14 = load i64, i64* %val.addr, align 8
  %rlim_max19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  %15 = load i64, i64* %rlim_max19, align 8
  %cmp20 = icmp ugt i64 %14, %15
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  %16 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then18
  %17 = load i64, i64* %val.addr, align 8
  %rlim_cur22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 0
  store i64 %17, i64* %rlim_cur22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %lor.lhs.false
  %18 = load i32, i32* %set.addr, align 4
  %tobool25 = icmp ne i32 %18, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.end24
  %19 = load i8*, i8** %nam.addr, align 4
  %20 = load i32, i32* %lim.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0), i32 %20)
  store i32 1, i32* %retval, align 4
  br label %return

if.else27:                                        ; preds = %if.end24
  %21 = load i32, i32* %lim.addr, align 4
  %call28 = call i32 @setrlimit(i32 %21, %struct.rlimit* %vals)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else27
  %22 = load i8*, i8** %nam.addr, align 4
  %call31 = call i32* @__errno_location()
  %23 = load i32, i32* %call31, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 %23)
  store i32 1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.else27
  br label %if.end33

if.end33:                                         ; preds = %if.end32
  br label %if.end92

if.else34:                                        ; preds = %entry
  %24 = load i32, i32* %hard.addr, align 4
  %tobool35 = icmp ne i32 %24, 0
  br i1 %tobool35, label %if.then36, label %if.end54

if.then36:                                        ; preds = %if.else34
  %25 = load i64, i64* %val.addr, align 8
  %26 = load i32, i32* %lim.addr, align 4
  %arrayidx = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @current_limits, i32 0, i32 %26
  %rlim_max37 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx, i32 0, i32 1
  %27 = load i64, i64* %rlim_max37, align 8
  %cmp38 = icmp ugt i64 %25, %27
  br i1 %cmp38, label %land.lhs.true39, label %if.else43

land.lhs.true39:                                  ; preds = %if.then36
  %call40 = call i32 @geteuid()
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %land.lhs.true39
  %28 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else43:                                        ; preds = %land.lhs.true39, %if.then36
  %29 = load i64, i64* %val.addr, align 8
  %30 = load i32, i32* %lim.addr, align 4
  %arrayidx44 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %30
  %rlim_max45 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx44, i32 0, i32 1
  store i64 %29, i64* %rlim_max45, align 8
  %31 = load i64, i64* %val.addr, align 8
  %32 = load i32, i32* %lim.addr, align 4
  %arrayidx46 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %32
  %rlim_cur47 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx46, i32 0, i32 0
  %33 = load i64, i64* %rlim_cur47, align 8
  %cmp48 = icmp ult i64 %31, %33
  br i1 %cmp48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.else43
  %34 = load i64, i64* %val.addr, align 8
  %35 = load i32, i32* %lim.addr, align 4
  %arrayidx50 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %35
  %rlim_cur51 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx50, i32 0, i32 0
  store i64 %34, i64* %rlim_cur51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.else43
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.else34
  %36 = load i32, i32* %soft.addr, align 4
  %tobool55 = icmp ne i32 %36, 0
  br i1 %tobool55, label %if.then58, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end54
  %37 = load i32, i32* %hard.addr, align 4
  %tobool57 = icmp ne i32 %37, 0
  br i1 %tobool57, label %if.end91, label %if.then58

if.then58:                                        ; preds = %lor.lhs.false56, %if.end54
  %38 = load i64, i64* %val.addr, align 8
  %39 = load i32, i32* %lim.addr, align 4
  %arrayidx59 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %39
  %rlim_max60 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx59, i32 0, i32 1
  %40 = load i64, i64* %rlim_max60, align 8
  %cmp61 = icmp ugt i64 %38, %40
  br i1 %cmp61, label %if.then62, label %if.else81

if.then62:                                        ; preds = %if.then58
  %41 = load i8*, i8** %nam.addr, align 4
  %42 = load i8, i8* %41, align 1
  %conv = sext i8 %42 to i32
  %cmp63 = icmp eq i32 %conv, 117
  br i1 %cmp63, label %if.then65, label %if.else79

if.then65:                                        ; preds = %if.then62
  %43 = load i64, i64* %val.addr, align 8
  %44 = load i32, i32* %lim.addr, align 4
  %arrayidx66 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @current_limits, i32 0, i32 %44
  %rlim_max67 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx66, i32 0, i32 1
  %45 = load i64, i64* %rlim_max67, align 8
  %cmp68 = icmp ugt i64 %43, %45
  br i1 %cmp68, label %land.lhs.true70, label %if.end74

land.lhs.true70:                                  ; preds = %if.then65
  %call71 = call i32 @geteuid()
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %land.lhs.true70
  %46 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %land.lhs.true70, %if.then65
  %47 = load i64, i64* %val.addr, align 8
  %48 = load i32, i32* %lim.addr, align 4
  %arrayidx75 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %48
  %rlim_cur76 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx75, i32 0, i32 0
  store i64 %47, i64* %rlim_cur76, align 8
  %49 = load i32, i32* %lim.addr, align 4
  %arrayidx77 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %49
  %rlim_max78 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx77, i32 0, i32 1
  store i64 %47, i64* %rlim_max78, align 8
  br label %if.end80

if.else79:                                        ; preds = %if.then62
  %50 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end74
  br label %if.end84

if.else81:                                        ; preds = %if.then58
  %51 = load i64, i64* %val.addr, align 8
  %52 = load i32, i32* %lim.addr, align 4
  %arrayidx82 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %52
  %rlim_cur83 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx82, i32 0, i32 0
  store i64 %51, i64* %rlim_cur83, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.end80
  %53 = load i32, i32* %set.addr, align 4
  %tobool85 = icmp ne i32 %53, 0
  br i1 %tobool85, label %land.lhs.true86, label %if.end90

land.lhs.true86:                                  ; preds = %if.end84
  %54 = load i32, i32* %lim.addr, align 4
  %55 = load i8*, i8** %nam.addr, align 4
  %call87 = call i32 @zsetlimit(i32 %54, i8* %55)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %land.lhs.true86
  store i32 1, i32* %retval, align 4
  br label %return

if.end90:                                         ; preds = %land.lhs.true86, %if.end84
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %lor.lhs.false56
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end33
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end92, %if.then89, %if.else79, %if.then73, %if.then42, %if.then30, %if.then26, %if.then21, %if.then8, %if.then2
  %56 = load i32, i32* %retval, align 4
  ret i32 %56
}

declare i32 @getrlimit(i32, %struct.rlimit*) #1

declare i32* @__errno_location() #1

; Function Attrs: noinline nounwind
define internal void @showlimitvalue(i32 %lim, i64 %val) #0 {
entry:
  %lim.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %lim, i32* %lim.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %0 = load i32, i32* %lim.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lim.addr, align 4
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @recs, i32 0, i32 %1
  %2 = load i8*, i8** %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %lim.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %val.addr, align 8
  %cmp2 = icmp eq i64 %4, -1
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end53

if.else5:                                         ; preds = %if.end
  %5 = load i32, i32* %lim.addr, align 4
  %cmp6 = icmp sge i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %6 = load i64, i64* %val.addr, align 8
  %conv = trunc i64 %6 to i32
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %conv)
  br label %if.end52

if.else9:                                         ; preds = %if.else5
  %7 = load i32, i32* %lim.addr, align 4
  %arrayidx10 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %7
  %8 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %8, 2
  br i1 %cmp11, label %if.then13, label %if.else20

if.then13:                                        ; preds = %if.else9
  %9 = load i64, i64* %val.addr, align 8
  %div = udiv i64 %9, 3600
  %conv14 = trunc i64 %div to i32
  %10 = load i64, i64* %val.addr, align 8
  %div15 = udiv i64 %10, 60
  %conv16 = trunc i64 %div15 to i32
  %rem = srem i32 %conv16, 60
  %11 = load i64, i64* %val.addr, align 8
  %rem17 = urem i64 %11, 60
  %conv18 = trunc i64 %rem17 to i32
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 %conv14, i32 %rem, i32 %conv18)
  br label %if.end51

if.else20:                                        ; preds = %if.else9
  %12 = load i32, i32* %lim.addr, align 4
  %arrayidx21 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %12
  %13 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %13, 3
  br i1 %cmp22, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.else20
  %14 = load i64, i64* %val.addr, align 8
  %conv25 = trunc i64 %14 to i32
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %conv25)
  br label %if.end50

if.else27:                                        ; preds = %if.else20
  %15 = load i32, i32* %lim.addr, align 4
  %arrayidx28 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %15
  %16 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %16, 1
  br i1 %cmp29, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else27
  %17 = load i32, i32* %lim.addr, align 4
  %arrayidx31 = getelementptr inbounds [0 x i32], [0 x i32]* @limtype, i32 0, i32 %17
  %18 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp eq i32 %18, 4
  br i1 %cmp32, label %if.then34, label %if.else37

if.then34:                                        ; preds = %lor.lhs.false, %if.else27
  %19 = load i64, i64* %val.addr, align 8
  %conv35 = trunc i64 %19 to i32
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %conv35)
  br label %if.end49

if.else37:                                        ; preds = %lor.lhs.false
  %20 = load i64, i64* %val.addr, align 8
  %cmp38 = icmp uge i64 %20, 1048576
  br i1 %cmp38, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.else37
  %21 = load i64, i64* %val.addr, align 8
  %div41 = udiv i64 %21, 1048576
  %conv42 = trunc i64 %div41 to i32
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 %conv42)
  br label %if.end48

if.else44:                                        ; preds = %if.else37
  %22 = load i64, i64* %val.addr, align 8
  %div45 = udiv i64 %22, 1024
  %conv46 = trunc i64 %div45 to i32
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 %conv46)
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then40
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then34
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then24
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then13
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then7
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then3
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @strcmp(i8*, i8*) #1

declare i32 @geteuid() #1

declare i32 @setrlimit(i32, %struct.rlimit*) #1

declare i32 @zsetlimit(i32, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @do_unlimit(i8* %nam, i32 %lim, i32 %hard, i32 %soft, i32 %set, i32 %euid) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %lim.addr = alloca i32, align 4
  %hard.addr = alloca i32, align 4
  %soft.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %euid.addr = alloca i32, align 4
  %vals = alloca %struct.rlimit, align 8
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %lim, i32* %lim.addr, align 4
  store i32 %hard, i32* %hard.addr, align 4
  store i32 %soft, i32* %soft.addr, align 4
  store i32 %set, i32* %set.addr, align 4
  store i32 %euid, i32* %euid.addr, align 4
  %0 = load i32, i32* %lim.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lim.addr, align 4
  %call = call i32 @getrlimit(i32 %1, %struct.rlimit* %vals)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %nam.addr, align 4
  %call3 = call i32* @__errno_location()
  %3 = load i32, i32* %call3, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %3)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %hard.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %euid.addr, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then4
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  %6 = load i64, i64* %rlim_max, align 8
  %cmp6 = icmp ne i64 %6, -1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %7 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then4
  %rlim_max8 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  store i64 -1, i64* %rlim_max8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %8 = load i32, i32* %hard.addr, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end10
  %9 = load i32, i32* %soft.addr, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  %rlim_max14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  %10 = load i64, i64* %rlim_max14, align 8
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 0
  store i64 %10, i64* %rlim_cur, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lor.lhs.false
  %11 = load i32, i32* %set.addr, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.end15
  %12 = load i8*, i8** %nam.addr, align 4
  %13 = load i32, i32* %lim.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0), i32 %13)
  store i32 1, i32* %retval, align 4
  br label %return

if.else18:                                        ; preds = %if.end15
  %14 = load i32, i32* %lim.addr, align 4
  %call19 = call i32 @setrlimit(i32 %14, %struct.rlimit* %vals)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else18
  %15 = load i8*, i8** %nam.addr, align 4
  %call22 = call i32* @__errno_location()
  %16 = load i32, i32* %call22, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 %16)
  store i32 1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.else18
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %if.end53

if.else25:                                        ; preds = %entry
  %17 = load i32, i32* %hard.addr, align 4
  %tobool26 = icmp ne i32 %17, 0
  br i1 %tobool26, label %if.then27, label %if.end37

if.then27:                                        ; preds = %if.else25
  %18 = load i32, i32* %euid.addr, align 4
  %tobool28 = icmp ne i32 %18, 0
  br i1 %tobool28, label %land.lhs.true29, label %if.else33

land.lhs.true29:                                  ; preds = %if.then27
  %19 = load i32, i32* %lim.addr, align 4
  %arrayidx = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @current_limits, i32 0, i32 %19
  %rlim_max30 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx, i32 0, i32 1
  %20 = load i64, i64* %rlim_max30, align 8
  %cmp31 = icmp ne i64 %20, -1
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %land.lhs.true29
  %21 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else33:                                        ; preds = %land.lhs.true29, %if.then27
  %22 = load i32, i32* %lim.addr, align 4
  %arrayidx34 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %22
  %rlim_max35 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx34, i32 0, i32 1
  store i64 -1, i64* %rlim_max35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.else25
  %23 = load i32, i32* %hard.addr, align 4
  %tobool38 = icmp ne i32 %23, 0
  br i1 %tobool38, label %lor.lhs.false39, label %if.then41

lor.lhs.false39:                                  ; preds = %if.end37
  %24 = load i32, i32* %soft.addr, align 4
  %tobool40 = icmp ne i32 %24, 0
  br i1 %tobool40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %lor.lhs.false39, %if.end37
  %25 = load i32, i32* %lim.addr, align 4
  %arrayidx42 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %25
  %rlim_max43 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx42, i32 0, i32 1
  %26 = load i64, i64* %rlim_max43, align 8
  %27 = load i32, i32* %lim.addr, align 4
  %arrayidx44 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %27
  %rlim_cur45 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx44, i32 0, i32 0
  store i64 %26, i64* %rlim_cur45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %lor.lhs.false39
  %28 = load i32, i32* %set.addr, align 4
  %tobool47 = icmp ne i32 %28, 0
  br i1 %tobool47, label %land.lhs.true48, label %if.end52

land.lhs.true48:                                  ; preds = %if.end46
  %29 = load i32, i32* %lim.addr, align 4
  %30 = load i8*, i8** %nam.addr, align 4
  %call49 = call i32 @zsetlimit(i32 %29, i8* %30)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %land.lhs.true48
  store i32 1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %land.lhs.true48, %if.end46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end24
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then51, %if.then32, %if.then21, %if.then17, %if.then7, %if.then2
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind
define internal i32 @printulimit(i8* %nam, i32 %lim, i32 %hard, i32 %head) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %lim.addr = alloca i32, align 4
  %hard.addr = alloca i32, align 4
  %head.addr = alloca i32, align 4
  %limit = alloca i64, align 8
  %vals = alloca %struct.rlimit, align 8
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %lim, i32* %lim.addr, align 4
  store i32 %hard, i32* %hard.addr, align 4
  store i32 %head, i32* %head.addr, align 4
  %0 = load i32, i32* %lim.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lim.addr, align 4
  %call = call i32 @getrlimit(i32 %1, %struct.rlimit* %vals)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %nam.addr, align 4
  %call3 = call i32* @__errno_location()
  %3 = load i32, i32* %call3, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 %3)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %hard.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 1
  %5 = load i64, i64* %rlim_max, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %vals, i32 0, i32 0
  %6 = load i64, i64* %rlim_cur, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ]
  store i64 %cond, i64* %limit, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %hard.addr, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %cond.true5, label %cond.false7

cond.true5:                                       ; preds = %if.else
  %8 = load i32, i32* %lim.addr, align 4
  %arrayidx = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %8
  %rlim_max6 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx, i32 0, i32 1
  %9 = load i64, i64* %rlim_max6, align 8
  br label %cond.end10

cond.false7:                                      ; preds = %if.else
  %10 = load i32, i32* %lim.addr, align 4
  %arrayidx8 = getelementptr inbounds [15 x %struct.rlimit], [15 x %struct.rlimit]* @limits, i32 0, i32 %10
  %rlim_cur9 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %arrayidx8, i32 0, i32 0
  %11 = load i64, i64* %rlim_cur9, align 8
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false7, %cond.true5
  %cond11 = phi i64 [ %9, %cond.true5 ], [ %11, %cond.false7 ]
  store i64 %cond11, i64* %limit, align 8
  br label %if.end12

if.end12:                                         ; preds = %cond.end10, %cond.end
  %12 = load i32, i32* %lim.addr, align 4
  switch i32 %12, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb20
    i32 1, label %sw.bb29
    i32 11, label %sw.bb38
    i32 8, label %sw.bb43
    i32 5, label %sw.bb52
    i32 7, label %sw.bb61
    i32 12, label %sw.bb66
    i32 3, label %sw.bb71
    i32 0, label %sw.bb80
    i32 6, label %sw.bb85
    i32 9, label %sw.bb90
    i32 10, label %sw.bb99
    i32 13, label %sw.bb104
    i32 14, label %sw.bb109
  ]

sw.bb:                                            ; preds = %if.end12
  %13 = load i32, i32* %head.addr, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %sw.bb
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sw.bb
  %14 = load i64, i64* %limit, align 8
  %cmp17 = icmp ne i64 %14, -1
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  %15 = load i64, i64* %limit, align 8
  %div = udiv i64 %15, 512
  store i64 %div, i64* %limit, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end12
  %16 = load i32, i32* %head.addr, align 4
  %tobool21 = icmp ne i32 %16, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %sw.bb20
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %sw.bb20
  %17 = load i64, i64* %limit, align 8
  %cmp25 = icmp ne i64 %17, -1
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %18 = load i64, i64* %limit, align 8
  %div27 = udiv i64 %18, 1024
  store i64 %div27, i64* %limit, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end12
  %19 = load i32, i32* %head.addr, align 4
  %tobool30 = icmp ne i32 %19, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %sw.bb29
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %sw.bb29
  %20 = load i64, i64* %limit, align 8
  %cmp34 = icmp ne i64 %20, -1
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %21 = load i64, i64* %limit, align 8
  %div36 = udiv i64 %21, 512
  store i64 %div36, i64* %limit, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end12
  %22 = load i32, i32* %head.addr, align 4
  %tobool39 = icmp ne i32 %22, 0
  br i1 %tobool39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %sw.bb38
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %sw.bb38
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end12
  %23 = load i32, i32* %head.addr, align 4
  %tobool44 = icmp ne i32 %23, 0
  br i1 %tobool44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %sw.bb43
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %sw.bb43
  %24 = load i64, i64* %limit, align 8
  %cmp48 = icmp ne i64 %24, -1
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %25 = load i64, i64* %limit, align 8
  %div50 = udiv i64 %25, 1024
  store i64 %div50, i64* %limit, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end12
  %26 = load i32, i32* %head.addr, align 4
  %tobool53 = icmp ne i32 %26, 0
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %sw.bb52
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %sw.bb52
  %27 = load i64, i64* %limit, align 8
  %cmp57 = icmp ne i64 %27, -1
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %28 = load i64, i64* %limit, align 8
  %div59 = udiv i64 %28, 1024
  store i64 %div59, i64* %limit, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end12
  %29 = load i32, i32* %head.addr, align 4
  %tobool62 = icmp ne i32 %29, 0
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %sw.bb61
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %sw.bb61
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end12
  %30 = load i32, i32* %head.addr, align 4
  %tobool67 = icmp ne i32 %30, 0
  br i1 %tobool67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %sw.bb66
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %sw.bb66
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end12
  %31 = load i32, i32* %head.addr, align 4
  %tobool72 = icmp ne i32 %31, 0
  br i1 %tobool72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %sw.bb71
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %sw.bb71
  %32 = load i64, i64* %limit, align 8
  %cmp76 = icmp ne i64 %32, -1
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end75
  %33 = load i64, i64* %limit, align 8
  %div78 = udiv i64 %33, 1024
  store i64 %div78, i64* %limit, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end12
  %34 = load i32, i32* %head.addr, align 4
  %tobool81 = icmp ne i32 %34, 0
  br i1 %tobool81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %sw.bb80
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %sw.bb80
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end12
  %35 = load i32, i32* %head.addr, align 4
  %tobool86 = icmp ne i32 %35, 0
  br i1 %tobool86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %sw.bb85
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %sw.bb85
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end12
  %36 = load i32, i32* %head.addr, align 4
  %tobool91 = icmp ne i32 %36, 0
  br i1 %tobool91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %sw.bb90
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %sw.bb90
  %37 = load i64, i64* %limit, align 8
  %cmp95 = icmp ne i64 %37, -1
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end94
  %38 = load i64, i64* %limit, align 8
  %div97 = udiv i64 %38, 1024
  store i64 %div97, i64* %limit, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end94
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end12
  %39 = load i32, i32* %head.addr, align 4
  %tobool100 = icmp ne i32 %39, 0
  br i1 %tobool100, label %if.then101, label %if.end103

if.then101:                                       ; preds = %sw.bb99
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %sw.bb99
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end12
  %40 = load i32, i32* %head.addr, align 4
  %tobool105 = icmp ne i32 %40, 0
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %sw.bb104
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %sw.bb104
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end12
  %41 = load i32, i32* %head.addr, align 4
  %tobool110 = icmp ne i32 %41, 0
  br i1 %tobool110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %sw.bb109
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %sw.bb109
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  %42 = load i32, i32* %head.addr, align 4
  %tobool114 = icmp ne i32 %42, 0
  br i1 %tobool114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %sw.default
  %43 = load i32, i32* %lim.addr, align 4
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i32 0, i32 0), i32 %43)
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end117, %if.end113, %if.end108, %if.end103, %if.end98, %if.end89, %if.end84, %if.end79, %if.end70, %if.end65, %if.end60, %if.end51, %if.end42, %if.end37, %if.end28, %if.end19
  %44 = load i64, i64* %limit, align 8
  %cmp118 = icmp eq i64 %44, -1
  br i1 %cmp118, label %if.then119, label %if.else121

if.then119:                                       ; preds = %sw.epilog
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end123

if.else121:                                       ; preds = %sw.epilog
  %45 = load i64, i64* %limit, align 8
  %conv = trunc i64 %45 to i32
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %conv)
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.then119
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end123, %if.then2
  %46 = load i32, i32* %retval, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
