; ModuleID = 'mathfunc.c'
source_filename = "mathfunc.c"
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

@module_features = internal global %struct.features { %struct.builtin* null, i32 0, %struct.conddef* null, i32 0, %struct.mathfunc* getelementptr inbounds ([46 x %struct.mathfunc], [46 x %struct.mathfunc]* @mftab, i32 0, i32 0), i32 46, %struct.paramdef* null, i32 0, i32 0 }, align 4
@mftab = internal global [46 x %struct.mathfunc] [%struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 2304 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 1 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 2 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 3 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 4 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 2, i32 5 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 6 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 7 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 8 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 9 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 10 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 11 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 12 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 13 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 14 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 15 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 16 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 17 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 18 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 19 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 20 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 21 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 2070 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 2071 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 24 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 25 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 538 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 1051 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 28 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 29 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 30 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 31 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 32 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 33 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 1, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* null, void (%struct.mnumber*, i8*, i8*, i32)* @math_string, i8* null, i32 0, i32 0, i32 0 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 34 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 1059 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 0, i32 0, i32 2084 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 37 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 38 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 39 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 40 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 41 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 42 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 1, i32 43 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_func, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 2, i32 2, i32 556 }], align 4
@.str = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"acosh\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"asinh\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"atanh\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cbrt\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"copysign\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"erf\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"erfc\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"expm1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"fabs\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ilogb\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"j0\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"j1\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"jn\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"lgamma\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"log1p\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"logb\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"nextafter\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"rand48\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"rint\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"scalb\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"signgam\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"y0\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"yn\00", align 1
@errflag = external global i32, align 4
@signgam = external global i32, align 4
@zero_mnumber = external global %struct.mnumber, align 8
@typtab = external global [256 x i16], align 2
@math_string.seedbuf = internal global [3 x i16] zeroinitializer, align 2
@math_string.seedbuf_init = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [13 x i8] c"%04x%04x%04x\00", align 1

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
define internal void @math_func(%struct.mnumber* noalias sret %agg.result, i8* %name, i32 %argc, %struct.mnumber* %argv, i32 %id) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca %struct.mnumber*, align 4
  %id.addr = alloca i32, align 4
  %ret = alloca %struct.mnumber, align 8
  %argd = alloca double, align 8
  %argd2 = alloca double, align 8
  %retd = alloca double, align 8
  %argi = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store %struct.mnumber* %argv, %struct.mnumber** %argv.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  store double 0.000000e+00, double* %argd, align 8
  store double 0.000000e+00, double* %argd2, align 8
  store double 0.000000e+00, double* %retd, align 8
  store i32 0, i32* %argi, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %id.addr, align 4
  %and = and i32 %1, 256
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end56, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %id.addr, align 4
  %and2 = and i32 %2, 512
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %3 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %3, i32 0, i32 1
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  %5 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %5, i32 0, i32 0
  %d = bitcast %union.anon.0* %u to double*
  %6 = load double, double* %d, align 8
  %conv = fptosi double %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  %7 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u5 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %7, i32 0, i32 0
  %l = bitcast %union.anon.0* %u5 to i32*
  %8 = load i32, i32* %l, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %argi, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %type6 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %9, i32 0, i32 1
  %10 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %10, 1
  br i1 %cmp7, label %cond.true9, label %cond.false13

cond.true9:                                       ; preds = %if.else
  %11 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u10 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %11, i32 0, i32 0
  %l11 = bitcast %union.anon.0* %u10 to i32*
  %12 = load i32, i32* %l11, align 8
  %conv12 = sitofp i32 %12 to double
  br label %cond.end16

cond.false13:                                     ; preds = %if.else
  %13 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u14 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %13, i32 0, i32 0
  %d15 = bitcast %union.anon.0* %u14 to double*
  %14 = load double, double* %d15, align 8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false13, %cond.true9
  %cond17 = phi double [ %conv12, %cond.true9 ], [ %14, %cond.false13 ]
  store double %cond17, double* %argd, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end16, %cond.end
  %15 = load i32, i32* %argc.addr, align 4
  %cmp18 = icmp sgt i32 %15, 1
  br i1 %cmp18, label %if.then20, label %if.end55

if.then20:                                        ; preds = %if.end
  %16 = load i32, i32* %id.addr, align 4
  %and21 = and i32 %16, 1024
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else38

if.then23:                                        ; preds = %if.then20
  %17 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %arrayidx = getelementptr inbounds %struct.mnumber, %struct.mnumber* %17, i32 1
  %type24 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %arrayidx, i32 0, i32 1
  %18 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %18, 2
  br i1 %cmp25, label %cond.true27, label %cond.false32

cond.true27:                                      ; preds = %if.then23
  %19 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %arrayidx28 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %19, i32 1
  %u29 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %arrayidx28, i32 0, i32 0
  %d30 = bitcast %union.anon.0* %u29 to double*
  %20 = load double, double* %d30, align 8
  %conv31 = fptosi double %20 to i32
  br label %cond.end36

cond.false32:                                     ; preds = %if.then23
  %21 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %arrayidx33 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %21, i32 1
  %u34 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %arrayidx33, i32 0, i32 0
  %l35 = bitcast %union.anon.0* %u34 to i32*
  %22 = load i32, i32* %l35, align 8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %cond.true27
  %cond37 = phi i32 [ %conv31, %cond.true27 ], [ %22, %cond.false32 ]
  store i32 %cond37, i32* %argi, align 4
  br label %if.end54

if.else38:                                        ; preds = %if.then20
  %23 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %arrayidx39 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %23, i32 1
  %type40 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %arrayidx39, i32 0, i32 1
  %24 = load i32, i32* %type40, align 8
  %cmp41 = icmp eq i32 %24, 1
  br i1 %cmp41, label %cond.true43, label %cond.false48

cond.true43:                                      ; preds = %if.else38
  %25 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %arrayidx44 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %25, i32 1
  %u45 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %arrayidx44, i32 0, i32 0
  %l46 = bitcast %union.anon.0* %u45 to i32*
  %26 = load i32, i32* %l46, align 8
  %conv47 = sitofp i32 %26 to double
  br label %cond.end52

cond.false48:                                     ; preds = %if.else38
  %27 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %arrayidx49 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %27, i32 1
  %u50 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %arrayidx49, i32 0, i32 0
  %d51 = bitcast %union.anon.0* %u50 to double*
  %28 = load double, double* %d51, align 8
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false48, %cond.true43
  %cond53 = phi double [ %conv47, %cond.true43 ], [ %28, %cond.false48 ]
  store double %cond53, double* %argd2, align 8
  br label %if.end54

if.end54:                                         ; preds = %cond.end52, %cond.end36
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %land.lhs.true, %entry
  %type57 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 2, i32* %type57, align 8
  %u58 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %d59 = bitcast %union.anon.0* %u58 to double*
  store double 0.000000e+00, double* %d59, align 8
  %29 = load i32, i32* @errflag, align 4
  %tobool60 = icmp ne i32 %29, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end56
  %30 = bitcast %struct.mnumber* %agg.result to i8*
  %31 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 16, i32 8, i1 false)
  br label %return

if.end62:                                         ; preds = %if.end56
  %32 = load i32, i32* %id.addr, align 4
  %and63 = and i32 %32, 255
  switch i32 %and63, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb90
    i32 2, label %sw.bb92
    i32 3, label %sw.bb94
    i32 4, label %sw.bb96
    i32 5, label %sw.bb98
    i32 6, label %sw.bb106
    i32 7, label %sw.bb108
    i32 8, label %sw.bb110
    i32 9, label %sw.bb112
    i32 10, label %sw.bb114
    i32 11, label %sw.bb116
    i32 12, label %sw.bb118
    i32 13, label %sw.bb120
    i32 14, label %sw.bb122
    i32 15, label %sw.bb124
    i32 16, label %sw.bb126
    i32 17, label %sw.bb128
    i32 18, label %sw.bb129
    i32 19, label %sw.bb131
    i32 20, label %sw.bb133
    i32 21, label %sw.bb135
    i32 22, label %sw.bb137
    i32 23, label %sw.bb142
    i32 24, label %sw.bb147
    i32 25, label %sw.bb149
    i32 26, label %sw.bb151
    i32 27, label %sw.bb153
    i32 28, label %sw.bb155
    i32 29, label %sw.bb157
    i32 30, label %sw.bb159
    i32 31, label %sw.bb161
    i32 32, label %sw.bb163
    i32 33, label %sw.bb165
    i32 34, label %sw.bb167
    i32 35, label %sw.bb169
    i32 36, label %sw.bb171
    i32 37, label %sw.bb175
    i32 38, label %sw.bb177
    i32 39, label %sw.bb179
    i32 40, label %sw.bb181
    i32 41, label %sw.bb183
    i32 42, label %sw.bb185
    i32 43, label %sw.bb187
    i32 44, label %sw.bb189
  ]

sw.bb:                                            ; preds = %if.end62
  %33 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %type64 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %33, i32 0, i32 1
  %34 = load i32, i32* %type64, align 8
  %type65 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 %34, i32* %type65, align 8
  %35 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %type66 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %35, i32 0, i32 1
  %36 = load i32, i32* %type66, align 8
  %cmp67 = icmp eq i32 %36, 1
  br i1 %cmp67, label %if.then69, label %if.else84

if.then69:                                        ; preds = %sw.bb
  %37 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u70 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %37, i32 0, i32 0
  %l71 = bitcast %union.anon.0* %u70 to i32*
  %38 = load i32, i32* %l71, align 8
  %cmp72 = icmp slt i32 %38, 0
  br i1 %cmp72, label %cond.true74, label %cond.false77

cond.true74:                                      ; preds = %if.then69
  %39 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u75 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %39, i32 0, i32 0
  %l76 = bitcast %union.anon.0* %u75 to i32*
  %40 = load i32, i32* %l76, align 8
  %sub = sub nsw i32 0, %40
  br label %cond.end80

cond.false77:                                     ; preds = %if.then69
  %41 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u78 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %41, i32 0, i32 0
  %l79 = bitcast %union.anon.0* %u78 to i32*
  %42 = load i32, i32* %l79, align 8
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false77, %cond.true74
  %cond81 = phi i32 [ %sub, %cond.true74 ], [ %42, %cond.false77 ]
  %u82 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l83 = bitcast %union.anon.0* %u82 to i32*
  store i32 %cond81, i32* %l83, align 8
  br label %if.end89

if.else84:                                        ; preds = %sw.bb
  %43 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u85 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %43, i32 0, i32 0
  %d86 = bitcast %union.anon.0* %u85 to double*
  %44 = load double, double* %d86, align 8
  %call = call double @fabs(double %44) #5
  %u87 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %d88 = bitcast %union.anon.0* %u87 to double*
  store double %call, double* %d88, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.else84, %cond.end80
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end62
  %45 = load double, double* %argd, align 8
  %call91 = call double @acos(double %45) #5
  store double %call91, double* %retd, align 8
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end62
  %46 = load double, double* %argd, align 8
  %call93 = call double @acosh(double %46) #5
  store double %call93, double* %retd, align 8
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end62
  %47 = load double, double* %argd, align 8
  %call95 = call double @asin(double %47) #5
  store double %call95, double* %retd, align 8
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end62
  %48 = load double, double* %argd, align 8
  %call97 = call double @asinh(double %48) #5
  store double %call97, double* %retd, align 8
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end62
  %49 = load i32, i32* %argc.addr, align 4
  %cmp99 = icmp eq i32 %49, 2
  br i1 %cmp99, label %if.then101, label %if.else103

if.then101:                                       ; preds = %sw.bb98
  %50 = load double, double* %argd, align 8
  %51 = load double, double* %argd2, align 8
  %call102 = call double @atan2(double %50, double %51) #5
  store double %call102, double* %retd, align 8
  br label %if.end105

if.else103:                                       ; preds = %sw.bb98
  %52 = load double, double* %argd, align 8
  %call104 = call double @atan(double %52) #5
  store double %call104, double* %retd, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.else103, %if.then101
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end62
  %53 = load double, double* %argd, align 8
  %call107 = call double @atanh(double %53) #5
  store double %call107, double* %retd, align 8
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end62
  %54 = load double, double* %argd, align 8
  %call109 = call double @cbrt(double %54) #5
  store double %call109, double* %retd, align 8
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end62
  %55 = load double, double* %argd, align 8
  %call111 = call double @ceil(double %55) #5
  store double %call111, double* %retd, align 8
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end62
  %56 = load double, double* %argd, align 8
  %57 = load double, double* %argd2, align 8
  %call113 = call double @copysign(double %56, double %57) #5
  store double %call113, double* %retd, align 8
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.end62
  %58 = load double, double* %argd, align 8
  %call115 = call double @cos(double %58) #5
  store double %call115, double* %retd, align 8
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end62
  %59 = load double, double* %argd, align 8
  %call117 = call double @cosh(double %59) #5
  store double %call117, double* %retd, align 8
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end62
  %60 = load double, double* %argd, align 8
  %call119 = call double @erf(double %60) #5
  store double %call119, double* %retd, align 8
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end62
  %61 = load double, double* %argd, align 8
  %call121 = call double @erfc(double %61) #5
  store double %call121, double* %retd, align 8
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end62
  %62 = load double, double* %argd, align 8
  %call123 = call double @exp(double %62) #5
  store double %call123, double* %retd, align 8
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end62
  %63 = load double, double* %argd, align 8
  %call125 = call double @expm1(double %63) #5
  store double %call125, double* %retd, align 8
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end62
  %64 = load double, double* %argd, align 8
  %call127 = call double @fabs(double %64) #5
  store double %call127, double* %retd, align 8
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end62
  %65 = load double, double* %argd, align 8
  store double %65, double* %retd, align 8
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end62
  %66 = load double, double* %argd, align 8
  %call130 = call double @floor(double %66) #5
  store double %call130, double* %retd, align 8
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end62
  %67 = load double, double* %argd, align 8
  %68 = load double, double* %argd2, align 8
  %call132 = call double @fmod(double %67, double %68) #5
  store double %call132, double* %retd, align 8
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end62
  %69 = load double, double* %argd, align 8
  %call134 = call double @tgamma(double %69) #5
  store double %call134, double* %retd, align 8
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end62
  %70 = load double, double* %argd, align 8
  %71 = load double, double* %argd2, align 8
  %call136 = call double @hypot(double %70, double %71) #5
  store double %call136, double* %retd, align 8
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end62
  %type138 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 1, i32* %type138, align 8
  %72 = load double, double* %argd, align 8
  %call139 = call i32 @ilogb(double %72) #5
  %u140 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l141 = bitcast %union.anon.0* %u140 to i32*
  store i32 %call139, i32* %l141, align 8
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.end62
  %type143 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 1, i32* %type143, align 8
  %73 = load double, double* %argd, align 8
  %conv144 = fptosi double %73 to i32
  %u145 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l146 = bitcast %union.anon.0* %u145 to i32*
  store i32 %conv144, i32* %l146, align 8
  br label %sw.epilog

sw.bb147:                                         ; preds = %if.end62
  %74 = load double, double* %argd, align 8
  %call148 = call double @j0(double %74)
  store double %call148, double* %retd, align 8
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end62
  %75 = load double, double* %argd, align 8
  %call150 = call double @j1(double %75)
  store double %call150, double* %retd, align 8
  br label %sw.epilog

sw.bb151:                                         ; preds = %if.end62
  %76 = load i32, i32* %argi, align 4
  %77 = load double, double* %argd2, align 8
  %call152 = call double @jn(i32 %76, double %77)
  store double %call152, double* %retd, align 8
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end62
  %78 = load double, double* %argd, align 8
  %79 = load i32, i32* %argi, align 4
  %call154 = call double @ldexp(double %78, i32 %79) #5
  store double %call154, double* %retd, align 8
  br label %sw.epilog

sw.bb155:                                         ; preds = %if.end62
  %80 = load double, double* %argd, align 8
  %call156 = call double @lgamma(double %80) #5
  store double %call156, double* %retd, align 8
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.end62
  %81 = load double, double* %argd, align 8
  %call158 = call double @log(double %81) #5
  store double %call158, double* %retd, align 8
  br label %sw.epilog

sw.bb159:                                         ; preds = %if.end62
  %82 = load double, double* %argd, align 8
  %call160 = call double @log10(double %82) #5
  store double %call160, double* %retd, align 8
  br label %sw.epilog

sw.bb161:                                         ; preds = %if.end62
  %83 = load double, double* %argd, align 8
  %call162 = call double @log1p(double %83) #5
  store double %call162, double* %retd, align 8
  br label %sw.epilog

sw.bb163:                                         ; preds = %if.end62
  %84 = load double, double* %argd, align 8
  %call164 = call double @logb(double %84) #5
  store double %call164, double* %retd, align 8
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end62
  %85 = load double, double* %argd, align 8
  %86 = load double, double* %argd2, align 8
  %call166 = call double @nextafter(double %85, double %86) #5
  store double %call166, double* %retd, align 8
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end62
  %87 = load double, double* %argd, align 8
  %call168 = call double @rint(double %87) #5
  store double %call168, double* %retd, align 8
  br label %sw.epilog

sw.bb169:                                         ; preds = %if.end62
  %88 = load double, double* %argd, align 8
  %89 = load i32, i32* %argi, align 4
  %call170 = call double @scalbn(double %88, i32 %89) #5
  store double %call170, double* %retd, align 8
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.end62
  %type172 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 1, i32* %type172, align 8
  %90 = load i32, i32* @signgam, align 4
  %u173 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l174 = bitcast %union.anon.0* %u173 to i32*
  store i32 %90, i32* %l174, align 8
  br label %sw.epilog

sw.bb175:                                         ; preds = %if.end62
  %91 = load double, double* %argd, align 8
  %call176 = call double @sin(double %91) #5
  store double %call176, double* %retd, align 8
  br label %sw.epilog

sw.bb177:                                         ; preds = %if.end62
  %92 = load double, double* %argd, align 8
  %call178 = call double @sinh(double %92) #5
  store double %call178, double* %retd, align 8
  br label %sw.epilog

sw.bb179:                                         ; preds = %if.end62
  %93 = load double, double* %argd, align 8
  %call180 = call double @sqrt(double %93) #5
  store double %call180, double* %retd, align 8
  br label %sw.epilog

sw.bb181:                                         ; preds = %if.end62
  %94 = load double, double* %argd, align 8
  %call182 = call double @tan(double %94) #5
  store double %call182, double* %retd, align 8
  br label %sw.epilog

sw.bb183:                                         ; preds = %if.end62
  %95 = load double, double* %argd, align 8
  %call184 = call double @tanh(double %95) #5
  store double %call184, double* %retd, align 8
  br label %sw.epilog

sw.bb185:                                         ; preds = %if.end62
  %96 = load double, double* %argd, align 8
  %call186 = call double @y0(double %96)
  store double %call186, double* %retd, align 8
  br label %sw.epilog

sw.bb187:                                         ; preds = %if.end62
  %97 = load double, double* %argd, align 8
  %call188 = call double @y1(double %97)
  store double %call188, double* %retd, align 8
  br label %sw.epilog

sw.bb189:                                         ; preds = %if.end62
  %98 = load i32, i32* %argi, align 4
  %99 = load double, double* %argd2, align 8
  %call190 = call double @yn(i32 %98, double %99)
  store double %call190, double* %retd, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end62, %sw.bb189, %sw.bb187, %sw.bb185, %sw.bb183, %sw.bb181, %sw.bb179, %sw.bb177, %sw.bb175, %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb161, %sw.bb159, %sw.bb157, %sw.bb155, %sw.bb153, %sw.bb151, %sw.bb149, %sw.bb147, %sw.bb142, %sw.bb137, %sw.bb135, %sw.bb133, %sw.bb131, %sw.bb129, %sw.bb128, %sw.bb126, %sw.bb124, %sw.bb122, %sw.bb120, %sw.bb118, %sw.bb116, %sw.bb114, %sw.bb112, %sw.bb110, %sw.bb108, %sw.bb106, %if.end105, %sw.bb96, %sw.bb94, %sw.bb92, %sw.bb90, %if.end89
  %100 = load i32, i32* %id.addr, align 4
  %and191 = and i32 %100, 2048
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %if.end196, label %if.then193

if.then193:                                       ; preds = %sw.epilog
  %101 = load double, double* %retd, align 8
  %u194 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %d195 = bitcast %union.anon.0* %u194 to double*
  store double %101, double* %d195, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %sw.epilog
  %102 = bitcast %struct.mnumber* %agg.result to i8*
  %103 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %102, i8* %103, i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end196, %if.then61
  ret void
}

; Function Attrs: noinline nounwind
define internal void @math_string(%struct.mnumber* noalias sret %agg.result, i8* %name, i8* %arg, i32 %id) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %arg.addr = alloca i8*, align 4
  %id.addr = alloca i32, align 4
  %ret = alloca %struct.mnumber, align 8
  %send = alloca i8*, align 4
  %tmp_seedbuf = alloca [3 x i16], align 2
  %seedbufptr = alloca i16*, align 4
  %do_init = alloca i32, align 4
  %seedstr = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %seedptr = alloca i16*, align 4
  %outbuf = alloca [13 x i8], align 1
  store i8* %name, i8** %name.addr, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.mnumber* @zero_mnumber to i8*), i32 16, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %arg.addr, align 4
  %2 = load i8, i8* %1, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %3 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %arg.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %arg.addr, align 4
  %6 = load i8*, i8** %arg.addr, align 4
  %call = call i32 @strlen(i8* %6)
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 %call
  store i8* %add.ptr, i8** %send, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body9, %while.end
  %7 = load i8*, i8** %send, align 4
  %8 = load i8*, i8** %arg.addr, align 4
  %cmp = icmp ugt i8* %7, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %9 = load i8*, i8** %send, align 4
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i32 -1
  %10 = load i8, i8* %arrayidx3, align 1
  %idxprom4 = zext i8 %10 to i32
  %arrayidx5 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom4
  %11 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %11 to i32
  %and7 = and i32 %conv6, 4
  %tobool8 = icmp ne i32 %and7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %12 = phi i1 [ false, %while.cond1 ], [ %tobool8, %land.rhs ]
  br i1 %12, label %while.body9, label %while.end11

while.body9:                                      ; preds = %land.end
  %13 = load i8*, i8** %send, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr10, i8** %send, align 4
  br label %while.cond1

while.end11:                                      ; preds = %land.end
  %14 = load i8*, i8** %send, align 4
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* %id.addr, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.end11
  store i32 1, i32* %do_init, align 4
  %16 = load i8*, i8** %arg.addr, align 4
  %17 = load i8, i8* %16, align 1
  %tobool12 = icmp ne i8 %17, 0
  br i1 %tobool12, label %if.then, label %if.else72

if.then:                                          ; preds = %sw.bb
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %tmp_seedbuf, i32 0, i32 0
  store i16* %arraydecay, i16** %seedbufptr, align 4
  %18 = load i8*, i8** %arg.addr, align 4
  %call13 = call i8* @getsparam(i8* %18)
  store i8* %call13, i8** %seedstr, align 4
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %land.lhs.true, label %if.else67

land.lhs.true:                                    ; preds = %if.then
  %19 = load i8*, i8** %seedstr, align 4
  %call15 = call i32 @strlen(i8* %19)
  %cmp16 = icmp uge i32 %call15, 12
  br i1 %cmp16, label %if.then18, label %if.else67

if.then18:                                        ; preds = %land.lhs.true
  store i32 0, i32* %do_init, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %if.then18
  %20 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %20, 3
  br i1 %cmp19, label %land.rhs21, label %land.end23

land.rhs21:                                       ; preds = %for.cond
  %21 = load i32, i32* %do_init, align 4
  %tobool22 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool22, true
  br label %land.end23

land.end23:                                       ; preds = %land.rhs21, %for.cond
  %22 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs21 ]
  br i1 %22, label %for.body, label %for.end66

for.body:                                         ; preds = %land.end23
  %23 = load i16*, i16** %seedbufptr, align 4
  %24 = load i32, i32* %i, align 4
  %add.ptr24 = getelementptr inbounds i16, i16* %23, i32 %24
  store i16* %add.ptr24, i16** %seedptr, align 4
  %25 = load i16*, i16** %seedptr, align 4
  store i16 0, i16* %25, align 2
  store i32 0, i32* %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %for.body
  %26 = load i32, i32* %j, align 4
  %cmp26 = icmp slt i32 %26, 4
  br i1 %cmp26, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond25
  %27 = load i8*, i8** %seedstr, align 4
  %28 = load i8, i8* %27, align 1
  %idxprom29 = zext i8 %28 to i32
  %arrayidx30 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom29
  %29 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %29 to i32
  %and32 = and i32 %conv31, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.else

if.then34:                                        ; preds = %for.body28
  %30 = load i8*, i8** %seedstr, align 4
  %31 = load i8, i8* %30, align 1
  %conv35 = sext i8 %31 to i32
  %sub = sub nsw i32 %conv35, 48
  %32 = load i16*, i16** %seedptr, align 4
  %33 = load i16, i16* %32, align 2
  %conv36 = zext i16 %33 to i32
  %add = add nsw i32 %conv36, %sub
  %conv37 = trunc i32 %add to i16
  store i16 %conv37, i16* %32, align 2
  br label %if.end56

if.else:                                          ; preds = %for.body28
  %34 = load i8*, i8** %seedstr, align 4
  %35 = load i8, i8* %34, align 1
  %conv38 = sext i8 %35 to i32
  %call39 = call i32 @tolower(i32 %conv38) #6
  %cmp40 = icmp sge i32 %call39, 97
  br i1 %cmp40, label %land.lhs.true42, label %if.else55

land.lhs.true42:                                  ; preds = %if.else
  %36 = load i8*, i8** %seedstr, align 4
  %37 = load i8, i8* %36, align 1
  %conv43 = sext i8 %37 to i32
  %call44 = call i32 @tolower(i32 %conv43) #6
  %cmp45 = icmp sle i32 %call44, 102
  br i1 %cmp45, label %if.then47, label %if.else55

if.then47:                                        ; preds = %land.lhs.true42
  %38 = load i8*, i8** %seedstr, align 4
  %39 = load i8, i8* %38, align 1
  %conv48 = sext i8 %39 to i32
  %call49 = call i32 @tolower(i32 %conv48) #6
  %sub50 = sub nsw i32 %call49, 97
  %add51 = add nsw i32 %sub50, 10
  %40 = load i16*, i16** %seedptr, align 4
  %41 = load i16, i16* %40, align 2
  %conv52 = zext i16 %41 to i32
  %add53 = add nsw i32 %conv52, %add51
  %conv54 = trunc i32 %add53 to i16
  store i16 %conv54, i16* %40, align 2
  br label %if.end

if.else55:                                        ; preds = %land.lhs.true42, %if.else
  store i32 1, i32* %do_init, align 4
  br label %for.end

if.end:                                           ; preds = %if.then47
  br label %if.end56

if.end56:                                         ; preds = %if.end, %if.then34
  %42 = load i8*, i8** %seedstr, align 4
  %incdec.ptr57 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr57, i8** %seedstr, align 4
  %43 = load i32, i32* %j, align 4
  %cmp58 = icmp slt i32 %43, 3
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end56
  %44 = load i16*, i16** %seedptr, align 4
  %45 = load i16, i16* %44, align 2
  %conv61 = zext i16 %45 to i32
  %mul = mul nsw i32 %conv61, 16
  %conv62 = trunc i32 %mul to i16
  store i16 %conv62, i16* %44, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end56
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond25

for.end:                                          ; preds = %if.else55, %for.cond25
  br label %for.inc64

for.inc64:                                        ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %47, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond

for.end66:                                        ; preds = %land.end23
  br label %if.end71

if.else67:                                        ; preds = %land.lhs.true, %if.then
  %48 = load i32, i32* @errflag, align 4
  %tobool68 = icmp ne i32 %48, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.else67
  br label %sw.epilog

if.end70:                                         ; preds = %if.else67
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %for.end66
  br label %if.end77

if.else72:                                        ; preds = %sw.bb
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @math_string.seedbuf, i32 0, i32 0), i16** %seedbufptr, align 4
  %49 = load i32, i32* @math_string.seedbuf_init, align 4
  %tobool73 = icmp ne i32 %49, 0
  br i1 %tobool73, label %if.else75, label %if.then74

if.then74:                                        ; preds = %if.else72
  store i32 1, i32* @math_string.seedbuf_init, align 4
  br label %if.end76

if.else75:                                        ; preds = %if.else72
  store i32 1, i32* %do_init, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then74
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end71
  %50 = load i32, i32* %do_init, align 4
  %tobool78 = icmp ne i32 %50, 0
  br i1 %tobool78, label %if.then79, label %if.end90

if.then79:                                        ; preds = %if.end77
  %call80 = call i32 @rand()
  %conv81 = trunc i32 %call80 to i16
  %51 = load i16*, i16** %seedbufptr, align 4
  %arrayidx82 = getelementptr inbounds i16, i16* %51, i32 0
  store i16 %conv81, i16* %arrayidx82, align 2
  %call83 = call i32 @rand()
  %conv84 = trunc i32 %call83 to i16
  %52 = load i16*, i16** %seedbufptr, align 4
  %arrayidx85 = getelementptr inbounds i16, i16* %52, i32 1
  store i16 %conv84, i16* %arrayidx85, align 2
  %call86 = call i32 @rand()
  %conv87 = trunc i32 %call86 to i16
  %53 = load i16*, i16** %seedbufptr, align 4
  %arrayidx88 = getelementptr inbounds i16, i16* %53, i32 2
  store i16 %conv87, i16* %arrayidx88, align 2
  %54 = load i16*, i16** %seedbufptr, align 4
  %call89 = call i16* @seed48(i16* %54)
  br label %if.end90

if.end90:                                         ; preds = %if.then79, %if.end77
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 2, i32* %type, align 8
  %55 = load i16*, i16** %seedbufptr, align 4
  %call91 = call double @erand48(i16* %55)
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %d = bitcast %union.anon.0* %u to double*
  store double %call91, double* %d, align 8
  %56 = load i8*, i8** %arg.addr, align 4
  %57 = load i8, i8* %56, align 1
  %tobool92 = icmp ne i8 %57, 0
  br i1 %tobool92, label %if.then93, label %if.end105

if.then93:                                        ; preds = %if.end90
  %arraydecay94 = getelementptr inbounds [13 x i8], [13 x i8]* %outbuf, i32 0, i32 0
  %58 = load i16*, i16** %seedbufptr, align 4
  %arrayidx95 = getelementptr inbounds i16, i16* %58, i32 0
  %59 = load i16, i16* %arrayidx95, align 2
  %conv96 = zext i16 %59 to i32
  %60 = load i16*, i16** %seedbufptr, align 4
  %arrayidx97 = getelementptr inbounds i16, i16* %60, i32 1
  %61 = load i16, i16* %arrayidx97, align 2
  %conv98 = zext i16 %61 to i32
  %62 = load i16*, i16** %seedbufptr, align 4
  %arrayidx99 = getelementptr inbounds i16, i16* %62, i32 2
  %63 = load i16, i16* %arrayidx99, align 2
  %conv100 = zext i16 %63 to i32
  %call101 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 %conv96, i32 %conv98, i32 %conv100)
  %64 = load i8*, i8** %arg.addr, align 4
  %arraydecay102 = getelementptr inbounds [13 x i8], [13 x i8]* %outbuf, i32 0, i32 0
  %call103 = call i8* @ztrdup(i8* %arraydecay102)
  %call104 = call %struct.param* @setsparam(i8* %64, i8* %call103)
  br label %if.end105

if.end105:                                        ; preds = %if.then93, %if.end90
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end11, %if.end105, %if.then69
  %65 = bitcast %struct.mnumber* %agg.result to i8*
  %66 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %65, i8* %66, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind readnone
declare double @acos(double) #3

; Function Attrs: nounwind readnone
declare double @acosh(double) #3

; Function Attrs: nounwind readnone
declare double @asin(double) #3

; Function Attrs: nounwind readnone
declare double @asinh(double) #3

; Function Attrs: nounwind readnone
declare double @atan2(double, double) #3

; Function Attrs: nounwind readnone
declare double @atan(double) #3

; Function Attrs: nounwind readnone
declare double @atanh(double) #3

; Function Attrs: nounwind readnone
declare double @cbrt(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #3

; Function Attrs: nounwind readnone
declare double @cos(double) #3

; Function Attrs: nounwind readnone
declare double @cosh(double) #3

; Function Attrs: nounwind readnone
declare double @erf(double) #3

; Function Attrs: nounwind readnone
declare double @erfc(double) #3

; Function Attrs: nounwind readnone
declare double @exp(double) #3

; Function Attrs: nounwind readnone
declare double @expm1(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @fmod(double, double) #3

; Function Attrs: nounwind readnone
declare double @tgamma(double) #3

; Function Attrs: nounwind readnone
declare double @hypot(double, double) #3

; Function Attrs: nounwind readnone
declare i32 @ilogb(double) #3

declare double @j0(double) #1

declare double @j1(double) #1

declare double @jn(i32, double) #1

; Function Attrs: nounwind readnone
declare double @ldexp(double, i32) #3

; Function Attrs: nounwind readnone
declare double @lgamma(double) #3

; Function Attrs: nounwind readnone
declare double @log(double) #3

; Function Attrs: nounwind readnone
declare double @log10(double) #3

; Function Attrs: nounwind readnone
declare double @log1p(double) #3

; Function Attrs: nounwind readnone
declare double @logb(double) #3

; Function Attrs: nounwind readnone
declare double @nextafter(double, double) #3

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind readnone
declare double @scalbn(double, i32) #3

; Function Attrs: nounwind readnone
declare double @sin(double) #3

; Function Attrs: nounwind readnone
declare double @sinh(double) #3

; Function Attrs: nounwind readnone
declare double @sqrt(double) #3

; Function Attrs: nounwind readnone
declare double @tan(double) #3

; Function Attrs: nounwind readnone
declare double @tanh(double) #3

declare double @y0(double) #1

declare double @y1(double) #1

declare double @yn(i32, double) #1

declare i32 @strlen(i8*) #1

declare i8* @getsparam(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #4

declare i32 @rand() #1

declare i16* @seed48(i16*) #1

declare double @erand48(i16*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i8* @ztrdup(i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
