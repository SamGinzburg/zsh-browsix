; ModuleID = 'langinfo.c'
source_filename = "langinfo.c"
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

@module_features = internal global %struct.features { %struct.builtin* null, i32 0, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* getelementptr inbounds ([1 x %struct.paramdef], [1 x %struct.paramdef]* @partab, i32 0, i32 0), i32 1, i32 0 }, align 4
@partab = internal global [1 x %struct.paramdef] [%struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4243456, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getlanginfo, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanlanginfo, %struct.param* null }], align 4
@.str = private unnamed_addr constant [9 x i8] c"langinfo\00", align 1
@nullsetscalar_gsu = external constant %struct.gsu_scalar, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nl_vals = internal global [56 x i32] [i32 14, i32 131112, i32 131113, i32 131114, i32 65536, i32 65537, i32 327680, i32 327681, i32 262159, i32 131072, i32 131073, i32 131074, i32 131075, i32 131076, i32 131077, i32 131078, i32 131079, i32 131080, i32 131081, i32 131082, i32 131083, i32 131084, i32 131085, i32 131086, i32 131087, i32 131088, i32 131089, i32 131090, i32 131091, i32 131092, i32 131093, i32 131094, i32 131095, i32 131096, i32 131097, i32 131098, i32 131099, i32 131100, i32 131101, i32 131102, i32 131103, i32 131104, i32 131105, i32 131106, i32 131107, i32 131108, i32 131109, i32 131115, i32 131110, i32 131111, i32 131116, i32 131118, i32 131120, i32 131121, i32 131119, i32 0], align 4
@nl_names = internal global [56 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i8* null], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CODESET\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"D_T_FMT\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"D_FMT\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"T_FMT\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"RADIXCHAR\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"THOUSEP\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"YESEXPR\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"NOEXPR\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"CRNCYSTR\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ABDAY_1\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ABDAY_2\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ABDAY_3\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ABDAY_4\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ABDAY_5\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"ABDAY_6\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ABDAY_7\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"DAY_1\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"DAY_2\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"DAY_3\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"DAY_4\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"DAY_5\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"DAY_6\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"DAY_7\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ABMON_1\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"ABMON_2\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ABMON_3\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"ABMON_4\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"ABMON_5\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"ABMON_6\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"ABMON_7\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"ABMON_8\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"ABMON_9\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"ABMON_10\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"ABMON_11\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"ABMON_12\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"MON_1\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"MON_2\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"MON_3\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"MON_4\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"MON_5\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"MON_6\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"MON_7\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"MON_8\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"MON_9\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"MON_10\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"MON_11\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"MON_12\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"T_FMT_AMPM\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"AM_STR\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"PM_STR\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"ERA\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"ERA_D_FMT\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"ERA_D_T_FMT\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"ERA_T_FMT\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"ALT_DIGITS\00", align 1

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
define internal %struct.hashnode* @getlanginfo(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %len = alloca i32, align 4
  %elem = alloca i32*, align 4
  %listr = alloca i8*, align 4
  %nameu = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %nameu, align 4
  %1 = load i8*, i8** %nameu, align 4
  %call1 = call i8* @unmetafy(i8* %1, i32* %len)
  %call2 = call i8* @hcalloc(i32 56)
  %2 = bitcast i8* %call2 to %struct.param*
  store %struct.param* %2, %struct.param** %pm, align 4
  %3 = load i8*, i8** %nameu, align 4
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %3, i8** %nam, align 4
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %node3 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %6 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %7 = load i8*, i8** %name.addr, align 4
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call i32* @liitem(i8* %8)
  store i32* %call4, i32** %elem, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32* null, i32** %elem, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32*, i32** %elem, align 4
  %tobool5 = icmp ne i32* %9, null
  br i1 %tobool5, label %land.lhs.true, label %if.else10

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32*, i32** %elem, align 4
  %11 = load i32, i32* %10, align 4
  %call6 = call i8* @nl_langinfo(i32 %11)
  store i8* %call6, i8** %listr, align 4
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %land.lhs.true
  %12 = load i8*, i8** %listr, align 4
  %call9 = call i8* @dupstring(i8* %12)
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call9, i8** %str, align 8
  br label %if.end16

if.else10:                                        ; preds = %land.lhs.true, %if.end
  %call11 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %14 = load %struct.param*, %struct.param** %pm, align 4
  %u12 = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 1
  %str13 = bitcast %union.anon.1* %u12 to i8**
  store i8* %call11, i8** %str13, align 8
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags15 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 2
  %16 = load i32, i32* %flags15, align 8
  %or = or i32 %16, 33554432
  store i32 %or, i32* %flags15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else10, %if.then8
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %node17 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  ret %struct.hashnode* %node17
}

; Function Attrs: noinline nounwind
define internal void @scanlanginfo(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %element = alloca i8**, align 4
  %langstr = alloca i8*, align 4
  %nlcode = alloca i32*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  store i32* getelementptr inbounds ([56 x i32], [56 x i32]* @nl_vals, i32 0, i32 0), i32** %nlcode, align 4
  store i8** getelementptr inbounds ([56 x i8*], [56 x i8*]* @nl_names, i32 0, i32 0), i8*** %element, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8**, i8*** %element, align 4
  %4 = load i8*, i8** %3, align 4
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %nlcode, align 4
  %6 = load i32, i32* %5, align 4
  %call2 = call i8* @nl_langinfo(i32 %6)
  store i8* %call2, i8** %langstr, align 4
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %langstr, align 4
  %call3 = call i8* @dupstring(i8* %7)
  %8 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call3, i8** %str, align 8
  %9 = load i8**, i8*** %element, align 4
  %10 = load i8*, i8** %9, align 4
  %call4 = call i8* @dupstring(i8* %10)
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  store i8* %call4, i8** %nam, align 4
  %12 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %node6 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %14 = load i32, i32* %flags.addr, align 4
  call void %12(%struct.hashnode* %node6, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i8**, i8*** %element, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %element, align 4
  %16 = load i32*, i32** %nlcode, align 4
  %incdec.ptr7 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr7, i32** %nlcode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @dupstring(i8*) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i8* @hcalloc(i32) #1

; Function Attrs: noinline nounwind
define internal i32* @liitem(i8* %name) #0 {
entry:
  %retval = alloca i32*, align 4
  %name.addr = alloca i8*, align 4
  %element = alloca i8**, align 4
  %nlcode = alloca i32*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32* getelementptr inbounds ([56 x i32], [56 x i32]* @nl_vals, i32 0, i32 0), i32** %nlcode, align 4
  store i8** getelementptr inbounds ([56 x i8*], [56 x i8*]* @nl_names, i32 0, i32 0), i8*** %element, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %element, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %element, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = load i8*, i8** %name.addr, align 4
  %call = call i32 @strcmp(i8* %3, i8* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32*, i32** %nlcode, align 4
  store i32* %5, i32** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8**, i8*** %element, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %element, align 4
  %7 = load i32*, i32** %nlcode, align 4
  %incdec.ptr2 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr2, i32** %nlcode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32* null, i32** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32*, i32** %retval, align 4
  ret i32* %8
}

declare i8* @nl_langinfo(i32) #1

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
