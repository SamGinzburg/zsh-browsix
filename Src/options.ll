; ModuleID = 'options.c'
source_filename = "options.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.optname = type { %struct.hashnode, i32 }
%struct.funcstack = type { %struct.funcstack*, i8*, i8*, i8*, i32, i32, i32 }
%struct._IO_FILE = type opaque
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon = type { double }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { {}*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"optiontab\00", align 1
@optiontab = common global %struct.hashtable* null, align 4
@optns = internal global [193 x %struct.optname] [%struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 94 }, i32 1 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32 76 }, i32 2 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 64 }, i32 3 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 30 }, i32 4 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 0 }, i32 5 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 76 }, i32 35 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i32 30 }, i32 6 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 64 }, i32 7 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 0 }, i32 8 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 30 }, i32 9 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 30 }, i32 10 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 0 }, i32 11 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i32 30 }, i32 12 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i32 30 }, i32 13 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 0 }, i32 14 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 30 }, i32 15 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 0 }, i32 16 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 82 }, i32 17 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 18 }, i32 18 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 80 }, i32 19 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 0 }, i32 20 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 0 }, i32 21 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 30 }, i32 22 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 82 }, i32 23 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 64 }, i32 24 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 72 }, i32 25 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 30 }, i32 26 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 30 }, i32 27 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 0 }, i32 28 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 78 }, i32 42 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 64 }, i32 29 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 64 }, i32 30 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 64 }, i32 31 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 80 }, i32 32 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i32 80 }, i32 33 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 94 }, i32 34 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i32 0 }, i32 36 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i32 0 }, i32 37 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i32 0 }, i32 38 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 0 }, i32 41 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0 }, i32 39 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i32 0 }, i32 40 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i32 66 }, i32 43 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i32 66 }, i32 44 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i32 66 }, i32 45 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i32 66 }, i32 46 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i32 66 }, i32 47 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i32 30 }, i32 48 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 0 }, i32 49 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 80 }, i32 50 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 64 }, i32 51 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 64 }, i32 52 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 30 }, i32 53 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i32 64 }, i32 54 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i32 2 }, i32 55 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i32 80 }, i32 56 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 30 }, i32 57 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i32 0 }, i32 58 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i32 82 }, i32 59 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 94 }, i32 60 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i32 80 }, i32 61 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 30 }, i32 62 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 66 }, i32 63 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 0 }, i32 64 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i32 64 }, i32 65 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i32 64 }, i32 66 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 78 }, i32 67 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 30 }, i32 68 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i32 30 }, i32 69 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), i32 0 }, i32 70 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i32 30 }, i32 71 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.90, i32 0, i32 0), i32 0 }, i32 72 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i32 30 }, i32 73 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), i32 0 }, i32 74 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i32 0 }, i32 75 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i32 0 }, i32 76 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i32 0, i32 0), i32 0 }, i32 77 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i32 0 }, i32 78 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), i32 0 }, i32 79 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i32 0 }, i32 80 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i32 0 }, i32 81 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i32 0 }, i32 82 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i32 64 }, i32 86 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0), i32 0 }, i32 83 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), i32 30 }, i32 84 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0), i32 0 }, i32 85 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 0 }, i32 87 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i32 80 }, i32 88 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i32 72 }, i32 89 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i32 0, i32 0), i32 64 }, i32 90 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), i32 0 }, i32 91 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.110, i32 0, i32 0), i32 0 }, i32 92 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i32 0, i32 0), i32 0 }, i32 93 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i32 128 }, i32 94 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.113, i32 0, i32 0), i32 12 }, i32 95 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i32 76 }, i32 96 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i32 76 }, i32 97 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i32 68 }, i32 98 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i32 68 }, i32 99 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), i32 0 }, i32 100 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.119, i32 0, i32 0), i32 0 }, i32 101 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), i32 30 }, i32 102 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i32 30 }, i32 103 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i32 0 }, i32 104 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0), i32 0 }, i32 105 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i32 30 }, i32 106 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), i32 68 }, i32 108 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i32 64 }, i32 107 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i32 64 }, i32 109 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), i32 68 }, i32 110 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i32 128 }, i32 111 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 0 }, i32 112 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0), i32 64 }, i32 113 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i32 0 }, i32 114 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), i32 0 }, i32 115 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i32 0 }, i32 116 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i32 128 }, i32 117 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i32 30 }, i32 118 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i32 80 }, i32 119 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i32 80 }, i32 120 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i32 0, i32 0), i32 82 }, i32 121 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i32 16 }, i32 122 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i32 64 }, i32 123 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.142, i32 0, i32 0), i32 64 }, i32 124 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0), i32 72 }, i32 125 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), i32 0 }, i32 126 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i32 64 }, i32 127 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i32 0, i32 0), i32 76 }, i32 128 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), i32 64 }, i32 129 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i32 76 }, i32 130 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0), i32 64 }, i32 131 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), i32 76 }, i32 132 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), i32 76 }, i32 133 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.152, i32 0, i32 0), i32 76 }, i32 134 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), i32 76 }, i32 135 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i32 76 }, i32 136 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0), i32 76 }, i32 137 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.156, i32 0, i32 0), i32 0 }, i32 138 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i32 0, i32 0), i32 0 }, i32 139 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0), i32 128 }, i32 140 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.159, i32 0, i32 0), i32 4 }, i32 141 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.160, i32 0, i32 0), i32 30 }, i32 142 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.161, i32 0, i32 0), i32 18 }, i32 143 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i32 0, i32 0), i32 30 }, i32 144 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i32 0, i32 0), i32 12 }, i32 145 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.164, i32 0, i32 0), i32 64 }, i32 146 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i32 0, i32 0), i32 64 }, i32 147 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i32 0 }, i32 148 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0), i32 64 }, i32 149 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.168, i32 0, i32 0), i32 64 }, i32 150 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0), i32 64 }, i32 151 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0), i32 30 }, i32 152 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i32 0, i32 0), i32 0 }, i32 153 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.172, i32 0, i32 0), i32 0 }, i32 154 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i32 0, i32 0), i32 128 }, i32 155 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i32 0, i32 0), i32 12 }, i32 156 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i32 0, i32 0), i32 0 }, i32 157 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), i32 4 }, i32 158 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.177, i32 0, i32 0), i32 76 }, i32 159 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.178, i32 0, i32 0), i32 76 }, i32 160 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i32 0, i32 0), i32 128 }, i32 161 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.180, i32 0, i32 0), i32 76 }, i32 162 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.181, i32 0, i32 0), i32 76 }, i32 163 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i32 82 }, i32 164 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i32 0, i32 0), i32 76 }, i32 165 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i32 128 }, i32 166 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i32 0, i32 0), i32 4 }, i32 167 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.186, i32 0, i32 0), i32 0 }, i32 168 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.187, i32 0, i32 0), i32 0 }, i32 169 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.188, i32 0, i32 0), i32 0 }, i32 170 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i32 0, i32 0), i32 0 }, i32 171 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.190, i32 0, i32 0), i32 76 }, i32 172 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i32 92 }, i32 173 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.192, i32 0, i32 0), i32 0 }, i32 174 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i32 0, i32 0), i32 0 }, i32 175 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.194, i32 0, i32 0), i32 64 }, i32 176 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.195, i32 0, i32 0), i32 64 }, i32 177 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), i32 0 }, i32 178 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.197, i32 0, i32 0), i32 128 }, i32 179 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.198, i32 0, i32 0), i32 256 }, i32 -89 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.199, i32 0, i32 0), i32 256 }, i32 65 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i32 0, i32 0), i32 256 }, i32 68 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.201, i32 0, i32 0), i32 256 }, i32 6 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.202, i32 0, i32 0), i32 256 }, i32 18 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.203, i32 0, i32 0), i32 256 }, i32 -81 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.204, i32 0, i32 0), i32 256 }, i32 114 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.205, i32 0, i32 0), i32 256 }, i32 166 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.206, i32 0, i32 0), i32 256 }, i32 31 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i32 256 }, i32 145 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.208, i32 0, i32 0), i32 256 }, i32 161 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i32 0, i32 0), i32 256 }, i32 68 }, %struct.optname { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.210, i32 0, i32 0), i32 0 }, i32 180 }, %struct.optname zeroinitializer], align 4
@setemulate_emulation = internal global i32 0, align 4
@setemulate_opts = internal global i8* null, align 4
@funcstack = external global %struct.funcstack*, align 4
@shfunctab = external global %struct.hashtable*, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"string expected after -o\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"no such option: %s\00", align 1
@opts = common global [181 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"can't change option: %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"bad option: -%c\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"can't change option: -%c\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"bad pattern: %s\00", align 1
@kshletters = internal global [74 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -34, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 171, i16 0, i16 0, i16 0, i16 115, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 122, i16 0, i16 0, i16 51, i16 -60, i16 0, i16 0, i16 94, i16 0, i16 0, i16 111, i16 117, i16 -53, i16 0, i16 140, i16 0, i16 155, i16 161, i16 166, i16 -173, i16 174, i16 0, i16 178, i16 0], align 2
@zshletters = internal global [74 x i16] [i16 39, i16 139, i16 -17, i16 -121, i16 65, i16 122, i16 23, i16 91, i16 115, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -22, i16 -34, i16 149, i16 148, i16 -60, i16 123, i16 156, i16 89, i16 7, i16 -18, i16 169, i16 167, i16 14, i16 40, i16 150, i16 127, i16 112, i16 153, i16 29, i16 114, i16 -142, i16 16, i16 106, i16 116, i16 179, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 0, i16 0, i16 -62, i16 51, i16 -152, i16 79, i16 78, i16 94, i16 0, i16 95, i16 111, i16 117, i16 -53, i16 0, i16 140, i16 0, i16 155, i16 161, i16 166, i16 -173, i16 174, i16 31, i16 178, i16 165], align 2
@rparams = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.216, i32 0, i32 0), i8* null], align 4
@SHTTY = external global i32, align 4
@shout = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to change user ID: %e\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to change group ID: %e\00", align 1
@origpgrp = external global i32, align 4
@sticky = common global %struct.emulation_options* null, align 4
@keyboardhackchar = external global i8, align 1
@dashgetfn.buf = internal global [75 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\0ANamed options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0AOption aliases:\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\0AOption letters:\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"  -%c  \00", align 1
@print_emulate_opts = internal global i8* null, align 4
@emulation = common global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"no%-19s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%-21s %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"aliasfuncdef\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"allexport\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"alwayslastprompt\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"alwaystoend\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"appendcreate\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"appendhistory\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"autocd\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"autocontinue\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"autolist\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"automenu\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"autonamedirs\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"autoparamkeys\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"autoparamslash\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"autopushd\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"autoremoveslash\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"autoresume\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"badpattern\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"banghist\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"bareglobqual\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"bashautolist\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"bashrematch\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"bgnice\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"braceccl\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"bsdecho\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"caseglob\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"casematch\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"cbases\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"cprecedences\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"cdablevars\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"chasedots\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"chaselinks\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"checkjobs\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"checkrunningjobs\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"clobber\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"combiningchars\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"completealiases\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"completeinword\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"continueonerror\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"correctall\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"cshjunkiehistory\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"cshjunkieloops\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"cshjunkiequotes\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"cshnullcmd\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"cshnullglob\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"debugbeforecmd\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"equals\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"errexit\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"errreturn\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"extendedglob\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"extendedhistory\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"evallineno\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"flowcontrol\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"forcefloat\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"functionargzero\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"globalexport\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"globalrcs\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"globassign\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"globcomplete\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"globdots\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"globstarshort\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"globsubst\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"hashcmds\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"hashdirs\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"hashexecutablesonly\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"hashlistall\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"histallowclobber\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"histbeep\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"histexpiredupsfirst\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"histfcntllock\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"histfindnodups\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"histignorealldups\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"histignoredups\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"histignorespace\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"histlexwords\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"histnofunctions\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"histnostore\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"histsubstpattern\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"histreduceblanks\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"histsavebycopy\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"histsavenodups\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"histverify\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"hup\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"ignorebraces\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"ignoreclosebraces\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"ignoreeof\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"incappendhistory\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"incappendhistorytime\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"interactivecomments\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"ksharrays\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"kshautoload\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"kshglob\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"kshoptionprint\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"kshtypeset\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"kshzerosubscript\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"listambiguous\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"listbeep\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"listpacked\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"listrowsfirst\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"listtypes\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"localoptions\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"localloops\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"localpatterns\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"localtraps\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"longlistjobs\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"magicequalsubst\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"mailwarning\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"markdirs\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"menucomplete\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"multibyte\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"multifuncdef\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"multios\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"nomatch\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"nullglob\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"numericglobsort\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"octalzeroes\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"overstrike\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"pathdirs\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"pathscript\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"pipefail\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"posixaliases\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"posixargzero\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"posixbuiltins\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"posixcd\00", align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"posixidentifiers\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"posixjobs\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"posixstrings\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"posixtraps\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"printeightbit\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"printexitvalue\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"privileged\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"promptbang\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"promptcr\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"promptpercent\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"promptsp\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"promptsubst\00", align 1
@.str.164 = private unnamed_addr constant [16 x i8] c"pushdignoredups\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"pushdminus\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"pushdsilent\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"pushdtohome\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"rcexpandparam\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"rcquotes\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"rcs\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"recexact\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"rematchpcre\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"restricted\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"rmstarsilent\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"rmstarwait\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"sharehistory\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"shfileexpansion\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"shglob\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"shinstdin\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"shnullcmd\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"shoptionletters\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"shortloops\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"shwordsplit\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"singlecommand\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"singlelinezle\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"sourcetrace\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"sunkeyboardhack\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"transientrprompt\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"trapsasync\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"typesetsilent\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"warncreateglobal\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"warnnestedvar\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"xtrace\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"zle\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"braceexpand\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"dotglob\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"hashall\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"histappend\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"histexpand\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"mailwarn\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"onecmd\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"promptvars\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"trackall\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"dvorak\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"HISTFILE\00", align 1
@.str.213 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@.str.214 = private unnamed_addr constant [21 x i8] c"LD_AOUT_LIBRARY_PATH\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"LD_PRELOAD\00", align 1
@.str.216 = private unnamed_addr constant [16 x i8] c"LD_AOUT_PRELOAD\00", align 1
@paramtab = external global %struct.hashtable*, align 4
@.str.217 = private unnamed_addr constant [14 x i8] c"set %co %s%s\0A\00", align 1
@.str.218 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"  --%-19s  \00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"  --%s\0A\00", align 1
@.str.221 = private unnamed_addr constant [24 x i8] c"  equivalent to --%s%s\0A\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"no-\00", align 1

; Function Attrs: noinline nounwind
define void @createoptiontable() #0 {
entry:
  %on = alloca %struct.optname*, align 4
  %call = call %struct.hashtable* @newhashtable(i32 101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** @optiontab, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 5
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* null, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  store void (%struct.hashnode*)* null, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printoptionnode, void (%struct.hashnode*, i32)** %printnode, align 4
  store %struct.optname* getelementptr inbounds ([193 x %struct.optname], [193 x %struct.optname]* @optns, i32 0, i32 0), %struct.optname** %on, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct.optname*, %struct.optname** %on, align 4
  %node = getelementptr inbounds %struct.optname, %struct.optname* %12, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %13 = load i8*, i8** %nam, align 4
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %addnode1 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 8
  %15 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode1, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %17 = load %struct.optname*, %struct.optname** %on, align 4
  %node2 = getelementptr inbounds %struct.optname, %struct.optname* %17, i32 0, i32 0
  %nam3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 1
  %18 = load i8*, i8** %nam3, align 4
  %19 = load %struct.optname*, %struct.optname** %on, align 4
  %20 = bitcast %struct.optname* %19 to i8*
  call void %15(%struct.hashtable* %16, i8* %18, i8* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.optname*, %struct.optname** %on, align 4
  %incdec.ptr = getelementptr inbounds %struct.optname, %struct.optname* %21, i32 1
  store %struct.optname* %incdec.ptr, %struct.optname** %on, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.hashtable* @newhashtable(i32, i8*, void (%struct.hashtable*)*) #1

declare i32 @hasher(i8*) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @addhashnode(%struct.hashtable*, i8*, i8*) #1

declare %struct.hashnode* @gethashnode(%struct.hashtable*, i8*) #1

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*) #1

declare void @disablehashnode(%struct.hashnode*, i32) #1

declare void @enablehashnode(%struct.hashnode*, i32) #1

; Function Attrs: noinline nounwind
define internal void @printoptionnode(%struct.hashnode* %hn, i32 %set) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %set.addr = alloca i32, align 4
  %on = alloca %struct.optname*, align 4
  %optno = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %set, i32* %set.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.optname*
  store %struct.optname* %1, %struct.optname** %on, align 4
  %2 = load %struct.optname*, %struct.optname** %on, align 4
  %optno1 = getelementptr inbounds %struct.optname, %struct.optname* %2, i32 0, i32 1
  %3 = load i32, i32* %optno1, align 4
  store i32 %3, i32* %optno, align 4
  %4 = load i32, i32* %optno, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %optno, align 4
  %sub = sub nsw i32 0, %5
  store i32 %sub, i32* %optno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 99), align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then2, label %if.else15

if.then2:                                         ; preds = %if.end
  %7 = load %struct.optname*, %struct.optname** %on, align 4
  %node = getelementptr inbounds %struct.optname, %struct.optname* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %9 = load i32, i32* @emulation, align 4
  %and = and i32 %8, %9
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %10 = load %struct.optname*, %struct.optname** %on, align 4
  %node5 = getelementptr inbounds %struct.optname, %struct.optname* %10, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  %11 = load i8*, i8** %nam, align 4
  %12 = load i32, i32* %optno, align 4
  %arrayidx = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %tobool6 = icmp ne i32 %conv, 0
  %cond = select i1 %tobool6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* %11, i8* %cond)
  br label %if.end14

if.else:                                          ; preds = %if.then2
  %14 = load %struct.optname*, %struct.optname** %on, align 4
  %node7 = getelementptr inbounds %struct.optname, %struct.optname* %14, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  %15 = load i8*, i8** %nam8, align 4
  %16 = load i32, i32* %optno, align 4
  %arrayidx9 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %16
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %17 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  %cond12 = select i1 %tobool11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %15, i8* %cond12)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4
  br label %if.end37

if.else15:                                        ; preds = %if.end
  %18 = load i32, i32* %set.addr, align 4
  %19 = load i32, i32* %optno, align 4
  %arrayidx16 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %19
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %20 to i32
  %21 = load %struct.optname*, %struct.optname** %on, align 4
  %node18 = getelementptr inbounds %struct.optname, %struct.optname* %21, i32 0, i32 0
  %flags19 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node18, i32 0, i32 2
  %22 = load i32, i32* %flags19, align 4
  %23 = load i32, i32* @emulation, align 4
  %and20 = and i32 %22, %23
  %tobool21 = icmp ne i32 %and20, 0
  %lnot = xor i1 %tobool21, true
  %lnot22 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot22 to i32
  %xor = xor i32 %conv17, %lnot.ext
  %cmp23 = icmp eq i32 %18, %xor
  br i1 %cmp23, label %if.then25, label %if.end36

if.then25:                                        ; preds = %if.else15
  %24 = load i32, i32* %set.addr, align 4
  %25 = load i32, i32* %optno, align 4
  %arrayidx26 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %25
  %26 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %26 to i32
  %xor28 = xor i32 %24, %conv27
  %tobool29 = icmp ne i32 %xor28, 0
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then25
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then25
  %28 = load %struct.optname*, %struct.optname** %on, align 4
  %node33 = getelementptr inbounds %struct.optname, %struct.optname* %28, i32 0, i32 0
  %nam34 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node33, i32 0, i32 1
  %29 = load i8*, i8** %nam34, align 4
  %call35 = call i32 @puts(i8* %29)
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.else15
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end14
  ret void
}

; Function Attrs: noinline nounwind
define void @installemulation(i32 %new_emulation, i8* %new_opts) #0 {
entry:
  %new_emulation.addr = alloca i32, align 4
  %new_opts.addr = alloca i8*, align 4
  store i32 %new_emulation, i32* %new_emulation.addr, align 4
  store i8* %new_opts, i8** %new_opts.addr, align 4
  %0 = load i32, i32* %new_emulation.addr, align 4
  store i32 %0, i32* @setemulate_emulation, align 4
  %1 = load i8*, i8** %new_opts.addr, align 4
  store i8* %1, i8** @setemulate_opts, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %3 = load i32, i32* %new_emulation.addr, align 4
  %and = and i32 %3, 32
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %call = call i32 @scanhashtable(%struct.hashtable* %2, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @setemulate, i32 %lnot.ext)
  ret void
}

declare i32 @scanhashtable(%struct.hashtable*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32) #1

; Function Attrs: noinline nounwind
define internal void @setemulate(%struct.hashnode* %hn, i32 %fully) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %fully.addr = alloca i32, align 4
  %on = alloca %struct.optname*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %fully, i32* %fully.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.optname*
  store %struct.optname* %1, %struct.optname** %on, align 4
  %2 = load %struct.optname*, %struct.optname** %on, align 4
  %node = getelementptr inbounds %struct.optname, %struct.optname* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %fully.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %land.lhs.true2, label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load %struct.optname*, %struct.optname** %on, align 4
  %node3 = getelementptr inbounds %struct.optname, %struct.optname* %5, i32 0, i32 0
  %flags4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  %6 = load i32, i32* %flags4, align 4
  %and5 = and i32 %6, 128
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true2, %land.lhs.true
  %7 = load %struct.optname*, %struct.optname** %on, align 4
  %node7 = getelementptr inbounds %struct.optname, %struct.optname* %7, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %8 = load i32, i32* %flags8, align 4
  %and9 = and i32 %8, 64
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true2
  %9 = load %struct.optname*, %struct.optname** %on, align 4
  %node11 = getelementptr inbounds %struct.optname, %struct.optname* %9, i32 0, i32 0
  %flags12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 2
  %10 = load i32, i32* %flags12, align 4
  %11 = load i32, i32* @setemulate_emulation, align 4
  %and13 = and i32 %10, %11
  %tobool14 = icmp ne i32 %and13, 0
  %lnot = xor i1 %tobool14, true
  %lnot15 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot15 to i32
  %conv = trunc i32 %lnot.ext to i8
  %12 = load i8*, i8** @setemulate_opts, align 4
  %13 = load %struct.optname*, %struct.optname** %on, align 4
  %optno = getelementptr inbounds %struct.optname, %struct.optname* %13, i32 0, i32 1
  %14 = load i32, i32* %optno, align 4
  %arrayidx = getelementptr inbounds i8, i8* %12, i32 %14
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @emulate(i8* %zsh_name, i32 %fully, i32* %new_emulation, i8* %new_opts) #0 {
entry:
  %zsh_name.addr = alloca i8*, align 4
  %fully.addr = alloca i32, align 4
  %new_emulation.addr = alloca i32*, align 4
  %new_opts.addr = alloca i8*, align 4
  %ch = alloca i8, align 1
  %shf = alloca %struct.shfunc*, align 4
  store i8* %zsh_name, i8** %zsh_name.addr, align 4
  store i32 %fully, i32* %fully.addr, align 4
  store i32* %new_emulation, i32** %new_emulation.addr, align 4
  store i8* %new_opts, i8** %new_opts.addr, align 4
  %0 = load i8*, i8** %zsh_name.addr, align 4
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %ch, align 1
  %2 = load i8, i8* %ch, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 114
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %zsh_name.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 1
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %ch, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 99
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %6 = load i32*, i32** %new_emulation.addr, align 4
  store i32 2, i32* %6, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end
  %7 = load i8, i8* %ch, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 107
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  %8 = load i32*, i32** %new_emulation.addr, align 4
  store i32 4, i32* %8, align 4
  br label %if.end20

if.else10:                                        ; preds = %if.else
  %9 = load i8, i8* %ch, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 115
  br i1 %cmp12, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else10
  %10 = load i8, i8* %ch, align 1
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 98
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false, %if.else10
  %11 = load i32*, i32** %new_emulation.addr, align 4
  store i32 8, i32* %11, align 4
  br label %if.end19

if.else18:                                        ; preds = %lor.lhs.false
  %12 = load i32*, i32** %new_emulation.addr, align 4
  store i32 16, i32* %12, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then9
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then5
  %13 = load i32, i32* %fully.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end21
  %14 = load i32*, i32** %new_emulation.addr, align 4
  %15 = load i32, i32* %14, align 4
  %or = or i32 %15, 32
  store i32 %or, i32* %14, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end21
  %16 = load i32*, i32** %new_emulation.addr, align 4
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %new_opts.addr, align 4
  call void @installemulation(i32 %17, i8* %18)
  %19 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tobool24 = icmp ne %struct.funcstack* %19, null
  br i1 %tobool24, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end23
  %20 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %tp = getelementptr inbounds %struct.funcstack, %struct.funcstack* %20, i32 0, i32 6
  %21 = load i32, i32* %tp, align 4
  %cmp25 = icmp eq i32 %21, 1
  br i1 %cmp25, label %if.then27, label %if.end34

if.then27:                                        ; preds = %land.lhs.true
  %22 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 9
  %23 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %24 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %25 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  %name = getelementptr inbounds %struct.funcstack, %struct.funcstack* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 4
  %call = call %struct.hashnode* %23(%struct.hashtable* %24, i8* %26)
  %27 = bitcast %struct.hashnode* %call to %struct.shfunc*
  store %struct.shfunc* %27, %struct.shfunc** %shf, align 4
  %28 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %tobool28 = icmp ne %struct.shfunc* %28, null
  br i1 %tobool28, label %land.lhs.true29, label %if.end33

land.lhs.true29:                                  ; preds = %if.then27
  %29 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %29, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %30 = load i32, i32* %flags, align 4
  %and = and i32 %30, 67584
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %land.lhs.true29
  %31 = load i8*, i8** %new_opts.addr, align 4
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i32 178
  store i8 1, i8* %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true29, %if.then27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true, %if.end23
  ret void
}

; Function Attrs: noinline nounwind
define i32 @bin_setopt(i8* %nam, i8** %args, %struct.options* %ops, i32 %isun) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %isun.addr = alloca i32, align 4
  %action = alloca i32, align 4
  %optno = alloca i32, align 4
  %match = alloca i32, align 4
  %pprog = alloca %struct.patprog*, align 4
  %s = alloca i8*, align 4
  %t = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %isun, i32* %isun.addr, align 4
  store i32 0, i32* %match, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 15
  %4 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %5 = load i32, i32* %isun.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  %call = call i32 @scanhashtable(%struct.hashtable* %2, i32 1, i32 0, i32 256, void (%struct.hashnode*, i32)* %4, i32 %lnot.ext)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %6 = load i8**, i8*** %args.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8**, i8*** %args.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %11 = load i8**, i8*** %args.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %13 = load i8, i8* %12, align 1
  %conv4 = sext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv4, 43
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %cmp5, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %14, %lor.end ]
  br i1 %15, label %while.body, label %while.end73

while.body:                                       ; preds = %land.end
  %16 = load i8**, i8*** %args.addr, align 4
  %17 = load i8*, i8** %16, align 4
  %18 = load i8, i8* %17, align 1
  %conv7 = sext i8 %18 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  %conv9 = zext i1 %cmp8 to i32
  %19 = load i32, i32* %isun.addr, align 4
  %xor = xor i32 %conv9, %19
  store i32 %xor, i32* %action, align 4
  %20 = load i8**, i8*** %args.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %20, i32 0
  %21 = load i8*, i8** %arrayidx, align 4
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8, i8* %arrayidx10, align 1
  %tobool11 = icmp ne i8 %22, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %while.body
  %23 = load i8**, i8*** %args.addr, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %23, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.body
  br label %while.cond14

while.cond14:                                     ; preds = %if.end71, %if.end13
  %24 = load i8**, i8*** %args.addr, align 4
  %25 = load i8*, i8** %24, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %24, align 4
  %26 = load i8, i8* %incdec.ptr, align 1
  %tobool15 = icmp ne i8 %26, 0
  br i1 %tobool15, label %while.body16, label %while.end

while.body16:                                     ; preds = %while.cond14
  %27 = load i8**, i8*** %args.addr, align 4
  %28 = load i8*, i8** %27, align 4
  %29 = load i8, i8* %28, align 1
  %conv17 = sext i8 %29 to i32
  %cmp18 = icmp eq i32 %conv17, -125
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %while.body16
  %30 = load i8**, i8*** %args.addr, align 4
  %31 = load i8*, i8** %30, align 4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr21, i8** %30, align 4
  %32 = load i8, i8* %incdec.ptr21, align 1
  %conv22 = sext i8 %32 to i32
  %xor23 = xor i32 %conv22, 32
  %conv24 = trunc i32 %xor23 to i8
  store i8 %conv24, i8* %incdec.ptr21, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %while.body16
  %33 = load i8**, i8*** %args.addr, align 4
  %34 = load i8*, i8** %33, align 4
  %35 = load i8, i8* %34, align 1
  %conv26 = sext i8 %35 to i32
  %cmp27 = icmp eq i32 %conv26, 45
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  %36 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr30 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %incdec.ptr30, i8*** %args.addr, align 4
  br label %doneoptions

if.else:                                          ; preds = %if.end25
  %37 = load i8**, i8*** %args.addr, align 4
  %38 = load i8*, i8** %37, align 4
  %39 = load i8, i8* %38, align 1
  %conv31 = sext i8 %39 to i32
  %cmp32 = icmp eq i32 %conv31, 111
  br i1 %cmp32, label %if.then34, label %if.else52

if.then34:                                        ; preds = %if.else
  %40 = load i8**, i8*** %args.addr, align 4
  %41 = load i8*, i8** %40, align 4
  %incdec.ptr35 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr35, i8** %40, align 4
  %42 = load i8, i8* %incdec.ptr35, align 1
  %tobool36 = icmp ne i8 %42, 0
  br i1 %tobool36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then34
  %43 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr38 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %incdec.ptr38, i8*** %args.addr, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34
  %44 = load i8**, i8*** %args.addr, align 4
  %45 = load i8*, i8** %44, align 4
  %tobool40 = icmp ne i8* %45, null
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end39
  %46 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  call void @inittyptab()
  store i32 1, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end39
  %47 = load i8**, i8*** %args.addr, align 4
  %48 = load i8*, i8** %47, align 4
  %call43 = call i32 @optlookup(i8* %48)
  store i32 %call43, i32* %optno, align 4
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.end42
  %49 = load i8*, i8** %nam.addr, align 4
  %50 = load i8**, i8*** %args.addr, align 4
  %51 = load i8*, i8** %50, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %51)
  br label %if.end51

if.else46:                                        ; preds = %if.end42
  %52 = load i32, i32* %optno, align 4
  %53 = load i32, i32* %action, align 4
  %call47 = call i32 @dosetopt(i32 %52, i32 %53, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else46
  %54 = load i8*, i8** %nam.addr, align 4
  %55 = load i8**, i8*** %args.addr, align 4
  %56 = load i8*, i8** %55, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* %56)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.else46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then45
  br label %while.end

if.else52:                                        ; preds = %if.else
  %57 = load i8**, i8*** %args.addr, align 4
  %58 = load i8*, i8** %57, align 4
  %59 = load i8, i8* %58, align 1
  %conv53 = sext i8 %59 to i32
  %cmp54 = icmp eq i32 %conv53, 109
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else52
  store i32 1, i32* %match, align 4
  br label %if.end69

if.else57:                                        ; preds = %if.else52
  %60 = load i8**, i8*** %args.addr, align 4
  %61 = load i8*, i8** %60, align 4
  %62 = load i8, i8* %61, align 1
  %call58 = call i32 @optlookupc(i8 signext %62)
  store i32 %call58, i32* %optno, align 4
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else62, label %if.then60

if.then60:                                        ; preds = %if.else57
  %63 = load i8*, i8** %nam.addr, align 4
  %64 = load i8**, i8*** %args.addr, align 4
  %65 = load i8*, i8** %64, align 4
  %66 = load i8, i8* %65, align 1
  %conv61 = sext i8 %66 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %conv61)
  br label %if.end68

if.else62:                                        ; preds = %if.else57
  %67 = load i32, i32* %optno, align 4
  %68 = load i32, i32* %action, align 4
  %call63 = call i32 @dosetopt(i32 %67, i32 %68, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.else62
  %69 = load i8*, i8** %nam.addr, align 4
  %70 = load i8**, i8*** %args.addr, align 4
  %71 = load i8*, i8** %70, align 4
  %72 = load i8, i8* %71, align 1
  %conv66 = sext i8 %72 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 %conv66)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.else62
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then60
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then56
  br label %if.end70

if.end70:                                         ; preds = %if.end69
  br label %if.end71

if.end71:                                         ; preds = %if.end70
  br label %while.cond14

while.end:                                        ; preds = %if.end51, %while.cond14
  %73 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr72 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %incdec.ptr72, i8*** %args.addr, align 4
  br label %while.cond

while.end73:                                      ; preds = %land.end
  br label %doneoptions

doneoptions:                                      ; preds = %while.end73, %if.then29
  %74 = load i32, i32* %match, align 4
  %tobool74 = icmp ne i32 %74, 0
  br i1 %tobool74, label %if.else95, label %if.then75

if.then75:                                        ; preds = %doneoptions
  br label %while.cond76

while.cond76:                                     ; preds = %if.end93, %if.then75
  %75 = load i8**, i8*** %args.addr, align 4
  %76 = load i8*, i8** %75, align 4
  %tobool77 = icmp ne i8* %76, null
  br i1 %tobool77, label %while.body78, label %while.end94

while.body78:                                     ; preds = %while.cond76
  %77 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr79 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %incdec.ptr79, i8*** %args.addr, align 4
  %78 = load i8*, i8** %77, align 4
  %call80 = call i32 @optlookup(i8* %78)
  store i32 %call80, i32* %optno, align 4
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.else84, label %if.then82

if.then82:                                        ; preds = %while.body78
  %79 = load i8*, i8** %nam.addr, align 4
  %80 = load i8**, i8*** %args.addr, align 4
  %arrayidx83 = getelementptr inbounds i8*, i8** %80, i32 -1
  %81 = load i8*, i8** %arrayidx83, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %81)
  br label %if.end93

if.else84:                                        ; preds = %while.body78
  %82 = load i32, i32* %optno, align 4
  %83 = load i32, i32* %isun.addr, align 4
  %tobool85 = icmp ne i32 %83, 0
  %lnot86 = xor i1 %tobool85, true
  %lnot.ext87 = zext i1 %lnot86 to i32
  %call88 = call i32 @dosetopt(i32 %82, i32 %lnot.ext87, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.else84
  %84 = load i8*, i8** %nam.addr, align 4
  %85 = load i8**, i8*** %args.addr, align 4
  %arrayidx91 = getelementptr inbounds i8*, i8** %85, i32 -1
  %86 = load i8*, i8** %arrayidx91, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* %86)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.else84
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then82
  br label %while.cond76

while.end94:                                      ; preds = %while.cond76
  br label %if.end131

if.else95:                                        ; preds = %doneoptions
  br label %while.cond96

while.cond96:                                     ; preds = %if.end124, %if.then123, %if.else95
  %87 = load i8**, i8*** %args.addr, align 4
  %88 = load i8*, i8** %87, align 4
  %tobool97 = icmp ne i8* %88, null
  br i1 %tobool97, label %while.body98, label %while.end130

while.body98:                                     ; preds = %while.cond96
  %89 = load i8**, i8*** %args.addr, align 4
  %90 = load i8*, i8** %89, align 4
  %call99 = call i8* @dupstring(i8* %90)
  store i8* %call99, i8** %s, align 4
  store i8* %call99, i8** %t, align 4
  br label %while.cond100

while.cond100:                                    ; preds = %if.end119, %while.body98
  %91 = load i8*, i8** %t, align 4
  %92 = load i8, i8* %91, align 1
  %tobool101 = icmp ne i8 %92, 0
  br i1 %tobool101, label %while.body102, label %while.end120

while.body102:                                    ; preds = %while.cond100
  %93 = load i8*, i8** %t, align 4
  %94 = load i8, i8* %93, align 1
  %conv103 = sext i8 %94 to i32
  %cmp104 = icmp eq i32 %conv103, 95
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %while.body102
  %95 = load i8*, i8** %t, align 4
  call void @chuck(i8* %95)
  br label %if.end119

if.else107:                                       ; preds = %while.body102
  %96 = load i8*, i8** %t, align 4
  %97 = load i8, i8* %96, align 1
  %conv108 = sext i8 %97 to i32
  %cmp109 = icmp sge i32 %conv108, 65
  br i1 %cmp109, label %land.lhs.true, label %if.end117

land.lhs.true:                                    ; preds = %if.else107
  %98 = load i8*, i8** %t, align 4
  %99 = load i8, i8* %98, align 1
  %conv111 = sext i8 %99 to i32
  %cmp112 = icmp sle i32 %conv111, 90
  br i1 %cmp112, label %if.then114, label %if.end117

if.then114:                                       ; preds = %land.lhs.true
  %100 = load i8*, i8** %t, align 4
  %101 = load i8, i8* %100, align 1
  %conv115 = sext i8 %101 to i32
  %sub = sub nsw i32 %conv115, 65
  %add = add nsw i32 %sub, 97
  %conv116 = trunc i32 %add to i8
  %102 = load i8*, i8** %t, align 4
  store i8 %conv116, i8* %102, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %land.lhs.true, %if.else107
  %103 = load i8*, i8** %t, align 4
  %incdec.ptr118 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr118, i8** %t, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.end117, %if.then106
  br label %while.cond100

while.end120:                                     ; preds = %while.cond100
  %104 = load i8*, i8** %s, align 4
  call void @tokenize(i8* %104)
  %105 = load i8*, i8** %s, align 4
  %call121 = call %struct.patprog* @patcompile(i8* %105, i32 0, i8** null)
  store %struct.patprog* %call121, %struct.patprog** %pprog, align 4
  %tobool122 = icmp ne %struct.patprog* %call121, null
  br i1 %tobool122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %while.end120
  %106 = load i8*, i8** %nam.addr, align 4
  %107 = load i8**, i8*** %args.addr, align 4
  %108 = load i8*, i8** %107, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* %108)
  br label %while.cond96

if.end124:                                        ; preds = %while.end120
  %109 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %110 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %111 = load i32, i32* %isun.addr, align 4
  %tobool125 = icmp ne i32 %111, 0
  %lnot126 = xor i1 %tobool125, true
  %lnot.ext127 = zext i1 %lnot126 to i32
  %call128 = call i32 @scanmatchtable(%struct.hashtable* %109, %struct.patprog* %110, i32 0, i32 0, i32 256, void (%struct.hashnode*, i32)* @setoption, i32 %lnot.ext127)
  %112 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr129 = getelementptr inbounds i8*, i8** %112, i32 1
  store i8** %incdec.ptr129, i8*** %args.addr, align 4
  br label %while.cond96

while.end130:                                     ; preds = %while.cond96
  br label %if.end131

if.end131:                                        ; preds = %while.end130, %while.end94
  call void @inittyptab()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end131, %if.then41, %if.then
  %113 = load i32, i32* %retval, align 4
  ret i32 %113
}

declare void @zwarnnam(i8*, i8*, ...) #1

declare void @inittyptab() #1

; Function Attrs: noinline nounwind
define i32 @optlookup(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %s = alloca i8*, align 4
  %t = alloca i8*, align 4
  %n = alloca %struct.optname*, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %t, align 4
  store i8* %call, i8** %s, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %1 = load i8*, i8** %t, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %t, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %t, align 4
  call void @chuck(i8* %5)
  br label %if.end11

if.else:                                          ; preds = %while.body
  %6 = load i8*, i8** %t, align 4
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp sge i32 %conv2, 65
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8*, i8** %t, align 4
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp sle i32 %conv5, 90
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  %10 = load i8*, i8** %t, align 4
  %11 = load i8, i8* %10, align 1
  %conv9 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv9, 65
  %add = add nsw i32 %sub, 97
  %conv10 = trunc i32 %add to i8
  %12 = load i8*, i8** %t, align 4
  store i8 %conv10, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true, %if.else
  %13 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %s, align 4
  %arrayidx = getelementptr inbounds i8, i8* %14, i32 0
  %15 = load i8, i8* %arrayidx, align 1
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 110
  br i1 %cmp13, label %land.lhs.true15, label %if.else25

land.lhs.true15:                                  ; preds = %while.end
  %16 = load i8*, i8** %s, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i32 1
  %17 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 111
  br i1 %cmp18, label %land.lhs.true20, label %if.else25

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %18 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 9
  %19 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %20 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %21 = load i8*, i8** %s, align 4
  %add.ptr = getelementptr inbounds i8, i8* %21, i32 2
  %call21 = call %struct.hashnode* %19(%struct.hashtable* %20, i8* %add.ptr)
  %22 = bitcast %struct.hashnode* %call21 to %struct.optname*
  store %struct.optname* %22, %struct.optname** %n, align 4
  %tobool22 = icmp ne %struct.optname* %22, null
  br i1 %tobool22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %land.lhs.true20
  %23 = load %struct.optname*, %struct.optname** %n, align 4
  %optno = getelementptr inbounds %struct.optname, %struct.optname* %23, i32 0, i32 1
  %24 = load i32, i32* %optno, align 4
  %sub24 = sub nsw i32 0, %24
  store i32 %sub24, i32* %retval, align 4
  br label %return

if.else25:                                        ; preds = %land.lhs.true20, %land.lhs.true15, %while.end
  %25 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %getnode26 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %25, i32 0, i32 9
  %26 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode26, align 4
  %27 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %28 = load i8*, i8** %s, align 4
  %call27 = call %struct.hashnode* %26(%struct.hashtable* %27, i8* %28)
  %29 = bitcast %struct.hashnode* %call27 to %struct.optname*
  store %struct.optname* %29, %struct.optname** %n, align 4
  %tobool28 = icmp ne %struct.optname* %29, null
  br i1 %tobool28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else25
  %30 = load %struct.optname*, %struct.optname** %n, align 4
  %optno30 = getelementptr inbounds %struct.optname, %struct.optname* %30, i32 0, i32 1
  %31 = load i32, i32* %optno30, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

if.else31:                                        ; preds = %if.else25
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else31, %if.then29, %if.then23
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind
define i32 @dosetopt(i32 %optno, i32 %value, i32 %force, i8* %new_opts) #0 {
entry:
  %retval = alloca i32, align 4
  %optno.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  %new_opts.addr = alloca i8*, align 4
  %s = alloca i8**, align 4
  store i32 %optno, i32* %optno.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 %force, i32* %force.addr, align 4
  store i8* %new_opts, i8** %new_opts.addr, align 4
  %0 = load i32, i32* %optno.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %optno.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* %optno.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %optno.addr, align 4
  %3 = load i32, i32* %value.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %value.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %4 = load i32, i32* %optno.addr, align 4
  %cmp4 = icmp eq i32 %4, 155
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %tobool6 = icmp ne i8 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  %6 = load i32, i32* %value.addr, align 4
  %tobool8 = icmp ne i32 %6, 0
  %cond = select i1 %tobool8, i32 0, i32 -1
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then5
  %7 = load i32, i32* %value.addr, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @rparams, i32 0, i32 0), i8*** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i8**, i8*** %s, align 4
  %9 = load i8*, i8** %8, align 4
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %s, align 4
  %11 = load i8*, i8** %10, align 4
  call void @restrictparam(i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i8**, i8*** %s, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr, i8*** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.end9
  br label %if.end128

if.else:                                          ; preds = %if.end3
  %13 = load i32, i32* %force.addr, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.else21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %optno.addr, align 4
  %cmp15 = icmp eq i32 %14, 53
  br i1 %cmp15, label %land.lhs.true16, label %if.else21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %value.addr, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %if.else21, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %16 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %16 to i32
  %tobool19 = icmp ne i32 %conv, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true18
  store i32 -1, i32* %retval, align 4
  br label %return

if.else21:                                        ; preds = %land.lhs.true18, %land.lhs.true16, %land.lhs.true, %if.else
  %17 = load i32, i32* %force.addr, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %if.else37, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else21
  %18 = load i32, i32* %optno.addr, align 4
  %cmp24 = icmp eq i32 %18, 94
  br i1 %cmp24, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %19 = load i32, i32* %optno.addr, align 4
  %cmp26 = icmp eq i32 %19, 161
  br i1 %cmp26, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %20 = load i32, i32* %optno.addr, align 4
  %cmp29 = icmp eq i32 %20, 166
  br i1 %cmp29, label %if.then31, label %if.else37

if.then31:                                        ; preds = %lor.lhs.false28, %lor.lhs.false, %land.lhs.true23
  %21 = load i8*, i8** %new_opts.addr, align 4
  %22 = load i32, i32* %optno.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %21, i32 %22
  %23 = load i8, i8* %arrayidx, align 1
  %conv32 = sext i8 %23 to i32
  %24 = load i32, i32* %value.addr, align 4
  %cmp33 = icmp eq i32 %conv32, %24
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then31
  store i32 0, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then31
  store i32 -1, i32* %retval, align 4
  br label %return

if.else37:                                        ; preds = %lor.lhs.false28, %if.else21
  %25 = load i32, i32* %force.addr, align 4
  %tobool38 = icmp ne i32 %25, 0
  br i1 %tobool38, label %if.else53, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.else37
  %26 = load i32, i32* %optno.addr, align 4
  %cmp40 = icmp eq i32 %26, 179
  br i1 %cmp40, label %land.lhs.true42, label %if.else53

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %27 = load i32, i32* %value.addr, align 4
  %tobool43 = icmp ne i32 %27, 0
  br i1 %tobool43, label %if.then44, label %if.else53

if.then44:                                        ; preds = %land.lhs.true42
  %28 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool45 = icmp ne i8 %28, 0
  br i1 %tobool45, label %lor.lhs.false46, label %if.then51

lor.lhs.false46:                                  ; preds = %if.then44
  %29 = load i32, i32* @SHTTY, align 4
  %cmp47 = icmp eq i32 %29, -1
  br i1 %cmp47, label %if.then51, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool50 = icmp ne %struct._IO_FILE* %30, null
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false49, %lor.lhs.false46, %if.then44
  store i32 -1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %lor.lhs.false49
  br label %if.end125

if.else53:                                        ; preds = %land.lhs.true42, %land.lhs.true39, %if.else37
  %31 = load i32, i32* %optno.addr, align 4
  %cmp54 = icmp eq i32 %31, 140
  br i1 %cmp54, label %land.lhs.true56, label %if.else75

land.lhs.true56:                                  ; preds = %if.else53
  %32 = load i32, i32* %value.addr, align 4
  %tobool57 = icmp ne i32 %32, 0
  br i1 %tobool57, label %if.else75, label %if.then58

if.then58:                                        ; preds = %land.lhs.true56
  %call = call i32 @getuid()
  %call59 = call i32 @setuid(i32 %call)
  %call60 = call i32 @getgid()
  %call61 = call i32 @setgid(i32 %call60)
  %call62 = call i32 @getuid()
  %call63 = call i32 @setuid(i32 %call62)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.then58
  %call66 = call i32* @__errno_location()
  %33 = load i32, i32* %call66, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i32 %33)
  store i32 -1, i32* %retval, align 4
  br label %return

if.else67:                                        ; preds = %if.then58
  %call68 = call i32 @getgid()
  %call69 = call i32 @setgid(i32 %call68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.else67
  %call72 = call i32* @__errno_location()
  %34 = load i32, i32* %call72, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %34)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.else67
  br label %if.end74

if.end74:                                         ; preds = %if.end73
  br label %if.end124

if.else75:                                        ; preds = %land.lhs.true56, %if.else53
  %35 = load i32, i32* %force.addr, align 4
  %tobool76 = icmp ne i32 %35, 0
  br i1 %tobool76, label %if.else95, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.else75
  %36 = load i32, i32* %optno.addr, align 4
  %cmp78 = icmp eq i32 %36, 117
  br i1 %cmp78, label %land.lhs.true80, label %if.else95

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %37 = load i32, i32* %value.addr, align 4
  %tobool81 = icmp ne i32 %37, 0
  br i1 %tobool81, label %if.then82, label %if.else95

if.then82:                                        ; preds = %land.lhs.true80
  %38 = load i8*, i8** %new_opts.addr, align 4
  %39 = load i32, i32* %optno.addr, align 4
  %arrayidx83 = getelementptr inbounds i8, i8* %38, i32 %39
  %40 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %40 to i32
  %41 = load i32, i32* %value.addr, align 4
  %cmp85 = icmp eq i32 %conv84, %41
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then82
  store i32 0, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.then82
  %42 = load i32, i32* @SHTTY, align 4
  %cmp89 = icmp ne i32 %42, -1
  br i1 %cmp89, label %if.then91, label %if.else93

if.then91:                                        ; preds = %if.end88
  %call92 = call i32 @getpgrp()
  store i32 %call92, i32* @origpgrp, align 4
  call void @acquire_pgrp()
  br label %if.end94

if.else93:                                        ; preds = %if.end88
  store i32 -1, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then91
  br label %if.end123

if.else95:                                        ; preds = %land.lhs.true80, %land.lhs.true77, %if.else75
  %43 = load i32, i32* %optno.addr, align 4
  %cmp96 = icmp eq i32 %43, 49
  br i1 %cmp96, label %land.lhs.true101, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.else95
  %44 = load i32, i32* %optno.addr, align 4
  %cmp99 = icmp eq i32 %44, 175
  br i1 %cmp99, label %land.lhs.true101, label %if.else114

land.lhs.true101:                                 ; preds = %lor.lhs.false98, %if.else95
  %45 = load i32, i32* %value.addr, align 4
  %tobool102 = icmp ne i32 %45, 0
  br i1 %tobool102, label %if.then103, label %if.else114

if.then103:                                       ; preds = %land.lhs.true101
  %46 = load %struct.emulation_options*, %struct.emulation_options** @sticky, align 4
  %tobool104 = icmp ne %struct.emulation_options* %46, null
  br i1 %tobool104, label %land.lhs.true105, label %if.end108

land.lhs.true105:                                 ; preds = %if.then103
  %47 = load %struct.emulation_options*, %struct.emulation_options** @sticky, align 4
  %emulation = getelementptr inbounds %struct.emulation_options, %struct.emulation_options* %47, i32 0, i32 0
  %48 = load i32, i32* %emulation, align 4
  %tobool106 = icmp ne i32 %48, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %land.lhs.true105
  store i32 -1, i32* %retval, align 4
  br label %return

if.end108:                                        ; preds = %land.lhs.true105, %if.then103
  %49 = load i32, i32* %optno.addr, align 4
  %call109 = call i8* (i32, ...) @zleentry(i32 6, i32 %49)
  %50 = load i8*, i8** %new_opts.addr, align 4
  %51 = load i32, i32* %optno.addr, align 4
  %cmp110 = icmp eq i32 %51, 49
  %cond112 = select i1 %cmp110, i32 175, i32 49
  %arrayidx113 = getelementptr inbounds i8, i8* %50, i32 %cond112
  store i8 0, i8* %arrayidx113, align 1
  br label %if.end122

if.else114:                                       ; preds = %land.lhs.true101, %lor.lhs.false98
  %52 = load i32, i32* %optno.addr, align 4
  %cmp115 = icmp eq i32 %52, 169
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %if.else114
  %53 = load i32, i32* %value.addr, align 4
  %tobool118 = icmp ne i32 %53, 0
  %cond119 = select i1 %tobool118, i32 96, i32 0
  %conv120 = trunc i32 %cond119 to i8
  store i8 %conv120, i8* @keyboardhackchar, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.else114
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end108
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end94
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end74
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end52
  br label %if.end126

if.end126:                                        ; preds = %if.end125
  br label %if.end127

if.end127:                                        ; preds = %if.end126
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end13
  %54 = load i32, i32* %value.addr, align 4
  %conv129 = trunc i32 %54 to i8
  %55 = load i8*, i8** %new_opts.addr, align 4
  %56 = load i32, i32* %optno.addr, align 4
  %arrayidx130 = getelementptr inbounds i8, i8* %55, i32 %56
  store i8 %conv129, i8* %arrayidx130, align 1
  %57 = load i32, i32* %optno.addr, align 4
  %cmp131 = icmp eq i32 %57, 18
  br i1 %cmp131, label %if.then136, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.end128
  %58 = load i32, i32* %optno.addr, align 4
  %cmp134 = icmp eq i32 %58, 161
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %lor.lhs.false133, %if.end128
  call void @inittyptab()
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %lor.lhs.false133
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end137, %if.then107, %if.else93, %if.then87, %if.then71, %if.then65, %if.then51, %if.end36, %if.then35, %if.then20, %if.then7, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind
define i32 @optlookupc(i8 signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 48
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sgt i32 %conv2, 121
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 163), align 1
  %conv5 = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv5, 0
  %cond = select i1 %tobool, i16* getelementptr inbounds ([74 x i16], [74 x i16]* @kshletters, i32 0, i32 0), i16* getelementptr inbounds ([74 x i16], [74 x i16]* @zshletters, i32 0, i32 0)
  %3 = load i8, i8* %c.addr, align 1
  %conv6 = sext i8 %3 to i32
  %sub = sub nsw i32 %conv6, 48
  %arrayidx = getelementptr inbounds i16, i16* %cond, i32 %sub
  %4 = load i16, i16* %arrayidx, align 2
  %conv7 = sext i16 %4 to i32
  store i32 %conv7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare i8* @dupstring(i8*) #1

declare void @chuck(i8*) #1

declare void @tokenize(i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare i32 @scanmatchtable(%struct.hashtable*, %struct.patprog*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32) #1

; Function Attrs: noinline nounwind
define internal void @setoption(%struct.hashnode* %hn, i32 %value) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %value.addr = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.optname*
  %optno = getelementptr inbounds %struct.optname, %struct.optname* %1, i32 0, i32 1
  %2 = load i32, i32* %optno, align 4
  %3 = load i32, i32* %value.addr, align 4
  %call = call i32 @dosetopt(i32 %2, i32 %3, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind
define internal void @restrictparam(i8* %nam) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %3 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %3)
  %4 = bitcast %struct.hashnode* %call to %struct.param*
  store %struct.param* %4, %struct.param** %pm, align 4
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %7 = load i32, i32* %flags, align 8
  %or = or i32 %7, 20971520
  store i32 %or, i32* %flags, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %nam.addr, align 4
  %call1 = call %struct.param* @createparam(i8* %8, i32 54525952)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @setuid(i32) #1

declare i32 @getuid() #1

declare i32 @setgid(i32) #1

declare i32 @getgid() #1

declare void @zwarn(i8*, ...) #1

declare i32* @__errno_location() #1

declare i32 @getpgrp() #1

declare void @acquire_pgrp() #1

declare i8* @zleentry(i32, ...) #1

; Function Attrs: noinline nounwind
define i8* @dashgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %val = alloca i8*, align 4
  %i = alloca i32, align 4
  %optno = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @dashgetfn.buf, i32 0, i32 0), i8** %val, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 163), align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i16* getelementptr inbounds ([74 x i16], [74 x i16]* @kshletters, i32 0, i32 0), i16* getelementptr inbounds ([74 x i16], [74 x i16]* @zshletters, i32 0, i32 0)
  %2 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds i16, i16* %cond, i32 %2
  %3 = load i16, i16* %arrayidx, align 2
  %conv1 = sext i16 %3 to i32
  store i32 %conv1, i32* %optno, align 4
  %4 = load i32, i32* %optno, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %optno, align 4
  %cmp3 = icmp sgt i32 %5, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %optno, align 4
  %arrayidx5 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %6
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %if.then, label %if.end

cond.false:                                       ; preds = %land.lhs.true
  %8 = load i32, i32* %optno, align 4
  %sub = sub nsw i32 0, %8
  %arrayidx8 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %sub
  %9 = load i8, i8* %arrayidx8, align 1
  %tobool9 = icmp ne i8 %9, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 48, %10
  %conv10 = trunc i32 %add to i8
  %11 = load i8*, i8** %val, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %val, align 4
  store i8 %conv10, i8* %11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %val, align 4
  store i8 0, i8* %13, align 1
  ret i8* getelementptr inbounds ([75 x i8], [75 x i8]* @dashgetfn.buf, i32 0, i32 0)
}

; Function Attrs: noinline nounwind
define void @printoptionstates(i32 %hadplus) #0 {
entry:
  %hadplus.addr = alloca i32, align 4
  store i32 %hadplus, i32* %hadplus.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %1 = load i32, i32* %hadplus.addr, align 4
  %call = call i32 @scanhashtable(%struct.hashtable* %0, i32 1, i32 0, i32 256, void (%struct.hashnode*, i32)* @printoptionnodestate, i32 %1)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printoptionnodestate(%struct.hashnode* %hn, i32 %hadplus) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %hadplus.addr = alloca i32, align 4
  %on = alloca %struct.optname*, align 4
  %optno = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %hadplus, i32* %hadplus.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.optname*
  store %struct.optname* %1, %struct.optname** %on, align 4
  %2 = load %struct.optname*, %struct.optname** %on, align 4
  %optno1 = getelementptr inbounds %struct.optname, %struct.optname* %2, i32 0, i32 1
  %3 = load i32, i32* %optno1, align 4
  store i32 %3, i32* %optno, align 4
  %4 = load i32, i32* %hadplus.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.optname*, %struct.optname** %on, align 4
  %node = getelementptr inbounds %struct.optname, %struct.optname* %5, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %7 = load i32, i32* @emulation, align 4
  %and = and i32 %6, %7
  %tobool2 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %8 = load i32, i32* %optno, align 4
  %arrayidx = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %8
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp ne i32 %lnot.ext, %conv
  %cond = select i1 %cmp, i32 45, i32 43
  %10 = load %struct.optname*, %struct.optname** %on, align 4
  %node5 = getelementptr inbounds %struct.optname, %struct.optname* %10, i32 0, i32 0
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %11 = load i32, i32* %flags6, align 4
  %12 = load i32, i32* @emulation, align 4
  %and7 = and i32 %11, %12
  %tobool8 = icmp ne i32 %and7, 0
  %lnot9 = xor i1 %tobool8, true
  %lnot11 = xor i1 %lnot9, true
  %cond13 = select i1 %lnot11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.218, i32 0, i32 0)
  %13 = load %struct.optname*, %struct.optname** %on, align 4
  %node14 = getelementptr inbounds %struct.optname, %struct.optname* %13, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 1
  %14 = load i8*, i8** %nam, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.217, i32 0, i32 0), i32 %cond, i8* %cond13, i8* %14)
  br label %if.end35

if.else:                                          ; preds = %entry
  %15 = load %struct.optname*, %struct.optname** %on, align 4
  %node15 = getelementptr inbounds %struct.optname, %struct.optname* %15, i32 0, i32 0
  %flags16 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node15, i32 0, i32 2
  %16 = load i32, i32* %flags16, align 4
  %17 = load i32, i32* @emulation, align 4
  %and17 = and i32 %16, %17
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else27

if.then19:                                        ; preds = %if.else
  %18 = load %struct.optname*, %struct.optname** %on, align 4
  %node20 = getelementptr inbounds %struct.optname, %struct.optname* %18, i32 0, i32 0
  %nam21 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node20, i32 0, i32 1
  %19 = load i8*, i8** %nam21, align 4
  %20 = load i32, i32* %optno, align 4
  %arrayidx22 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %20
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %21 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  %cond25 = select i1 %tobool24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* %19, i8* %cond25)
  br label %if.end

if.else27:                                        ; preds = %if.else
  %22 = load %struct.optname*, %struct.optname** %on, align 4
  %node28 = getelementptr inbounds %struct.optname, %struct.optname* %22, i32 0, i32 0
  %nam29 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node28, i32 0, i32 1
  %23 = load i8*, i8** %nam29, align 4
  %24 = load i32, i32* %optno, align 4
  %arrayidx30 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %24
  %25 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %25 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  %cond33 = select i1 %tobool32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %23, i8* %cond33)
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then19
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @printoptionlist() #0 {
entry:
  %lp = alloca i16*, align 4
  %c = alloca i8, align 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  %0 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %call1 = call i32 @scanhashtable(%struct.hashtable* %0, i32 1, i32 0, i32 256, void (%struct.hashnode*, i32)* @printoptionlist_printoption, i32 0)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  %1 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %call3 = call i32 @scanhashtable(%struct.hashtable* %1, i32 1, i32 256, i32 0, void (%struct.hashnode*, i32)* @printoptionlist_printoption, i32 0)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 163), align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i16* getelementptr inbounds ([74 x i16], [74 x i16]* @kshletters, i32 0, i32 0), i16* getelementptr inbounds ([74 x i16], [74 x i16]* @zshletters, i32 0, i32 0)
  store i16* %cond, i16** %lp, align 4
  store i8 48, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8, i8* %c, align 1
  %conv5 = sext i8 %3 to i32
  %cmp = icmp sle i32 %conv5, 121
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16*, i16** %lp, align 4
  %5 = load i16, i16* %4, align 2
  %tobool7 = icmp ne i16 %5, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load i8, i8* %c, align 1
  %conv8 = sext i8 %6 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %conv8)
  %7 = load i16*, i16** %lp, align 4
  %8 = load i16, i16* %7, align 2
  %conv10 = sext i16 %8 to i32
  call void @printoptionlist_printequiv(i32 %conv10)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %9 = load i16*, i16** %lp, align 4
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %lp, align 4
  %10 = load i8, i8* %c, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %c, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal void @printoptionlist_printoption(%struct.hashnode* %hn, i32 %ignored) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %ignored.addr = alloca i32, align 4
  %on = alloca %struct.optname*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %ignored, i32* %ignored.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.optname*
  store %struct.optname* %1, %struct.optname** %on, align 4
  %2 = load %struct.optname*, %struct.optname** %on, align 4
  %node = getelementptr inbounds %struct.optname, %struct.optname* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.optname*, %struct.optname** %on, align 4
  %node1 = getelementptr inbounds %struct.optname, %struct.optname* %4, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %5 = load i8*, i8** %nam, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.219, i32 0, i32 0), i8* %5)
  %6 = load %struct.optname*, %struct.optname** %on, align 4
  %optno = getelementptr inbounds %struct.optname, %struct.optname* %6, i32 0, i32 1
  %7 = load i32, i32* %optno, align 4
  call void @printoptionlist_printequiv(i32 %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.optname*, %struct.optname** %on, align 4
  %node2 = getelementptr inbounds %struct.optname, %struct.optname* %8, i32 0, i32 0
  %nam3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 1
  %9 = load i8*, i8** %nam3, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printoptionlist_printequiv(i32 %optno) #0 {
entry:
  %optno.addr = alloca i32, align 4
  %isneg = alloca i32, align 4
  store i32 %optno, i32* %optno.addr, align 4
  %0 = load i32, i32* %optno.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %isneg, align 4
  %1 = load i32, i32* %isneg, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  %2 = load i32, i32* %optno.addr, align 4
  %mul = mul nsw i32 %2, %cond
  store i32 %mul, i32* %optno.addr, align 4
  %3 = load i32, i32* %isneg, align 4
  %tobool1 = icmp ne i32 %3, 0
  %cond2 = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.218, i32 0, i32 0)
  %4 = load i32, i32* %optno.addr, align 4
  %sub = sub nsw i32 %4, 1
  %arrayidx = getelementptr inbounds [193 x %struct.optname], [193 x %struct.optname]* @optns, i32 0, i32 %sub
  %node = getelementptr inbounds %struct.optname, %struct.optname* %arrayidx, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %5 = load i8*, i8** %nam, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.221, i32 0, i32 0), i8* %cond2, i8* %5)
  ret void
}

; Function Attrs: noinline nounwind
define void @list_emulate_options(i8* %cmdopts, i32 %fully) #0 {
entry:
  %cmdopts.addr = alloca i8*, align 4
  %fully.addr = alloca i32, align 4
  store i8* %cmdopts, i8** %cmdopts.addr, align 4
  store i32 %fully, i32* %fully.addr, align 4
  %0 = load i8*, i8** %cmdopts.addr, align 4
  store i8* %0, i8** @print_emulate_opts, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %2 = load i32, i32* %fully.addr, align 4
  %call = call i32 @scanhashtable(%struct.hashtable* %1, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @print_emulate_option, i32 %2)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @print_emulate_option(%struct.hashnode* %hn, i32 %fully) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %fully.addr = alloca i32, align 4
  %on = alloca %struct.optname*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %fully, i32* %fully.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.optname*
  store %struct.optname* %1, %struct.optname** %on, align 4
  %2 = load %struct.optname*, %struct.optname** %on, align 4
  %node = getelementptr inbounds %struct.optname, %struct.optname* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %fully.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %land.lhs.true2, label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load %struct.optname*, %struct.optname** %on, align 4
  %node3 = getelementptr inbounds %struct.optname, %struct.optname* %5, i32 0, i32 0
  %flags4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  %6 = load i32, i32* %flags4, align 4
  %and5 = and i32 %6, 128
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true2, %land.lhs.true
  %7 = load %struct.optname*, %struct.optname** %on, align 4
  %node7 = getelementptr inbounds %struct.optname, %struct.optname* %7, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %8 = load i32, i32* %flags8, align 4
  %and9 = and i32 %8, 64
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then, label %if.end15

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true2
  %9 = load i8*, i8** @print_emulate_opts, align 4
  %10 = load %struct.optname*, %struct.optname** %on, align 4
  %optno = getelementptr inbounds %struct.optname, %struct.optname* %10, i32 0, i32 1
  %11 = load i32, i32* %optno, align 4
  %arrayidx = getelementptr inbounds i8, i8* %9, i32 %11
  %12 = load i8, i8* %arrayidx, align 1
  %tobool11 = icmp ne i8 %12, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then
  %14 = load %struct.optname*, %struct.optname** %on, align 4
  %node13 = getelementptr inbounds %struct.optname, %struct.optname* %14, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node13, i32 0, i32 1
  %15 = load i8*, i8** %nam, align 4
  %call14 = call i32 @puts(i8* %15)
  br label %if.end15

if.end15:                                         ; preds = %if.end, %lor.lhs.false, %entry
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @puts(i8*) #1

declare %struct.param* @createparam(i8*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
