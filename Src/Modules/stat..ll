; ModuleID = 'stat.c'
source_filename = "stat.c"
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
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([2 x %struct.builtin], [2 x %struct.builtin]* @bintab, i32 0, i32 0), i32 2, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@bintab = internal global [2 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_stat, i32 0, i32 -1, i32 0, i8* null, i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_stat, i32 0, i32 -1, i32 0, i8* null, i8* null }], align 4
@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"zstat\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%a %b %e %k:%M:%S %Z %Y\00", align 1
@timefmt = internal global i8* null, align 4
@statelts = internal global [15 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null], align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: ambiguous stat element\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: no such stat element\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"glLnNorstT\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"missing parameter name\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"missing file descriptor\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"bad file descriptor\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"missing time format\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"bad option: -%c\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"both array and hash requested\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errflag = external global i32, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"no files given\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"no files allowed with -f\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"only one file allowed with -H\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s: %e\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"inode\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"nlink\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"rdev\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"0%lo\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@statmodeprint.modes = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), align 4
@.str.42 = private unnamed_addr constant [11 x i8] c"?rwxrwxrwx\00", align 1
@statmodeprint.mflags = internal constant [9 x i32] [i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 4
@.str.43 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

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
define internal i32 @bin_stat(i8* %name, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %aptr = alloca i8**, align 4
  %arrnam = alloca i8*, align 4
  %array = alloca i8**, align 4
  %arrptr = alloca i8**, align 4
  %hashnam = alloca i8*, align 4
  %hash = alloca i8**, align 4
  %hashptr = alloca i8**, align 4
  %len = alloca i32, align 4
  %iwhich = alloca i32, align 4
  %ret = alloca i32, align 4
  %flags = alloca i32, align 4
  %arrsize = alloca i32, align 4
  %fd = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  %found = alloca i32, align 4
  %nargs = alloca i32, align 4
  %arg = alloca i8*, align 4
  %sfd = alloca i8*, align 4
  %outbuf = alloca [4105 x i8], align 1
  %rval = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i8* null, i8** %arrnam, align 4
  store i8** null, i8*** %array, align 4
  store i8** null, i8*** %arrptr, align 4
  store i8* null, i8** %hashnam, align 4
  store i8** null, i8*** %hash, align 4
  store i8** null, i8*** %hashptr, align 4
  store i32 -1, i32* %iwhich, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %arrsize, align 4
  store i32 0, i32* %fd, align 4
  store i32 0, i32* %found, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8** @timefmt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc127, %entry
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %args.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load i8**, i8*** %args.addr, align 4
  %6 = load i8*, i8** %5, align 4
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %8, %lor.end ]
  br i1 %9, label %for.body, label %for.end129

for.body:                                         ; preds = %land.end
  %10 = load i8**, i8*** %args.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %add.ptr, i8** %arg, align 4
  %12 = load i8*, i8** %arg, align 4
  %13 = load i8, i8* %12, align 1
  %tobool5 = icmp ne i8 %13, 0
  br i1 %tobool5, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i8*, i8** %arg, align 4
  %15 = load i8, i8* %14, align 1
  %conv6 = sext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 45
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %16 = load i8*, i8** %arg, align 4
  %17 = load i8, i8* %16, align 1
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp eq i32 %conv10, 43
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %for.body
  %18 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %for.end129

if.end:                                           ; preds = %lor.lhs.false9
  %19 = load i8**, i8*** %args.addr, align 4
  %20 = load i8*, i8** %19, align 4
  %21 = load i8, i8* %20, align 1
  %conv13 = sext i8 %21 to i32
  %cmp14 = icmp eq i32 %conv13, 43
  br i1 %cmp14, label %if.then16, label %if.else40

if.then16:                                        ; preds = %if.end
  %22 = load i32, i32* %found, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  br label %for.end129

if.end19:                                         ; preds = %if.then16
  %23 = load i8*, i8** %arg, align 4
  %call = call i32 @strlen(i8* %23)
  store i32 %call, i32* %len, align 4
  store i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @statelts, i32 0, i32 0), i8*** %aptr, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %if.end19
  %24 = load i8**, i8*** %aptr, align 4
  %25 = load i8*, i8** %24, align 4
  %tobool21 = icmp ne i8* %25, null
  br i1 %tobool21, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20
  %26 = load i8**, i8*** %aptr, align 4
  %27 = load i8*, i8** %26, align 4
  %28 = load i8*, i8** %arg, align 4
  %29 = load i32, i32* %len, align 4
  %call23 = call i32 @strncmp(i8* %27, i8* %28, i32 %29)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.body22
  %30 = load i32, i32* %found, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %found, align 4
  %31 = load i8**, i8*** %aptr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8** %31 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint ([15 x i8*]* @statelts to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  store i32 %sub.ptr.div, i32* %iwhich, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.body22
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %32 = load i8**, i8*** %aptr, align 4
  %incdec.ptr27 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %incdec.ptr27, i8*** %aptr, align 4
  br label %for.cond20

for.end:                                          ; preds = %for.cond20
  %33 = load i32, i32* %found, align 4
  %cmp28 = icmp sgt i32 %33, 1
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.end
  %34 = load i8*, i8** %name.addr, align 4
  %35 = load i8*, i8** %arg, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* %35)
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end
  %36 = load i32, i32* %found, align 4
  %cmp31 = icmp eq i32 %36, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.else
  %37 = load i8*, i8** %name.addr, align 4
  %38 = load i8*, i8** %arg, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* %38)
  store i32 1, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34
  %39 = load i32, i32* %iwhich, align 4
  %cmp36 = icmp eq i32 %39, 13
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  %40 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %40, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 76
  store i8 1, i8* %arrayidx, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35
  %41 = load i32, i32* %flags, align 4
  %or = or i32 %41, 16
  store i32 %or, i32* %flags, align 4
  br label %if.end126

if.else40:                                        ; preds = %if.end
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc123, %if.else40
  %42 = load i8*, i8** %arg, align 4
  %43 = load i8, i8* %42, align 1
  %tobool42 = icmp ne i8 %43, 0
  br i1 %tobool42, label %for.body43, label %for.end125

for.body43:                                       ; preds = %for.cond41
  %44 = load i8*, i8** %arg, align 4
  %45 = load i8, i8* %44, align 1
  %conv44 = sext i8 %45 to i32
  %call45 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %conv44)
  %tobool46 = icmp ne i8* %call45, null
  br i1 %tobool46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %for.body43
  %46 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind48 = getelementptr inbounds %struct.options, %struct.options* %46, i32 0, i32 0
  %47 = load i8*, i8** %arg, align 4
  %48 = load i8, i8* %47, align 1
  %idxprom = zext i8 %48 to i32
  %arrayidx49 = getelementptr inbounds [128 x i8], [128 x i8]* %ind48, i32 0, i32 %idxprom
  store i8 1, i8* %arrayidx49, align 1
  br label %if.end122

if.else50:                                        ; preds = %for.body43
  %49 = load i8*, i8** %arg, align 4
  %50 = load i8, i8* %49, align 1
  %conv51 = sext i8 %50 to i32
  %cmp52 = icmp eq i32 %conv51, 65
  br i1 %cmp52, label %if.then54, label %if.else66

if.then54:                                        ; preds = %if.else50
  %51 = load i8*, i8** %arg, align 4
  %arrayidx55 = getelementptr inbounds i8, i8* %51, i32 1
  %52 = load i8, i8* %arrayidx55, align 1
  %tobool56 = icmp ne i8 %52, 0
  br i1 %tobool56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.then54
  %53 = load i8*, i8** %arg, align 4
  %add.ptr58 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %add.ptr58, i8** %arrnam, align 4
  br label %if.end64

if.else59:                                        ; preds = %if.then54
  %54 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr60 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %incdec.ptr60, i8*** %args.addr, align 4
  %55 = load i8*, i8** %incdec.ptr60, align 4
  store i8* %55, i8** %arrnam, align 4
  %tobool61 = icmp ne i8* %55, null
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.else59
  %56 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.else59
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then57
  %57 = load i32, i32* %flags, align 4
  %or65 = or i32 %57, 32
  store i32 %or65, i32* %flags, align 4
  br label %for.end125

if.else66:                                        ; preds = %if.else50
  %58 = load i8*, i8** %arg, align 4
  %59 = load i8, i8* %58, align 1
  %conv67 = sext i8 %59 to i32
  %cmp68 = icmp eq i32 %conv67, 72
  br i1 %cmp68, label %if.then70, label %if.else82

if.then70:                                        ; preds = %if.else66
  %60 = load i8*, i8** %arg, align 4
  %arrayidx71 = getelementptr inbounds i8, i8* %60, i32 1
  %61 = load i8, i8* %arrayidx71, align 1
  %tobool72 = icmp ne i8 %61, 0
  br i1 %tobool72, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.then70
  %62 = load i8*, i8** %arg, align 4
  %add.ptr74 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %add.ptr74, i8** %hashnam, align 4
  br label %if.end80

if.else75:                                        ; preds = %if.then70
  %63 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr76 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %incdec.ptr76, i8*** %args.addr, align 4
  %64 = load i8*, i8** %incdec.ptr76, align 4
  store i8* %64, i8** %hashnam, align 4
  %tobool77 = icmp ne i8* %64, null
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.else75
  %65 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.else75
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then73
  %66 = load i32, i32* %flags, align 4
  %or81 = or i32 %66, 128
  store i32 %or81, i32* %flags, align 4
  br label %for.end125

if.else82:                                        ; preds = %if.else66
  %67 = load i8*, i8** %arg, align 4
  %68 = load i8, i8* %67, align 1
  %conv83 = sext i8 %68 to i32
  %cmp84 = icmp eq i32 %conv83, 102
  br i1 %cmp84, label %if.then86, label %if.else103

if.then86:                                        ; preds = %if.else82
  %69 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind87 = getelementptr inbounds %struct.options, %struct.options* %69, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [128 x i8], [128 x i8]* %ind87, i32 0, i32 102
  store i8 1, i8* %arrayidx88, align 2
  %70 = load i8*, i8** %arg, align 4
  %arrayidx89 = getelementptr inbounds i8, i8* %70, i32 1
  %71 = load i8, i8* %arrayidx89, align 1
  %tobool90 = icmp ne i8 %71, 0
  br i1 %tobool90, label %if.then91, label %if.else93

if.then91:                                        ; preds = %if.then86
  %72 = load i8*, i8** %arg, align 4
  %add.ptr92 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %add.ptr92, i8** %sfd, align 4
  br label %if.end98

if.else93:                                        ; preds = %if.then86
  %73 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr94 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %incdec.ptr94, i8*** %args.addr, align 4
  %74 = load i8*, i8** %incdec.ptr94, align 4
  store i8* %74, i8** %sfd, align 4
  %tobool95 = icmp ne i8* %74, null
  br i1 %tobool95, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.else93
  %75 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.else93
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then91
  %76 = load i8*, i8** %sfd, align 4
  %call99 = call i32 @zstrtol(i8* %76, i8** %sfd, i32 10)
  store i32 %call99, i32* %fd, align 4
  %77 = load i8*, i8** %sfd, align 4
  %78 = load i8, i8* %77, align 1
  %tobool100 = icmp ne i8 %78, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end98
  %79 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end102:                                        ; preds = %if.end98
  br label %for.end125

if.else103:                                       ; preds = %if.else82
  %80 = load i8*, i8** %arg, align 4
  %81 = load i8, i8* %80, align 1
  %conv104 = sext i8 %81 to i32
  %cmp105 = icmp eq i32 %conv104, 70
  br i1 %cmp105, label %if.then107, label %if.else120

if.then107:                                       ; preds = %if.else103
  %82 = load i8*, i8** %arg, align 4
  %arrayidx108 = getelementptr inbounds i8, i8* %82, i32 1
  %83 = load i8, i8* %arrayidx108, align 1
  %tobool109 = icmp ne i8 %83, 0
  br i1 %tobool109, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.then107
  %84 = load i8*, i8** %arg, align 4
  %add.ptr111 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %add.ptr111, i8** @timefmt, align 4
  br label %if.end117

if.else112:                                       ; preds = %if.then107
  %85 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr113 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %incdec.ptr113, i8*** %args.addr, align 4
  %86 = load i8*, i8** %incdec.ptr113, align 4
  store i8* %86, i8** @timefmt, align 4
  %tobool114 = icmp ne i8* %86, null
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.else112
  %87 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.else112
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then110
  %88 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind118 = getelementptr inbounds %struct.options, %struct.options* %88, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [128 x i8], [128 x i8]* %ind118, i32 0, i32 115
  store i8 1, i8* %arrayidx119, align 1
  br label %for.end125

if.else120:                                       ; preds = %if.else103
  %89 = load i8*, i8** %name.addr, align 4
  %90 = load i8*, i8** %arg, align 4
  %91 = load i8, i8* %90, align 1
  %conv121 = sext i8 %91 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %conv121)
  store i32 1, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.then47
  br label %for.inc123

for.inc123:                                       ; preds = %if.end122
  %92 = load i8*, i8** %arg, align 4
  %incdec.ptr124 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr124, i8** %arg, align 4
  br label %for.cond41

for.end125:                                       ; preds = %if.end117, %if.end102, %if.end80, %if.end64, %for.cond41
  br label %if.end126

if.end126:                                        ; preds = %for.end125, %if.end39
  br label %for.inc127

for.inc127:                                       ; preds = %if.end126
  %93 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr128 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %incdec.ptr128, i8*** %args.addr, align 4
  br label %for.cond

for.end129:                                       ; preds = %if.then18, %if.then, %land.end
  %94 = load i32, i32* %flags, align 4
  %and = and i32 %94, 32
  %tobool130 = icmp ne i32 %and, 0
  br i1 %tobool130, label %land.lhs.true, label %if.end134

land.lhs.true:                                    ; preds = %for.end129
  %95 = load i32, i32* %flags, align 4
  %and131 = and i32 %95, 128
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %land.lhs.true
  %96 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end134:                                        ; preds = %land.lhs.true, %for.end129
  %97 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind135 = getelementptr inbounds %struct.options, %struct.options* %97, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [128 x i8], [128 x i8]* %ind135, i32 0, i32 108
  %98 = load i8, i8* %arrayidx136, align 4
  %conv137 = zext i8 %98 to i32
  %cmp138 = icmp ne i32 %conv137, 0
  br i1 %cmp138, label %if.then140, label %if.end173

if.then140:                                       ; preds = %if.end134
  %99 = load i8*, i8** %arrnam, align 4
  %tobool141 = icmp ne i8* %99, null
  br i1 %tobool141, label %if.then142, label %if.end145

if.then142:                                       ; preds = %if.then140
  %call143 = call i8* @zalloc(i32 60)
  %100 = bitcast i8* %call143 to i8**
  store i8** %100, i8*** %array, align 4
  store i8** %100, i8*** %arrptr, align 4
  %101 = load i8**, i8*** %array, align 4
  %arrayidx144 = getelementptr inbounds i8*, i8** %101, i32 14
  store i8* null, i8** %arrayidx144, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.then140
  store i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @statelts, i32 0, i32 0), i8*** %aptr, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc161, %if.end145
  %102 = load i8**, i8*** %aptr, align 4
  %103 = load i8*, i8** %102, align 4
  %tobool147 = icmp ne i8* %103, null
  br i1 %tobool147, label %for.body148, label %for.end163

for.body148:                                      ; preds = %for.cond146
  %104 = load i8*, i8** %arrnam, align 4
  %tobool149 = icmp ne i8* %104, null
  br i1 %tobool149, label %if.then150, label %if.else153

if.then150:                                       ; preds = %for.body148
  %105 = load i8**, i8*** %aptr, align 4
  %106 = load i8*, i8** %105, align 4
  %call151 = call i8* @ztrdup(i8* %106)
  %107 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr152 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %incdec.ptr152, i8*** %arrptr, align 4
  store i8* %call151, i8** %107, align 4
  br label %if.end160

if.else153:                                       ; preds = %for.body148
  %108 = load i8**, i8*** %aptr, align 4
  %109 = load i8*, i8** %108, align 4
  %call154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %109)
  %110 = load i8**, i8*** %aptr, align 4
  %arrayidx155 = getelementptr inbounds i8*, i8** %110, i32 1
  %111 = load i8*, i8** %arrayidx155, align 4
  %tobool156 = icmp ne i8* %111, null
  br i1 %tobool156, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.else153
  %call158 = call i32 @putchar(i32 32)
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.else153
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.then150
  br label %for.inc161

for.inc161:                                       ; preds = %if.end160
  %112 = load i8**, i8*** %aptr, align 4
  %incdec.ptr162 = getelementptr inbounds i8*, i8** %112, i32 1
  store i8** %incdec.ptr162, i8*** %aptr, align 4
  br label %for.cond146

for.end163:                                       ; preds = %for.cond146
  %113 = load i8*, i8** %arrnam, align 4
  %tobool164 = icmp ne i8* %113, null
  br i1 %tobool164, label %if.then165, label %if.else170

if.then165:                                       ; preds = %for.end163
  %114 = load i8*, i8** %arrnam, align 4
  %115 = load i8**, i8*** %array, align 4
  %call166 = call %struct.param* @setaparam(i8* %114, i8** %115)
  %116 = load i32, i32* @errflag, align 4
  %tobool167 = icmp ne i32 %116, 0
  br i1 %tobool167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.then165
  store i32 1, i32* %retval, align 4
  br label %return

if.end169:                                        ; preds = %if.then165
  br label %if.end172

if.else170:                                       ; preds = %for.end163
  %call171 = call i32 @putchar(i32 10)
  br label %if.end172

if.end172:                                        ; preds = %if.else170, %if.end169
  store i32 0, i32* %retval, align 4
  br label %return

if.end173:                                        ; preds = %if.end134
  %117 = load i8**, i8*** %args.addr, align 4
  %118 = load i8*, i8** %117, align 4
  %tobool174 = icmp ne i8* %118, null
  br i1 %tobool174, label %if.else182, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %if.end173
  %119 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind176 = getelementptr inbounds %struct.options, %struct.options* %119, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [128 x i8], [128 x i8]* %ind176, i32 0, i32 102
  %120 = load i8, i8* %arrayidx177, align 2
  %conv178 = zext i8 %120 to i32
  %cmp179 = icmp ne i32 %conv178, 0
  br i1 %cmp179, label %if.else182, label %if.then181

if.then181:                                       ; preds = %land.lhs.true175
  %121 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else182:                                       ; preds = %land.lhs.true175, %if.end173
  %122 = load i8**, i8*** %args.addr, align 4
  %123 = load i8*, i8** %122, align 4
  %tobool183 = icmp ne i8* %123, null
  br i1 %tobool183, label %land.lhs.true184, label %if.end191

land.lhs.true184:                                 ; preds = %if.else182
  %124 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind185 = getelementptr inbounds %struct.options, %struct.options* %124, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [128 x i8], [128 x i8]* %ind185, i32 0, i32 102
  %125 = load i8, i8* %arrayidx186, align 2
  %conv187 = zext i8 %125 to i32
  %cmp188 = icmp ne i32 %conv187, 0
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %land.lhs.true184
  %126 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end191:                                        ; preds = %land.lhs.true184, %if.else182
  br label %if.end192

if.end192:                                        ; preds = %if.end191
  store i32 0, i32* %nargs, align 4
  %127 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind193 = getelementptr inbounds %struct.options, %struct.options* %127, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [128 x i8], [128 x i8]* %ind193, i32 0, i32 102
  %128 = load i8, i8* %arrayidx194, align 2
  %conv195 = zext i8 %128 to i32
  %cmp196 = icmp ne i32 %conv195, 0
  br i1 %cmp196, label %if.then198, label %if.else199

if.then198:                                       ; preds = %if.end192
  store i32 1, i32* %nargs, align 4
  br label %if.end207

if.else199:                                       ; preds = %if.end192
  %129 = load i8**, i8*** %args.addr, align 4
  store i8** %129, i8*** %aptr, align 4
  br label %for.cond200

for.cond200:                                      ; preds = %for.inc204, %if.else199
  %130 = load i8**, i8*** %aptr, align 4
  %131 = load i8*, i8** %130, align 4
  %tobool201 = icmp ne i8* %131, null
  br i1 %tobool201, label %for.body202, label %for.end206

for.body202:                                      ; preds = %for.cond200
  %132 = load i32, i32* %nargs, align 4
  %inc203 = add nsw i32 %132, 1
  store i32 %inc203, i32* %nargs, align 4
  br label %for.inc204

for.inc204:                                       ; preds = %for.body202
  %133 = load i8**, i8*** %aptr, align 4
  %incdec.ptr205 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %incdec.ptr205, i8*** %aptr, align 4
  br label %for.cond200

for.end206:                                       ; preds = %for.cond200
  br label %if.end207

if.end207:                                        ; preds = %for.end206, %if.then198
  %134 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind208 = getelementptr inbounds %struct.options, %struct.options* %134, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [128 x i8], [128 x i8]* %ind208, i32 0, i32 103
  %135 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %135 to i32
  %cmp211 = icmp ne i32 %conv210, 0
  br i1 %cmp211, label %if.then213, label %if.end217

if.then213:                                       ; preds = %if.end207
  %136 = load i32, i32* %flags, align 4
  %or214 = or i32 %136, 64
  store i32 %or214, i32* %flags, align 4
  %137 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind215 = getelementptr inbounds %struct.options, %struct.options* %137, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [128 x i8], [128 x i8]* %ind215, i32 0, i32 115
  store i8 1, i8* %arrayidx216, align 1
  br label %if.end217

if.end217:                                        ; preds = %if.then213, %if.end207
  %138 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind218 = getelementptr inbounds %struct.options, %struct.options* %138, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [128 x i8], [128 x i8]* %ind218, i32 0, i32 115
  %139 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %139 to i32
  %cmp221 = icmp ne i32 %conv220, 0
  br i1 %cmp221, label %if.then229, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %if.end217
  %140 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind224 = getelementptr inbounds %struct.options, %struct.options* %140, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [128 x i8], [128 x i8]* %ind224, i32 0, i32 114
  %141 = load i8, i8* %arrayidx225, align 2
  %conv226 = zext i8 %141 to i32
  %cmp227 = icmp ne i32 %conv226, 0
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %lor.lhs.false223, %if.end217
  %142 = load i32, i32* %flags, align 4
  %or230 = or i32 %142, 4
  store i32 %or230, i32* %flags, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %lor.lhs.false223
  %143 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind232 = getelementptr inbounds %struct.options, %struct.options* %143, i32 0, i32 0
  %arrayidx233 = getelementptr inbounds [128 x i8], [128 x i8]* %ind232, i32 0, i32 114
  %144 = load i8, i8* %arrayidx233, align 2
  %conv234 = zext i8 %144 to i32
  %cmp235 = icmp ne i32 %conv234, 0
  br i1 %cmp235, label %if.then243, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %if.end231
  %145 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind238 = getelementptr inbounds %struct.options, %struct.options* %145, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [128 x i8], [128 x i8]* %ind238, i32 0, i32 115
  %146 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %146 to i32
  %cmp241 = icmp ne i32 %conv240, 0
  br i1 %cmp241, label %if.end245, label %if.then243

if.then243:                                       ; preds = %lor.lhs.false237, %if.end231
  %147 = load i32, i32* %flags, align 4
  %or244 = or i32 %147, 8
  store i32 %or244, i32* %flags, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then243, %lor.lhs.false237
  %148 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind246 = getelementptr inbounds %struct.options, %struct.options* %148, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [128 x i8], [128 x i8]* %ind246, i32 0, i32 110
  %149 = load i8, i8* %arrayidx247, align 2
  %conv248 = zext i8 %149 to i32
  %cmp249 = icmp ne i32 %conv248, 0
  br i1 %cmp249, label %if.then251, label %if.end253

if.then251:                                       ; preds = %if.end245
  %150 = load i32, i32* %flags, align 4
  %or252 = or i32 %150, 2
  store i32 %or252, i32* %flags, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end245
  %151 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind254 = getelementptr inbounds %struct.options, %struct.options* %151, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [128 x i8], [128 x i8]* %ind254, i32 0, i32 111
  %152 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %152 to i32
  %cmp257 = icmp ne i32 %conv256, 0
  br i1 %cmp257, label %if.then259, label %if.end261

if.then259:                                       ; preds = %if.end253
  %153 = load i32, i32* %flags, align 4
  %or260 = or i32 %153, 256
  store i32 %or260, i32* %flags, align 4
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %if.end253
  %154 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind262 = getelementptr inbounds %struct.options, %struct.options* %154, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [128 x i8], [128 x i8]* %ind262, i32 0, i32 116
  %155 = load i8, i8* %arrayidx263, align 4
  %conv264 = zext i8 %155 to i32
  %cmp265 = icmp ne i32 %conv264, 0
  br i1 %cmp265, label %if.then267, label %if.end269

if.then267:                                       ; preds = %if.end261
  %156 = load i32, i32* %flags, align 4
  %or268 = or i32 %156, 1
  store i32 %or268, i32* %flags, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %if.end261
  %157 = load i8*, i8** %arrnam, align 4
  %tobool270 = icmp ne i8* %157, null
  br i1 %tobool270, label %if.end284, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %if.end269
  %158 = load i8*, i8** %hashnam, align 4
  %tobool272 = icmp ne i8* %158, null
  br i1 %tobool272, label %if.end284, label %if.then273

if.then273:                                       ; preds = %lor.lhs.false271
  %159 = load i32, i32* %nargs, align 4
  %cmp274 = icmp sgt i32 %159, 1
  br i1 %cmp274, label %if.then276, label %if.end278

if.then276:                                       ; preds = %if.then273
  %160 = load i32, i32* %flags, align 4
  %or277 = or i32 %160, 2
  store i32 %or277, i32* %flags, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then276, %if.then273
  %161 = load i32, i32* %flags, align 4
  %and279 = and i32 %161, 16
  %tobool280 = icmp ne i32 %and279, 0
  br i1 %tobool280, label %if.end283, label %if.then281

if.then281:                                       ; preds = %if.end278
  %162 = load i32, i32* %flags, align 4
  %or282 = or i32 %162, 1
  store i32 %or282, i32* %flags, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then281, %if.end278
  br label %if.end284

if.end284:                                        ; preds = %if.end283, %lor.lhs.false271, %if.end269
  %163 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind285 = getelementptr inbounds %struct.options, %struct.options* %163, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [128 x i8], [128 x i8]* %ind285, i32 0, i32 78
  %164 = load i8, i8* %arrayidx286, align 2
  %conv287 = zext i8 %164 to i32
  %cmp288 = icmp ne i32 %conv287, 0
  br i1 %cmp288, label %if.then296, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %if.end284
  %165 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind291 = getelementptr inbounds %struct.options, %struct.options* %165, i32 0, i32 0
  %arrayidx292 = getelementptr inbounds [128 x i8], [128 x i8]* %ind291, i32 0, i32 102
  %166 = load i8, i8* %arrayidx292, align 2
  %conv293 = zext i8 %166 to i32
  %cmp294 = icmp ne i32 %conv293, 0
  br i1 %cmp294, label %if.then296, label %if.end298

if.then296:                                       ; preds = %lor.lhs.false290, %if.end284
  %167 = load i32, i32* %flags, align 4
  %and297 = and i32 %167, -3
  store i32 %and297, i32* %flags, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then296, %lor.lhs.false290
  %168 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind299 = getelementptr inbounds %struct.options, %struct.options* %168, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [128 x i8], [128 x i8]* %ind299, i32 0, i32 84
  %169 = load i8, i8* %arrayidx300, align 4
  %conv301 = zext i8 %169 to i32
  %cmp302 = icmp ne i32 %conv301, 0
  br i1 %cmp302, label %if.then310, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %if.end298
  %170 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind305 = getelementptr inbounds %struct.options, %struct.options* %170, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [128 x i8], [128 x i8]* %ind305, i32 0, i32 72
  %171 = load i8, i8* %arrayidx306, align 4
  %conv307 = zext i8 %171 to i32
  %cmp308 = icmp ne i32 %conv307, 0
  br i1 %cmp308, label %if.then310, label %if.end312

if.then310:                                       ; preds = %lor.lhs.false304, %if.end298
  %172 = load i32, i32* %flags, align 4
  %and311 = and i32 %172, -2
  store i32 %and311, i32* %flags, align 4
  br label %if.end312

if.end312:                                        ; preds = %if.then310, %lor.lhs.false304
  %173 = load i8*, i8** %hashnam, align 4
  %tobool313 = icmp ne i8* %173, null
  br i1 %tobool313, label %if.then314, label %if.end328

if.then314:                                       ; preds = %if.end312
  %174 = load i32, i32* %nargs, align 4
  %cmp315 = icmp sgt i32 %174, 1
  br i1 %cmp315, label %if.then317, label %if.end318

if.then317:                                       ; preds = %if.then314
  %175 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end318:                                        ; preds = %if.then314
  %176 = load i32, i32* %flags, align 4
  %and319 = and i32 %176, 16
  %tobool320 = icmp ne i32 %and319, 0
  %cond = select i1 %tobool320, i32 1, i32 14
  store i32 %cond, i32* %arrsize, align 4
  %177 = load i32, i32* %flags, align 4
  %and321 = and i32 %177, 2
  %tobool322 = icmp ne i32 %and321, 0
  br i1 %tobool322, label %if.then323, label %if.end325

if.then323:                                       ; preds = %if.end318
  %178 = load i32, i32* %arrsize, align 4
  %inc324 = add nsw i32 %178, 1
  store i32 %inc324, i32* %arrsize, align 4
  br label %if.end325

if.end325:                                        ; preds = %if.then323, %if.end318
  %179 = load i32, i32* %arrsize, align 4
  %add = add nsw i32 %179, 1
  %mul = mul nsw i32 %add, 2
  %mul326 = mul i32 %mul, 4
  %call327 = call i8* @zshcalloc(i32 %mul326)
  %180 = bitcast i8* %call327 to i8**
  store i8** %180, i8*** %hash, align 4
  store i8** %180, i8*** %hashptr, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.end325, %if.end312
  %181 = load i8*, i8** %arrnam, align 4
  %tobool329 = icmp ne i8* %181, null
  br i1 %tobool329, label %if.then330, label %if.end343

if.then330:                                       ; preds = %if.end328
  %182 = load i32, i32* %flags, align 4
  %and331 = and i32 %182, 16
  %tobool332 = icmp ne i32 %and331, 0
  %cond333 = select i1 %tobool332, i32 1, i32 14
  store i32 %cond333, i32* %arrsize, align 4
  %183 = load i32, i32* %flags, align 4
  %and334 = and i32 %183, 2
  %tobool335 = icmp ne i32 %and334, 0
  br i1 %tobool335, label %if.then336, label %if.end338

if.then336:                                       ; preds = %if.then330
  %184 = load i32, i32* %arrsize, align 4
  %inc337 = add nsw i32 %184, 1
  store i32 %inc337, i32* %arrsize, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.then336, %if.then330
  %185 = load i32, i32* %nargs, align 4
  %186 = load i32, i32* %arrsize, align 4
  %mul339 = mul nsw i32 %186, %185
  store i32 %mul339, i32* %arrsize, align 4
  %187 = load i32, i32* %arrsize, align 4
  %add340 = add nsw i32 %187, 1
  %mul341 = mul i32 %add340, 4
  %call342 = call i8* @zshcalloc(i32 %mul341)
  %188 = bitcast i8* %call342 to i8**
  store i8** %188, i8*** %array, align 4
  store i8** %188, i8*** %arrptr, align 4
  br label %if.end343

if.end343:                                        ; preds = %if.end338, %if.end328
  br label %for.cond344

for.cond344:                                      ; preds = %for.inc498, %if.end343
  %189 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind345 = getelementptr inbounds %struct.options, %struct.options* %189, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [128 x i8], [128 x i8]* %ind345, i32 0, i32 102
  %190 = load i8, i8* %arrayidx346, align 2
  %conv347 = zext i8 %190 to i32
  %cmp348 = icmp ne i32 %conv347, 0
  br i1 %cmp348, label %lor.end352, label %lor.rhs350

lor.rhs350:                                       ; preds = %for.cond344
  %191 = load i8**, i8*** %args.addr, align 4
  %192 = load i8*, i8** %191, align 4
  %tobool351 = icmp ne i8* %192, null
  br label %lor.end352

lor.end352:                                       ; preds = %lor.rhs350, %for.cond344
  %193 = phi i1 [ true, %for.cond344 ], [ %tobool351, %lor.rhs350 ]
  br i1 %193, label %for.body353, label %for.end500

for.body353:                                      ; preds = %lor.end352
  %194 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind354 = getelementptr inbounds %struct.options, %struct.options* %194, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [128 x i8], [128 x i8]* %ind354, i32 0, i32 102
  %195 = load i8, i8* %arrayidx355, align 2
  %conv356 = zext i8 %195 to i32
  %cmp357 = icmp ne i32 %conv356, 0
  br i1 %cmp357, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body353
  %196 = load i32, i32* %fd, align 4
  %call359 = call i32 @fstat(i32 %196, %struct.stat* %statbuf)
  br label %cond.end372

cond.false:                                       ; preds = %for.body353
  %197 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind360 = getelementptr inbounds %struct.options, %struct.options* %197, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [128 x i8], [128 x i8]* %ind360, i32 0, i32 76
  %198 = load i8, i8* %arrayidx361, align 4
  %conv362 = zext i8 %198 to i32
  %cmp363 = icmp ne i32 %conv362, 0
  br i1 %cmp363, label %cond.true365, label %cond.false368

cond.true365:                                     ; preds = %cond.false
  %199 = load i8**, i8*** %args.addr, align 4
  %200 = load i8*, i8** %199, align 4
  %call366 = call i8* @unmeta(i8* %200)
  %call367 = call i32 @lstat(i8* %call366, %struct.stat* %statbuf)
  br label %cond.end

cond.false368:                                    ; preds = %cond.false
  %201 = load i8**, i8*** %args.addr, align 4
  %202 = load i8*, i8** %201, align 4
  %call369 = call i8* @unmeta(i8* %202)
  %call370 = call i32 @stat(i8* %call369, %struct.stat* %statbuf)
  br label %cond.end

cond.end:                                         ; preds = %cond.false368, %cond.true365
  %cond371 = phi i32 [ %call367, %cond.true365 ], [ %call370, %cond.false368 ]
  br label %cond.end372

cond.end372:                                      ; preds = %cond.end, %cond.true
  %cond373 = phi i32 [ %call359, %cond.true ], [ %cond371, %cond.end ]
  store i32 %cond373, i32* %rval, align 4
  %203 = load i32, i32* %rval, align 4
  %tobool374 = icmp ne i32 %203, 0
  br i1 %tobool374, label %if.then375, label %if.end404

if.then375:                                       ; preds = %cond.end372
  %204 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind376 = getelementptr inbounds %struct.options, %struct.options* %204, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [128 x i8], [128 x i8]* %ind376, i32 0, i32 102
  %205 = load i8, i8* %arrayidx377, align 2
  %conv378 = zext i8 %205 to i32
  %cmp379 = icmp ne i32 %conv378, 0
  br i1 %cmp379, label %if.then381, label %if.end383

if.then381:                                       ; preds = %if.then375
  %arraydecay = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %206 = load i32, i32* %fd, align 4
  %call382 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %206)
  br label %if.end383

if.end383:                                        ; preds = %if.then381, %if.then375
  %207 = load i8*, i8** %name.addr, align 4
  %208 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind384 = getelementptr inbounds %struct.options, %struct.options* %208, i32 0, i32 0
  %arrayidx385 = getelementptr inbounds [128 x i8], [128 x i8]* %ind384, i32 0, i32 102
  %209 = load i8, i8* %arrayidx385, align 2
  %conv386 = zext i8 %209 to i32
  %cmp387 = icmp ne i32 %conv386, 0
  br i1 %cmp387, label %cond.true389, label %cond.false391

cond.true389:                                     ; preds = %if.end383
  %arraydecay390 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  br label %cond.end392

cond.false391:                                    ; preds = %if.end383
  %210 = load i8**, i8*** %args.addr, align 4
  %211 = load i8*, i8** %210, align 4
  br label %cond.end392

cond.end392:                                      ; preds = %cond.false391, %cond.true389
  %cond393 = phi i8* [ %arraydecay390, %cond.true389 ], [ %211, %cond.false391 ]
  %call394 = call i32* @__errno_location()
  %212 = load i32, i32* %call394, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %cond393, i32 %212)
  store i32 1, i32* %ret, align 4
  %213 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind395 = getelementptr inbounds %struct.options, %struct.options* %213, i32 0, i32 0
  %arrayidx396 = getelementptr inbounds [128 x i8], [128 x i8]* %ind395, i32 0, i32 102
  %214 = load i8, i8* %arrayidx396, align 2
  %conv397 = zext i8 %214 to i32
  %cmp398 = icmp ne i32 %conv397, 0
  br i1 %cmp398, label %if.then402, label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %cond.end392
  %215 = load i8*, i8** %arrnam, align 4
  %tobool401 = icmp ne i8* %215, null
  br i1 %tobool401, label %if.then402, label %if.else403

if.then402:                                       ; preds = %lor.lhs.false400, %cond.end392
  br label %for.end500

if.else403:                                       ; preds = %lor.lhs.false400
  br label %for.inc498

if.end404:                                        ; preds = %cond.end372
  %216 = load i32, i32* %flags, align 4
  %and405 = and i32 %216, 2
  %tobool406 = icmp ne i32 %and405, 0
  br i1 %tobool406, label %if.then407, label %if.end426

if.then407:                                       ; preds = %if.end404
  %217 = load i8*, i8** %arrnam, align 4
  %tobool408 = icmp ne i8* %217, null
  br i1 %tobool408, label %if.then409, label %if.else412

if.then409:                                       ; preds = %if.then407
  %218 = load i8**, i8*** %args.addr, align 4
  %219 = load i8*, i8** %218, align 4
  %call410 = call i8* @ztrdup(i8* %219)
  %220 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr411 = getelementptr inbounds i8*, i8** %220, i32 1
  store i8** %incdec.ptr411, i8*** %arrptr, align 4
  store i8* %call410, i8** %220, align 4
  br label %if.end425

if.else412:                                       ; preds = %if.then407
  %221 = load i8*, i8** %hashnam, align 4
  %tobool413 = icmp ne i8* %221, null
  br i1 %tobool413, label %if.then414, label %if.else419

if.then414:                                       ; preds = %if.else412
  %call415 = call i8* @ztrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  %222 = load i8**, i8*** %hashptr, align 4
  %incdec.ptr416 = getelementptr inbounds i8*, i8** %222, i32 1
  store i8** %incdec.ptr416, i8*** %hashptr, align 4
  store i8* %call415, i8** %222, align 4
  %223 = load i8**, i8*** %args.addr, align 4
  %224 = load i8*, i8** %223, align 4
  %call417 = call i8* @ztrdup(i8* %224)
  %225 = load i8**, i8*** %hashptr, align 4
  %incdec.ptr418 = getelementptr inbounds i8*, i8** %225, i32 1
  store i8** %incdec.ptr418, i8*** %hashptr, align 4
  store i8* %call417, i8** %225, align 4
  br label %if.end424

if.else419:                                       ; preds = %if.else412
  %226 = load i8**, i8*** %args.addr, align 4
  %227 = load i8*, i8** %226, align 4
  %228 = load i32, i32* %flags, align 4
  %and420 = and i32 %228, 16
  %tobool421 = icmp ne i32 %and420, 0
  %cond422 = select i1 %tobool421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)
  %call423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %227, i8* %cond422)
  br label %if.end424

if.end424:                                        ; preds = %if.else419, %if.then414
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %if.then409
  br label %if.end426

if.end426:                                        ; preds = %if.end425, %if.end404
  %229 = load i32, i32* %iwhich, align 4
  %cmp427 = icmp sgt i32 %229, -1
  br i1 %cmp427, label %if.then429, label %if.else450

if.then429:                                       ; preds = %if.end426
  %arraydecay430 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %230 = load i8**, i8*** %args.addr, align 4
  %231 = load i8*, i8** %230, align 4
  %232 = load i32, i32* %iwhich, align 4
  %233 = load i32, i32* %flags, align 4
  call void @statprint(%struct.stat* %statbuf, i8* %arraydecay430, i8* %231, i32 %232, i32 %233)
  %234 = load i8*, i8** %arrnam, align 4
  %tobool431 = icmp ne i8* %234, null
  br i1 %tobool431, label %if.then432, label %if.else436

if.then432:                                       ; preds = %if.then429
  %arraydecay433 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %call434 = call i8* @metafy(i8* %arraydecay433, i32 -1, i32 3)
  %235 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr435 = getelementptr inbounds i8*, i8** %235, i32 1
  store i8** %incdec.ptr435, i8*** %arrptr, align 4
  store i8* %call434, i8** %235, align 4
  br label %if.end449

if.else436:                                       ; preds = %if.then429
  %236 = load i8*, i8** %hashnam, align 4
  %tobool437 = icmp ne i8* %236, null
  br i1 %tobool437, label %if.then438, label %if.else445

if.then438:                                       ; preds = %if.else436
  %237 = load i32, i32* %iwhich, align 4
  %arrayidx439 = getelementptr inbounds [15 x i8*], [15 x i8*]* @statelts, i32 0, i32 %237
  %238 = load i8*, i8** %arrayidx439, align 4
  %call440 = call i8* @ztrdup(i8* %238)
  %239 = load i8**, i8*** %hashptr, align 4
  %incdec.ptr441 = getelementptr inbounds i8*, i8** %239, i32 1
  store i8** %incdec.ptr441, i8*** %hashptr, align 4
  store i8* %call440, i8** %239, align 4
  %arraydecay442 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %call443 = call i8* @metafy(i8* %arraydecay442, i32 -1, i32 3)
  %240 = load i8**, i8*** %hashptr, align 4
  %incdec.ptr444 = getelementptr inbounds i8*, i8** %240, i32 1
  store i8** %incdec.ptr444, i8*** %hashptr, align 4
  store i8* %call443, i8** %240, align 4
  br label %if.end448

if.else445:                                       ; preds = %if.else436
  %arraydecay446 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %call447 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay446)
  br label %if.end448

if.end448:                                        ; preds = %if.else445, %if.then438
  br label %if.end449

if.end449:                                        ; preds = %if.end448, %if.then432
  br label %if.end478

if.else450:                                       ; preds = %if.end426
  store i32 0, i32* %i, align 4
  br label %for.cond451

for.cond451:                                      ; preds = %for.inc475, %if.else450
  %241 = load i32, i32* %i, align 4
  %cmp452 = icmp slt i32 %241, 14
  br i1 %cmp452, label %for.body454, label %for.end477

for.body454:                                      ; preds = %for.cond451
  %arraydecay455 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %242 = load i8**, i8*** %args.addr, align 4
  %243 = load i8*, i8** %242, align 4
  %244 = load i32, i32* %i, align 4
  %245 = load i32, i32* %flags, align 4
  call void @statprint(%struct.stat* %statbuf, i8* %arraydecay455, i8* %243, i32 %244, i32 %245)
  %246 = load i8*, i8** %arrnam, align 4
  %tobool456 = icmp ne i8* %246, null
  br i1 %tobool456, label %if.then457, label %if.else461

if.then457:                                       ; preds = %for.body454
  %arraydecay458 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %call459 = call i8* @metafy(i8* %arraydecay458, i32 -1, i32 3)
  %247 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr460 = getelementptr inbounds i8*, i8** %247, i32 1
  store i8** %incdec.ptr460, i8*** %arrptr, align 4
  store i8* %call459, i8** %247, align 4
  br label %if.end474

if.else461:                                       ; preds = %for.body454
  %248 = load i8*, i8** %hashnam, align 4
  %tobool462 = icmp ne i8* %248, null
  br i1 %tobool462, label %if.then463, label %if.else470

if.then463:                                       ; preds = %if.else461
  %249 = load i32, i32* %i, align 4
  %arrayidx464 = getelementptr inbounds [15 x i8*], [15 x i8*]* @statelts, i32 0, i32 %249
  %250 = load i8*, i8** %arrayidx464, align 4
  %call465 = call i8* @ztrdup(i8* %250)
  %251 = load i8**, i8*** %hashptr, align 4
  %incdec.ptr466 = getelementptr inbounds i8*, i8** %251, i32 1
  store i8** %incdec.ptr466, i8*** %hashptr, align 4
  store i8* %call465, i8** %251, align 4
  %arraydecay467 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %call468 = call i8* @metafy(i8* %arraydecay467, i32 -1, i32 3)
  %252 = load i8**, i8*** %hashptr, align 4
  %incdec.ptr469 = getelementptr inbounds i8*, i8** %252, i32 1
  store i8** %incdec.ptr469, i8*** %hashptr, align 4
  store i8* %call468, i8** %252, align 4
  br label %if.end473

if.else470:                                       ; preds = %if.else461
  %arraydecay471 = getelementptr inbounds [4105 x i8], [4105 x i8]* %outbuf, i32 0, i32 0
  %call472 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay471)
  br label %if.end473

if.end473:                                        ; preds = %if.else470, %if.then463
  br label %if.end474

if.end474:                                        ; preds = %if.end473, %if.then457
  br label %for.inc475

for.inc475:                                       ; preds = %if.end474
  %253 = load i32, i32* %i, align 4
  %inc476 = add nsw i32 %253, 1
  store i32 %inc476, i32* %i, align 4
  br label %for.cond451

for.end477:                                       ; preds = %for.cond451
  br label %if.end478

if.end478:                                        ; preds = %for.end477, %if.end449
  %254 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind479 = getelementptr inbounds %struct.options, %struct.options* %254, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [128 x i8], [128 x i8]* %ind479, i32 0, i32 102
  %255 = load i8, i8* %arrayidx480, align 2
  %conv481 = zext i8 %255 to i32
  %cmp482 = icmp ne i32 %conv481, 0
  br i1 %cmp482, label %if.then484, label %if.end485

if.then484:                                       ; preds = %if.end478
  br label %for.end500

if.end485:                                        ; preds = %if.end478
  %256 = load i8*, i8** %arrnam, align 4
  %tobool486 = icmp ne i8* %256, null
  br i1 %tobool486, label %if.end497, label %land.lhs.true487

land.lhs.true487:                                 ; preds = %if.end485
  %257 = load i8*, i8** %hashnam, align 4
  %tobool488 = icmp ne i8* %257, null
  br i1 %tobool488, label %if.end497, label %land.lhs.true489

land.lhs.true489:                                 ; preds = %land.lhs.true487
  %258 = load i8**, i8*** %args.addr, align 4
  %arrayidx490 = getelementptr inbounds i8*, i8** %258, i32 1
  %259 = load i8*, i8** %arrayidx490, align 4
  %tobool491 = icmp ne i8* %259, null
  br i1 %tobool491, label %land.lhs.true492, label %if.end497

land.lhs.true492:                                 ; preds = %land.lhs.true489
  %260 = load i32, i32* %flags, align 4
  %and493 = and i32 %260, 16
  %tobool494 = icmp ne i32 %and493, 0
  br i1 %tobool494, label %if.end497, label %if.then495

if.then495:                                       ; preds = %land.lhs.true492
  %call496 = call i32 @putchar(i32 10)
  br label %if.end497

if.end497:                                        ; preds = %if.then495, %land.lhs.true492, %land.lhs.true489, %land.lhs.true487, %if.end485
  br label %for.inc498

for.inc498:                                       ; preds = %if.end497, %if.else403
  %261 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr499 = getelementptr inbounds i8*, i8** %261, i32 1
  store i8** %incdec.ptr499, i8*** %args.addr, align 4
  br label %for.cond344

for.end500:                                       ; preds = %if.then484, %if.then402, %lor.end352
  %262 = load i8*, i8** %arrnam, align 4
  %tobool501 = icmp ne i8* %262, null
  br i1 %tobool501, label %if.then502, label %if.end511

if.then502:                                       ; preds = %for.end500
  %263 = load i32, i32* %ret, align 4
  %tobool503 = icmp ne i32 %263, 0
  br i1 %tobool503, label %if.then504, label %if.else505

if.then504:                                       ; preds = %if.then502
  %264 = load i8**, i8*** %array, align 4
  call void @freearray(i8** %264)
  br label %if.end510

if.else505:                                       ; preds = %if.then502
  %265 = load i8*, i8** %arrnam, align 4
  %266 = load i8**, i8*** %array, align 4
  %call506 = call %struct.param* @setaparam(i8* %265, i8** %266)
  %267 = load i32, i32* @errflag, align 4
  %tobool507 = icmp ne i32 %267, 0
  br i1 %tobool507, label %if.then508, label %if.end509

if.then508:                                       ; preds = %if.else505
  store i32 1, i32* %retval, align 4
  br label %return

if.end509:                                        ; preds = %if.else505
  br label %if.end510

if.end510:                                        ; preds = %if.end509, %if.then504
  br label %if.end511

if.end511:                                        ; preds = %if.end510, %for.end500
  %268 = load i8*, i8** %hashnam, align 4
  %tobool512 = icmp ne i8* %268, null
  br i1 %tobool512, label %if.then513, label %if.end522

if.then513:                                       ; preds = %if.end511
  %269 = load i32, i32* %ret, align 4
  %tobool514 = icmp ne i32 %269, 0
  br i1 %tobool514, label %if.then515, label %if.else516

if.then515:                                       ; preds = %if.then513
  %270 = load i8**, i8*** %hash, align 4
  call void @freearray(i8** %270)
  br label %if.end521

if.else516:                                       ; preds = %if.then513
  %271 = load i8*, i8** %hashnam, align 4
  %272 = load i8**, i8*** %hash, align 4
  %call517 = call %struct.param* @sethparam(i8* %271, i8** %272)
  %273 = load i32, i32* @errflag, align 4
  %tobool518 = icmp ne i32 %273, 0
  br i1 %tobool518, label %if.then519, label %if.end520

if.then519:                                       ; preds = %if.else516
  store i32 1, i32* %retval, align 4
  br label %return

if.end520:                                        ; preds = %if.else516
  br label %if.end521

if.end521:                                        ; preds = %if.end520, %if.then515
  br label %if.end522

if.end522:                                        ; preds = %if.end521, %if.end511
  %274 = load i32, i32* %ret, align 4
  store i32 %274, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end522, %if.then519, %if.then508, %if.then317, %if.then190, %if.then181, %if.end172, %if.then168, %if.then133, %if.else120, %if.then115, %if.then101, %if.then96, %if.then78, %if.then62, %if.then33, %if.then30
  %275 = load i32, i32* %retval, align 4
  ret i32 %275
}

declare i32 @strlen(i8*) #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare void @zwarnnam(i8*, i8*, ...) #1

declare i8* @strchr(i8*, i32) #1

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i8* @zalloc(i32) #1

declare i8* @ztrdup(i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

declare %struct.param* @setaparam(i8*, i8**) #1

declare i8* @zshcalloc(i32) #1

declare i32 @fstat(i32, %struct.stat*) #1

declare i32 @lstat(i8*, %struct.stat*) #1

declare i8* @unmeta(i8*) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i32* @__errno_location() #1

; Function Attrs: noinline nounwind
define internal void @statprint(%struct.stat* %sbuf, i8* %outbuf, i8* %fname, i32 %iwhich, i32 %flags) #0 {
entry:
  %sbuf.addr = alloca %struct.stat*, align 4
  %outbuf.addr = alloca i8*, align 4
  %fname.addr = alloca i8*, align 4
  %iwhich.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %optr = alloca i8*, align 4
  store %struct.stat* %sbuf, %struct.stat** %sbuf.addr, align 4
  store i8* %outbuf, i8** %outbuf.addr, align 4
  store i8* %fname, i8** %fname.addr, align 4
  store i32 %iwhich, i32* %iwhich.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %outbuf.addr, align 4
  store i8* %0, i8** %optr, align 4
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %outbuf.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %3, 48
  %tobool2 = icmp ne i32 %and1, 0
  %cond = select i1 %tobool2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)
  %4 = load i32, i32* %iwhich.addr, align 4
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* @statelts, i32 0, i32 %4
  %5 = load i8*, i8** %arrayidx, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* %cond, i8* %5)
  %6 = load i8*, i8** %outbuf.addr, align 4
  %call3 = call i32 @strlen(i8* %6)
  %7 = load i8*, i8** %optr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 %call3
  store i8* %add.ptr, i8** %optr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %optr, align 4
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* %iwhich.addr, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
    i32 7, label %sw.bb10
    i32 8, label %sw.bb11
    i32 9, label %sw.bb12
    i32 10, label %sw.bb14
    i32 11, label %sw.bb16
    i32 12, label %sw.bb17
    i32 13, label %sw.bb18
    i32 14, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %11 = load i32, i32* %st_dev, align 8
  %12 = load i8*, i8** %optr, align 4
  call void @statulprint(i32 %11, i8* %12)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %13 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 2
  %14 = load i32, i32* %st_ino, align 8
  %15 = load i8*, i8** %optr, align 4
  call void @statulprint(i32 %14, i8* %15)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %16 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 6
  %17 = load i32, i32* %st_mode, align 8
  %18 = load i8*, i8** %optr, align 4
  %19 = load i32, i32* %flags.addr, align 4
  call void @statmodeprint(i32 %17, i8* %18, i32 %19)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %20 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 4
  %21 = load i32, i32* %st_nlink, align 8
  %22 = load i8*, i8** %optr, align 4
  call void @statulprint(i32 %21, i8* %22)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %23 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 7
  %24 = load i32, i32* %st_uid, align 4
  %25 = load i8*, i8** %optr, align 4
  %26 = load i32, i32* %flags.addr, align 4
  call void @statuidprint(i32 %24, i8* %25, i32 %26)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %27 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 8
  %28 = load i32, i32* %st_gid, align 8
  %29 = load i8*, i8** %optr, align 4
  %30 = load i32, i32* %flags.addr, align 4
  call void @statgidprint(i32 %28, i8* %29, i32 %30)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %31 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_rdev = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 10
  %32 = load i32, i32* %st_rdev, align 8
  %33 = load i8*, i8** %optr, align 4
  call void @statulprint(i32 %32, i8* %33)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %34 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 12
  %35 = load i32, i32* %st_size, align 8
  %36 = load i8*, i8** %optr, align 4
  call void @statulprint(i32 %35, i8* %36)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %37 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %37, i32 0, i32 18
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %38 = load i32, i32* %tv_sec, align 8
  %39 = load i8*, i8** %optr, align 4
  %40 = load i32, i32* %flags.addr, align 4
  call void @stattimeprint(i32 %38, i8* %39, i32 %40)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %41 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 19
  %tv_sec13 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %42 = load i32, i32* %tv_sec13, align 8
  %43 = load i8*, i8** %optr, align 4
  %44 = load i32, i32* %flags.addr, align 4
  call void @stattimeprint(i32 %42, i8* %43, i32 %44)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %45 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 20
  %tv_sec15 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %46 = load i32, i32* %tv_sec15, align 8
  %47 = load i8*, i8** %optr, align 4
  %48 = load i32, i32* %flags.addr, align 4
  call void @stattimeprint(i32 %46, i8* %47, i32 %48)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %49 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_blksize = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 14
  %50 = load i32, i32* %st_blksize, align 8
  %51 = load i8*, i8** %optr, align 4
  call void @statulprint(i32 %50, i8* %51)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %52 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_blocks = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 16
  %53 = load i32, i32* %st_blocks, align 8
  %54 = load i8*, i8** %optr, align 4
  call void @statulprint(i32 %53, i8* %54)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %55 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %56 = load i8*, i8** %optr, align 4
  %57 = load i8*, i8** %fname.addr, align 4
  call void @statlinkprint(%struct.stat* %55, i8* %56, i8* %57)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb
  ret void
}

declare i8* @metafy(i8*, i32, i32) #1

declare void @freearray(i8**) #1

declare %struct.param* @sethparam(i8*, i8**) #1

; Function Attrs: noinline nounwind
define internal void @statulprint(i32 %num, i8* %outbuf) #0 {
entry:
  %num.addr = alloca i32, align 4
  %outbuf.addr = alloca i8*, align 4
  store i32 %num, i32* %num.addr, align 4
  store i8* %outbuf, i8** %outbuf.addr, align 4
  %0 = load i8*, i8** %outbuf.addr, align 4
  %1 = load i32, i32* %num.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 %1)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @statmodeprint(i32 %mode, i8* %outbuf, i32 %flags) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %outbuf.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %mfp = alloca i32*, align 4
  %pm = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %outbuf, i8** %outbuf.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %outbuf.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %2, 256
  %tobool2 = icmp ne i32 %and1, 0
  %cond = select i1 %tobool2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)
  %3 = load i32, i32* %mode.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* %cond, i32 %3)
  %4 = load i32, i32* %flags.addr, align 4
  %and3 = and i32 %4, 4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %5 = load i8*, i8** %outbuf.addr, align 4
  %call6 = call i8* @strcat(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %6 = load i32, i32* %flags.addr, align 4
  %and8 = and i32 %6, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end113

if.then10:                                        ; preds = %if.end7
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @statmodeprint.mflags, i32 0, i32 0), i32** %mfp, align 4
  %7 = load i32, i32* %mode.addr, align 4
  %and11 = and i32 %7, 61440
  %cmp = icmp eq i32 %and11, 24576
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 98, i8* %arraydecay, align 1
  br label %if.end70

if.else:                                          ; preds = %if.then10
  %8 = load i32, i32* %mode.addr, align 4
  %and13 = and i32 %8, 61440
  %cmp14 = icmp eq i32 %and13, 8192
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %arraydecay16 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 99, i8* %arraydecay16, align 1
  br label %if.end69

if.else17:                                        ; preds = %if.else
  %9 = load i32, i32* %mode.addr, align 4
  %and18 = and i32 %9, 61440
  %cmp19 = icmp eq i32 %and18, 16384
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %arraydecay21 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 100, i8* %arraydecay21, align 1
  br label %if.end68

if.else22:                                        ; preds = %if.else17
  %10 = load i32, i32* %mode.addr, align 4
  br i1 false, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else22
  %arraydecay24 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 68, i8* %arraydecay24, align 1
  br label %if.end67

if.else25:                                        ; preds = %if.else22
  %11 = load i32, i32* %mode.addr, align 4
  %and26 = and i32 %11, 61440
  %cmp27 = icmp eq i32 %and26, 4096
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else25
  %arraydecay29 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 112, i8* %arraydecay29, align 1
  br label %if.end66

if.else30:                                        ; preds = %if.else25
  %12 = load i32, i32* %mode.addr, align 4
  %and31 = and i32 %12, 61440
  %cmp32 = icmp eq i32 %and31, 40960
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else30
  %arraydecay34 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 108, i8* %arraydecay34, align 1
  br label %if.end65

if.else35:                                        ; preds = %if.else30
  %13 = load i32, i32* %mode.addr, align 4
  br i1 false, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else35
  %arraydecay37 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 109, i8* %arraydecay37, align 1
  br label %if.end64

if.else38:                                        ; preds = %if.else35
  %14 = load i32, i32* %mode.addr, align 4
  br i1 false, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else38
  %arraydecay40 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 110, i8* %arraydecay40, align 1
  br label %if.end63

if.else41:                                        ; preds = %if.else38
  %15 = load i32, i32* %mode.addr, align 4
  br i1 false, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else41
  %arraydecay43 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 77, i8* %arraydecay43, align 1
  br label %if.end62

if.else44:                                        ; preds = %if.else41
  %16 = load i32, i32* %mode.addr, align 4
  br i1 false, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.else44
  %arraydecay46 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 77, i8* %arraydecay46, align 1
  br label %if.end61

if.else47:                                        ; preds = %if.else44
  %17 = load i32, i32* %mode.addr, align 4
  %and48 = and i32 %17, 61440
  %cmp49 = icmp eq i32 %and48, 32768
  br i1 %cmp49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.else47
  %arraydecay51 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 45, i8* %arraydecay51, align 1
  br label %if.end60

if.else52:                                        ; preds = %if.else47
  %18 = load i32, i32* %mode.addr, align 4
  %and53 = and i32 %18, 61440
  %cmp54 = icmp eq i32 %and53, 49152
  br i1 %cmp54, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else52
  %arraydecay56 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 115, i8* %arraydecay56, align 1
  br label %if.end59

if.else57:                                        ; preds = %if.else52
  %arraydecay58 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  store i8 63, i8* %arraydecay58, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then50
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then45
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then42
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then39
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then36
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then33
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then28
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then23
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then20
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then15
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then12
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end70
  %19 = load i32, i32* %i, align 4
  %cmp71 = icmp sle i32 %19, 9
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load i32*, i32** %mfp, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr, i32** %mfp, align 4
  %22 = load i32, i32* %21, align 4
  %and72 = and i32 %20, %22
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %23 = load i8*, i8** @statmodeprint.modes, align 4
  %24 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds i8, i8* %23, i32 %24
  %25 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond74 = phi i32 [ %conv, %cond.true ], [ 45, %cond.false ]
  %conv75 = trunc i32 %cond74 to i8
  %26 = load i32, i32* %i, align 4
  %arrayidx76 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 %26
  store i8 %conv75, i8* %arrayidx76, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx77 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 10
  store i8 0, i8* %arrayidx77, align 1
  %28 = load i32, i32* %mode.addr, align 4
  %and78 = and i32 %28, 2048
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.end86

if.then80:                                        ; preds = %for.end
  %29 = load i32, i32* %mode.addr, align 4
  %and81 = and i32 %29, 64
  %tobool82 = icmp ne i32 %and81, 0
  %cond83 = select i1 %tobool82, i32 115, i32 83
  %conv84 = trunc i32 %cond83 to i8
  %arrayidx85 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 3
  store i8 %conv84, i8* %arrayidx85, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %for.end
  %30 = load i32, i32* %mode.addr, align 4
  %and87 = and i32 %30, 1024
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then89, label %if.end95

if.then89:                                        ; preds = %if.end86
  %31 = load i32, i32* %mode.addr, align 4
  %and90 = and i32 %31, 8
  %tobool91 = icmp ne i32 %and90, 0
  %cond92 = select i1 %tobool91, i32 115, i32 83
  %conv93 = trunc i32 %cond92 to i8
  %arrayidx94 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 6
  store i8 %conv93, i8* %arrayidx94, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %if.end86
  %32 = load i32, i32* %mode.addr, align 4
  %and96 = and i32 %32, 512
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then98, label %if.end104

if.then98:                                        ; preds = %if.end95
  %33 = load i32, i32* %mode.addr, align 4
  %and99 = and i32 %33, 1
  %tobool100 = icmp ne i32 %and99, 0
  %cond101 = select i1 %tobool100, i32 116, i32 84
  %conv102 = trunc i32 %cond101 to i8
  %arrayidx103 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 9
  store i8 %conv102, i8* %arrayidx103, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %if.end95
  %arrayidx105 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 10
  store i8 0, i8* %arrayidx105, align 1
  %34 = load i8*, i8** %outbuf.addr, align 4
  %arraydecay106 = getelementptr inbounds [11 x i8], [11 x i8]* %pm, i32 0, i32 0
  %call107 = call i8* @strcat(i8* %34, i8* %arraydecay106)
  %35 = load i32, i32* %flags.addr, align 4
  %and108 = and i32 %35, 8
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end104
  %36 = load i8*, i8** %outbuf.addr, align 4
  %call111 = call i8* @strcat(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end104
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end7
  ret void
}

; Function Attrs: noinline nounwind
define internal void @statuidprint(i32 %uid, i8* %outbuf, i32 %flags) #0 {
entry:
  %uid.addr = alloca i32, align 4
  %outbuf.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %pwd = alloca %struct.passwd*, align 4
  %optr = alloca i8*, align 4
  store i32 %uid, i32* %uid.addr, align 4
  store i8* %outbuf, i8** %outbuf.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %outbuf.addr, align 4
  %2 = load i32, i32* %uid.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %3, 4
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %outbuf.addr, align 4
  %call4 = call i8* @strcat(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %5 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %5, 4
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.end5
  %6 = load i32, i32* %uid.addr, align 4
  %call9 = call %struct.passwd* @getpwuid(i32 %6)
  store %struct.passwd* %call9, %struct.passwd** %pwd, align 4
  %7 = load %struct.passwd*, %struct.passwd** %pwd, align 4
  %tobool10 = icmp ne %struct.passwd* %7, null
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %8 = load i8*, i8** %outbuf.addr, align 4
  %9 = load %struct.passwd*, %struct.passwd** %pwd, align 4
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 0
  %10 = load i8*, i8** %pw_name, align 4
  %call12 = call i8* @strcat(i8* %8, i8* %10)
  br label %if.end15

if.else:                                          ; preds = %if.then8
  %11 = load i8*, i8** %outbuf.addr, align 4
  store i8* %11, i8** %optr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i8*, i8** %optr, align 4
  %13 = load i8, i8* %12, align 1
  %tobool13 = icmp ne i8 %13, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i8*, i8** %optr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %optr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8*, i8** %optr, align 4
  %16 = load i32, i32* %uid.addr, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 %16)
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.then11
  %17 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %17, 8
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %18 = load i8*, i8** %outbuf.addr, align 4
  %call19 = call i8* @strcat(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end5
  ret void
}

; Function Attrs: noinline nounwind
define internal void @statgidprint(i32 %gid, i8* %outbuf, i32 %flags) #0 {
entry:
  %gid.addr = alloca i32, align 4
  %outbuf.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %gr = alloca %struct.group*, align 4
  %optr = alloca i8*, align 4
  store i32 %gid, i32* %gid.addr, align 4
  store i8* %outbuf, i8** %outbuf.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %outbuf.addr, align 4
  %2 = load i32, i32* %gid.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %3, 4
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %outbuf.addr, align 4
  %call4 = call i8* @strcat(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %5 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %5, 4
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.end5
  %6 = load i32, i32* %gid.addr, align 4
  %call9 = call %struct.group* @getgrgid(i32 %6)
  store %struct.group* %call9, %struct.group** %gr, align 4
  %7 = load %struct.group*, %struct.group** %gr, align 4
  %tobool10 = icmp ne %struct.group* %7, null
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %8 = load i8*, i8** %outbuf.addr, align 4
  %9 = load %struct.group*, %struct.group** %gr, align 4
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %9, i32 0, i32 0
  %10 = load i8*, i8** %gr_name, align 4
  %call12 = call i8* @strcat(i8* %8, i8* %10)
  br label %if.end15

if.else:                                          ; preds = %if.then8
  %11 = load i8*, i8** %outbuf.addr, align 4
  store i8* %11, i8** %optr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i8*, i8** %optr, align 4
  %13 = load i8, i8* %12, align 1
  %tobool13 = icmp ne i8 %13, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i8*, i8** %optr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %optr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8*, i8** %optr, align 4
  %16 = load i32, i32* %gid.addr, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 %16)
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.then11
  %17 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %17, 8
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %18 = load i8*, i8** %outbuf.addr, align 4
  %call19 = call i8* @strcat(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end5
  ret void
}

; Function Attrs: noinline nounwind
define internal void @stattimeprint(i32 %tim, i8* %outbuf, i32 %flags) #0 {
entry:
  %tim.addr = alloca i32, align 4
  %outbuf.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %oend = alloca i8*, align 4
  %len = alloca i32, align 4
  store i32 %tim, i32* %tim.addr, align 4
  store i8* %outbuf, i8** %outbuf.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %outbuf.addr, align 4
  %2 = load i32, i32* %tim.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %3, 4
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %outbuf.addr, align 4
  %call4 = call i8* @strcat(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %5 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %5, 4
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end23

if.then8:                                         ; preds = %if.end5
  %6 = load i8*, i8** %outbuf.addr, align 4
  %7 = load i8*, i8** %outbuf.addr, align 4
  %call9 = call i32 @strlen(i8* %7)
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 %call9
  store i8* %add.ptr, i8** %oend, align 4
  %8 = load i8*, i8** %oend, align 4
  %9 = load i8*, i8** @timefmt, align 4
  %10 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %10, 64
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  %call12 = call %struct.tm* @gmtime(i32* %tim.addr)
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  %call13 = call %struct.tm* @localtime(i32* %tim.addr)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tm* [ %call12, %cond.true ], [ %call13, %cond.false ]
  %call14 = call i32 @ztrftime(i8* %8, i32 40, i8* %9, %struct.tm* %cond, i32 0)
  store i32 %call14, i32* %len, align 4
  %11 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then15, label %if.end17

if.then15:                                        ; preds = %cond.end
  %12 = load i8*, i8** %oend, align 4
  %13 = load i32, i32* %len, align 4
  %call16 = call i8* @metafy(i8* %12, i32 %13, i32 5)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %cond.end
  %14 = load i32, i32* %flags.addr, align 4
  %and18 = and i32 %14, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %15 = load i8*, i8** %oend, align 4
  %call21 = call i8* @strcat(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end5
  ret void
}

; Function Attrs: noinline nounwind
define internal void @statlinkprint(%struct.stat* %sbuf, i8* %outbuf, i8* %fname) #0 {
entry:
  %sbuf.addr = alloca %struct.stat*, align 4
  %outbuf.addr = alloca i8*, align 4
  %fname.addr = alloca i8*, align 4
  %num = alloca i32, align 4
  store %struct.stat* %sbuf, %struct.stat** %sbuf.addr, align 4
  store i8* %outbuf, i8** %outbuf.addr, align 4
  store i8* %fname, i8** %fname.addr, align 4
  %0 = load i8*, i8** %fname.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 6
  %2 = load i32, i32* %st_mode, align 8
  %and = and i32 %2, 61440
  %cmp = icmp eq i32 %and, 40960
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i8*, i8** %fname.addr, align 4
  %4 = load i8*, i8** %outbuf.addr, align 4
  %call = call i32 @readlink(i8* %3, i8* %4, i32 4096)
  store i32 %call, i32* %num, align 4
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %5 = load i8*, i8** %outbuf.addr, align 4
  %6 = load i32, i32* %num, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 %6
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

declare i8* @strcat(i8*, i8*) #1

declare %struct.passwd* @getpwuid(i32) #1

declare %struct.group* @getgrgid(i32) #1

declare i32 @ztrftime(i8*, i32, i8*, %struct.tm*, i32) #1

declare %struct.tm* @gmtime(i32*) #1

declare %struct.tm* @localtime(i32*) #1

declare i32 @readlink(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
