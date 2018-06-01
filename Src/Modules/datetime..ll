; ModuleID = 'datetime.c'
source_filename = "datetime.c"
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
%struct.gsu_integer = type { i32 (%struct.param*)*, void (%struct.param*, i32)*, void (%struct.param*, i32)* }
%struct.gsu_float = type { double (%struct.param*)*, void (%struct.param*, double)*, void (%struct.param*, i32)* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.timespec = type { i32, i32 }

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0), i32 1, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* getelementptr inbounds ([3 x %struct.paramdef], [3 x %struct.paramdef]* @patab, i32 0, i32 0), i32 3, i32 0 }, align 4
@bintab = internal global [1 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_strftime, i32 2, i32 2, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null }], align 4
@patab = internal global [3 x %struct.paramdef] [%struct.paramdef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 4244482, i8* null, i8* bitcast (%struct.gsu_integer* @epochseconds_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 4244488, i8* null, i8* bitcast (%struct.gsu_float* @epochrealtime_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @epochtime_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }], align 4
@.str = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"qrs:\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@locallevel = external global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"not an identifier: %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %e\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: invalid decimal number\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: unable to convert to time\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"bad/unsupported format: '%s'\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"format not matched\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"warning: input string not completely matched\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"EPOCHSECONDS\00", align 1
@epochseconds_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @getcurrentsecs, void (%struct.param*, i32)* null, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"EPOCHREALTIME\00", align 1
@epochrealtime_gsu = internal constant %struct.gsu_float { double (%struct.param*)* @getcurrentrealtime, void (%struct.param*, double)* null, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"epochtime\00", align 1
@epochtime_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @getcurrenttime, void (%struct.param*, i8**)* null, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"%s: unable to retrieve time: %e\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

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
define internal i32 @bin_strftime(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %tz = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 1, i32* %result, align 4
  %call = call i8* @getsparam(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call, i8** %tz, align 4
  call void @startparamscope()
  %0 = load i8*, i8** %tz, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %tz, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call2 = call %struct.param* @createparam(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 2101248)
  store %struct.param* %call2, %struct.param** %pm, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %tobool3 = icmp ne %struct.param* %3, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %4 = load i32, i32* @locallevel, align 4
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 8
  store i32 %4, i32* %level, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %6 = load i8*, i8** %tz, align 4
  %call5 = call i8* @ztrdup(i8* %6)
  %call6 = call %struct.param* @setsparam(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %call5)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  %7 = load i8*, i8** %nam.addr, align 4
  %8 = load i8**, i8*** %argv.addr, align 4
  %9 = load %struct.options*, %struct.options** %ops.addr, align 4
  %10 = load i32, i32* %func.addr, align 4
  %call8 = call i32 @output_strftime(i8* %7, i8** %8, %struct.options* %9, i32 %10)
  store i32 %call8, i32* %result, align 4
  call void @endparamscope()
  %11 = load i32, i32* %result, align 4
  ret i32 %11
}

declare i8* @getsparam(i8*) #1

declare void @startparamscope() #1

declare %struct.param* @createparam(i8*, i32) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i8* @ztrdup(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @output_strftime(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %x = alloca i32, align 4
  %len = alloca i32, align 4
  %endptr = alloca i8*, align 4
  %scalar = alloca i8*, align 4
  %buffer = alloca i8*, align 4
  %secs = alloca i32, align 4
  %t = alloca %struct.tm*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i8* null, i8** %endptr, align 4
  store i8* null, i8** %scalar, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 115
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 1
  %3 = load i8**, i8*** %args, align 4
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 115
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shr = ashr i32 %conv4, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx5 = getelementptr inbounds i8*, i8** %3, i32 %sub
  %6 = load i8*, i8** %arrayidx5, align 4
  store i8* %6, i8** %scalar, align 4
  %7 = load i8*, i8** %scalar, align 4
  %call = call i32 @isident(i8* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %nam.addr, align 4
  %9 = load i8*, i8** %scalar, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %9)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %10 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind8 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [128 x i8], [128 x i8]* %ind8, i32 0, i32 114
  %11 = load i8, i8* %arrayidx9, align 2
  %conv10 = zext i8 %11 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end7
  %12 = load i8*, i8** %nam.addr, align 4
  %13 = load i8**, i8*** %argv.addr, align 4
  %14 = load i8*, i8** %scalar, align 4
  %15 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind14 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [128 x i8], [128 x i8]* %ind14, i32 0, i32 113
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @reverse_strftime(i8* %12, i8** %13, i8* %14, i32 %conv18)
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end7
  %call21 = call i32* @__errno_location()
  store i32 0, i32* %call21, align 4
  %17 = load i8**, i8*** %argv.addr, align 4
  %arrayidx22 = getelementptr inbounds i8*, i8** %17, i32 1
  %18 = load i8*, i8** %arrayidx22, align 4
  %call23 = call i32 @strtoul(i8* %18, i8** %endptr, i32 10)
  store i32 %call23, i32* %secs, align 4
  %call24 = call i32* @__errno_location()
  %19 = load i32, i32* %call24, align 4
  %cmp25 = icmp ne i32 %19, 0
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end20
  %20 = load i8*, i8** %nam.addr, align 4
  %21 = load i8**, i8*** %argv.addr, align 4
  %arrayidx28 = getelementptr inbounds i8*, i8** %21, i32 1
  %22 = load i8*, i8** %arrayidx28, align 4
  %call29 = call i32* @__errno_location()
  %23 = load i32, i32* %call29, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %22, i32 %23)
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end20
  %24 = load i8*, i8** %endptr, align 4
  %25 = load i8, i8* %24, align 1
  %conv30 = sext i8 %25 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else
  %26 = load i8*, i8** %nam.addr, align 4
  %27 = load i8**, i8*** %argv.addr, align 4
  %arrayidx34 = getelementptr inbounds i8*, i8** %27, i32 1
  %28 = load i8*, i8** %arrayidx34, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* %28)
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  %call37 = call %struct.tm* @localtime(i32* %secs)
  store %struct.tm* %call37, %struct.tm** %t, align 4
  %29 = load %struct.tm*, %struct.tm** %t, align 4
  %tobool38 = icmp ne %struct.tm* %29, null
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  %30 = load i8*, i8** %nam.addr, align 4
  %31 = load i8**, i8*** %argv.addr, align 4
  %arrayidx40 = getelementptr inbounds i8*, i8** %31, i32 1
  %32 = load i8*, i8** %arrayidx40, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* %32)
  store i32 1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end36
  %33 = load i8**, i8*** %argv.addr, align 4
  %arrayidx42 = getelementptr inbounds i8*, i8** %33, i32 0
  %34 = load i8*, i8** %arrayidx42, align 4
  %call43 = call i32 @strlen(i8* %34)
  %mul = mul i32 %call43, 8
  store i32 %mul, i32* %bufsize, align 4
  %35 = load i32, i32* %bufsize, align 4
  %call44 = call i8* @zalloc(i32 %35)
  store i8* %call44, i8** %buffer, align 4
  store i32 0, i32* %len, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end41
  %36 = load i32, i32* %x, align 4
  %cmp45 = icmp slt i32 %36, 4
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i8*, i8** %buffer, align 4
  %38 = load i32, i32* %bufsize, align 4
  %39 = load i8**, i8*** %argv.addr, align 4
  %arrayidx47 = getelementptr inbounds i8*, i8** %39, i32 0
  %40 = load i8*, i8** %arrayidx47, align 4
  %41 = load %struct.tm*, %struct.tm** %t, align 4
  %call48 = call i32 @ztrftime(i8* %37, i32 %38, i8* %40, %struct.tm* %41, i32 0)
  store i32 %call48, i32* %len, align 4
  %cmp49 = icmp sge i32 %call48, 0
  br i1 %cmp49, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %42 = load i32, i32* %x, align 4
  %cmp51 = icmp eq i32 %42, 3
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end54:                                         ; preds = %lor.lhs.false
  %43 = load i8*, i8** %buffer, align 4
  %44 = load i32, i32* %bufsize, align 4
  %mul55 = mul nsw i32 %44, 2
  store i32 %mul55, i32* %bufsize, align 4
  %call56 = call i8* @zrealloc(i8* %43, i32 %mul55)
  store i8* %call56, i8** %buffer, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %45 = load i32, i32* %x, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then53, %for.cond
  %46 = load i32, i32* %len, align 4
  %cmp57 = icmp slt i32 %46, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %for.end
  %47 = load i8*, i8** %nam.addr, align 4
  %48 = load i8**, i8*** %argv.addr, align 4
  %arrayidx60 = getelementptr inbounds i8*, i8** %48, i32 0
  %49 = load i8*, i8** %arrayidx60, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %49)
  %50 = load i8*, i8** %buffer, align 4
  %51 = load i32, i32* %bufsize, align 4
  call void @zfree(i8* %50, i32 %51)
  store i32 1, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %for.end
  %52 = load i8*, i8** %scalar, align 4
  %tobool62 = icmp ne i8* %52, null
  br i1 %tobool62, label %if.then63, label %if.else66

if.then63:                                        ; preds = %if.end61
  %53 = load i8*, i8** %scalar, align 4
  %54 = load i8*, i8** %buffer, align 4
  %55 = load i32, i32* %len, align 4
  %call64 = call i8* @metafy(i8* %54, i32 %55, i32 3)
  %call65 = call %struct.param* @setsparam(i8* %53, i8* %call64)
  br label %if.end69

if.else66:                                        ; preds = %if.end61
  %56 = load i8*, i8** %buffer, align 4
  %57 = load i32, i32* %len, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call67 = call i32 @fwrite(i8* %56, i32 1, i32 %57, %struct._IO_FILE* %58)
  %call68 = call i32 @putchar(i32 10)
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %if.then63
  %59 = load i8*, i8** %buffer, align 4
  %60 = load i32, i32* %bufsize, align 4
  call void @zfree(i8* %59, i32 %60)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then59, %if.then39, %if.then33, %if.then27, %if.then13, %if.then6
  %61 = load i32, i32* %retval, align 4
  ret i32 %61
}

declare void @endparamscope() #1

declare i32 @isident(i8*) #1

declare void @zwarnnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @reverse_strftime(i8* %nam, i8** %argv, i8* %scalar, i32 %quiet) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %scalar.addr = alloca i8*, align 4
  %quiet.addr = alloca i32, align 4
  %tm = alloca %struct.tm, align 4
  %mytime = alloca i32, align 4
  %endp = alloca i8*, align 4
  %buf = alloca [12 x i8], align 1
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i8* %scalar, i8** %scalar.addr, align 4
  store i32 %quiet, i32* %quiet.addr, align 4
  %0 = bitcast %struct.tm* %tm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 44, i32 4, i1 false)
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 8
  store i32 -1, i32* %tm_isdst, align 4
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 3
  store i32 1, i32* %tm_mday, align 4
  %1 = load i8**, i8*** %argv.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %1, i32 1
  %2 = load i8*, i8** %arrayidx, align 4
  %3 = load i8**, i8*** %argv.addr, align 4
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i32 0
  %4 = load i8*, i8** %arrayidx1, align 4
  %call = call i8* @strptime(i8* %2, i8* %4, %struct.tm* %tm)
  store i8* %call, i8** %endp, align 4
  %5 = load i8*, i8** %endp, align 4
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %quiet.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %7 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %call5 = call i32 @mktime(%struct.tm* %tm)
  store i32 %call5, i32* %mytime, align 4
  %8 = load i8*, i8** %scalar.addr, align 4
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %9 = load i8*, i8** %scalar.addr, align 4
  %10 = load i32, i32* %mytime, align 4
  %call8 = call %struct.param* @setiparam(i8* %9, i32 %10)
  br label %if.end11

if.else:                                          ; preds = %if.end4
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %11 = load i32, i32* %mytime, align 4
  call void @convbase(i8* %arraydecay, i32 %11, i32 10)
  %arraydecay9 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay9)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %12 = load i8*, i8** %endp, align 4
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %tobool12 = icmp ne i32 %conv, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end11
  %14 = load i32, i32* %quiet.addr, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %15 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end11
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.end
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare i32* @__errno_location() #1

declare i32 @strtoul(i8*, i8**, i32) #1

declare %struct.tm* @localtime(i32*) #1

declare i32 @strlen(i8*) #1

declare i8* @zalloc(i32) #1

declare i32 @ztrftime(i8*, i32, i8*, %struct.tm*, i32) #1

declare i8* @zrealloc(i8*, i32) #1

declare void @zfree(i8*, i32) #1

declare i8* @metafy(i8*, i32, i32) #1

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

declare i32 @putchar(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i8* @strptime(i8*, i8*, %struct.tm*) #1

declare i32 @mktime(%struct.tm*) #1

declare %struct.param* @setiparam(i8*, i32) #1

declare void @convbase(i8*, i32, i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @getcurrentsecs(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @time(i32* null)
  ret i32 %call
}

declare void @stdunsetfn(%struct.param*, i32) #1

declare i32 @time(i32*) #1

; Function Attrs: noinline nounwind
define internal double @getcurrentrealtime(%struct.param* %pm) #0 {
entry:
  %retval = alloca double, align 8
  %pm.addr = alloca %struct.param*, align 4
  %now = alloca %struct.timespec, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @clock_gettime(i32 0, %struct.timespec* %now)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %call1 = call i32* @__errno_location()
  %2 = load i32, i32* %call1, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* %1, i32 %2)
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %now, i32 0, i32 0
  %3 = load i32, i32* %tv_sec, align 4
  %conv = sitofp i32 %3 to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %now, i32 0, i32 1
  %4 = load i32, i32* %tv_nsec, align 4
  %conv2 = sitofp i32 %4 to double
  %mul = fmul double %conv2, 1.000000e-09
  %add = fadd double %conv, %mul
  store double %add, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load double, double* %retval, align 8
  ret double %5
}

declare i32 @clock_gettime(i32, %struct.timespec*) #1

declare void @zwarn(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i8** @getcurrenttime(%struct.param* %pm) #0 {
entry:
  %retval = alloca i8**, align 4
  %pm.addr = alloca %struct.param*, align 4
  %arr = alloca i8**, align 4
  %buf = alloca [12 x i8], align 1
  %now = alloca %struct.timespec, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i32 @clock_gettime(i32 0, %struct.timespec* %now)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %call1 = call i32* @__errno_location()
  %2 = load i32, i32* %call1, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* %1, i32 %2)
  store i8** null, i8*** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @zhalloc(i32 12)
  %3 = bitcast i8* %call2 to i8**
  store i8** %3, i8*** %arr, align 4
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %now, i32 0, i32 0
  %4 = load i32, i32* %tv_sec, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 %4)
  %arraydecay4 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call5 = call i8* @dupstring(i8* %arraydecay4)
  %5 = load i8**, i8*** %arr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %5, i32 0
  store i8* %call5, i8** %arrayidx, align 4
  %arraydecay6 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %now, i32 0, i32 1
  %6 = load i32, i32* %tv_nsec, align 4
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 %6)
  %arraydecay8 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call9 = call i8* @dupstring(i8* %arraydecay8)
  %7 = load i8**, i8*** %arr, align 4
  %arrayidx10 = getelementptr inbounds i8*, i8** %7, i32 1
  store i8* %call9, i8** %arrayidx10, align 4
  %8 = load i8**, i8*** %arr, align 4
  %arrayidx11 = getelementptr inbounds i8*, i8** %8, i32 2
  store i8* null, i8** %arrayidx11, align 4
  %9 = load i8**, i8*** %arr, align 4
  store i8** %9, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8**, i8*** %retval, align 4
  ret i8** %10
}

declare i8* @zhalloc(i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @dupstring(i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
