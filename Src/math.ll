; ModuleID = 'math.c'
source_filename = "math.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.mathvalue = type { i8*, %struct.value*, %struct.mnumber }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.param = type { %struct.hashnode, %union.anon.0, %union.anon.1, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon.0 = type { double }
%union.anon.1 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.mnumber = type { %union.anon, i32 }
%union.anon = type { double }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.__sigset_t = type { [32 x i32] }
%struct.mathfunc = type { %struct.mathfunc*, i8*, i32, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)*, void (%struct.mnumber*, i8*, i8*, i32)*, i8*, i32, i32, i32 }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct._IO_FILE = type opaque

@type = internal global [53 x i32] [i32 0, i32 384, i32 1, i32 1, i32 385, i32 385, i32 1, i32 1, i32 16, i32 16, i32 16, i32 4, i32 4, i32 4, i32 4, i32 4, i32 16, i32 16, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 18, i32 18, i32 16, i32 129, i32 129, i32 33, i32 33, i32 33, i32 33, i32 33, i32 33, i32 65, i32 65, i32 65, i32 65, i32 65, i32 66, i32 66, i32 17, i32 5, i32 129, i32 1, i32 1, i32 256, i32 256, i32 5, i32 256, i32 33, i32 256], align 4
@errflag = external global i32, align 4
@sp = internal global i32 -1, align 4
@.str = private unnamed_addr constant [33 x i8] c"bad math expression: stack empty\00", align 1
@noeval = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bad math expression: imaginary power\00", align 1
@stack = internal global %struct.mathvalue* null, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"bad math expression: ':' without '?'\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"bad math expression: out of integers\00", align 1
@mtok = internal global i32 0, align 4
@mlevel = internal global i32 0, align 4
@outputunderscore = common global i32 0, align 4
@outputradix = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"bad math expression: illegal character: %c\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"bad math expression: empty string\00", align 1
@zero_mnumber = common global %struct.mnumber zeroinitializer, align 8
@lastmathval = common global %struct.mnumber zeroinitializer, align 8
@lastbase = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@paramtab = external global %struct.hashtable*, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"bad math expression: lvalue required\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@opts = external global [181 x i8], align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"math recursion limit exceeded: %s\00", align 1
@unary = internal global i32 1, align 4
@ptr = internal global i8* null, align 4
@yyval = internal global %struct.mnumber zeroinitializer, align 8
@yylval = internal global i8* null, align 4
@prec = internal global i32* null, align 4
@c_prec = internal global [53 x i32] [i32 1, i32 137, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 9, i32 10, i32 11, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 12, i32 14, i32 13, i32 15, i32 16, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 18, i32 200, i32 2, i32 2, i32 0, i32 0, i32 3, i32 0, i32 17, i32 0], align 4
@z_prec = internal global [53 x i32] [i32 1, i32 137, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 4, i32 5, i32 6, i32 8, i32 8, i32 8, i32 9, i32 9, i32 3, i32 3, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 12, i32 13, i32 13, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 17, i32 200, i32 2, i32 2, i32 0, i32 0, i32 7, i32 0, i32 16, i32 0], align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"bad math expression: unexpected ')'\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"bad math expression: ')' expected\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"bad math expression: ':' expected\00", align 1
@typtab = external global [256 x i16], align 2
@mypid = external global i32, align 4
@lastval = external global i32, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"bad base syntax\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"bad output format specification\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"invalid base (must be 2 to 36 inclusive): %d\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"bad math expression: character missing after ##\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"bad floating point constant\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"bad math expression: %s expected at end of string\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"bad math expression: %s expected at `%l%s'\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@queueing_enabled = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@callmathfunc.dummy = internal global %struct.mnumber zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"no such function: %s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"wrong number of arguments: %s\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"unknown function: %s\00", align 1

; Function Attrs: noinline nounwind
define void @op(i32 %what) #0 {
entry:
  %what.addr = alloca i32, align 4
  %a = alloca %struct.mnumber, align 8
  %b = alloca %struct.mnumber, align 8
  %c = alloca %struct.mnumber, align 8
  %spval = alloca %struct.mnumber*, align 4
  %tp = alloca i32, align 4
  %tmp = alloca %struct.mnumber, align 8
  %tmp6 = alloca %struct.mnumber, align 8
  %tst = alloca double, align 8
  %mvp = alloca %struct.mathvalue*, align 4
  %tmp493 = alloca %struct.mnumber, align 8
  %tmp505 = alloca %struct.mnumber, align 8
  %tmp558 = alloca %struct.mnumber, align 8
  %tmp573 = alloca %struct.mnumber, align 8
  %tmp593 = alloca %struct.mnumber, align 8
  %tmp594 = alloca %struct.mnumber, align 8
  %tmp595 = alloca %struct.mnumber, align 8
  %agg.tmp = alloca %struct.mnumber, align 8
  %tmp629 = alloca %struct.mnumber, align 8
  %tmp644 = alloca %struct.mnumber, align 8
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @type, i32 0, i32 %0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %tp, align 4
  %2 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @sp, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end2:                                          ; preds = %if.end
  %4 = load i32, i32* %tp, align 4
  %and = and i32 %4, 124
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end496

if.then4:                                         ; preds = %if.end2
  call void @pop(%struct.mnumber* sret %tmp, i32 0)
  %5 = bitcast %struct.mnumber* %b to i8*
  %6 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 16, i32 8, i1 false)
  %7 = load i32, i32* %what.addr, align 4
  %cmp5 = icmp eq i32 %7, 29
  %conv = zext i1 %cmp5 to i32
  call void @pop(%struct.mnumber* sret %tmp6, i32 %conv)
  %8 = bitcast %struct.mnumber* %a to i8*
  %9 = bitcast %struct.mnumber* %tmp6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 8, i1 false)
  %10 = load i32, i32* @errflag, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then4
  br label %return

if.end9:                                          ; preds = %if.then4
  %11 = load i32, i32* %tp, align 4
  %and10 = and i32 %11, 80
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %12 = load i32, i32* %type, align 8
  %and13 = and i32 %12, 2
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.then12
  %type16 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  store i32 1, i32* %type16, align 8
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  %13 = load double, double* %d, align 8
  %conv17 = fptosi double %13 to i32
  %u18 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l = bitcast %union.anon* %u18 to i32*
  store i32 %conv17, i32* %l, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then12
  %type20 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 1
  %14 = load i32, i32* %type20, align 8
  %and21 = and i32 %14, 2
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end19
  %type24 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 1
  store i32 1, i32* %type24, align 8
  %u25 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d26 = bitcast %union.anon* %u25 to double*
  %15 = load double, double* %d26, align 8
  %conv27 = fptosi double %15 to i32
  %u28 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l29 = bitcast %union.anon* %u28 to i32*
  store i32 %conv27, i32* %l29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end19
  br label %if.end67

if.else:                                          ; preds = %if.end9
  %type31 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %16 = load i32, i32* %type31, align 8
  %type32 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 1
  %17 = load i32, i32* %type32, align 8
  %cmp33 = icmp ne i32 %16, %17
  br i1 %cmp33, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %if.else
  %18 = load i32, i32* %what.addr, align 4
  %cmp35 = icmp ne i32 %18, 43
  br i1 %cmp35, label %land.lhs.true37, label %if.end66

land.lhs.true37:                                  ; preds = %land.lhs.true
  %type38 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %19 = load i32, i32* %type38, align 8
  %cmp39 = icmp ne i32 %19, 4
  br i1 %cmp39, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true37
  %20 = load i32, i32* %what.addr, align 4
  %cmp41 = icmp ne i32 %20, 29
  br i1 %cmp41, label %if.then43, label %if.end66

if.then43:                                        ; preds = %lor.lhs.false, %land.lhs.true37
  %type44 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %21 = load i32, i32* %type44, align 8
  %and45 = and i32 %21, 1
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.then43
  %type48 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  store i32 2, i32* %type48, align 8
  %u49 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l50 = bitcast %union.anon* %u49 to i32*
  %22 = load i32, i32* %l50, align 8
  %conv51 = sitofp i32 %22 to double
  %u52 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d53 = bitcast %union.anon* %u52 to double*
  store double %conv51, double* %d53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.then43
  %type55 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 1
  %23 = load i32, i32* %type55, align 8
  %and56 = and i32 %23, 1
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.end54
  %type59 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 1
  store i32 2, i32* %type59, align 8
  %u60 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l61 = bitcast %union.anon* %u60 to i32*
  %24 = load i32, i32* %l61, align 8
  %conv62 = sitofp i32 %24 to double
  %u63 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d64 = bitcast %union.anon* %u63 to double*
  store double %conv62, double* %d64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.end54
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %lor.lhs.false, %land.lhs.true, %if.else
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end30
  %25 = load i32, i32* @noeval, align 4
  %tobool68 = icmp ne i32 %25, 0
  br i1 %tobool68, label %if.then69, label %if.else73

if.then69:                                        ; preds = %if.end67
  %type70 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  store i32 1, i32* %type70, align 8
  %u71 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l72 = bitcast %union.anon* %u71 to i32*
  store i32 0, i32* %l72, align 8
  br label %if.end487

if.else73:                                        ; preds = %if.end67
  %26 = load i32, i32* %tp, align 4
  %and74 = and i32 %26, 8
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else73
  br label %cond.end

cond.false:                                       ; preds = %if.else73
  %type76 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %27 = load i32, i32* %type76, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %27, %cond.false ]
  %type77 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  store i32 %cond, i32* %type77, align 8
  %28 = load i32, i32* %what.addr, align 4
  switch i32 %28, label %sw.epilog [
    i32 8, label %sw.bb
    i32 35, label %sw.bb
    i32 9, label %sw.bb85
    i32 36, label %sw.bb85
    i32 10, label %sw.bb92
    i32 37, label %sw.bb92
    i32 11, label %sw.bb99
    i32 32, label %sw.bb99
    i32 12, label %sw.bb119
    i32 33, label %sw.bb119
    i32 13, label %sw.bb153
    i32 34, label %sw.bb153
    i32 14, label %sw.bb186
    i32 30, label %sw.bb186
    i32 15, label %sw.bb206
    i32 31, label %sw.bb206
    i32 16, label %sw.bb227
    i32 38, label %sw.bb227
    i32 17, label %sw.bb234
    i32 39, label %sw.bb234
    i32 18, label %sw.bb241
    i32 19, label %sw.bb263
    i32 20, label %sw.bb285
    i32 21, label %sw.bb307
    i32 22, label %sw.bb329
    i32 23, label %sw.bb351
    i32 24, label %sw.bb373
    i32 40, label %sw.bb373
    i32 25, label %sw.bb382
    i32 41, label %sw.bb382
    i32 26, label %sw.bb391
    i32 42, label %sw.bb391
    i32 43, label %sw.bb413
    i32 49, label %sw.bb414
    i32 51, label %sw.bb414
    i32 29, label %sw.bb486
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %u78 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l79 = bitcast %union.anon* %u78 to i32*
  %29 = load i32, i32* %l79, align 8
  %u80 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l81 = bitcast %union.anon* %u80 to i32*
  %30 = load i32, i32* %l81, align 8
  %and82 = and i32 %29, %30
  %u83 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l84 = bitcast %union.anon* %u83 to i32*
  store i32 %and82, i32* %l84, align 8
  br label %sw.epilog

sw.bb85:                                          ; preds = %cond.end, %cond.end
  %u86 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l87 = bitcast %union.anon* %u86 to i32*
  %31 = load i32, i32* %l87, align 8
  %u88 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l89 = bitcast %union.anon* %u88 to i32*
  %32 = load i32, i32* %l89, align 8
  %xor = xor i32 %31, %32
  %u90 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l91 = bitcast %union.anon* %u90 to i32*
  store i32 %xor, i32* %l91, align 8
  br label %sw.epilog

sw.bb92:                                          ; preds = %cond.end, %cond.end
  %u93 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l94 = bitcast %union.anon* %u93 to i32*
  %33 = load i32, i32* %l94, align 8
  %u95 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l96 = bitcast %union.anon* %u95 to i32*
  %34 = load i32, i32* %l96, align 8
  %or = or i32 %33, %34
  %u97 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l98 = bitcast %union.anon* %u97 to i32*
  store i32 %or, i32* %l98, align 8
  br label %sw.epilog

sw.bb99:                                          ; preds = %cond.end, %cond.end
  %type100 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  %35 = load i32, i32* %type100, align 8
  %cmp101 = icmp eq i32 %35, 2
  br i1 %cmp101, label %if.then103, label %if.else110

if.then103:                                       ; preds = %sw.bb99
  %u104 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d105 = bitcast %union.anon* %u104 to double*
  %36 = load double, double* %d105, align 8
  %u106 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d107 = bitcast %union.anon* %u106 to double*
  %37 = load double, double* %d107, align 8
  %mul = fmul double %36, %37
  %u108 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %d109 = bitcast %union.anon* %u108 to double*
  store double %mul, double* %d109, align 8
  br label %if.end118

if.else110:                                       ; preds = %sw.bb99
  %u111 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l112 = bitcast %union.anon* %u111 to i32*
  %38 = load i32, i32* %l112, align 8
  %u113 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l114 = bitcast %union.anon* %u113 to i32*
  %39 = load i32, i32* %l114, align 8
  %mul115 = mul nsw i32 %38, %39
  %u116 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l117 = bitcast %union.anon* %u116 to i32*
  store i32 %mul115, i32* %l117, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.else110, %if.then103
  br label %sw.epilog

sw.bb119:                                         ; preds = %cond.end, %cond.end
  %call = call i32 @notzero(%struct.mnumber* byval align 8 %b)
  %tobool120 = icmp ne i32 %call, 0
  br i1 %tobool120, label %if.end122, label %if.then121

if.then121:                                       ; preds = %sw.bb119
  br label %return

if.end122:                                        ; preds = %sw.bb119
  %type123 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  %40 = load i32, i32* %type123, align 8
  %cmp124 = icmp eq i32 %40, 2
  br i1 %cmp124, label %if.then126, label %if.else133

if.then126:                                       ; preds = %if.end122
  %u127 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d128 = bitcast %union.anon* %u127 to double*
  %41 = load double, double* %d128, align 8
  %u129 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d130 = bitcast %union.anon* %u129 to double*
  %42 = load double, double* %d130, align 8
  %div = fdiv double %41, %42
  %u131 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %d132 = bitcast %union.anon* %u131 to double*
  store double %div, double* %d132, align 8
  br label %if.end152

if.else133:                                       ; preds = %if.end122
  %u134 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l135 = bitcast %union.anon* %u134 to i32*
  %43 = load i32, i32* %l135, align 8
  %cmp136 = icmp eq i32 %43, -1
  br i1 %cmp136, label %if.then138, label %if.else143

if.then138:                                       ; preds = %if.else133
  %u139 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l140 = bitcast %union.anon* %u139 to i32*
  %44 = load i32, i32* %l140, align 8
  %sub = sub nsw i32 0, %44
  %u141 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l142 = bitcast %union.anon* %u141 to i32*
  store i32 %sub, i32* %l142, align 8
  br label %if.end151

if.else143:                                       ; preds = %if.else133
  %u144 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l145 = bitcast %union.anon* %u144 to i32*
  %45 = load i32, i32* %l145, align 8
  %u146 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l147 = bitcast %union.anon* %u146 to i32*
  %46 = load i32, i32* %l147, align 8
  %div148 = sdiv i32 %45, %46
  %u149 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l150 = bitcast %union.anon* %u149 to i32*
  store i32 %div148, i32* %l150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.else143, %if.then138
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then126
  br label %sw.epilog

sw.bb153:                                         ; preds = %cond.end, %cond.end
  %call154 = call i32 @notzero(%struct.mnumber* byval align 8 %b)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end157, label %if.then156

if.then156:                                       ; preds = %sw.bb153
  br label %return

if.end157:                                        ; preds = %sw.bb153
  %type158 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  %47 = load i32, i32* %type158, align 8
  %cmp159 = icmp eq i32 %47, 2
  br i1 %cmp159, label %if.then161, label %if.else169

if.then161:                                       ; preds = %if.end157
  %u162 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d163 = bitcast %union.anon* %u162 to double*
  %48 = load double, double* %d163, align 8
  %u164 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d165 = bitcast %union.anon* %u164 to double*
  %49 = load double, double* %d165, align 8
  %call166 = call double @fmod(double %48, double %49) #4
  %u167 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %d168 = bitcast %union.anon* %u167 to double*
  store double %call166, double* %d168, align 8
  br label %if.end185

if.else169:                                       ; preds = %if.end157
  %u170 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l171 = bitcast %union.anon* %u170 to i32*
  %50 = load i32, i32* %l171, align 8
  %cmp172 = icmp eq i32 %50, -1
  br i1 %cmp172, label %if.then174, label %if.else177

if.then174:                                       ; preds = %if.else169
  %u175 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l176 = bitcast %union.anon* %u175 to i32*
  store i32 0, i32* %l176, align 8
  br label %if.end184

if.else177:                                       ; preds = %if.else169
  %u178 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l179 = bitcast %union.anon* %u178 to i32*
  %51 = load i32, i32* %l179, align 8
  %u180 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l181 = bitcast %union.anon* %u180 to i32*
  %52 = load i32, i32* %l181, align 8
  %rem = srem i32 %51, %52
  %u182 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l183 = bitcast %union.anon* %u182 to i32*
  store i32 %rem, i32* %l183, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.else177, %if.then174
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then161
  br label %sw.epilog

sw.bb186:                                         ; preds = %cond.end, %cond.end
  %type187 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  %53 = load i32, i32* %type187, align 8
  %cmp188 = icmp eq i32 %53, 2
  br i1 %cmp188, label %if.then190, label %if.else197

if.then190:                                       ; preds = %sw.bb186
  %u191 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d192 = bitcast %union.anon* %u191 to double*
  %54 = load double, double* %d192, align 8
  %u193 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d194 = bitcast %union.anon* %u193 to double*
  %55 = load double, double* %d194, align 8
  %add = fadd double %54, %55
  %u195 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %d196 = bitcast %union.anon* %u195 to double*
  store double %add, double* %d196, align 8
  br label %if.end205

if.else197:                                       ; preds = %sw.bb186
  %u198 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l199 = bitcast %union.anon* %u198 to i32*
  %56 = load i32, i32* %l199, align 8
  %u200 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l201 = bitcast %union.anon* %u200 to i32*
  %57 = load i32, i32* %l201, align 8
  %add202 = add nsw i32 %56, %57
  %u203 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l204 = bitcast %union.anon* %u203 to i32*
  store i32 %add202, i32* %l204, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.else197, %if.then190
  br label %sw.epilog

sw.bb206:                                         ; preds = %cond.end, %cond.end
  %type207 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  %58 = load i32, i32* %type207, align 8
  %cmp208 = icmp eq i32 %58, 2
  br i1 %cmp208, label %if.then210, label %if.else218

if.then210:                                       ; preds = %sw.bb206
  %u211 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d212 = bitcast %union.anon* %u211 to double*
  %59 = load double, double* %d212, align 8
  %u213 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d214 = bitcast %union.anon* %u213 to double*
  %60 = load double, double* %d214, align 8
  %sub215 = fsub double %59, %60
  %u216 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %d217 = bitcast %union.anon* %u216 to double*
  store double %sub215, double* %d217, align 8
  br label %if.end226

if.else218:                                       ; preds = %sw.bb206
  %u219 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l220 = bitcast %union.anon* %u219 to i32*
  %61 = load i32, i32* %l220, align 8
  %u221 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l222 = bitcast %union.anon* %u221 to i32*
  %62 = load i32, i32* %l222, align 8
  %sub223 = sub nsw i32 %61, %62
  %u224 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l225 = bitcast %union.anon* %u224 to i32*
  store i32 %sub223, i32* %l225, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.else218, %if.then210
  br label %sw.epilog

sw.bb227:                                         ; preds = %cond.end, %cond.end
  %u228 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l229 = bitcast %union.anon* %u228 to i32*
  %63 = load i32, i32* %l229, align 8
  %u230 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l231 = bitcast %union.anon* %u230 to i32*
  %64 = load i32, i32* %l231, align 8
  %shl = shl i32 %63, %64
  %u232 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l233 = bitcast %union.anon* %u232 to i32*
  store i32 %shl, i32* %l233, align 8
  br label %sw.epilog

sw.bb234:                                         ; preds = %cond.end, %cond.end
  %u235 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l236 = bitcast %union.anon* %u235 to i32*
  %65 = load i32, i32* %l236, align 8
  %u237 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l238 = bitcast %union.anon* %u237 to i32*
  %66 = load i32, i32* %l238, align 8
  %shr = ashr i32 %65, %66
  %u239 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l240 = bitcast %union.anon* %u239 to i32*
  store i32 %shr, i32* %l240, align 8
  br label %sw.epilog

sw.bb241:                                         ; preds = %cond.end
  %type242 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %67 = load i32, i32* %type242, align 8
  %cmp243 = icmp eq i32 %67, 2
  br i1 %cmp243, label %cond.true245, label %cond.false252

cond.true245:                                     ; preds = %sw.bb241
  %u246 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d247 = bitcast %union.anon* %u246 to double*
  %68 = load double, double* %d247, align 8
  %u248 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d249 = bitcast %union.anon* %u248 to double*
  %69 = load double, double* %d249, align 8
  %cmp250 = fcmp olt double %68, %69
  %conv251 = zext i1 %cmp250 to i32
  br label %cond.end259

cond.false252:                                    ; preds = %sw.bb241
  %u253 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l254 = bitcast %union.anon* %u253 to i32*
  %70 = load i32, i32* %l254, align 8
  %u255 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l256 = bitcast %union.anon* %u255 to i32*
  %71 = load i32, i32* %l256, align 8
  %cmp257 = icmp slt i32 %70, %71
  %conv258 = zext i1 %cmp257 to i32
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false252, %cond.true245
  %cond260 = phi i32 [ %conv251, %cond.true245 ], [ %conv258, %cond.false252 ]
  %u261 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l262 = bitcast %union.anon* %u261 to i32*
  store i32 %cond260, i32* %l262, align 8
  br label %sw.epilog

sw.bb263:                                         ; preds = %cond.end
  %type264 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %72 = load i32, i32* %type264, align 8
  %cmp265 = icmp eq i32 %72, 2
  br i1 %cmp265, label %cond.true267, label %cond.false274

cond.true267:                                     ; preds = %sw.bb263
  %u268 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d269 = bitcast %union.anon* %u268 to double*
  %73 = load double, double* %d269, align 8
  %u270 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d271 = bitcast %union.anon* %u270 to double*
  %74 = load double, double* %d271, align 8
  %cmp272 = fcmp ole double %73, %74
  %conv273 = zext i1 %cmp272 to i32
  br label %cond.end281

cond.false274:                                    ; preds = %sw.bb263
  %u275 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l276 = bitcast %union.anon* %u275 to i32*
  %75 = load i32, i32* %l276, align 8
  %u277 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l278 = bitcast %union.anon* %u277 to i32*
  %76 = load i32, i32* %l278, align 8
  %cmp279 = icmp sle i32 %75, %76
  %conv280 = zext i1 %cmp279 to i32
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false274, %cond.true267
  %cond282 = phi i32 [ %conv273, %cond.true267 ], [ %conv280, %cond.false274 ]
  %u283 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l284 = bitcast %union.anon* %u283 to i32*
  store i32 %cond282, i32* %l284, align 8
  br label %sw.epilog

sw.bb285:                                         ; preds = %cond.end
  %type286 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %77 = load i32, i32* %type286, align 8
  %cmp287 = icmp eq i32 %77, 2
  br i1 %cmp287, label %cond.true289, label %cond.false296

cond.true289:                                     ; preds = %sw.bb285
  %u290 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d291 = bitcast %union.anon* %u290 to double*
  %78 = load double, double* %d291, align 8
  %u292 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d293 = bitcast %union.anon* %u292 to double*
  %79 = load double, double* %d293, align 8
  %cmp294 = fcmp ogt double %78, %79
  %conv295 = zext i1 %cmp294 to i32
  br label %cond.end303

cond.false296:                                    ; preds = %sw.bb285
  %u297 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l298 = bitcast %union.anon* %u297 to i32*
  %80 = load i32, i32* %l298, align 8
  %u299 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l300 = bitcast %union.anon* %u299 to i32*
  %81 = load i32, i32* %l300, align 8
  %cmp301 = icmp sgt i32 %80, %81
  %conv302 = zext i1 %cmp301 to i32
  br label %cond.end303

cond.end303:                                      ; preds = %cond.false296, %cond.true289
  %cond304 = phi i32 [ %conv295, %cond.true289 ], [ %conv302, %cond.false296 ]
  %u305 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l306 = bitcast %union.anon* %u305 to i32*
  store i32 %cond304, i32* %l306, align 8
  br label %sw.epilog

sw.bb307:                                         ; preds = %cond.end
  %type308 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %82 = load i32, i32* %type308, align 8
  %cmp309 = icmp eq i32 %82, 2
  br i1 %cmp309, label %cond.true311, label %cond.false318

cond.true311:                                     ; preds = %sw.bb307
  %u312 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d313 = bitcast %union.anon* %u312 to double*
  %83 = load double, double* %d313, align 8
  %u314 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d315 = bitcast %union.anon* %u314 to double*
  %84 = load double, double* %d315, align 8
  %cmp316 = fcmp oge double %83, %84
  %conv317 = zext i1 %cmp316 to i32
  br label %cond.end325

cond.false318:                                    ; preds = %sw.bb307
  %u319 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l320 = bitcast %union.anon* %u319 to i32*
  %85 = load i32, i32* %l320, align 8
  %u321 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l322 = bitcast %union.anon* %u321 to i32*
  %86 = load i32, i32* %l322, align 8
  %cmp323 = icmp sge i32 %85, %86
  %conv324 = zext i1 %cmp323 to i32
  br label %cond.end325

cond.end325:                                      ; preds = %cond.false318, %cond.true311
  %cond326 = phi i32 [ %conv317, %cond.true311 ], [ %conv324, %cond.false318 ]
  %u327 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l328 = bitcast %union.anon* %u327 to i32*
  store i32 %cond326, i32* %l328, align 8
  br label %sw.epilog

sw.bb329:                                         ; preds = %cond.end
  %type330 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %87 = load i32, i32* %type330, align 8
  %cmp331 = icmp eq i32 %87, 2
  br i1 %cmp331, label %cond.true333, label %cond.false340

cond.true333:                                     ; preds = %sw.bb329
  %u334 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d335 = bitcast %union.anon* %u334 to double*
  %88 = load double, double* %d335, align 8
  %u336 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d337 = bitcast %union.anon* %u336 to double*
  %89 = load double, double* %d337, align 8
  %cmp338 = fcmp oeq double %88, %89
  %conv339 = zext i1 %cmp338 to i32
  br label %cond.end347

cond.false340:                                    ; preds = %sw.bb329
  %u341 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l342 = bitcast %union.anon* %u341 to i32*
  %90 = load i32, i32* %l342, align 8
  %u343 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l344 = bitcast %union.anon* %u343 to i32*
  %91 = load i32, i32* %l344, align 8
  %cmp345 = icmp eq i32 %90, %91
  %conv346 = zext i1 %cmp345 to i32
  br label %cond.end347

cond.end347:                                      ; preds = %cond.false340, %cond.true333
  %cond348 = phi i32 [ %conv339, %cond.true333 ], [ %conv346, %cond.false340 ]
  %u349 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l350 = bitcast %union.anon* %u349 to i32*
  store i32 %cond348, i32* %l350, align 8
  br label %sw.epilog

sw.bb351:                                         ; preds = %cond.end
  %type352 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %92 = load i32, i32* %type352, align 8
  %cmp353 = icmp eq i32 %92, 2
  br i1 %cmp353, label %cond.true355, label %cond.false362

cond.true355:                                     ; preds = %sw.bb351
  %u356 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d357 = bitcast %union.anon* %u356 to double*
  %93 = load double, double* %d357, align 8
  %u358 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d359 = bitcast %union.anon* %u358 to double*
  %94 = load double, double* %d359, align 8
  %cmp360 = fcmp une double %93, %94
  %conv361 = zext i1 %cmp360 to i32
  br label %cond.end369

cond.false362:                                    ; preds = %sw.bb351
  %u363 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l364 = bitcast %union.anon* %u363 to i32*
  %95 = load i32, i32* %l364, align 8
  %u365 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l366 = bitcast %union.anon* %u365 to i32*
  %96 = load i32, i32* %l366, align 8
  %cmp367 = icmp ne i32 %95, %96
  %conv368 = zext i1 %cmp367 to i32
  br label %cond.end369

cond.end369:                                      ; preds = %cond.false362, %cond.true355
  %cond370 = phi i32 [ %conv361, %cond.true355 ], [ %conv368, %cond.false362 ]
  %u371 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l372 = bitcast %union.anon* %u371 to i32*
  store i32 %cond370, i32* %l372, align 8
  br label %sw.epilog

sw.bb373:                                         ; preds = %cond.end, %cond.end
  %u374 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l375 = bitcast %union.anon* %u374 to i32*
  %97 = load i32, i32* %l375, align 8
  %tobool376 = icmp ne i32 %97, 0
  br i1 %tobool376, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb373
  %u377 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l378 = bitcast %union.anon* %u377 to i32*
  %98 = load i32, i32* %l378, align 8
  %tobool379 = icmp ne i32 %98, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb373
  %99 = phi i1 [ false, %sw.bb373 ], [ %tobool379, %land.rhs ]
  %land.ext = zext i1 %99 to i32
  %u380 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l381 = bitcast %union.anon* %u380 to i32*
  store i32 %land.ext, i32* %l381, align 8
  br label %sw.epilog

sw.bb382:                                         ; preds = %cond.end, %cond.end
  %u383 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l384 = bitcast %union.anon* %u383 to i32*
  %100 = load i32, i32* %l384, align 8
  %tobool385 = icmp ne i32 %100, 0
  br i1 %tobool385, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb382
  %u386 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l387 = bitcast %union.anon* %u386 to i32*
  %101 = load i32, i32* %l387, align 8
  %tobool388 = icmp ne i32 %101, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb382
  %102 = phi i1 [ true, %sw.bb382 ], [ %tobool388, %lor.rhs ]
  %lor.ext = zext i1 %102 to i32
  %u389 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l390 = bitcast %union.anon* %u389 to i32*
  store i32 %lor.ext, i32* %l390, align 8
  br label %sw.epilog

sw.bb391:                                         ; preds = %cond.end, %cond.end
  %u392 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l393 = bitcast %union.anon* %u392 to i32*
  %103 = load i32, i32* %l393, align 8
  %tobool394 = icmp ne i32 %103, 0
  br i1 %tobool394, label %land.lhs.true395, label %lor.rhs399

land.lhs.true395:                                 ; preds = %sw.bb391
  %u396 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l397 = bitcast %union.anon* %u396 to i32*
  %104 = load i32, i32* %l397, align 8
  %tobool398 = icmp ne i32 %104, 0
  br i1 %tobool398, label %lor.rhs399, label %lor.end409

lor.rhs399:                                       ; preds = %land.lhs.true395, %sw.bb391
  %u400 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l401 = bitcast %union.anon* %u400 to i32*
  %105 = load i32, i32* %l401, align 8
  %tobool402 = icmp ne i32 %105, 0
  br i1 %tobool402, label %land.end407, label %land.rhs403

land.rhs403:                                      ; preds = %lor.rhs399
  %u404 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l405 = bitcast %union.anon* %u404 to i32*
  %106 = load i32, i32* %l405, align 8
  %tobool406 = icmp ne i32 %106, 0
  br label %land.end407

land.end407:                                      ; preds = %land.rhs403, %lor.rhs399
  %107 = phi i1 [ false, %lor.rhs399 ], [ %tobool406, %land.rhs403 ]
  br label %lor.end409

lor.end409:                                       ; preds = %land.end407, %land.lhs.true395
  %108 = phi i1 [ true, %land.lhs.true395 ], [ %107, %land.end407 ]
  %lor.ext410 = zext i1 %108 to i32
  %u411 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l412 = bitcast %union.anon* %u411 to i32*
  store i32 %lor.ext410, i32* %l412, align 8
  br label %sw.epilog

sw.bb413:                                         ; preds = %cond.end
  %109 = bitcast %struct.mnumber* %c to i8*
  %110 = bitcast %struct.mnumber* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %109, i8* %110, i32 16, i32 8, i1 false)
  br label %sw.epilog

sw.bb414:                                         ; preds = %cond.end, %cond.end
  %type415 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  %111 = load i32, i32* %type415, align 8
  %cmp416 = icmp eq i32 %111, 1
  br i1 %cmp416, label %land.lhs.true418, label %if.end437

land.lhs.true418:                                 ; preds = %sw.bb414
  %u419 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l420 = bitcast %union.anon* %u419 to i32*
  %112 = load i32, i32* %l420, align 8
  %cmp421 = icmp slt i32 %112, 0
  br i1 %cmp421, label %if.then423, label %if.end437

if.then423:                                       ; preds = %land.lhs.true418
  %type424 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  store i32 2, i32* %type424, align 8
  %type425 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 1
  store i32 2, i32* %type425, align 8
  %type426 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  store i32 2, i32* %type426, align 8
  %u427 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l428 = bitcast %union.anon* %u427 to i32*
  %113 = load i32, i32* %l428, align 8
  %conv429 = sitofp i32 %113 to double
  %u430 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d431 = bitcast %union.anon* %u430 to double*
  store double %conv429, double* %d431, align 8
  %u432 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l433 = bitcast %union.anon* %u432 to i32*
  %114 = load i32, i32* %l433, align 8
  %conv434 = sitofp i32 %114 to double
  %u435 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d436 = bitcast %union.anon* %u435 to double*
  store double %conv434, double* %d436, align 8
  br label %if.end437

if.end437:                                        ; preds = %if.then423, %land.lhs.true418, %sw.bb414
  %type438 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 1
  %115 = load i32, i32* %type438, align 8
  %cmp439 = icmp eq i32 %115, 1
  br i1 %cmp439, label %if.then441, label %if.else452

if.then441:                                       ; preds = %if.end437
  %u442 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l443 = bitcast %union.anon* %u442 to i32*
  store i32 1, i32* %l443, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then441
  %u444 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %l445 = bitcast %union.anon* %u444 to i32*
  %116 = load i32, i32* %l445, align 8
  %dec = add nsw i32 %116, -1
  store i32 %dec, i32* %l445, align 8
  %tobool446 = icmp ne i32 %116, 0
  br i1 %tobool446, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %u447 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l448 = bitcast %union.anon* %u447 to i32*
  %117 = load i32, i32* %l448, align 8
  %u449 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %l450 = bitcast %union.anon* %u449 to i32*
  %118 = load i32, i32* %l450, align 8
  %mul451 = mul nsw i32 %118, %117
  store i32 %mul451, i32* %l450, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end485

if.else452:                                       ; preds = %if.end437
  %u453 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d454 = bitcast %union.anon* %u453 to double*
  %119 = load double, double* %d454, align 8
  %cmp455 = fcmp ole double %119, 0.000000e+00
  br i1 %cmp455, label %land.lhs.true457, label %if.end461

land.lhs.true457:                                 ; preds = %if.else452
  %call458 = call i32 @notzero(%struct.mnumber* byval align 8 %a)
  %tobool459 = icmp ne i32 %call458, 0
  br i1 %tobool459, label %if.end461, label %if.then460

if.then460:                                       ; preds = %land.lhs.true457
  br label %return

if.end461:                                        ; preds = %land.lhs.true457, %if.else452
  %u462 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d463 = bitcast %union.anon* %u462 to double*
  %120 = load double, double* %d463, align 8
  %cmp464 = fcmp olt double %120, 0.000000e+00
  br i1 %cmp464, label %if.then466, label %if.end478

if.then466:                                       ; preds = %if.end461
  %u468 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d469 = bitcast %union.anon* %u468 to double*
  %121 = load double, double* %d469, align 8
  %conv470 = fptosi double %121 to i32
  %conv471 = sitofp i32 %conv470 to double
  store double %conv471, double* %tst, align 8
  %122 = load double, double* %tst, align 8
  %u472 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d473 = bitcast %union.anon* %u472 to double*
  %123 = load double, double* %d473, align 8
  %cmp474 = fcmp une double %122, %123
  br i1 %cmp474, label %if.then476, label %if.end477

if.then476:                                       ; preds = %if.then466
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end477:                                        ; preds = %if.then466
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %if.end461
  %u479 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d480 = bitcast %union.anon* %u479 to double*
  %124 = load double, double* %d480, align 8
  %u481 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %b, i32 0, i32 0
  %d482 = bitcast %union.anon* %u481 to double*
  %125 = load double, double* %d482, align 8
  %126 = call double @llvm.pow.f64(double %124, double %125)
  %u483 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %c, i32 0, i32 0
  %d484 = bitcast %union.anon* %u483 to double*
  store double %126, double* %d484, align 8
  br label %if.end485

if.end485:                                        ; preds = %if.end478, %for.end
  br label %sw.epilog

sw.bb486:                                         ; preds = %cond.end
  %127 = bitcast %struct.mnumber* %c to i8*
  %128 = bitcast %struct.mnumber* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %127, i8* %128, i32 16, i32 8, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb486, %if.end485, %sw.bb413, %lor.end409, %lor.end, %land.end, %cond.end369, %cond.end347, %cond.end325, %cond.end303, %cond.end281, %cond.end259, %sw.bb234, %sw.bb227, %if.end226, %if.end205, %if.end185, %if.end152, %if.end118, %sw.bb92, %sw.bb85, %sw.bb
  br label %if.end487

if.end487:                                        ; preds = %sw.epilog, %if.then69
  %129 = load i32, i32* %tp, align 4
  %and488 = and i32 %129, 96
  %tobool489 = icmp ne i32 %and488, 0
  br i1 %tobool489, label %if.then490, label %if.else494

if.then490:                                       ; preds = %if.end487
  %130 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %131 = load i32, i32* @sp, align 4
  %add.ptr = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %130, i32 %131
  %add.ptr492 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %add.ptr, i32 1
  store %struct.mathvalue* %add.ptr492, %struct.mathvalue** %mvp, align 4
  %132 = load %struct.mathvalue*, %struct.mathvalue** %mvp, align 4
  call void @setmathvar(%struct.mnumber* sret %tmp493, %struct.mathvalue* %132, %struct.mnumber* byval align 8 %c)
  %133 = bitcast %struct.mnumber* %c to i8*
  %134 = bitcast %struct.mnumber* %tmp493 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %133, i8* %134, i32 16, i32 8, i1 false)
  %135 = load %struct.mathvalue*, %struct.mathvalue** %mvp, align 4
  %lval = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %135, i32 0, i32 0
  %136 = load i8*, i8** %lval, align 8
  call void @push(%struct.mnumber* byval align 8 %c, i8* %136, i32 0)
  br label %if.end495

if.else494:                                       ; preds = %if.end487
  call void @push(%struct.mnumber* byval align 8 %c, i8* null, i32 0)
  br label %if.end495

if.end495:                                        ; preds = %if.else494, %if.then490
  br label %return

if.end496:                                        ; preds = %if.end2
  %137 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %138 = load i32, i32* @sp, align 4
  %arrayidx497 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %137, i32 %138
  %val = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx497, i32 0, i32 2
  store %struct.mnumber* %val, %struct.mnumber** %spval, align 4
  %139 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %140 = load i32, i32* @sp, align 4
  %arrayidx498 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %139, i32 %140
  %val499 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx498, i32 0, i32 2
  %type500 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val499, i32 0, i32 1
  %141 = load i32, i32* %type500, align 8
  %cmp501 = icmp eq i32 %141, 4
  br i1 %cmp501, label %if.then503, label %if.end506

if.then503:                                       ; preds = %if.end496
  %142 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %143 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %144 = load i32, i32* @sp, align 4
  %add.ptr504 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %143, i32 %144
  call void @getmathparam(%struct.mnumber* sret %tmp505, %struct.mathvalue* %add.ptr504)
  %145 = bitcast %struct.mnumber* %142 to i8*
  %146 = bitcast %struct.mnumber* %tmp505 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %145, i8* %146, i32 16, i32 8, i1 false)
  br label %if.end506

if.end506:                                        ; preds = %if.then503, %if.end496
  %147 = load i32, i32* %what.addr, align 4
  switch i32 %147, label %sw.default [
    i32 2, label %sw.bb507
    i32 3, label %sw.bb527
    i32 4, label %sw.bb545
    i32 5, label %sw.bb559
    i32 6, label %sw.bb574
    i32 7, label %sw.bb575
    i32 27, label %sw.bb592
    i32 28, label %sw.bb614
    i32 45, label %sw.bb615
    i32 46, label %sw.bb630
  ]

sw.bb507:                                         ; preds = %if.end506
  %148 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type508 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %148, i32 0, i32 1
  %149 = load i32, i32* %type508, align 8
  %and509 = and i32 %149, 2
  %tobool510 = icmp ne i32 %and509, 0
  br i1 %tobool510, label %if.then511, label %if.else518

if.then511:                                       ; preds = %sw.bb507
  %150 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u512 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %150, i32 0, i32 0
  %d513 = bitcast %union.anon* %u512 to double*
  %151 = load double, double* %d513, align 8
  %tobool514 = fcmp une double %151, 0.000000e+00
  %lnot = xor i1 %tobool514, true
  %lnot.ext = zext i1 %lnot to i32
  %152 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u515 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %152, i32 0, i32 0
  %l516 = bitcast %union.anon* %u515 to i32*
  store i32 %lnot.ext, i32* %l516, align 8
  %153 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type517 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %153, i32 0, i32 1
  store i32 1, i32* %type517, align 8
  br label %if.end526

if.else518:                                       ; preds = %sw.bb507
  %154 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u519 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %154, i32 0, i32 0
  %l520 = bitcast %union.anon* %u519 to i32*
  %155 = load i32, i32* %l520, align 8
  %tobool521 = icmp ne i32 %155, 0
  %lnot522 = xor i1 %tobool521, true
  %lnot.ext523 = zext i1 %lnot522 to i32
  %156 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u524 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %156, i32 0, i32 0
  %l525 = bitcast %union.anon* %u524 to i32*
  store i32 %lnot.ext523, i32* %l525, align 8
  br label %if.end526

if.end526:                                        ; preds = %if.else518, %if.then511
  br label %sw.epilog645

sw.bb527:                                         ; preds = %if.end506
  %157 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type528 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %157, i32 0, i32 1
  %158 = load i32, i32* %type528, align 8
  %and529 = and i32 %158, 2
  %tobool530 = icmp ne i32 %and529, 0
  br i1 %tobool530, label %if.then531, label %if.else538

if.then531:                                       ; preds = %sw.bb527
  %159 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u532 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %159, i32 0, i32 0
  %d533 = bitcast %union.anon* %u532 to double*
  %160 = load double, double* %d533, align 8
  %conv534 = fptosi double %160 to i32
  %neg = xor i32 %conv534, -1
  %161 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u535 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %161, i32 0, i32 0
  %l536 = bitcast %union.anon* %u535 to i32*
  store i32 %neg, i32* %l536, align 8
  %162 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type537 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %162, i32 0, i32 1
  store i32 1, i32* %type537, align 8
  br label %if.end544

if.else538:                                       ; preds = %sw.bb527
  %163 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u539 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %163, i32 0, i32 0
  %l540 = bitcast %union.anon* %u539 to i32*
  %164 = load i32, i32* %l540, align 8
  %neg541 = xor i32 %164, -1
  %165 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u542 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %165, i32 0, i32 0
  %l543 = bitcast %union.anon* %u542 to i32*
  store i32 %neg541, i32* %l543, align 8
  br label %if.end544

if.end544:                                        ; preds = %if.else538, %if.then531
  br label %sw.epilog645

sw.bb545:                                         ; preds = %if.end506
  %166 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %167 = bitcast %struct.mnumber* %a to i8*
  %168 = bitcast %struct.mnumber* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %167, i8* %168, i32 16, i32 8, i1 false)
  %169 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type546 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %169, i32 0, i32 1
  %170 = load i32, i32* %type546, align 8
  %and547 = and i32 %170, 2
  %tobool548 = icmp ne i32 %and547, 0
  br i1 %tobool548, label %if.then549, label %if.else552

if.then549:                                       ; preds = %sw.bb545
  %u550 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d551 = bitcast %union.anon* %u550 to double*
  %171 = load double, double* %d551, align 8
  %inc = fadd double %171, 1.000000e+00
  store double %inc, double* %d551, align 8
  br label %if.end556

if.else552:                                       ; preds = %sw.bb545
  %u553 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l554 = bitcast %union.anon* %u553 to i32*
  %172 = load i32, i32* %l554, align 8
  %inc555 = add nsw i32 %172, 1
  store i32 %inc555, i32* %l554, align 8
  br label %if.end556

if.end556:                                        ; preds = %if.else552, %if.then549
  %173 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %174 = load i32, i32* @sp, align 4
  %add.ptr557 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %173, i32 %174
  call void @setmathvar(%struct.mnumber* sret %tmp558, %struct.mathvalue* %add.ptr557, %struct.mnumber* byval align 8 %a)
  br label %sw.epilog645

sw.bb559:                                         ; preds = %if.end506
  %175 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %176 = bitcast %struct.mnumber* %a to i8*
  %177 = bitcast %struct.mnumber* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %176, i8* %177, i32 16, i32 8, i1 false)
  %178 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type560 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %178, i32 0, i32 1
  %179 = load i32, i32* %type560, align 8
  %and561 = and i32 %179, 2
  %tobool562 = icmp ne i32 %and561, 0
  br i1 %tobool562, label %if.then563, label %if.else567

if.then563:                                       ; preds = %sw.bb559
  %u564 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d565 = bitcast %union.anon* %u564 to double*
  %180 = load double, double* %d565, align 8
  %dec566 = fadd double %180, -1.000000e+00
  store double %dec566, double* %d565, align 8
  br label %if.end571

if.else567:                                       ; preds = %sw.bb559
  %u568 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l569 = bitcast %union.anon* %u568 to i32*
  %181 = load i32, i32* %l569, align 8
  %dec570 = add nsw i32 %181, -1
  store i32 %dec570, i32* %l569, align 8
  br label %if.end571

if.end571:                                        ; preds = %if.else567, %if.then563
  %182 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %183 = load i32, i32* @sp, align 4
  %add.ptr572 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %182, i32 %183
  call void @setmathvar(%struct.mnumber* sret %tmp573, %struct.mathvalue* %add.ptr572, %struct.mnumber* byval align 8 %a)
  br label %sw.epilog645

sw.bb574:                                         ; preds = %if.end506
  br label %sw.epilog645

sw.bb575:                                         ; preds = %if.end506
  %184 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type576 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %184, i32 0, i32 1
  %185 = load i32, i32* %type576, align 8
  %and577 = and i32 %185, 2
  %tobool578 = icmp ne i32 %and577, 0
  br i1 %tobool578, label %if.then579, label %if.else585

if.then579:                                       ; preds = %sw.bb575
  %186 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u580 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %186, i32 0, i32 0
  %d581 = bitcast %union.anon* %u580 to double*
  %187 = load double, double* %d581, align 8
  %sub582 = fsub double -0.000000e+00, %187
  %188 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u583 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %188, i32 0, i32 0
  %d584 = bitcast %union.anon* %u583 to double*
  store double %sub582, double* %d584, align 8
  br label %if.end591

if.else585:                                       ; preds = %sw.bb575
  %189 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u586 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %189, i32 0, i32 0
  %l587 = bitcast %union.anon* %u586 to i32*
  %190 = load i32, i32* %l587, align 8
  %sub588 = sub nsw i32 0, %190
  %191 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u589 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %191, i32 0, i32 0
  %l590 = bitcast %union.anon* %u589 to i32*
  store i32 %sub588, i32* %l590, align 8
  br label %if.end591

if.end591:                                        ; preds = %if.else585, %if.then579
  br label %sw.epilog645

sw.bb592:                                         ; preds = %if.end506
  call void @pop(%struct.mnumber* sret %tmp593, i32 0)
  %192 = bitcast %struct.mnumber* %c to i8*
  %193 = bitcast %struct.mnumber* %tmp593 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %192, i8* %193, i32 16, i32 8, i1 false)
  call void @pop(%struct.mnumber* sret %tmp594, i32 0)
  %194 = bitcast %struct.mnumber* %b to i8*
  %195 = bitcast %struct.mnumber* %tmp594 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %194, i8* %195, i32 16, i32 8, i1 false)
  call void @pop(%struct.mnumber* sret %tmp595, i32 0)
  %196 = bitcast %struct.mnumber* %a to i8*
  %197 = bitcast %struct.mnumber* %tmp595 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %196, i8* %197, i32 16, i32 8, i1 false)
  %198 = load i32, i32* @errflag, align 4
  %tobool596 = icmp ne i32 %198, 0
  br i1 %tobool596, label %if.then597, label %if.end598

if.then597:                                       ; preds = %sw.bb592
  br label %return

if.end598:                                        ; preds = %sw.bb592
  %type599 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %199 = load i32, i32* %type599, align 8
  %and600 = and i32 %199, 2
  %tobool601 = icmp ne i32 %and600, 0
  br i1 %tobool601, label %cond.true602, label %cond.false606

cond.true602:                                     ; preds = %if.end598
  %u603 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %d604 = bitcast %union.anon* %u603 to double*
  %200 = load double, double* %d604, align 8
  %tobool605 = fcmp une double %200, 0.000000e+00
  br i1 %tobool605, label %cond.true611, label %cond.false612

cond.false606:                                    ; preds = %if.end598
  %u607 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l608 = bitcast %union.anon* %u607 to i32*
  %201 = load i32, i32* %l608, align 8
  %conv609 = sitofp i32 %201 to double
  %tobool610 = fcmp une double %conv609, 0.000000e+00
  br i1 %tobool610, label %cond.true611, label %cond.false612

cond.true611:                                     ; preds = %cond.false606, %cond.true602
  %202 = bitcast %struct.mnumber* %agg.tmp to i8*
  %203 = bitcast %struct.mnumber* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %202, i8* %203, i32 16, i32 8, i1 false)
  br label %cond.end613

cond.false612:                                    ; preds = %cond.false606, %cond.true602
  %204 = bitcast %struct.mnumber* %agg.tmp to i8*
  %205 = bitcast %struct.mnumber* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %204, i8* %205, i32 16, i32 8, i1 false)
  br label %cond.end613

cond.end613:                                      ; preds = %cond.false612, %cond.true611
  call void @push(%struct.mnumber* byval align 8 %agg.tmp, i8* null, i32 0)
  br label %sw.epilog645

sw.bb614:                                         ; preds = %if.end506
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog645

sw.bb615:                                         ; preds = %if.end506
  %206 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type616 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %206, i32 0, i32 1
  %207 = load i32, i32* %type616, align 8
  %and617 = and i32 %207, 2
  %tobool618 = icmp ne i32 %and617, 0
  br i1 %tobool618, label %if.then619, label %if.else623

if.then619:                                       ; preds = %sw.bb615
  %208 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u620 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %208, i32 0, i32 0
  %d621 = bitcast %union.anon* %u620 to double*
  %209 = load double, double* %d621, align 8
  %inc622 = fadd double %209, 1.000000e+00
  store double %inc622, double* %d621, align 8
  br label %if.end627

if.else623:                                       ; preds = %sw.bb615
  %210 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u624 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %210, i32 0, i32 0
  %l625 = bitcast %union.anon* %u624 to i32*
  %211 = load i32, i32* %l625, align 8
  %inc626 = add nsw i32 %211, 1
  store i32 %inc626, i32* %l625, align 8
  br label %if.end627

if.end627:                                        ; preds = %if.else623, %if.then619
  %212 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %213 = load i32, i32* @sp, align 4
  %add.ptr628 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %212, i32 %213
  %214 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  call void @setmathvar(%struct.mnumber* sret %tmp629, %struct.mathvalue* %add.ptr628, %struct.mnumber* byval align 8 %214)
  br label %sw.epilog645

sw.bb630:                                         ; preds = %if.end506
  %215 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type631 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %215, i32 0, i32 1
  %216 = load i32, i32* %type631, align 8
  %and632 = and i32 %216, 2
  %tobool633 = icmp ne i32 %and632, 0
  br i1 %tobool633, label %if.then634, label %if.else638

if.then634:                                       ; preds = %sw.bb630
  %217 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u635 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %217, i32 0, i32 0
  %d636 = bitcast %union.anon* %u635 to double*
  %218 = load double, double* %d636, align 8
  %dec637 = fadd double %218, -1.000000e+00
  store double %dec637, double* %d636, align 8
  br label %if.end642

if.else638:                                       ; preds = %sw.bb630
  %219 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u639 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %219, i32 0, i32 0
  %l640 = bitcast %union.anon* %u639 to i32*
  %220 = load i32, i32* %l640, align 8
  %dec641 = add nsw i32 %220, -1
  store i32 %dec641, i32* %l640, align 8
  br label %if.end642

if.end642:                                        ; preds = %if.else638, %if.then634
  %221 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %222 = load i32, i32* @sp, align 4
  %add.ptr643 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %221, i32 %222
  %223 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  call void @setmathvar(%struct.mnumber* sret %tmp644, %struct.mathvalue* %add.ptr643, %struct.mnumber* byval align 8 %223)
  br label %sw.epilog645

sw.default:                                       ; preds = %if.end506
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  br label %return

sw.epilog645:                                     ; preds = %if.end642, %if.end627, %sw.bb614, %cond.end613, %if.end591, %sw.bb574, %if.end571, %if.end556, %if.end544, %if.end526
  %224 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %225 = load i32, i32* @sp, align 4
  %arrayidx646 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %224, i32 %225
  %lval647 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx646, i32 0, i32 0
  store i8* null, i8** %lval647, align 8
  %226 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %227 = load i32, i32* @sp, align 4
  %arrayidx648 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %226, i32 %227
  %pval = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx648, i32 0, i32 1
  store %struct.value* null, %struct.value** %pval, align 4
  br label %return

return:                                           ; preds = %sw.epilog645, %sw.default, %if.then597, %if.end495, %if.then476, %if.then460, %if.then156, %if.then121, %if.then8, %if.then1, %if.then
  ret void
}

declare void @zerr(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal void @pop(%struct.mnumber* noalias sret %agg.result, i32 %noget) #0 {
entry:
  %noget.addr = alloca i32, align 4
  %mv = alloca %struct.mathvalue*, align 4
  %tmp = alloca %struct.mnumber, align 8
  store i32 %noget, i32* %noget.addr, align 4
  %0 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %1 = load i32, i32* @sp, align 4
  %add.ptr = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %0, i32 %1
  store %struct.mathvalue* %add.ptr, %struct.mathvalue** %mv, align 4
  %2 = load %struct.mathvalue*, %struct.mathvalue** %mv, align 4
  %val = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %2, i32 0, i32 2
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %3 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %noget.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mathvalue*, %struct.mathvalue** %mv, align 4
  %val1 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %5, i32 0, i32 2
  %6 = load %struct.mathvalue*, %struct.mathvalue** %mv, align 4
  call void @getmathparam(%struct.mnumber* sret %tmp, %struct.mathvalue* %6)
  %7 = bitcast %struct.mnumber* %val1 to i8*
  %8 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* @sp, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* @sp, align 4
  %10 = load i32, i32* @errflag, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = bitcast %struct.mnumber* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* bitcast (%struct.mnumber* @zero_mnumber to i8*), i32 16, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.mathvalue*, %struct.mathvalue** %mv, align 4
  %val3 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %12, i32 0, i32 2
  %13 = bitcast %struct.mnumber* %agg.result to i8*
  %14 = bitcast %struct.mnumber* %val3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 16, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal i32 @notzero(%struct.mnumber* byval align 8 %a) #0 {
entry:
  %retval = alloca i32, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 1
  %0 = load i32, i32* %type, align 8
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %a, i32 0, i32 0
  %l = bitcast %union.anon* %u to i32*
  %1 = load i32, i32* %l, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind readnone
declare double @fmod(double, double) #3

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: noinline nounwind
define internal void @setmathvar(%struct.mnumber* noalias sret %agg.result, %struct.mathvalue* %mvp, %struct.mnumber* byval align 8 %v) #0 {
entry:
  %mvp.addr = alloca %struct.mathvalue*, align 4
  %pm = alloca %struct.param*, align 4
  %s = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %pm1 = alloca %struct.param*, align 4
  store %struct.mathvalue* %mvp, %struct.mathvalue** %mvp.addr, align 4
  %0 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %pval = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %0, i32 0, i32 1
  %1 = load %struct.value*, %struct.value** %pval, align 4
  %tobool = icmp ne %struct.value* %1, null
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %2 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %lval = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %2, i32 0, i32 0
  %3 = load i8*, i8** %lval, align 8
  store i8* %3, i8** %s, align 4
  %4 = load i8*, i8** %s, align 4
  %call = call i8* @strchr(i8* %4, i32 91)
  store i8* %call, i8** %ptr, align 4
  %tobool2 = icmp ne i8* %call, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load i8*, i8** %s, align 4
  %6 = load i8*, i8** %ptr, align 4
  %7 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i8* @dupstrpfx(i8* %5, i32 %sub.ptr.sub)
  store i8* %call4, i8** %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %8 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 9
  %9 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %11 = load i8*, i8** %s, align 4
  %call5 = call %struct.hashnode* %9(%struct.hashtable* %10, i8* %11)
  %12 = bitcast %struct.hashnode* %call5 to %struct.param*
  store %struct.param* %12, %struct.param** %pm1, align 4
  %13 = load %struct.param*, %struct.param** %pm1, align 4
  %14 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %pval6 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %14, i32 0, i32 1
  %15 = load %struct.value*, %struct.value** %pval6, align 4
  %pm7 = getelementptr inbounds %struct.value, %struct.value* %15, i32 0, i32 1
  %16 = load %struct.param*, %struct.param** %pm7, align 4
  %cmp = icmp eq %struct.param* %13, %16
  br i1 %cmp, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %17 = load i32, i32* @noeval, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  %18 = bitcast %struct.mnumber* %agg.result to i8*
  %19 = bitcast %struct.mnumber* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 16, i32 8, i1 false)
  br label %return

if.end11:                                         ; preds = %if.then8
  %20 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %pval12 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %20, i32 0, i32 1
  %21 = load %struct.value*, %struct.value** %pval12, align 4
  call void @setnumvalue(%struct.value* %21, %struct.mnumber* byval align 8 %v)
  %22 = bitcast %struct.mnumber* %agg.result to i8*
  %23 = bitcast %struct.mnumber* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 16, i32 8, i1 false)
  br label %return

if.end13:                                         ; preds = %if.end
  %24 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %pval14 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %24, i32 0, i32 1
  store %struct.value* null, %struct.value** %pval14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %entry
  %25 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %lval16 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %25, i32 0, i32 0
  %26 = load i8*, i8** %lval16, align 8
  %tobool17 = icmp ne i8* %26, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %l = bitcast %union.anon* %u to i32*
  store i32 0, i32* %l, align 8
  %27 = bitcast %struct.mnumber* %agg.result to i8*
  %28 = bitcast %struct.mnumber* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 16, i32 8, i1 false)
  br label %return

if.end19:                                         ; preds = %if.end15
  %29 = load i32, i32* @noeval, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  %30 = bitcast %struct.mnumber* %agg.result to i8*
  %31 = bitcast %struct.mnumber* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 16, i32 8, i1 false)
  br label %return

if.end22:                                         ; preds = %if.end19
  %32 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %lval23 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %32, i32 0, i32 0
  %33 = load i8*, i8** %lval23, align 8
  call void @untokenize(i8* %33)
  %34 = load %struct.mathvalue*, %struct.mathvalue** %mvp.addr, align 4
  %lval24 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %34, i32 0, i32 0
  %35 = load i8*, i8** %lval24, align 8
  %call25 = call %struct.param* @setnparam(i8* %35, %struct.mnumber* byval align 8 %v)
  store %struct.param* %call25, %struct.param** %pm, align 4
  %36 = load %struct.param*, %struct.param** %pm, align 4
  %tobool26 = icmp ne %struct.param* %36, null
  br i1 %tobool26, label %if.then27, label %if.end48

if.then27:                                        ; preds = %if.end22
  %37 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %37, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %38 = load i32, i32* %flags, align 8
  %and = and i32 %38, 31
  switch i32 %and, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb36
    i32 8, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.then27
  %type28 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 1
  %39 = load i32, i32* %type28, align 8
  %cmp29 = icmp ne i32 %39, 1
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %sw.bb
  %u31 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %d = bitcast %union.anon* %u31 to double*
  %40 = load double, double* %d, align 8
  %conv = fptosi double %40 to i32
  %u32 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %l33 = bitcast %union.anon* %u32 to i32*
  store i32 %conv, i32* %l33, align 8
  %type34 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 1
  store i32 1, i32* %type34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %sw.bb
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.then27, %if.then27
  %type37 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 1
  %41 = load i32, i32* %type37, align 8
  %cmp38 = icmp ne i32 %41, 2
  br i1 %cmp38, label %if.then40, label %if.end47

if.then40:                                        ; preds = %sw.bb36
  %u41 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %l42 = bitcast %union.anon* %u41 to i32*
  %42 = load i32, i32* %l42, align 8
  %conv43 = sitofp i32 %42 to double
  %u44 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %d45 = bitcast %union.anon* %u44 to double*
  store double %conv43, double* %d45, align 8
  %type46 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 1
  store i32 2, i32* %type46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %sw.bb36
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then27, %if.end47, %if.end35
  br label %if.end48

if.end48:                                         ; preds = %sw.epilog, %if.end22
  %43 = bitcast %struct.mnumber* %agg.result to i8*
  %44 = bitcast %struct.mnumber* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end48, %if.then21, %if.then18, %if.end11, %if.then10
  ret void
}

; Function Attrs: noinline nounwind
define internal void @push(%struct.mnumber* byval align 8 %val, i8* %lval, i32 %getme) #0 {
entry:
  %lval.addr = alloca i8*, align 4
  %getme.addr = alloca i32, align 4
  store i8* %lval, i8** %lval.addr, align 4
  store i32 %getme, i32* %getme.addr, align 4
  %0 = load i32, i32* @sp, align 4
  %cmp = icmp eq i32 %0, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @sp, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @sp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %3 = load i32, i32* @sp, align 4
  %arrayidx = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %2, i32 %3
  %val1 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx, i32 0, i32 2
  %4 = bitcast %struct.mnumber* %val1 to i8*
  %5 = bitcast %struct.mnumber* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 16, i32 8, i1 false)
  %6 = load i8*, i8** %lval.addr, align 4
  %7 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %8 = load i32, i32* @sp, align 4
  %arrayidx2 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %7, i32 %8
  %lval3 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx2, i32 0, i32 0
  store i8* %6, i8** %lval3, align 8
  %9 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %10 = load i32, i32* @sp, align 4
  %arrayidx4 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %9, i32 %10
  %pval = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx4, i32 0, i32 1
  store %struct.value* null, %struct.value** %pval, align 4
  %11 = load i32, i32* %getme.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %12 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %13 = load i32, i32* @sp, align 4
  %arrayidx6 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %12, i32 %13
  %val7 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx6, i32 0, i32 2
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val7, i32 0, i32 1
  store i32 4, i32* %type, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @getmathparam(%struct.mnumber* noalias sret %agg.result, %struct.mathvalue* %mptr) #0 {
entry:
  %mptr.addr = alloca %struct.mathvalue*, align 4
  %result = alloca %struct.mnumber, align 8
  %s = alloca i8*, align 4
  %tmp = alloca %struct.mnumber, align 8
  store %struct.mathvalue* %mptr, %struct.mathvalue** %mptr.addr, align 4
  %0 = load %struct.mathvalue*, %struct.mathvalue** %mptr.addr, align 4
  %pval = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %0, i32 0, i32 1
  %1 = load %struct.value*, %struct.value** %pval, align 4
  %tobool = icmp ne %struct.value* %1, null
  br i1 %tobool, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.mathvalue*, %struct.mathvalue** %mptr.addr, align 4
  %lval = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %2, i32 0, i32 0
  %3 = load i8*, i8** %lval, align 8
  store i8* %3, i8** %s, align 4
  %call = call i8* @zhalloc(i32 24)
  %4 = bitcast i8* %call to %struct.value*
  %5 = load %struct.mathvalue*, %struct.mathvalue** %mptr.addr, align 4
  %pval1 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %5, i32 0, i32 1
  store %struct.value* %4, %struct.value** %pval1, align 4
  %6 = load %struct.mathvalue*, %struct.mathvalue** %mptr.addr, align 4
  %pval2 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %6, i32 0, i32 1
  %7 = load %struct.value*, %struct.value** %pval2, align 4
  %call3 = call %struct.value* @getvalue(%struct.value* %7, i8** %s, i32 1)
  %tobool4 = icmp ne %struct.value* %call3, null
  br i1 %tobool4, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.then
  %8 = load %struct.mathvalue*, %struct.mathvalue** %mptr.addr, align 4
  %pval6 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %8, i32 0, i32 1
  store %struct.value* null, %struct.value** %pval6, align 4
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 58), align 1
  %tobool7 = icmp ne i8 %9, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then5
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %result, i32 0, i32 1
  store i32 2, i32* %type, align 8
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %result, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  store double 0.000000e+00, double* %d, align 8
  %10 = bitcast %struct.mnumber* %agg.result to i8*
  %11 = bitcast %struct.mnumber* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %if.then5
  %12 = bitcast %struct.mnumber* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* bitcast (%struct.mnumber* @zero_mnumber to i8*), i32 16, i32 8, i1 false)
  br label %return

if.end9:                                          ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %13 = load %struct.mathvalue*, %struct.mathvalue** %mptr.addr, align 4
  %pval11 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %13, i32 0, i32 1
  %14 = load %struct.value*, %struct.value** %pval11, align 4
  call void @getnumvalue(%struct.mnumber* sret %tmp, %struct.value* %14)
  %15 = bitcast %struct.mnumber* %result to i8*
  %16 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 16, i32 8, i1 false)
  %17 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 58), align 1
  %conv = sext i8 %17 to i32
  %tobool12 = icmp ne i32 %conv, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end10
  %type13 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %result, i32 0, i32 1
  %18 = load i32, i32* %type13, align 8
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then15, label %if.end21

if.then15:                                        ; preds = %land.lhs.true
  %type16 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %result, i32 0, i32 1
  store i32 2, i32* %type16, align 8
  %u17 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %result, i32 0, i32 0
  %l = bitcast %union.anon* %u17 to i32*
  %19 = load i32, i32* %l, align 8
  %conv18 = sitofp i32 %19 to double
  %u19 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %result, i32 0, i32 0
  %d20 = bitcast %union.anon* %u19 to double*
  store double %conv18, double* %d20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %land.lhs.true, %if.end10
  %20 = bitcast %struct.mnumber* %agg.result to i8*
  %21 = bitcast %struct.mnumber* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end21, %if.end, %if.then8
  ret void
}

; Function Attrs: noinline nounwind
define void @matheval(%struct.mnumber* noalias sret %agg.result, i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %junk = alloca i8*, align 4
  %x = alloca %struct.mnumber, align 8
  %xmtok = alloca i32, align 4
  %tmp = alloca %struct.mnumber, align 8
  store i8* %s, i8** %s.addr, align 4
  %0 = load i32, i32* @mtok, align 4
  store i32 %0, i32* %xmtok, align 4
  %1 = load i32, i32* @mlevel, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @outputunderscore, align 4
  store i32 0, i32* @outputradix, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -95
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i8*, i8** %s.addr, align 4
  %6 = load i8, i8* %5, align 1
  %tobool4 = icmp ne i8 %6, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 0
  %l = bitcast %union.anon* %u to i32*
  store i32 0, i32* %l, align 8
  %7 = bitcast %struct.mnumber* %agg.result to i8*
  %8 = bitcast %struct.mnumber* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 16, i32 8, i1 false)
  br label %return

if.end6:                                          ; preds = %if.end3
  %9 = load i8*, i8** %s.addr, align 4
  call void @mathevall(%struct.mnumber* sret %tmp, i8* %9, i32 0, i8** %junk)
  %10 = bitcast %struct.mnumber* %x to i8*
  %11 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 16, i32 8, i1 false)
  %12 = load i32, i32* %xmtok, align 4
  store i32 %12, i32* @mtok, align 4
  %13 = load i8*, i8** %junk, align 4
  %14 = load i8, i8* %13, align 1
  %tobool7 = icmp ne i8 %14, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %15 = load i8*, i8** %junk, align 4
  %16 = load i8, i8* %15, align 1
  %conv9 = sext i8 %16 to i32
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i32 %conv9)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %17 = bitcast %struct.mnumber* %agg.result to i8*
  %18 = bitcast %struct.mnumber* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end10, %if.then5
  ret void
}

; Function Attrs: noinline nounwind
define internal void @mathevall(%struct.mnumber* noalias sret %agg.result, i8* %s, i32 %prec_tp, i8** %ep) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %prec_tp.addr = alloca i32, align 4
  %ep.addr = alloca i8**, align 4
  %xlastbase = alloca i32, align 4
  %xnoeval = alloca i32, align 4
  %xunary = alloca i32, align 4
  %xprec = alloca i32*, align 4
  %xptr = alloca i8*, align 4
  %xyyval = alloca %struct.mnumber, align 8
  %xyylval = alloca i8*, align 4
  %xsp = alloca i32, align 4
  %xstack = alloca %struct.mathvalue*, align 4
  %nstack = alloca [100 x %struct.mathvalue], align 8
  %ret = alloca %struct.mnumber, align 8
  %tmp = alloca %struct.mnumber, align 8
  store i8* %s, i8** %s.addr, align 4
  store i32 %prec_tp, i32* %prec_tp.addr, align 4
  store i8** %ep, i8*** %ep.addr, align 4
  store %struct.mathvalue* null, %struct.mathvalue** %xstack, align 4
  %0 = load i32, i32* @mlevel, align 4
  %cmp = icmp sge i32 %0, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %xyyval, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %xyyval, i32 0, i32 0
  %l = bitcast %union.anon* %u to i32*
  store i32 0, i32* %l, align 8
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8**, i8*** %ep.addr, align 4
  store i8* %1, i8** %2, align 4
  %3 = load i8**, i8*** %ep.addr, align 4
  %4 = load i8*, i8** %3, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8* %4)
  %5 = bitcast %struct.mnumber* %agg.result to i8*
  %6 = bitcast %struct.mnumber* %xyyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 16, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* @mlevel, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @mlevel, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %8 = load i32, i32* @lastbase, align 4
  store i32 %8, i32* %xlastbase, align 4
  %9 = load i32, i32* @noeval, align 4
  store i32 %9, i32* %xnoeval, align 4
  %10 = load i32, i32* @unary, align 4
  store i32 %10, i32* %xunary, align 4
  %11 = load i8*, i8** @ptr, align 4
  store i8* %11, i8** %xptr, align 4
  %12 = bitcast %struct.mnumber* %xyyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* bitcast (%struct.mnumber* @yyval to i8*), i32 16, i32 8, i1 false)
  %13 = load i8*, i8** @yylval, align 4
  store i8* %13, i8** %xyylval, align 4
  %14 = load i32, i32* @sp, align 4
  store i32 %14, i32* %xsp, align 4
  %15 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  store %struct.mathvalue* %15, %struct.mathvalue** %xstack, align 4
  %16 = load i32*, i32** @prec, align 4
  store i32* %16, i32** %xprec, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  store i32 0, i32* %xsp, align 4
  store i32 0, i32* %xunary, align 4
  store i32 0, i32* %xnoeval, align 4
  store i32 0, i32* %xlastbase, align 4
  %type2 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %xyyval, i32 0, i32 1
  store i32 1, i32* %type2, align 8
  %u3 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %xyyval, i32 0, i32 0
  %l4 = bitcast %union.anon* %u3 to i32*
  store i32 0, i32* %l4, align 8
  store i8* null, i8** %xyylval, align 4
  store i8* null, i8** %xptr, align 4
  store i32* null, i32** %xprec, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %17 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 42), align 1
  %conv = sext i8 %17 to i32
  %tobool6 = icmp ne i32 %conv, 0
  %cond = select i1 %tobool6, i32* getelementptr inbounds ([53 x i32], [53 x i32]* @c_prec, i32 0, i32 0), i32* getelementptr inbounds ([53 x i32], [53 x i32]* @z_prec, i32 0, i32 0)
  store i32* %cond, i32** @prec, align 4
  %arraydecay = getelementptr inbounds [100 x %struct.mathvalue], [100 x %struct.mathvalue]* %nstack, i32 0, i32 0
  store %struct.mathvalue* %arraydecay, %struct.mathvalue** @stack, align 4
  store i32 -1, i32* @lastbase, align 4
  %18 = load i8*, i8** %s.addr, align 4
  store i8* %18, i8** @ptr, align 4
  store i32 -1, i32* @sp, align 4
  store i32 1, i32* @unary, align 4
  %19 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %arrayidx = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %19, i32 0
  %val = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx, i32 0, i32 2
  %type7 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  store i32 1, i32* %type7, align 8
  %20 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %arrayidx8 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %20, i32 0
  %val9 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx8, i32 0, i32 2
  %u10 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val9, i32 0, i32 0
  %l11 = bitcast %union.anon* %u10 to i32*
  store i32 0, i32* %l11, align 8
  %21 = load i32, i32* %prec_tp.addr, align 4
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  %22 = load i32*, i32** @prec, align 4
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i32 43
  %23 = load i32, i32* %arrayidx14, align 4
  %add = add nsw i32 %23, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  %24 = load i32*, i32** @prec, align 4
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i32 43
  %25 = load i32, i32* %arrayidx15, align 4
  %sub = sub nsw i32 %25, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i32 [ %add, %cond.true ], [ %sub, %cond.false ]
  call void @mathparse(i32 %cond16)
  %26 = load i32, i32* @mtok, align 4
  %cmp17 = icmp eq i32 %26, 1
  br i1 %cmp17, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %cond.end
  %27 = load i32, i32* @errflag, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true, %cond.end
  %28 = load i8*, i8** @ptr, align 4
  %29 = load i8**, i8*** %ep.addr, align 4
  store i8* %28, i8** %29, align 4
  %30 = load i32, i32* @errflag, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.end21
  %type24 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 1, i32* %type24, align 8
  %u25 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l26 = bitcast %union.anon* %u25 to i32*
  store i32 0, i32* %l26, align 8
  br label %if.end38

if.else27:                                        ; preds = %if.end21
  %31 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %arrayidx28 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %31, i32 0
  %val29 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx28, i32 0, i32 2
  %type30 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val29, i32 0, i32 1
  %32 = load i32, i32* %type30, align 8
  %cmp31 = icmp eq i32 %32, 4
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else27
  %33 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  call void @getmathparam(%struct.mnumber* sret %tmp, %struct.mathvalue* %33)
  %34 = bitcast %struct.mnumber* %ret to i8*
  %35 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 16, i32 8, i1 false)
  br label %if.end37

if.else34:                                        ; preds = %if.else27
  %36 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %arrayidx35 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %36, i32 0
  %val36 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx35, i32 0, i32 2
  %37 = bitcast %struct.mnumber* %ret to i8*
  %38 = bitcast %struct.mnumber* %val36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %38, i32 16, i32 8, i1 false)
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then23
  %39 = load i32, i32* @mlevel, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* @mlevel, align 4
  %tobool39 = icmp ne i32 %dec, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end38
  %40 = load i32, i32* %xlastbase, align 4
  store i32 %40, i32* @lastbase, align 4
  %41 = load i32, i32* %xnoeval, align 4
  store i32 %41, i32* @noeval, align 4
  %42 = load i32, i32* %xunary, align 4
  store i32 %42, i32* @unary, align 4
  %43 = load i8*, i8** %xptr, align 4
  store i8* %43, i8** @ptr, align 4
  %44 = bitcast %struct.mnumber* %xyyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.mnumber* @yyval to i8*), i8* %44, i32 16, i32 8, i1 false)
  %45 = load i8*, i8** %xyylval, align 4
  store i8* %45, i8** @yylval, align 4
  %46 = load i32, i32* %xsp, align 4
  store i32 %46, i32* @sp, align 4
  %47 = load %struct.mathvalue*, %struct.mathvalue** %xstack, align 4
  store %struct.mathvalue* %47, %struct.mathvalue** @stack, align 4
  %48 = load i32*, i32** %xprec, align 4
  store i32* %48, i32** @prec, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38
  %49 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.mnumber* @lastmathval to i8*), i8* %49, i32 16, i32 8, i1 false)
  %50 = bitcast %struct.mnumber* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %50, i8* bitcast (%struct.mnumber* @lastmathval to i8*), i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end41, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i32 @mathevali(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %x = alloca %struct.mnumber, align 8
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  call void @matheval(%struct.mnumber* sret %x, i8* %0)
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 1
  %1 = load i32, i32* %type, align 8
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  %2 = load double, double* %d, align 8
  %conv = fptosi double %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %u1 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 0
  %l = bitcast %union.anon* %u1 to i32*
  %3 = load i32, i32* %l, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define i32 @mathevalarg(i8* %s, i8** %ss) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %ss.addr = alloca i8**, align 4
  %x = alloca %struct.mnumber, align 8
  %xmtok = alloca i32, align 4
  %tmp = alloca %struct.mnumber, align 8
  store i8* %s, i8** %s.addr, align 4
  store i8** %ss, i8*** %ss.addr, align 4
  %0 = load i32, i32* @mtok, align 4
  store i32 %0, i32* %xmtok, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, -95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 4
  %7 = load i8**, i8*** %ss.addr, align 4
  call void @mathevall(%struct.mnumber* sret %tmp, i8* %6, i32 1, i8** %7)
  %8 = bitcast %struct.mnumber* %x to i8*
  %9 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 8, i1 false)
  %10 = load i32, i32* @mtok, align 4
  %cmp4 = icmp eq i32 %10, 43
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %11 = load i8**, i8*** %ss.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr7, i8** %11, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %13 = load i32, i32* %xmtok, align 4
  store i32 %13, i32* @mtok, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 1
  %14 = load i32, i32* %type, align 8
  %and = and i32 %14, 2
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  %15 = load double, double* %d, align 8
  %conv10 = fptosi double %15 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  %u11 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %x, i32 0, i32 0
  %l = bitcast %union.anon* %u11 to i32*
  %16 = load i32, i32* %l, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv10, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then2
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare i8* @strchr(i8*, i32) #1

declare i8* @dupstrpfx(i8*, i32) #1

declare void @setnumvalue(%struct.value*, %struct.mnumber* byval align 8) #1

declare void @untokenize(i8*) #1

declare %struct.param* @setnparam(i8*, %struct.mnumber* byval align 8) #1

declare i8* @zhalloc(i32) #1

declare %struct.value* @getvalue(%struct.value*, i8**, i32) #1

declare void @getnumvalue(%struct.mnumber* sret, %struct.value*) #1

; Function Attrs: noinline nounwind
define internal void @mathparse(i32 %pc) #0 {
entry:
  %pc.addr = alloca i32, align 4
  %q = alloca i32, align 4
  %otok = alloca i32, align 4
  %onoeval = alloca i32, align 4
  %optr = alloca i8*, align 4
  %agg.tmp = alloca %struct.mnumber, align 8
  %agg.tmp14 = alloca %struct.mnumber, align 8
  %tmp = alloca %struct.mnumber, align 8
  store i32 %pc, i32* %pc.addr, align 4
  %0 = load i8*, i8** @ptr, align 4
  store i8* %0, i8** %optr, align 4
  %1 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %call = call i32 @zzlex()
  store i32 %call, i32* @mtok, align 4
  %2 = load i32, i32* %pc.addr, align 4
  %3 = load i32*, i32** @prec, align 4
  %arrayidx = getelementptr inbounds i32, i32* %3, i32 43
  %4 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %4, 1
  %cmp = icmp eq i32 %2, %add
  br i1 %cmp, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* @mtok, align 4
  %cmp1 = icmp eq i32 %5, 44
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  br label %while.end

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %6 = load i32, i32* @mtok, align 4
  %7 = load i8*, i8** %optr, align 4
  call void @checkunary(i32 %6, i8* %7)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end74, %if.end70, %if.end3
  %8 = load i32*, i32** @prec, align 4
  %9 = load i32, i32* @mtok, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i32 %9
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load i32, i32* %pc.addr, align 4
  %cmp5 = icmp sle i32 %10, %11
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* @errflag, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  br label %while.end

if.end8:                                          ; preds = %while.body
  %13 = load i32, i32* @mtok, align 4
  switch i32 %13, label %sw.default [
    i32 47, label %sw.bb
    i32 48, label %sw.bb9
    i32 50, label %sw.bb11
    i32 52, label %sw.bb13
    i32 0, label %sw.bb19
    i32 27, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end8
  call void @push(%struct.mnumber* byval align 8 @yyval, i8* null, i32 0)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  %14 = load i8*, i8** @yylval, align 4
  %15 = load i32, i32* @noeval, align 4
  %tobool10 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  call void @push(%struct.mnumber* byval align 8 @zero_mnumber, i8* %14, i32 %lnot.ext)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  %16 = load i32, i32* @noeval, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb11
  %17 = bitcast %struct.mnumber* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* bitcast (%struct.mnumber* @zero_mnumber to i8*), i32 16, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb11
  %18 = load i8*, i8** @yylval, align 4
  call void @getcvar(%struct.mnumber* sret %agg.tmp, i8* %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %19 = load i8*, i8** @yylval, align 4
  call void @push(%struct.mnumber* byval align 8 %agg.tmp, i8* %19, i32 0)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  %20 = load i32, i32* @noeval, align 4
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %sw.bb13
  %21 = bitcast %struct.mnumber* %agg.tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* bitcast (%struct.mnumber* @zero_mnumber to i8*), i32 16, i32 8, i1 false)
  br label %cond.end18

cond.false17:                                     ; preds = %sw.bb13
  %22 = load i8*, i8** @yylval, align 4
  call void @callmathfunc(%struct.mnumber* sret %agg.tmp14, i8* %22)
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %23 = load i8*, i8** @yylval, align 4
  call void @push(%struct.mnumber* byval align 8 %agg.tmp14, i8* %23, i32 0)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  %24 = load i32*, i32** @prec, align 4
  %arrayidx20 = getelementptr inbounds i32, i32* %24, i32 43
  %25 = load i32, i32* %arrayidx20, align 4
  %add21 = add nsw i32 %25, 1
  call void @mathparse(i32 %add21)
  %26 = load i32, i32* @mtok, align 4
  %cmp22 = icmp ne i32 %26, 1
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %sw.bb19
  %27 = load i32, i32* @errflag, align 4
  %tobool24 = icmp ne i32 %27, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then23
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then23
  br label %while.end

if.end27:                                         ; preds = %sw.bb19
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end8
  %28 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %29 = load i32, i32* @sp, align 4
  %arrayidx29 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %28, i32 %29
  %val = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx29, i32 0, i32 2
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val, i32 0, i32 1
  %30 = load i32, i32* %type, align 8
  %cmp30 = icmp eq i32 %30, 4
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %sw.bb28
  %31 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %32 = load i32, i32* @sp, align 4
  %arrayidx32 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %31, i32 %32
  %val33 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx32, i32 0, i32 2
  %33 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %34 = load i32, i32* @sp, align 4
  %add.ptr = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %33, i32 %34
  call void @getmathparam(%struct.mnumber* sret %tmp, %struct.mathvalue* %add.ptr)
  %35 = bitcast %struct.mnumber* %val33 to i8*
  %36 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 16, i32 8, i1 false)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %sw.bb28
  %37 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %38 = load i32, i32* @sp, align 4
  %arrayidx35 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %37, i32 %38
  %val36 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx35, i32 0, i32 2
  %type37 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val36, i32 0, i32 1
  %39 = load i32, i32* %type37, align 8
  %cmp38 = icmp eq i32 %39, 2
  br i1 %cmp38, label %cond.true39, label %cond.false43

cond.true39:                                      ; preds = %if.end34
  %40 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %41 = load i32, i32* @sp, align 4
  %arrayidx40 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %40, i32 %41
  %val41 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx40, i32 0, i32 2
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val41, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  %42 = load double, double* %d, align 8
  %cmp42 = fcmp oeq double %42, 0.000000e+00
  %cond = select i1 %cmp42, i32 0, i32 1
  br label %cond.end47

cond.false43:                                     ; preds = %if.end34
  %43 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %44 = load i32, i32* @sp, align 4
  %arrayidx44 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %43, i32 %44
  %val45 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx44, i32 0, i32 2
  %u46 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val45, i32 0, i32 0
  %l = bitcast %union.anon* %u46 to i32*
  %45 = load i32, i32* %l, align 8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false43, %cond.true39
  %cond48 = phi i32 [ %cond, %cond.true39 ], [ %45, %cond.false43 ]
  store i32 %cond48, i32* %q, align 4
  %46 = load i32, i32* %q, align 4
  %tobool49 = icmp ne i32 %46, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %cond.end47
  %47 = load i32, i32* @noeval, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* @noeval, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %cond.end47
  %48 = load i32*, i32** @prec, align 4
  %arrayidx52 = getelementptr inbounds i32, i32* %48, i32 28
  %49 = load i32, i32* %arrayidx52, align 4
  %sub = sub nsw i32 %49, 1
  call void @mathparse(i32 %sub)
  %50 = load i32, i32* %q, align 4
  %tobool53 = icmp ne i32 %50, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  %51 = load i32, i32* @noeval, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* @noeval, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  %52 = load i32, i32* @mtok, align 4
  %cmp56 = icmp ne i32 %52, 28
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end55
  %53 = load i32, i32* @errflag, align 4
  %tobool58 = icmp ne i32 %53, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.then57
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then57
  br label %while.end

if.end61:                                         ; preds = %if.end55
  %54 = load i32, i32* %q, align 4
  %tobool62 = icmp ne i32 %54, 0
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end61
  %55 = load i32, i32* @noeval, align 4
  %inc64 = add nsw i32 %55, 1
  store i32 %inc64, i32* @noeval, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61
  %56 = load i32*, i32** @prec, align 4
  %arrayidx66 = getelementptr inbounds i32, i32* %56, i32 27
  %57 = load i32, i32* %arrayidx66, align 4
  call void @mathparse(i32 %57)
  %58 = load i32, i32* %q, align 4
  %tobool67 = icmp ne i32 %58, 0
  br i1 %tobool67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end65
  %59 = load i32, i32* @noeval, align 4
  %dec69 = add nsw i32 %59, -1
  store i32 %dec69, i32* @noeval, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65
  call void @op(i32 27)
  br label %while.cond

sw.default:                                       ; preds = %if.end8
  %60 = load i32, i32* @mtok, align 4
  store i32 %60, i32* %otok, align 4
  %61 = load i32, i32* @noeval, align 4
  store i32 %61, i32* %onoeval, align 4
  %62 = load i32, i32* %otok, align 4
  %arrayidx71 = getelementptr inbounds [53 x i32], [53 x i32]* @type, i32 0, i32 %62
  %63 = load i32, i32* %arrayidx71, align 4
  %and = and i32 %63, 3
  %cmp72 = icmp eq i32 %and, 2
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %sw.default
  %64 = load i32, i32* %otok, align 4
  call void @bop(i32 %64)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %sw.default
  %65 = load i32*, i32** @prec, align 4
  %66 = load i32, i32* %otok, align 4
  %arrayidx75 = getelementptr inbounds i32, i32* %65, i32 %66
  %67 = load i32, i32* %arrayidx75, align 4
  %68 = load i32, i32* %otok, align 4
  %arrayidx76 = getelementptr inbounds [53 x i32], [53 x i32]* @type, i32 0, i32 %68
  %69 = load i32, i32* %arrayidx76, align 4
  %and77 = and i32 %69, 3
  %cmp78 = icmp ne i32 %and77, 1
  %conv = zext i1 %cmp78 to i32
  %sub79 = sub nsw i32 %67, %conv
  call void @mathparse(i32 %sub79)
  %70 = load i32, i32* %onoeval, align 4
  store i32 %70, i32* @noeval, align 4
  %71 = load i32, i32* %otok, align 4
  call void @op(i32 %71)
  br label %while.cond

sw.epilog:                                        ; preds = %if.end27, %cond.end18, %cond.end, %sw.bb9, %sw.bb
  %72 = load i8*, i8** @ptr, align 4
  store i8* %72, i8** %optr, align 4
  %call80 = call i32 @zzlex()
  store i32 %call80, i32* @mtok, align 4
  %73 = load i32, i32* @mtok, align 4
  %74 = load i8*, i8** %optr, align 4
  call void @checkunary(i32 %73, i8* %74)
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then2, %if.then7, %if.end26, %if.end60, %while.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @zzlex() #0 {
entry:
  %retval = alloca i32, align 4
  %cct = alloca i32, align 4
  %ie = alloca i8*, align 4
  %n = alloca i32, align 4
  %checkradix = alloca i32, align 4
  %v = alloca i32, align 4
  %func = alloca i32, align 4
  %p = alloca i8*, align 4
  %op = alloca i8, align 1
  %cp = alloca i8, align 1
  %l = alloca i32, align 4
  store i32 0, i32* %cct, align 4
  store i32 1, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 1), align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc405, %entry
  %0 = load i8*, i8** @ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** @ptr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb12
    i32 -101, label %sw.bb12
    i32 40, label %sw.bb41
    i32 41, label %sw.bb42
    i32 33, label %sw.bb43
    i32 126, label %sw.bb50
    i32 38, label %sw.bb51
    i32 124, label %sw.bb71
    i32 94, label %sw.bb91
    i32 42, label %sw.bb111
    i32 47, label %sw.bb130
    i32 37, label %sw.bb137
    i32 60, label %sw.bb144
    i32 62, label %sw.bb164
    i32 61, label %sw.bb184
    i32 36, label %sw.bb191
    i32 63, label %sw.bb192
    i32 58, label %sw.bb196
    i32 44, label %sw.bb197
    i32 0, label %sw.bb198
    i32 91, label %sw.bb200
    i32 32, label %sw.bb287
    i32 9, label %sw.bb287
    i32 10, label %sw.bb287
  ]

sw.bb:                                            ; preds = %for.cond
  %2 = load i8*, i8** @ptr, align 4
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 43
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i8*, i8** @ptr, align 4
  %incdec.ptr3 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr3, i8** @ptr, align 4
  %5 = load i32, i32* @unary, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 45, i32 4
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load i8*, i8** @ptr, align 4
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 61
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** @ptr, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr8, i8** @ptr, align 4
  store i32 30, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %9 = load i32, i32* @unary, align 4
  %tobool10 = icmp ne i32 %9, 0
  %cond11 = select i1 %tobool10, i32 6, i32 14
  store i32 %cond11, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %for.cond, %for.cond
  %10 = load i8*, i8** @ptr, align 4
  %11 = load i8, i8* %10, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 45
  br i1 %cmp14, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb12
  %12 = load i8*, i8** @ptr, align 4
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, -101
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %lor.lhs.false, %sw.bb12
  %14 = load i8*, i8** @ptr, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr20, i8** @ptr, align 4
  %15 = load i32, i32* @unary, align 4
  %tobool21 = icmp ne i32 %15, 0
  %cond22 = select i1 %tobool21, i32 46, i32 5
  store i32 %cond22, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %lor.lhs.false
  %16 = load i8*, i8** @ptr, align 4
  %17 = load i8, i8* %16, align 1
  %conv24 = sext i8 %17 to i32
  %cmp25 = icmp eq i32 %conv24, 61
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %18 = load i8*, i8** @ptr, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr28, i8** @ptr, align 4
  store i32 31, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end23
  %19 = load i32, i32* @unary, align 4
  %tobool30 = icmp ne i32 %19, 0
  br i1 %tobool30, label %if.then31, label %if.else40

if.then31:                                        ; preds = %if.end29
  %20 = load i8*, i8** @ptr, align 4
  %21 = load i8, i8* %20, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv32 = sext i16 %22 to i32
  %and = and i32 %conv32, 1
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.then31
  %23 = load i8*, i8** @ptr, align 4
  %24 = load i8, i8* %23, align 1
  %conv35 = sext i8 %24 to i32
  %cmp36 = icmp eq i32 %conv35, 46
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %lor.lhs.false34, %if.then31
  %25 = load i8*, i8** @ptr, align 4
  %incdec.ptr39 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr39, i8** @ptr, align 4
  %call = call i32 @lexconstant()
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false34
  store i32 7, i32* %retval, align 4
  br label %return

if.else40:                                        ; preds = %if.end29
  store i32 15, i32* %retval, align 4
  br label %return

sw.bb41:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb42:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %for.cond
  %26 = load i8*, i8** @ptr, align 4
  %27 = load i8, i8* %26, align 1
  %conv44 = sext i8 %27 to i32
  %cmp45 = icmp eq i32 %conv44, 61
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %sw.bb43
  %28 = load i8*, i8** @ptr, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr48, i8** @ptr, align 4
  store i32 23, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %sw.bb43
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb50:                                          ; preds = %for.cond
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb51:                                          ; preds = %for.cond
  %29 = load i8*, i8** @ptr, align 4
  %30 = load i8, i8* %29, align 1
  %conv52 = sext i8 %30 to i32
  %cmp53 = icmp eq i32 %conv52, 38
  br i1 %cmp53, label %if.then55, label %if.else63

if.then55:                                        ; preds = %sw.bb51
  %31 = load i8*, i8** @ptr, align 4
  %incdec.ptr56 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr56, i8** @ptr, align 4
  %32 = load i8, i8* %incdec.ptr56, align 1
  %conv57 = sext i8 %32 to i32
  %cmp58 = icmp eq i32 %conv57, 61
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then55
  %33 = load i8*, i8** @ptr, align 4
  %incdec.ptr61 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr61, i8** @ptr, align 4
  store i32 40, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then55
  store i32 24, i32* %retval, align 4
  br label %return

if.else63:                                        ; preds = %sw.bb51
  %34 = load i8*, i8** @ptr, align 4
  %35 = load i8, i8* %34, align 1
  %conv64 = sext i8 %35 to i32
  %cmp65 = icmp eq i32 %conv64, 61
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.else63
  %36 = load i8*, i8** @ptr, align 4
  %incdec.ptr68 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr68, i8** @ptr, align 4
  store i32 35, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.else63
  br label %if.end70

if.end70:                                         ; preds = %if.end69
  store i32 8, i32* %retval, align 4
  br label %return

sw.bb71:                                          ; preds = %for.cond
  %37 = load i8*, i8** @ptr, align 4
  %38 = load i8, i8* %37, align 1
  %conv72 = sext i8 %38 to i32
  %cmp73 = icmp eq i32 %conv72, 124
  br i1 %cmp73, label %if.then75, label %if.else83

if.then75:                                        ; preds = %sw.bb71
  %39 = load i8*, i8** @ptr, align 4
  %incdec.ptr76 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr76, i8** @ptr, align 4
  %40 = load i8, i8* %incdec.ptr76, align 1
  %conv77 = sext i8 %40 to i32
  %cmp78 = icmp eq i32 %conv77, 61
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.then75
  %41 = load i8*, i8** @ptr, align 4
  %incdec.ptr81 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr81, i8** @ptr, align 4
  store i32 41, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.then75
  store i32 25, i32* %retval, align 4
  br label %return

if.else83:                                        ; preds = %sw.bb71
  %42 = load i8*, i8** @ptr, align 4
  %43 = load i8, i8* %42, align 1
  %conv84 = sext i8 %43 to i32
  %cmp85 = icmp eq i32 %conv84, 61
  br i1 %cmp85, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.else83
  %44 = load i8*, i8** @ptr, align 4
  %incdec.ptr88 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr88, i8** @ptr, align 4
  store i32 37, i32* %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.else83
  br label %if.end90

if.end90:                                         ; preds = %if.end89
  store i32 10, i32* %retval, align 4
  br label %return

sw.bb91:                                          ; preds = %for.cond
  %45 = load i8*, i8** @ptr, align 4
  %46 = load i8, i8* %45, align 1
  %conv92 = sext i8 %46 to i32
  %cmp93 = icmp eq i32 %conv92, 94
  br i1 %cmp93, label %if.then95, label %if.else103

if.then95:                                        ; preds = %sw.bb91
  %47 = load i8*, i8** @ptr, align 4
  %incdec.ptr96 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr96, i8** @ptr, align 4
  %48 = load i8, i8* %incdec.ptr96, align 1
  %conv97 = sext i8 %48 to i32
  %cmp98 = icmp eq i32 %conv97, 61
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.then95
  %49 = load i8*, i8** @ptr, align 4
  %incdec.ptr101 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr101, i8** @ptr, align 4
  store i32 42, i32* %retval, align 4
  br label %return

if.end102:                                        ; preds = %if.then95
  store i32 26, i32* %retval, align 4
  br label %return

if.else103:                                       ; preds = %sw.bb91
  %50 = load i8*, i8** @ptr, align 4
  %51 = load i8, i8* %50, align 1
  %conv104 = sext i8 %51 to i32
  %cmp105 = icmp eq i32 %conv104, 61
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.else103
  %52 = load i8*, i8** @ptr, align 4
  %incdec.ptr108 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr108, i8** @ptr, align 4
  store i32 36, i32* %retval, align 4
  br label %return

if.end109:                                        ; preds = %if.else103
  br label %if.end110

if.end110:                                        ; preds = %if.end109
  store i32 9, i32* %retval, align 4
  br label %return

sw.bb111:                                         ; preds = %for.cond
  %53 = load i8*, i8** @ptr, align 4
  %54 = load i8, i8* %53, align 1
  %conv112 = sext i8 %54 to i32
  %cmp113 = icmp eq i32 %conv112, 42
  br i1 %cmp113, label %if.then115, label %if.end123

if.then115:                                       ; preds = %sw.bb111
  %55 = load i8*, i8** @ptr, align 4
  %incdec.ptr116 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr116, i8** @ptr, align 4
  %56 = load i8, i8* %incdec.ptr116, align 1
  %conv117 = sext i8 %56 to i32
  %cmp118 = icmp eq i32 %conv117, 61
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.then115
  %57 = load i8*, i8** @ptr, align 4
  %incdec.ptr121 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr121, i8** @ptr, align 4
  store i32 51, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.then115
  store i32 49, i32* %retval, align 4
  br label %return

if.end123:                                        ; preds = %sw.bb111
  %58 = load i8*, i8** @ptr, align 4
  %59 = load i8, i8* %58, align 1
  %conv124 = sext i8 %59 to i32
  %cmp125 = icmp eq i32 %conv124, 61
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end123
  %60 = load i8*, i8** @ptr, align 4
  %incdec.ptr128 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr128, i8** @ptr, align 4
  store i32 32, i32* %retval, align 4
  br label %return

if.end129:                                        ; preds = %if.end123
  store i32 11, i32* %retval, align 4
  br label %return

sw.bb130:                                         ; preds = %for.cond
  %61 = load i8*, i8** @ptr, align 4
  %62 = load i8, i8* %61, align 1
  %conv131 = sext i8 %62 to i32
  %cmp132 = icmp eq i32 %conv131, 61
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %sw.bb130
  %63 = load i8*, i8** @ptr, align 4
  %incdec.ptr135 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr135, i8** @ptr, align 4
  store i32 33, i32* %retval, align 4
  br label %return

if.end136:                                        ; preds = %sw.bb130
  store i32 12, i32* %retval, align 4
  br label %return

sw.bb137:                                         ; preds = %for.cond
  %64 = load i8*, i8** @ptr, align 4
  %65 = load i8, i8* %64, align 1
  %conv138 = sext i8 %65 to i32
  %cmp139 = icmp eq i32 %conv138, 61
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %sw.bb137
  %66 = load i8*, i8** @ptr, align 4
  %incdec.ptr142 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr142, i8** @ptr, align 4
  store i32 34, i32* %retval, align 4
  br label %return

if.end143:                                        ; preds = %sw.bb137
  store i32 13, i32* %retval, align 4
  br label %return

sw.bb144:                                         ; preds = %for.cond
  %67 = load i8*, i8** @ptr, align 4
  %68 = load i8, i8* %67, align 1
  %conv145 = sext i8 %68 to i32
  %cmp146 = icmp eq i32 %conv145, 60
  br i1 %cmp146, label %if.then148, label %if.else156

if.then148:                                       ; preds = %sw.bb144
  %69 = load i8*, i8** @ptr, align 4
  %incdec.ptr149 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr149, i8** @ptr, align 4
  %70 = load i8, i8* %incdec.ptr149, align 1
  %conv150 = sext i8 %70 to i32
  %cmp151 = icmp eq i32 %conv150, 61
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.then148
  %71 = load i8*, i8** @ptr, align 4
  %incdec.ptr154 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr154, i8** @ptr, align 4
  store i32 38, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %if.then148
  store i32 16, i32* %retval, align 4
  br label %return

if.else156:                                       ; preds = %sw.bb144
  %72 = load i8*, i8** @ptr, align 4
  %73 = load i8, i8* %72, align 1
  %conv157 = sext i8 %73 to i32
  %cmp158 = icmp eq i32 %conv157, 61
  br i1 %cmp158, label %if.then160, label %if.end162

if.then160:                                       ; preds = %if.else156
  %74 = load i8*, i8** @ptr, align 4
  %incdec.ptr161 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr161, i8** @ptr, align 4
  store i32 19, i32* %retval, align 4
  br label %return

if.end162:                                        ; preds = %if.else156
  br label %if.end163

if.end163:                                        ; preds = %if.end162
  store i32 18, i32* %retval, align 4
  br label %return

sw.bb164:                                         ; preds = %for.cond
  %75 = load i8*, i8** @ptr, align 4
  %76 = load i8, i8* %75, align 1
  %conv165 = sext i8 %76 to i32
  %cmp166 = icmp eq i32 %conv165, 62
  br i1 %cmp166, label %if.then168, label %if.else176

if.then168:                                       ; preds = %sw.bb164
  %77 = load i8*, i8** @ptr, align 4
  %incdec.ptr169 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr169, i8** @ptr, align 4
  %78 = load i8, i8* %incdec.ptr169, align 1
  %conv170 = sext i8 %78 to i32
  %cmp171 = icmp eq i32 %conv170, 61
  br i1 %cmp171, label %if.then173, label %if.end175

if.then173:                                       ; preds = %if.then168
  %79 = load i8*, i8** @ptr, align 4
  %incdec.ptr174 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr174, i8** @ptr, align 4
  store i32 39, i32* %retval, align 4
  br label %return

if.end175:                                        ; preds = %if.then168
  store i32 17, i32* %retval, align 4
  br label %return

if.else176:                                       ; preds = %sw.bb164
  %80 = load i8*, i8** @ptr, align 4
  %81 = load i8, i8* %80, align 1
  %conv177 = sext i8 %81 to i32
  %cmp178 = icmp eq i32 %conv177, 61
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.else176
  %82 = load i8*, i8** @ptr, align 4
  %incdec.ptr181 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr181, i8** @ptr, align 4
  store i32 21, i32* %retval, align 4
  br label %return

if.end182:                                        ; preds = %if.else176
  br label %if.end183

if.end183:                                        ; preds = %if.end182
  store i32 20, i32* %retval, align 4
  br label %return

sw.bb184:                                         ; preds = %for.cond
  %83 = load i8*, i8** @ptr, align 4
  %84 = load i8, i8* %83, align 1
  %conv185 = sext i8 %84 to i32
  %cmp186 = icmp eq i32 %conv185, 61
  br i1 %cmp186, label %if.then188, label %if.end190

if.then188:                                       ; preds = %sw.bb184
  %85 = load i8*, i8** @ptr, align 4
  %incdec.ptr189 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr189, i8** @ptr, align 4
  store i32 22, i32* %retval, align 4
  br label %return

if.end190:                                        ; preds = %sw.bb184
  store i32 29, i32* %retval, align 4
  br label %return

sw.bb191:                                         ; preds = %for.cond
  %86 = load i32, i32* @mypid, align 4
  store i32 %86, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  store i32 47, i32* %retval, align 4
  br label %return

sw.bb192:                                         ; preds = %for.cond
  %87 = load i32, i32* @unary, align 4
  %tobool193 = icmp ne i32 %87, 0
  br i1 %tobool193, label %if.then194, label %if.end195

if.then194:                                       ; preds = %sw.bb192
  %88 = load i32, i32* @lastval, align 4
  store i32 %88, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  store i32 47, i32* %retval, align 4
  br label %return

if.end195:                                        ; preds = %sw.bb192
  store i32 27, i32* %retval, align 4
  br label %return

sw.bb196:                                         ; preds = %for.cond
  store i32 28, i32* %retval, align 4
  br label %return

sw.bb197:                                         ; preds = %for.cond
  store i32 43, i32* %retval, align 4
  br label %return

sw.bb198:                                         ; preds = %for.cond
  %89 = load i8*, i8** @ptr, align 4
  %incdec.ptr199 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %incdec.ptr199, i8** @ptr, align 4
  store i32 44, i32* %retval, align 4
  br label %return

sw.bb200:                                         ; preds = %for.cond
  store i32 0, i32* %checkradix, align 4
  %90 = load i8*, i8** @ptr, align 4
  %91 = load i8, i8* %90, align 1
  %idxprom201 = zext i8 %91 to i32
  %arrayidx202 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom201
  %92 = load i16, i16* %arrayidx202, align 2
  %conv203 = sext i16 %92 to i32
  %and204 = and i32 %conv203, 1
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.then206, label %if.end221

if.then206:                                       ; preds = %sw.bb200
  %93 = load i8*, i8** @ptr, align 4
  %call207 = call i32 @zstrtol(i8* %93, i8** @ptr, i32 10)
  store i32 %call207, i32* %n, align 4
  %94 = load i8*, i8** @ptr, align 4
  %95 = load i8, i8* %94, align 1
  %conv208 = sext i8 %95 to i32
  %cmp209 = icmp ne i32 %conv208, 93
  br i1 %cmp209, label %if.then218, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %if.then206
  %96 = load i8*, i8** @ptr, align 4
  %incdec.ptr212 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr212, i8** @ptr, align 4
  %97 = load i8, i8* %incdec.ptr212, align 1
  %idxprom213 = zext i8 %97 to i32
  %arrayidx214 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom213
  %98 = load i16, i16* %arrayidx214, align 2
  %conv215 = sext i16 %98 to i32
  %and216 = and i32 %conv215, 1
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.end219, label %if.then218

if.then218:                                       ; preds = %lor.lhs.false211, %if.then206
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  store i32 44, i32* %retval, align 4
  br label %return

if.end219:                                        ; preds = %lor.lhs.false211
  %99 = load i8*, i8** @ptr, align 4
  %100 = load i32, i32* %n, align 4
  store i32 %100, i32* @lastbase, align 4
  %call220 = call i32 @zstrtol(i8* %99, i8** @ptr, i32 %100)
  store i32 %call220, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  store i32 47, i32* %retval, align 4
  br label %return

if.end221:                                        ; preds = %sw.bb200
  %101 = load i8*, i8** @ptr, align 4
  %102 = load i8, i8* %101, align 1
  %conv222 = sext i8 %102 to i32
  %cmp223 = icmp eq i32 %conv222, 35
  br i1 %cmp223, label %if.then225, label %if.else266

if.then225:                                       ; preds = %if.end221
  store i32 1, i32* %n, align 4
  %103 = load i8*, i8** @ptr, align 4
  %incdec.ptr226 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr226, i8** @ptr, align 4
  %104 = load i8, i8* %incdec.ptr226, align 1
  %conv227 = sext i8 %104 to i32
  %cmp228 = icmp eq i32 %conv227, 35
  br i1 %cmp228, label %if.then230, label %if.end232

if.then230:                                       ; preds = %if.then225
  store i32 -1, i32* %n, align 4
  %105 = load i8*, i8** @ptr, align 4
  %incdec.ptr231 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr231, i8** @ptr, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then230, %if.then225
  %106 = load i8*, i8** @ptr, align 4
  %107 = load i8, i8* %106, align 1
  %idxprom233 = zext i8 %107 to i32
  %arrayidx234 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom233
  %108 = load i16, i16* %arrayidx234, align 2
  %conv235 = sext i16 %108 to i32
  %and236 = and i32 %conv235, 1
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %if.end242, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end232
  %109 = load i8*, i8** @ptr, align 4
  %110 = load i8, i8* %109, align 1
  %conv238 = sext i8 %110 to i32
  %cmp239 = icmp ne i32 %conv238, 95
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %land.lhs.true
  br label %bofs

if.end242:                                        ; preds = %land.lhs.true, %if.end232
  %111 = load i8*, i8** @ptr, align 4
  %112 = load i8, i8* %111, align 1
  %idxprom243 = zext i8 %112 to i32
  %arrayidx244 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom243
  %113 = load i16, i16* %arrayidx244, align 2
  %conv245 = sext i16 %113 to i32
  %and246 = and i32 %conv245, 1
  %tobool247 = icmp ne i32 %and246, 0
  br i1 %tobool247, label %if.then248, label %if.end250

if.then248:                                       ; preds = %if.end242
  %114 = load i32, i32* %n, align 4
  %115 = load i8*, i8** @ptr, align 4
  %call249 = call i32 @zstrtol(i8* %115, i8** @ptr, i32 10)
  %mul = mul nsw i32 %114, %call249
  store i32 %mul, i32* @outputradix, align 4
  store i32 1, i32* %checkradix, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.end242
  %116 = load i8*, i8** @ptr, align 4
  %117 = load i8, i8* %116, align 1
  %conv251 = sext i8 %117 to i32
  %cmp252 = icmp eq i32 %conv251, 95
  br i1 %cmp252, label %if.then254, label %if.end265

if.then254:                                       ; preds = %if.end250
  %118 = load i8*, i8** @ptr, align 4
  %incdec.ptr255 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr255, i8** @ptr, align 4
  %119 = load i8*, i8** @ptr, align 4
  %120 = load i8, i8* %119, align 1
  %idxprom256 = zext i8 %120 to i32
  %arrayidx257 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom256
  %121 = load i16, i16* %arrayidx257, align 2
  %conv258 = sext i16 %121 to i32
  %and259 = and i32 %conv258, 1
  %tobool260 = icmp ne i32 %and259, 0
  br i1 %tobool260, label %if.then261, label %if.else263

if.then261:                                       ; preds = %if.then254
  %122 = load i8*, i8** @ptr, align 4
  %call262 = call i32 @zstrtol(i8* %122, i8** @ptr, i32 10)
  store i32 %call262, i32* @outputunderscore, align 4
  br label %if.end264

if.else263:                                       ; preds = %if.then254
  store i32 3, i32* @outputunderscore, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.else263, %if.then261
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.end250
  br label %if.end267

if.else266:                                       ; preds = %if.end221
  br label %bofs

bofs:                                             ; preds = %if.then271, %if.else266, %if.then241
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store i32 44, i32* %retval, align 4
  br label %return

if.end267:                                        ; preds = %if.end265
  %123 = load i8*, i8** @ptr, align 4
  %124 = load i8, i8* %123, align 1
  %conv268 = sext i8 %124 to i32
  %cmp269 = icmp ne i32 %conv268, 93
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end267
  br label %bofs

if.end272:                                        ; preds = %if.end267
  %125 = load i32, i32* %checkradix, align 4
  %tobool273 = icmp ne i32 %125, 0
  br i1 %tobool273, label %if.then274, label %if.end285

if.then274:                                       ; preds = %if.end272
  %126 = load i32, i32* @outputradix, align 4
  %cmp275 = icmp slt i32 %126, 0
  br i1 %cmp275, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then274
  %127 = load i32, i32* @outputradix, align 4
  %sub = sub nsw i32 0, %127
  br label %cond.end

cond.false:                                       ; preds = %if.then274
  %128 = load i32, i32* @outputradix, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond277 = phi i32 [ %sub, %cond.true ], [ %128, %cond.false ]
  store i32 %cond277, i32* %n, align 4
  %129 = load i32, i32* %n, align 4
  %cmp278 = icmp slt i32 %129, 2
  br i1 %cmp278, label %if.then283, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %cond.end
  %130 = load i32, i32* %n, align 4
  %cmp281 = icmp sgt i32 %130, 36
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %lor.lhs.false280, %cond.end
  %131 = load i32, i32* @outputradix, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0), i32 %131)
  store i32 44, i32* %retval, align 4
  br label %return

if.end284:                                        ; preds = %lor.lhs.false280
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %if.end272
  %132 = load i8*, i8** @ptr, align 4
  %incdec.ptr286 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr286, i8** @ptr, align 4
  br label %sw.epilog

sw.bb287:                                         ; preds = %for.cond, %for.cond, %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %133 = load i8*, i8** @ptr, align 4
  %incdec.ptr288 = getelementptr inbounds i8, i8* %133, i32 -1
  store i8* %incdec.ptr288, i8** @ptr, align 4
  %134 = load i8, i8* %incdec.ptr288, align 1
  %idxprom289 = zext i8 %134 to i32
  %arrayidx290 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom289
  %135 = load i16, i16* %arrayidx290, align 2
  %conv291 = sext i16 %135 to i32
  %and292 = and i32 %conv291, 1
  %tobool293 = icmp ne i32 %and292, 0
  br i1 %tobool293, label %if.then298, label %lor.lhs.false294

lor.lhs.false294:                                 ; preds = %sw.default
  %136 = load i8*, i8** @ptr, align 4
  %137 = load i8, i8* %136, align 1
  %conv295 = sext i8 %137 to i32
  %cmp296 = icmp eq i32 %conv295, 46
  br i1 %cmp296, label %if.then298, label %if.end300

if.then298:                                       ; preds = %lor.lhs.false294, %sw.default
  %call299 = call i32 @lexconstant()
  store i32 %call299, i32* %retval, align 4
  br label %return

if.end300:                                        ; preds = %lor.lhs.false294
  %138 = load i8*, i8** @ptr, align 4
  %139 = load i8, i8* %138, align 1
  %conv301 = sext i8 %139 to i32
  %cmp302 = icmp eq i32 %conv301, 35
  br i1 %cmp302, label %if.then304, label %if.end320

if.then304:                                       ; preds = %if.end300
  %140 = load i8*, i8** @ptr, align 4
  %incdec.ptr305 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr305, i8** @ptr, align 4
  %141 = load i8, i8* %incdec.ptr305, align 1
  %conv306 = sext i8 %141 to i32
  %cmp307 = icmp eq i32 %conv306, 92
  br i1 %cmp307, label %if.then313, label %lor.lhs.false309

lor.lhs.false309:                                 ; preds = %if.then304
  %142 = load i8*, i8** @ptr, align 4
  %143 = load i8, i8* %142, align 1
  %conv310 = sext i8 %143 to i32
  %cmp311 = icmp eq i32 %conv310, 35
  br i1 %cmp311, label %if.then313, label %if.end319

if.then313:                                       ; preds = %lor.lhs.false309, %if.then304
  %144 = load i8*, i8** @ptr, align 4
  %incdec.ptr314 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr314, i8** @ptr, align 4
  %145 = load i8*, i8** @ptr, align 4
  %146 = load i8, i8* %145, align 1
  %tobool315 = icmp ne i8 %146, 0
  br i1 %tobool315, label %if.end317, label %if.then316

if.then316:                                       ; preds = %if.then313
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0))
  store i32 44, i32* %retval, align 4
  br label %return

if.end317:                                        ; preds = %if.then313
  %147 = load i8*, i8** @ptr, align 4
  %call318 = call i8* @getkeystring(i8* %147, i32* null, i32 71, i32* %v)
  store i8* %call318, i8** @ptr, align 4
  %148 = load i32, i32* %v, align 4
  store i32 %148, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  store i32 47, i32* %retval, align 4
  br label %return

if.end319:                                        ; preds = %lor.lhs.false309
  store i32 1, i32* %cct, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %if.end300
  %149 = load i8*, i8** @ptr, align 4
  %call321 = call i8* @itype_end(i8* %149, i32 128, i32 0)
  store i8* %call321, i8** %ie, align 4
  %150 = load i8*, i8** @ptr, align 4
  %cmp322 = icmp ne i8* %call321, %150
  br i1 %cmp322, label %if.then324, label %if.else399

if.then324:                                       ; preds = %if.end320
  store i32 0, i32* %func, align 4
  %151 = load i8*, i8** @ptr, align 4
  store i8* %151, i8** %p, align 4
  %152 = load i8*, i8** %ie, align 4
  store i8* %152, i8** @ptr, align 4
  %153 = load i8*, i8** %ie, align 4
  %154 = load i8*, i8** %p, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %153 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %154 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp325 = icmp eq i32 %sub.ptr.sub, 3
  br i1 %cmp325, label %if.then327, label %if.end340

if.then327:                                       ; preds = %if.then324
  %155 = load i8*, i8** %p, align 4
  %call328 = call i32 @strncasecmp(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 3)
  %cmp329 = icmp eq i32 %call328, 0
  br i1 %cmp329, label %if.then331, label %if.else332

if.then331:                                       ; preds = %if.then327
  store i32 2, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  %156 = load double, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  %157 = load double, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  %div = fdiv double %157, %156
  store double %div, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  store i32 47, i32* %retval, align 4
  br label %return

if.else332:                                       ; preds = %if.then327
  %158 = load i8*, i8** %p, align 4
  %call333 = call i32 @strncasecmp(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 3)
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.then336, label %if.end338

if.then336:                                       ; preds = %if.else332
  store i32 2, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  %159 = load double, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  %div337 = fdiv double 1.000000e+00, %159
  store double %div337, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  store i32 47, i32* %retval, align 4
  br label %return

if.end338:                                        ; preds = %if.else332
  br label %if.end339

if.end339:                                        ; preds = %if.end338
  br label %if.end340

if.end340:                                        ; preds = %if.end339, %if.then324
  %160 = load i8*, i8** @ptr, align 4
  %161 = load i8, i8* %160, align 1
  %conv341 = sext i8 %161 to i32
  %cmp342 = icmp eq i32 %conv341, 91
  br i1 %cmp342, label %if.then350, label %lor.lhs.false344

lor.lhs.false344:                                 ; preds = %if.end340
  %162 = load i32, i32* %cct, align 4
  %tobool345 = icmp ne i32 %162, 0
  br i1 %tobool345, label %if.end387, label %land.lhs.true346

land.lhs.true346:                                 ; preds = %lor.lhs.false344
  %163 = load i8*, i8** @ptr, align 4
  %164 = load i8, i8* %163, align 1
  %conv347 = sext i8 %164 to i32
  %cmp348 = icmp eq i32 %conv347, 40
  br i1 %cmp348, label %if.then350, label %if.end387

if.then350:                                       ; preds = %land.lhs.true346, %if.end340
  %165 = load i8*, i8** @ptr, align 4
  %166 = load i8, i8* %165, align 1
  store i8 %166, i8* %op, align 1
  %167 = load i8*, i8** @ptr, align 4
  %168 = load i8, i8* %167, align 1
  %conv351 = sext i8 %168 to i32
  %cmp352 = icmp eq i32 %conv351, 91
  %cond354 = select i1 %cmp352, i32 93, i32 41
  %conv355 = trunc i32 %cond354 to i8
  store i8 %conv355, i8* %cp, align 1
  %169 = load i8, i8* %op, align 1
  %conv356 = sext i8 %169 to i32
  %cmp357 = icmp eq i32 %conv356, 40
  %conv358 = zext i1 %cmp357 to i32
  store i32 %conv358, i32* %func, align 4
  %170 = load i8*, i8** @ptr, align 4
  %incdec.ptr359 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr359, i8** @ptr, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond360

for.cond360:                                      ; preds = %for.inc, %if.then350
  %171 = load i8*, i8** @ptr, align 4
  %172 = load i8, i8* %171, align 1
  %conv361 = sext i8 %172 to i32
  %tobool362 = icmp ne i32 %conv361, 0
  br i1 %tobool362, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond360
  %173 = load i32, i32* %l, align 4
  %tobool363 = icmp ne i32 %173, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond360
  %174 = phi i1 [ false, %for.cond360 ], [ %tobool363, %land.rhs ]
  br i1 %174, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %175 = load i8*, i8** @ptr, align 4
  %176 = load i8, i8* %175, align 1
  %conv364 = sext i8 %176 to i32
  %177 = load i8, i8* %op, align 1
  %conv365 = sext i8 %177 to i32
  %cmp366 = icmp eq i32 %conv364, %conv365
  br i1 %cmp366, label %if.then368, label %if.end369

if.then368:                                       ; preds = %for.body
  %178 = load i32, i32* %l, align 4
  %inc = add nsw i32 %178, 1
  store i32 %inc, i32* %l, align 4
  br label %if.end369

if.end369:                                        ; preds = %if.then368, %for.body
  %179 = load i8*, i8** @ptr, align 4
  %180 = load i8, i8* %179, align 1
  %conv370 = sext i8 %180 to i32
  %181 = load i8, i8* %cp, align 1
  %conv371 = sext i8 %181 to i32
  %cmp372 = icmp eq i32 %conv370, %conv371
  br i1 %cmp372, label %if.then374, label %if.end375

if.then374:                                       ; preds = %if.end369
  %182 = load i32, i32* %l, align 4
  %dec = add nsw i32 %182, -1
  store i32 %dec, i32* %l, align 4
  br label %if.end375

if.end375:                                        ; preds = %if.then374, %if.end369
  %183 = load i8*, i8** @ptr, align 4
  %184 = load i8, i8* %183, align 1
  %conv376 = sext i8 %184 to i32
  %cmp377 = icmp eq i32 %conv376, 92
  br i1 %cmp377, label %land.lhs.true379, label %if.end385

land.lhs.true379:                                 ; preds = %if.end375
  %185 = load i8*, i8** @ptr, align 4
  %arrayidx380 = getelementptr inbounds i8, i8* %185, i32 1
  %186 = load i8, i8* %arrayidx380, align 1
  %conv381 = sext i8 %186 to i32
  %tobool382 = icmp ne i32 %conv381, 0
  br i1 %tobool382, label %if.then383, label %if.end385

if.then383:                                       ; preds = %land.lhs.true379
  %187 = load i8*, i8** @ptr, align 4
  %incdec.ptr384 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr384, i8** @ptr, align 4
  br label %if.end385

if.end385:                                        ; preds = %if.then383, %land.lhs.true379, %if.end375
  br label %for.inc

for.inc:                                          ; preds = %if.end385
  %188 = load i8*, i8** @ptr, align 4
  %incdec.ptr386 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %incdec.ptr386, i8** @ptr, align 4
  br label %for.cond360

for.end:                                          ; preds = %land.end
  br label %if.end387

if.end387:                                        ; preds = %for.end, %land.lhs.true346, %lor.lhs.false344
  %189 = load i8*, i8** %p, align 4
  %190 = load i8*, i8** @ptr, align 4
  %191 = load i8*, i8** %p, align 4
  %sub.ptr.lhs.cast388 = ptrtoint i8* %190 to i32
  %sub.ptr.rhs.cast389 = ptrtoint i8* %191 to i32
  %sub.ptr.sub390 = sub i32 %sub.ptr.lhs.cast388, %sub.ptr.rhs.cast389
  %call391 = call i8* @dupstrpfx(i8* %189, i32 %sub.ptr.sub390)
  store i8* %call391, i8** @yylval, align 4
  %192 = load i32, i32* %func, align 4
  %tobool392 = icmp ne i32 %192, 0
  br i1 %tobool392, label %cond.true393, label %cond.false394

cond.true393:                                     ; preds = %if.end387
  br label %cond.end397

cond.false394:                                    ; preds = %if.end387
  %193 = load i32, i32* %cct, align 4
  %tobool395 = icmp ne i32 %193, 0
  %cond396 = select i1 %tobool395, i32 50, i32 48
  br label %cond.end397

cond.end397:                                      ; preds = %cond.false394, %cond.true393
  %cond398 = phi i32 [ 52, %cond.true393 ], [ %cond396, %cond.false394 ]
  store i32 %cond398, i32* %retval, align 4
  br label %return

if.else399:                                       ; preds = %if.end320
  %194 = load i32, i32* %cct, align 4
  %tobool400 = icmp ne i32 %194, 0
  br i1 %tobool400, label %if.then401, label %if.end403

if.then401:                                       ; preds = %if.else399
  %call402 = call i32 @poundgetfn(%struct.param* null)
  store i32 %call402, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  store i32 47, i32* %retval, align 4
  br label %return

if.end403:                                        ; preds = %if.else399
  br label %if.end404

if.end404:                                        ; preds = %if.end403
  store i32 44, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb287, %if.end285
  br label %for.inc405

for.inc405:                                       ; preds = %sw.epilog
  store i32 0, i32* %cct, align 4
  br label %for.cond

return:                                           ; preds = %if.end404, %if.then401, %cond.end397, %if.then336, %if.then331, %if.end317, %if.then316, %if.then298, %if.then283, %bofs, %if.end219, %if.then218, %sw.bb198, %sw.bb197, %sw.bb196, %if.end195, %if.then194, %sw.bb191, %if.end190, %if.then188, %if.end183, %if.then180, %if.end175, %if.then173, %if.end163, %if.then160, %if.end155, %if.then153, %if.end143, %if.then141, %if.end136, %if.then134, %if.end129, %if.then127, %if.end122, %if.then120, %if.end110, %if.then107, %if.end102, %if.then100, %if.end90, %if.then87, %if.end82, %if.then80, %if.end70, %if.then67, %if.end62, %if.then60, %sw.bb50, %if.end49, %if.then47, %sw.bb42, %sw.bb41, %if.else40, %if.else, %if.then38, %if.then27, %if.then19, %if.end9, %if.then7, %if.then
  %195 = load i32, i32* %retval, align 4
  ret i32 %195
}

; Function Attrs: noinline nounwind
define internal void @checkunary(i32 %mtokc, i8* %mptr) #0 {
entry:
  %mtokc.addr = alloca i32, align 4
  %mptr.addr = alloca i8*, align 4
  %errmsg = alloca i32, align 4
  %tp = alloca i32, align 4
  %len = alloca i32, align 4
  %over = alloca i32, align 4
  %errtype = alloca i8*, align 4
  store i32 %mtokc, i32* %mtokc.addr, align 4
  store i8* %mptr, i8** %mptr.addr, align 4
  store i32 0, i32* %errmsg, align 4
  %0 = load i32, i32* %mtokc.addr, align 4
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @type, i32 0, i32 %0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %tp, align 4
  %2 = load i32, i32* %tp, align 4
  %and = and i32 %2, 252
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @unary, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, i32* %errmsg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end6

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @unary, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.else
  store i32 2, i32* %errmsg, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %5 = load i32, i32* %errmsg, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then8, label %if.end22

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* %over, align 4
  %6 = load i32, i32* %errmsg, align 4
  %cmp = icmp eq i32 %6, 2
  %cond = select i1 %cmp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)
  store i8* %cond, i8** %errtype, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then8
  %7 = load i8*, i8** %mptr.addr, align 4
  %8 = load i8, i8* %7, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx9 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %9 = load i16, i16* %arrayidx9, align 2
  %conv = sext i16 %9 to i32
  %and10 = and i32 %conv, 8
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %mptr.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %mptr.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i8*, i8** %mptr.addr, align 4
  %call = call i32 @ztrlen(i8* %11)
  store i32 %call, i32* %len, align 4
  %12 = load i32, i32* %len, align 4
  %cmp12 = icmp sgt i32 %12, 10
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.end
  store i32 10, i32* %len, align 4
  store i32 1, i32* %over, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end
  %13 = load i8*, i8** %mptr.addr, align 4
  %14 = load i8, i8* %13, align 1
  %tobool16 = icmp ne i8 %14, 0
  br i1 %tobool16, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.end15
  %15 = load i8*, i8** %errtype, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i32 0, i32 0), i8* %15)
  br label %if.end21

if.else18:                                        ; preds = %if.end15
  %16 = load i8*, i8** %errtype, align 4
  %17 = load i8*, i8** %mptr.addr, align 4
  %18 = load i32, i32* %len, align 4
  %19 = load i32, i32* %over, align 4
  %tobool19 = icmp ne i32 %19, 0
  %cond20 = select i1 %tobool19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0), i8* %16, i8* %17, i32 %18, i8* %cond20)
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end6
  %20 = load i32, i32* %tp, align 4
  %and23 = and i32 %20, 256
  %tobool24 = icmp ne i32 %and23, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @unary, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @getcvar(%struct.mnumber* noalias sret %agg.result, i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %t = alloca i8*, align 4
  %mn = alloca %struct.mnumber, align 8
  %wc = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp12 = alloca %struct.__sigset_t, align 4
  %oset36 = alloca %struct.__sigset_t, align 4
  %tmp40 = alloca %struct.__sigset_t, align 4
  %tmp42 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i8* @getsparam(i8* %1)
  store i8* %call, i8** %t, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l = bitcast %union.anon* %u to i32*
  store i32 0, i32* %l, align 8
  br label %if.end25

if.else:                                          ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end15

if.then2:                                         ; preds = %if.else
  %3 = load i8*, i8** %t, align 4
  %call3 = call i32 @mb_metacharlenconv(i8* %3, i32* %wc)
  %4 = load i32, i32* %wc, align 4
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.then2
  %5 = load i32, i32* %wc, align 4
  %u5 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l6 = bitcast %union.anon* %u5 to i32*
  store i32 %5, i32* %l6, align 8
  br label %do.body

do.body:                                          ; preds = %if.then4
  %6 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool7 = icmp ne i32 %dec, 0
  br i1 %tobool7, label %if.end, label %if.then8

if.then8:                                         ; preds = %do.body
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body9
  %7 = load i32, i32* @queue_front, align 4
  %8 = load i32, i32* @queue_rear, align 4
  %cmp10 = icmp ne i32 %7, %8
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %9, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %10 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %10
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %11 = bitcast %struct.__sigset_t* %oset to i8*
  %12 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 4, i1 false)
  %13 = load i32, i32* @queue_front, align 4
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %13
  %14 = load i32, i32* %arrayidx11, align 4
  call void @zhandler(i32 %14)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp12, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end13

do.end13:                                         ; preds = %if.end
  %15 = bitcast %struct.mnumber* %agg.result to i8*
  %16 = bitcast %struct.mnumber* %mn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 16, i32 8, i1 false)
  br label %return

if.end14:                                         ; preds = %if.then2
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.else
  %17 = load i8*, i8** %t, align 4
  %18 = load i8, i8* %17, align 1
  %conv = sext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv, -125
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %19 = load i8*, i8** %t, align 4
  %arrayidx18 = getelementptr inbounds i8, i8* %19, i32 1
  %20 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %20 to i32
  %xor = xor i32 %conv19, 32
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %21 = load i8*, i8** %t, align 4
  %22 = load i8, i8* %21, align 1
  %conv20 = sext i8 %22 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv20, %cond.false ]
  %conv21 = trunc i32 %cond to i8
  %conv22 = zext i8 %conv21 to i32
  %u23 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %mn, i32 0, i32 0
  %l24 = bitcast %union.anon* %u23 to i32*
  store i32 %conv22, i32* %l24, align 8
  br label %if.end25

if.end25:                                         ; preds = %cond.end, %if.then
  br label %do.body26

do.body26:                                        ; preds = %if.end25
  %23 = load i32, i32* @queueing_enabled, align 4
  %dec27 = add nsw i32 %23, -1
  store i32 %dec27, i32* @queueing_enabled, align 4
  %tobool28 = icmp ne i32 %dec27, 0
  br i1 %tobool28, label %if.end45, label %if.then29

if.then29:                                        ; preds = %do.body26
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  br label %while.cond31

while.cond31:                                     ; preds = %while.body34, %do.body30
  %24 = load i32, i32* @queue_front, align 4
  %25 = load i32, i32* @queue_rear, align 4
  %cmp32 = icmp ne i32 %24, %25
  br i1 %cmp32, label %while.body34, label %while.end43

while.body34:                                     ; preds = %while.cond31
  %26 = load i32, i32* @queue_front, align 4
  %add37 = add nsw i32 %26, 1
  %rem38 = srem i32 %add37, 128
  store i32 %rem38, i32* @queue_front, align 4
  %27 = load i32, i32* @queue_front, align 4
  %arrayidx39 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %27
  call void @signal_setmask(%struct.__sigset_t* sret %tmp40, %struct.__sigset_t* byval align 4 %arrayidx39)
  %28 = bitcast %struct.__sigset_t* %oset36 to i8*
  %29 = bitcast %struct.__sigset_t* %tmp40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 128, i32 4, i1 false)
  %30 = load i32, i32* @queue_front, align 4
  %arrayidx41 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %30
  %31 = load i32, i32* %arrayidx41, align 4
  call void @zhandler(i32 %31)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp42, %struct.__sigset_t* byval align 4 %oset36)
  br label %while.cond31

while.end43:                                      ; preds = %while.cond31
  br label %do.end44

do.end44:                                         ; preds = %while.end43
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %do.body26
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  %32 = bitcast %struct.mnumber* %agg.result to i8*
  %33 = bitcast %struct.mnumber* %mn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end46, %do.end13
  ret void
}

; Function Attrs: noinline nounwind
define internal void @callmathfunc(%struct.mnumber* noalias sret %agg.result, i8* %o) #0 {
entry:
  %o.addr = alloca i8*, align 4
  %f = alloca %struct.mathfunc*, align 4
  %a = alloca i8*, align 4
  %n = alloca i8*, align 4
  %argc = alloca i32, align 4
  %argv = alloca %struct.mnumber*, align 4
  %q = alloca %struct.mnumber*, align 4
  %marg = alloca %struct.mnumber, align 8
  %l = alloca %union.linkroot*, align 4
  %node = alloca %struct.linknode*, align 4
  %str = alloca i8*, align 4
  %tmp = alloca %struct.mnumber, align 8
  %buf = alloca [36 x i8], align 1
  %tmp68 = alloca %struct.mnumber, align 8
  %shfnam = alloca i8*, align 4
  %shfunc = alloca %struct.shfunc*, align 4
  store i8* %o, i8** %o.addr, align 4
  %0 = load i8*, i8** %o.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %a, align 4
  store i8* %call, i8** %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %a, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 40
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %a, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %a, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %a, align 4
  %incdec.ptr2 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr2, i8** %a, align 4
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** %a, align 4
  %6 = load i8*, i8** %a, align 4
  %call3 = call i32 @strlen(i8* %6)
  %sub = sub i32 %call3, 1
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 %sub
  store i8 0, i8* %arrayidx, align 1
  %7 = load i8*, i8** %n, align 4
  %call4 = call %struct.mathfunc* @getmathfunc(i8* %7, i32 1)
  store %struct.mathfunc* %call4, %struct.mathfunc** %f, align 4
  %tobool = icmp ne %struct.mathfunc* %call4, null
  br i1 %tobool, label %if.then, label %if.else126

if.then:                                          ; preds = %while.end
  %8 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %8, i32 0, i32 2
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 5
  %cmp5 = icmp eq i32 %and, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %10 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %sfunc = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %10, i32 0, i32 4
  %11 = load void (%struct.mnumber*, i8*, i8*, i32)*, void (%struct.mnumber*, i8*, i8*, i32)** %sfunc, align 4
  %12 = load i8*, i8** %n, align 4
  %13 = load i8*, i8** %a, align 4
  %14 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %funcid = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %14, i32 0, i32 8
  %15 = load i32, i32* %funcid, align 4
  call void %11(%struct.mnumber* sret %agg.result, i8* %12, i8* %13, i32 %15)
  br label %return

if.else:                                          ; preds = %if.then
  store i32 0, i32* %argc, align 4
  store %struct.mnumber* null, %struct.mnumber** %argv, align 4
  %call8 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call8, %union.linkroot** %l, align 4
  %16 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags9 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %16, i32 0, i32 2
  %17 = load i32, i32* %flags9, align 4
  %and10 = and i32 %17, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else
  %18 = load %union.linkroot*, %union.linkroot** %l, align 4
  %19 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list = bitcast %union.linkroot* %19 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %20 = load %struct.linknode*, %struct.linknode** %last, align 4
  %21 = load i8*, i8** %n, align 4
  %call13 = call %struct.linknode* @insertlinknode(%union.linkroot* %18, %struct.linknode* %20, i8* %21)
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.else
  %22 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags14 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %22, i32 0, i32 2
  %23 = load i32, i32* %flags14, align 4
  %and15 = and i32 %23, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else25

if.then17:                                        ; preds = %if.end
  %24 = load i8*, i8** %a, align 4
  %25 = load i8, i8* %24, align 1
  %tobool18 = icmp ne i8 %25, 0
  br i1 %tobool18, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.then17
  %26 = load %union.linkroot*, %union.linkroot** %l, align 4
  %27 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list20 = bitcast %union.linkroot* %27 to %struct.linklist*
  %last21 = getelementptr inbounds %struct.linklist, %struct.linklist* %list20, i32 0, i32 1
  %28 = load %struct.linknode*, %struct.linknode** %last21, align 4
  %call22 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0))
  %call23 = call %struct.linknode* @insertlinknode(%union.linkroot* %26, %struct.linknode* %28, i8* %call22)
  %29 = load i32, i32* %argc, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %argc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then17
  br label %if.end34

if.else25:                                        ; preds = %if.end
  br label %while.cond26

while.cond26:                                     ; preds = %while.body31, %if.else25
  %30 = load i8*, i8** %a, align 4
  %31 = load i8, i8* %30, align 1
  %idxprom = zext i8 %31 to i32
  %arrayidx27 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %32 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %32 to i32
  %and29 = and i32 %conv28, 4
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %while.body31, label %while.end33

while.body31:                                     ; preds = %while.cond26
  %33 = load i8*, i8** %a, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr32, i8** %a, align 4
  br label %while.cond26

while.end33:                                      ; preds = %while.cond26
  br label %if.end34

if.end34:                                         ; preds = %while.end33, %if.end24
  br label %while.cond35

while.cond35:                                     ; preds = %if.end78, %if.end34
  %34 = load i8*, i8** %a, align 4
  %35 = load i8, i8* %34, align 1
  %tobool36 = icmp ne i8 %35, 0
  br i1 %tobool36, label %while.body37, label %while.end79

while.body37:                                     ; preds = %while.cond35
  %36 = load i8*, i8** %a, align 4
  %37 = load i8, i8* %36, align 1
  %tobool38 = icmp ne i8 %37, 0
  br i1 %tobool38, label %if.then39, label %if.end78

if.then39:                                        ; preds = %while.body37
  %38 = load i32, i32* %argc, align 4
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, i32* %argc, align 4
  %39 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags41 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %39, i32 0, i32 2
  %40 = load i32, i32* %flags41, align 4
  %and42 = and i32 %40, 4
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.else66

if.then44:                                        ; preds = %if.then39
  %41 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags45 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %41, i32 0, i32 2
  %42 = load i32, i32* %flags45, align 4
  %and46 = and i32 %42, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.then44
  %43 = load i8*, i8** %a, align 4
  %call49 = call i8* @dupstring(i8* %43)
  store i8* %call49, i8** %str, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i8** %a, align 4
  br label %if.end62

if.else50:                                        ; preds = %if.then44
  %44 = load i8*, i8** %a, align 4
  call void @mathevall(%struct.mnumber* sret %tmp, i8* %44, i32 1, i8** %a)
  %45 = bitcast %struct.mnumber* %marg to i8*
  %46 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %46, i32 16, i32 8, i1 false)
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %marg, i32 0, i32 1
  %47 = load i32, i32* %type, align 8
  %and51 = and i32 %47, 2
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else50
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %marg, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  %48 = load double, double* %d, align 8
  %call54 = call i8* @convfloat(double %48, i32 0, i32 0, %struct._IO_FILE* null)
  store i8* %call54, i8** %str, align 4
  br label %if.end61

if.else55:                                        ; preds = %if.else50
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %u57 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %marg, i32 0, i32 0
  %l58 = bitcast %union.anon* %u57 to i32*
  %49 = load i32, i32* %l58, align 8
  call void @convbase(i8* %arraydecay, i32 %49, i32 10)
  %arraydecay59 = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %call60 = call i8* @dupstring(i8* %arraydecay59)
  store i8* %call60, i8** %str, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else55, %if.then53
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then48
  %50 = load %union.linkroot*, %union.linkroot** %l, align 4
  %51 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list63 = bitcast %union.linkroot* %51 to %struct.linklist*
  %last64 = getelementptr inbounds %struct.linklist, %struct.linklist* %list63, i32 0, i32 1
  %52 = load %struct.linknode*, %struct.linknode** %last64, align 4
  %53 = load i8*, i8** %str, align 4
  %call65 = call %struct.linknode* @insertlinknode(%union.linkroot* %50, %struct.linknode* %52, i8* %53)
  br label %if.end72

if.else66:                                        ; preds = %if.then39
  %call67 = call i8* @zhalloc(i32 16)
  %54 = bitcast i8* %call67 to %struct.mnumber*
  store %struct.mnumber* %54, %struct.mnumber** %q, align 4
  %55 = load %struct.mnumber*, %struct.mnumber** %q, align 4
  %56 = load i8*, i8** %a, align 4
  call void @mathevall(%struct.mnumber* sret %tmp68, i8* %56, i32 1, i8** %a)
  %57 = bitcast %struct.mnumber* %55 to i8*
  %58 = bitcast %struct.mnumber* %tmp68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %57, i8* %58, i32 16, i32 8, i1 false)
  %59 = load %union.linkroot*, %union.linkroot** %l, align 4
  %60 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list69 = bitcast %union.linkroot* %60 to %struct.linklist*
  %last70 = getelementptr inbounds %struct.linklist, %struct.linklist* %list69, i32 0, i32 1
  %61 = load %struct.linknode*, %struct.linknode** %last70, align 4
  %62 = load %struct.mnumber*, %struct.mnumber** %q, align 4
  %63 = bitcast %struct.mnumber* %62 to i8*
  %call71 = call %struct.linknode* @insertlinknode(%union.linkroot* %59, %struct.linknode* %61, i8* %63)
  br label %if.end72

if.end72:                                         ; preds = %if.else66, %if.end62
  %64 = load i32, i32* @errflag, align 4
  %tobool73 = icmp ne i32 %64, 0
  br i1 %tobool73, label %if.then76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end72
  %65 = load i32, i32* @mtok, align 4
  %cmp74 = icmp ne i32 %65, 43
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %lor.lhs.false, %if.end72
  br label %while.end79

if.end77:                                         ; preds = %lor.lhs.false
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %while.body37
  br label %while.cond35

while.end79:                                      ; preds = %if.then76, %while.cond35
  %66 = load i8*, i8** %a, align 4
  %67 = load i8, i8* %66, align 1
  %conv80 = sext i8 %67 to i32
  %tobool81 = icmp ne i32 %conv80, 0
  br i1 %tobool81, label %land.lhs.true, label %if.end85

land.lhs.true:                                    ; preds = %while.end79
  %68 = load i32, i32* @errflag, align 4
  %tobool82 = icmp ne i32 %68, 0
  br i1 %tobool82, label %if.end85, label %if.then83

if.then83:                                        ; preds = %land.lhs.true
  %69 = load i8*, i8** %a, align 4
  %70 = load i8, i8* %69, align 1
  %conv84 = sext i8 %70 to i32
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i32 %conv84)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %land.lhs.true, %while.end79
  %71 = load i32, i32* @errflag, align 4
  %tobool86 = icmp ne i32 %71, 0
  br i1 %tobool86, label %if.end124, label %if.then87

if.then87:                                        ; preds = %if.end85
  %72 = load i32, i32* %argc, align 4
  %73 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %minargs = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %73, i32 0, i32 6
  %74 = load i32, i32* %minargs, align 4
  %cmp88 = icmp sge i32 %72, %74
  br i1 %cmp88, label %land.lhs.true90, label %if.else122

land.lhs.true90:                                  ; preds = %if.then87
  %75 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %maxargs = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %75, i32 0, i32 7
  %76 = load i32, i32* %maxargs, align 4
  %cmp91 = icmp slt i32 %76, 0
  br i1 %cmp91, label %if.then97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.lhs.true90
  %77 = load i32, i32* %argc, align 4
  %78 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %maxargs94 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %78, i32 0, i32 7
  %79 = load i32, i32* %maxargs94, align 4
  %cmp95 = icmp sle i32 %77, %79
  br i1 %cmp95, label %if.then97, label %if.else122

if.then97:                                        ; preds = %lor.lhs.false93, %land.lhs.true90
  %80 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags98 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %80, i32 0, i32 2
  %81 = load i32, i32* %flags98, align 4
  %and99 = and i32 %81, 4
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.else112

if.then101:                                       ; preds = %if.then97
  %82 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %module = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %82, i32 0, i32 5
  %83 = load i8*, i8** %module, align 4
  %tobool103 = icmp ne i8* %83, null
  br i1 %tobool103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then101
  %84 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %module104 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %84, i32 0, i32 5
  %85 = load i8*, i8** %module104, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then101
  %86 = load i8*, i8** %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %85, %cond.true ], [ %86, %cond.false ]
  store i8* %cond, i8** %shfnam, align 4
  %87 = load i8*, i8** %shfnam, align 4
  %call106 = call %struct.shfunc* @getshfunc(i8* %87)
  store %struct.shfunc* %call106, %struct.shfunc** %shfunc, align 4
  %88 = load %struct.shfunc*, %struct.shfunc** %shfunc, align 4
  %tobool107 = icmp ne %struct.shfunc* %88, null
  br i1 %tobool107, label %if.else109, label %if.then108

if.then108:                                       ; preds = %cond.end
  %89 = load i8*, i8** %shfnam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* %89)
  br label %if.end111

if.else109:                                       ; preds = %cond.end
  %90 = load %struct.shfunc*, %struct.shfunc** %shfunc, align 4
  %91 = load %union.linkroot*, %union.linkroot** %l, align 4
  %call110 = call i32 @doshfunc(%struct.shfunc* %90, %union.linkroot* %91, i32 1)
  %92 = bitcast %struct.mnumber* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %92, i8* bitcast (%struct.mnumber* @lastmathval to i8*), i32 16, i32 8, i1 false)
  br label %return

if.end111:                                        ; preds = %if.then108
  br label %if.end121

if.else112:                                       ; preds = %if.then97
  %93 = load i32, i32* %argc, align 4
  %tobool113 = icmp ne i32 %93, 0
  br i1 %tobool113, label %if.then114, label %if.end119

if.then114:                                       ; preds = %if.else112
  %94 = load i32, i32* %argc, align 4
  %mul = mul i32 %94, 16
  %call115 = call i8* @zhalloc(i32 %mul)
  %95 = bitcast i8* %call115 to %struct.mnumber*
  store %struct.mnumber* %95, %struct.mnumber** %argv, align 4
  store %struct.mnumber* %95, %struct.mnumber** %q, align 4
  %96 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list116 = bitcast %union.linkroot* %96 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list116, i32 0, i32 0
  %97 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %97, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then114
  %98 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool117 = icmp ne %struct.linknode* %98, null
  br i1 %tobool117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load %struct.mnumber*, %struct.mnumber** %q, align 4
  %incdec.ptr118 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %99, i32 1
  store %struct.mnumber* %incdec.ptr118, %struct.mnumber** %q, align 4
  %100 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %100, i32 0, i32 2
  %101 = load i8*, i8** %dat, align 4
  %102 = bitcast i8* %101 to %struct.mnumber*
  %103 = bitcast %struct.mnumber* %99 to i8*
  %104 = bitcast %struct.mnumber* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %105 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %105, i32 0, i32 0
  %106 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %106, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end119

if.end119:                                        ; preds = %for.end, %if.else112
  %107 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %nfunc = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %107, i32 0, i32 3
  %108 = load void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)*, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)** %nfunc, align 4
  %109 = load i8*, i8** %n, align 4
  %110 = load i32, i32* %argc, align 4
  %111 = load %struct.mnumber*, %struct.mnumber** %argv, align 4
  %112 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %funcid120 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %112, i32 0, i32 8
  %113 = load i32, i32* %funcid120, align 4
  call void %108(%struct.mnumber* sret %agg.result, i8* %109, i32 %110, %struct.mnumber* %111, i32 %113)
  br label %return

if.end121:                                        ; preds = %if.end111
  br label %if.end123

if.else122:                                       ; preds = %lor.lhs.false93, %if.then87
  %114 = load i8*, i8** %o.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), i8* %114)
  br label %if.end123

if.end123:                                        ; preds = %if.else122, %if.end121
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end85
  br label %if.end125

if.end125:                                        ; preds = %if.end124
  br label %if.end127

if.else126:                                       ; preds = %while.end
  %115 = load i8*, i8** %n, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), i8* %115)
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.end125
  store i32 1, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @callmathfunc.dummy, i32 0, i32 1), align 8
  store i32 0, i32* bitcast (%struct.mnumber* @callmathfunc.dummy to i32*), align 8
  %116 = bitcast %struct.mnumber* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %116, i8* bitcast (%struct.mnumber* @callmathfunc.dummy to i8*), i32 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end127, %if.end119, %if.else109, %if.then7
  ret void
}

; Function Attrs: noinline nounwind
define internal void @bop(i32 %tk) #0 {
entry:
  %tk.addr = alloca i32, align 4
  %spval = alloca %struct.mnumber*, align 4
  %tst = alloca i32, align 4
  %tmp = alloca %struct.mnumber, align 8
  store i32 %tk, i32* %tk.addr, align 4
  %0 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %1 = load i32, i32* @sp, align 4
  %arrayidx = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %0, i32 %1
  %val = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx, i32 0, i32 2
  store %struct.mnumber* %val, %struct.mnumber** %spval, align 4
  %2 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %3 = load i32, i32* @sp, align 4
  %arrayidx1 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %2, i32 %3
  %val2 = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %arrayidx1, i32 0, i32 2
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %val2, i32 0, i32 1
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %6 = load %struct.mathvalue*, %struct.mathvalue** @stack, align 4
  %7 = load i32, i32* @sp, align 4
  %add.ptr = getelementptr inbounds %struct.mathvalue, %struct.mathvalue* %6, i32 %7
  call void @getmathparam(%struct.mnumber* sret %tmp, %struct.mathvalue* %add.ptr)
  %8 = bitcast %struct.mnumber* %5 to i8*
  %9 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %type3 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %10, i32 0, i32 1
  %11 = load i32, i32* %type3, align 8
  %and = and i32 %11, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %12, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  %13 = load double, double* %d, align 8
  %conv = fptosi double %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = load %struct.mnumber*, %struct.mnumber** %spval, align 4
  %u4 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %14, i32 0, i32 0
  %l = bitcast %union.anon* %u4 to i32*
  %15 = load i32, i32* %l, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %tst, align 4
  %16 = load i32, i32* %tk.addr, align 4
  switch i32 %16, label %sw.epilog [
    i32 24, label %sw.bb
    i32 40, label %sw.bb
    i32 25, label %sw.bb8
    i32 41, label %sw.bb8
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %17 = load i32, i32* %tst, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %sw.bb
  %18 = load i32, i32* @noeval, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @noeval, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sw.bb
  br label %sw.epilog

sw.bb8:                                           ; preds = %cond.end, %cond.end
  %19 = load i32, i32* %tst, align 4
  %tobool9 = icmp ne i32 %19, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %sw.bb8
  %20 = load i32, i32* @noeval, align 4
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* @noeval, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %sw.bb8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %if.end12, %if.end7
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @lexconstant() #0 {
entry:
  %retval = alloca i32, align 4
  %prev_locale = alloca i8*, align 4
  %nptr = alloca i8*, align 4
  %lowchar = alloca i32, align 4
  %ptr2 = alloca i8*, align 4
  %ptr281 = alloca i8*, align 4
  %len = alloca i32, align 4
  %0 = load i8*, i8** @ptr, align 4
  store i8* %0, i8** %nptr, align 4
  %1 = load i8*, i8** %nptr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %nptr, align 4
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, -101
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i8*, i8** %nptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %nptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i8*, i8** %nptr, align 4
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 48
  br i1 %cmp6, label %if.then8, label %if.end57

if.then8:                                         ; preds = %if.end
  %8 = load i8*, i8** %nptr, align 4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr9, i8** %nptr, align 4
  %9 = load i8*, i8** %nptr, align 4
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %call = call i32 @tolower(i32 %conv10) #6
  store i32 %call, i32* %lowchar, align 4
  %11 = load i32, i32* %lowchar, align 4
  %cmp11 = icmp eq i32 %11, 120
  br i1 %cmp11, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.then8
  %12 = load i32, i32* %lowchar, align 4
  %cmp14 = icmp eq i32 %12, 98
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %lor.lhs.false13, %if.then8
  %13 = load i8*, i8** @ptr, align 4
  %call17 = call i32 @zstrtol_underscore(i8* %13, i8** @ptr, i32 0, i32 1)
  store i32 %call17, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  %14 = load i32, i32* %lowchar, align 4
  %cmp18 = icmp eq i32 %14, 98
  %cond = select i1 %cmp18, i32 2, i32 16
  store i32 %cond, i32* @lastbase, align 4
  %15 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 58), align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then16
  store i32 2, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 1), align 8
  %16 = load i32, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  %conv21 = sitofp i32 %16 to double
  store double %conv21, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then16
  store i32 47, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false13
  %17 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 125), align 1
  %tobool23 = icmp ne i8 %17, 0
  br i1 %tobool23, label %if.then24, label %if.end55

if.then24:                                        ; preds = %if.else
  %18 = load i8*, i8** %nptr, align 4
  store i8* %18, i8** %ptr2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then24
  %19 = load i8*, i8** %ptr2, align 4
  %20 = load i8, i8* %19, align 1
  %idxprom = zext i8 %20 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %21 = load i16, i16* %arrayidx, align 2
  %conv25 = sext i16 %21 to i32
  %and = and i32 %conv25, 1
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %22 = load i8*, i8** %ptr2, align 4
  %23 = load i8, i8* %22, align 1
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %24 = phi i1 [ true, %for.cond ], [ %cmp28, %lor.rhs ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i8*, i8** %ptr2, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr30, i8** %ptr2, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %26 = load i8*, i8** %ptr2, align 4
  %27 = load i8*, i8** %nptr, align 4
  %cmp31 = icmp ugt i8* %26, %27
  br i1 %cmp31, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %for.end
  %28 = load i8*, i8** %ptr2, align 4
  %29 = load i8, i8* %28, align 1
  %conv33 = sext i8 %29 to i32
  %cmp34 = icmp ne i32 %conv33, 46
  br i1 %cmp34, label %land.lhs.true36, label %if.end54

land.lhs.true36:                                  ; preds = %land.lhs.true
  %30 = load i8*, i8** %ptr2, align 4
  %31 = load i8, i8* %30, align 1
  %conv37 = sext i8 %31 to i32
  %cmp38 = icmp ne i32 %conv37, 101
  br i1 %cmp38, label %land.lhs.true40, label %if.end54

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %32 = load i8*, i8** %ptr2, align 4
  %33 = load i8, i8* %32, align 1
  %conv41 = sext i8 %33 to i32
  %cmp42 = icmp ne i32 %conv41, 69
  br i1 %cmp42, label %land.lhs.true44, label %if.end54

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %34 = load i8*, i8** %ptr2, align 4
  %35 = load i8, i8* %34, align 1
  %conv45 = sext i8 %35 to i32
  %cmp46 = icmp ne i32 %conv45, 35
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %land.lhs.true44
  %36 = load i8*, i8** @ptr, align 4
  %call49 = call i32 @zstrtol_underscore(i8* %36, i8** @ptr, i32 0, i32 1)
  store i32 %call49, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  store i32 8, i32* @lastbase, align 4
  %37 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 58), align 1
  %tobool50 = icmp ne i8 %37, 0
  br i1 %tobool50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.then48
  store i32 2, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 1), align 8
  %38 = load i32, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  %conv52 = sitofp i32 %38 to double
  store double %conv52, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then48
  store i32 47, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %land.lhs.true44, %land.lhs.true40, %land.lhs.true36, %land.lhs.true, %for.end
  %39 = load i8*, i8** %ptr2, align 4
  store i8* %39, i8** %nptr, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.else
  br label %if.end56

if.end56:                                         ; preds = %if.end55
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end57
  %40 = load i8*, i8** %nptr, align 4
  %41 = load i8, i8* %40, align 1
  %idxprom58 = zext i8 %41 to i32
  %arrayidx59 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom58
  %42 = load i16, i16* %arrayidx59, align 2
  %conv60 = sext i16 %42 to i32
  %and61 = and i32 %conv60, 1
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %lor.end67, label %lor.rhs63

lor.rhs63:                                        ; preds = %while.cond
  %43 = load i8*, i8** %nptr, align 4
  %44 = load i8, i8* %43, align 1
  %conv64 = sext i8 %44 to i32
  %cmp65 = icmp eq i32 %conv64, 95
  br label %lor.end67

lor.end67:                                        ; preds = %lor.rhs63, %while.cond
  %45 = phi i1 [ true, %while.cond ], [ %cmp65, %lor.rhs63 ]
  br i1 %45, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end67
  %46 = load i8*, i8** %nptr, align 4
  %incdec.ptr68 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr68, i8** %nptr, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end67
  %47 = load i8*, i8** %nptr, align 4
  %48 = load i8, i8* %47, align 1
  %conv69 = sext i8 %48 to i32
  %cmp70 = icmp eq i32 %conv69, 46
  br i1 %cmp70, label %if.then80, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %while.end
  %49 = load i8*, i8** %nptr, align 4
  %50 = load i8, i8* %49, align 1
  %conv73 = sext i8 %50 to i32
  %cmp74 = icmp eq i32 %conv73, 101
  br i1 %cmp74, label %if.then80, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %51 = load i8*, i8** %nptr, align 4
  %52 = load i8, i8* %51, align 1
  %conv77 = sext i8 %52 to i32
  %cmp78 = icmp eq i32 %conv77, 69
  br i1 %cmp78, label %if.then80, label %if.else181

if.then80:                                        ; preds = %lor.lhs.false76, %lor.lhs.false72, %while.end
  store i32 2, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 1), align 8
  %call82 = call i8* @setlocale(i32 1, i8* null)
  %call83 = call i8* @dupstring(i8* %call82)
  store i8* %call83, i8** %prev_locale, align 4
  %call84 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0))
  %53 = load i8*, i8** %nptr, align 4
  %54 = load i8, i8* %53, align 1
  %conv85 = sext i8 %54 to i32
  %cmp86 = icmp eq i32 %conv85, 46
  br i1 %cmp86, label %if.then88, label %if.end104

if.then88:                                        ; preds = %if.then80
  %55 = load i8*, i8** %nptr, align 4
  %incdec.ptr89 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr89, i8** %nptr, align 4
  br label %while.cond90

while.cond90:                                     ; preds = %while.body101, %if.then88
  %56 = load i8*, i8** %nptr, align 4
  %57 = load i8, i8* %56, align 1
  %idxprom91 = zext i8 %57 to i32
  %arrayidx92 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom91
  %58 = load i16, i16* %arrayidx92, align 2
  %conv93 = sext i16 %58 to i32
  %and94 = and i32 %conv93, 1
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %lor.end100, label %lor.rhs96

lor.rhs96:                                        ; preds = %while.cond90
  %59 = load i8*, i8** %nptr, align 4
  %60 = load i8, i8* %59, align 1
  %conv97 = sext i8 %60 to i32
  %cmp98 = icmp eq i32 %conv97, 95
  br label %lor.end100

lor.end100:                                       ; preds = %lor.rhs96, %while.cond90
  %61 = phi i1 [ true, %while.cond90 ], [ %cmp98, %lor.rhs96 ]
  br i1 %61, label %while.body101, label %while.end103

while.body101:                                    ; preds = %lor.end100
  %62 = load i8*, i8** %nptr, align 4
  %incdec.ptr102 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr102, i8** %nptr, align 4
  br label %while.cond90

while.end103:                                     ; preds = %lor.end100
  br label %if.end104

if.end104:                                        ; preds = %while.end103, %if.then80
  %63 = load i8*, i8** %nptr, align 4
  %64 = load i8, i8* %63, align 1
  %conv105 = sext i8 %64 to i32
  %cmp106 = icmp eq i32 %conv105, 101
  br i1 %cmp106, label %if.then112, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.end104
  %65 = load i8*, i8** %nptr, align 4
  %66 = load i8, i8* %65, align 1
  %conv109 = sext i8 %66 to i32
  %cmp110 = icmp eq i32 %conv109, 69
  br i1 %cmp110, label %if.then112, label %if.end142

if.then112:                                       ; preds = %lor.lhs.false108, %if.end104
  %67 = load i8*, i8** %nptr, align 4
  %incdec.ptr113 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr113, i8** %nptr, align 4
  %68 = load i8*, i8** %nptr, align 4
  %69 = load i8, i8* %68, align 1
  %conv114 = sext i8 %69 to i32
  %cmp115 = icmp eq i32 %conv114, 43
  br i1 %cmp115, label %if.then125, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.then112
  %70 = load i8*, i8** %nptr, align 4
  %71 = load i8, i8* %70, align 1
  %conv118 = sext i8 %71 to i32
  %cmp119 = icmp eq i32 %conv118, 45
  br i1 %cmp119, label %if.then125, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false117
  %72 = load i8*, i8** %nptr, align 4
  %73 = load i8, i8* %72, align 1
  %conv122 = sext i8 %73 to i32
  %cmp123 = icmp eq i32 %conv122, -101
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %lor.lhs.false121, %lor.lhs.false117, %if.then112
  %74 = load i8*, i8** %nptr, align 4
  %incdec.ptr126 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr126, i8** %nptr, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %lor.lhs.false121
  br label %while.cond128

while.cond128:                                    ; preds = %while.body139, %if.end127
  %75 = load i8*, i8** %nptr, align 4
  %76 = load i8, i8* %75, align 1
  %idxprom129 = zext i8 %76 to i32
  %arrayidx130 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom129
  %77 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %77 to i32
  %and132 = and i32 %conv131, 1
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %lor.end138, label %lor.rhs134

lor.rhs134:                                       ; preds = %while.cond128
  %78 = load i8*, i8** %nptr, align 4
  %79 = load i8, i8* %78, align 1
  %conv135 = sext i8 %79 to i32
  %cmp136 = icmp eq i32 %conv135, 95
  br label %lor.end138

lor.end138:                                       ; preds = %lor.rhs134, %while.cond128
  %80 = phi i1 [ true, %while.cond128 ], [ %cmp136, %lor.rhs134 ]
  br i1 %80, label %while.body139, label %while.end141

while.body139:                                    ; preds = %lor.end138
  %81 = load i8*, i8** %nptr, align 4
  %incdec.ptr140 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr140, i8** %nptr, align 4
  br label %while.cond128

while.end141:                                     ; preds = %lor.end138
  br label %if.end142

if.end142:                                        ; preds = %while.end141, %lor.lhs.false108
  %82 = load i8*, i8** @ptr, align 4
  store i8* %82, i8** %ptr281, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc165, %if.end142
  %83 = load i8*, i8** %ptr281, align 4
  %84 = load i8*, i8** %nptr, align 4
  %cmp144 = icmp ult i8* %83, %84
  br i1 %cmp144, label %for.body146, label %for.end167

for.body146:                                      ; preds = %for.cond143
  %85 = load i8*, i8** %ptr281, align 4
  %86 = load i8, i8* %85, align 1
  %conv147 = sext i8 %86 to i32
  %cmp148 = icmp eq i32 %conv147, 95
  br i1 %cmp148, label %if.then150, label %if.end164

if.then150:                                       ; preds = %for.body146
  %87 = load i8*, i8** %nptr, align 4
  %88 = load i8*, i8** @ptr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %87 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %88 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %len, align 4
  %89 = load i8*, i8** @ptr, align 4
  %call151 = call i8* @ztrdup(i8* %89)
  store i8* %call151, i8** @ptr, align 4
  %90 = load i8*, i8** @ptr, align 4
  store i8* %90, i8** %ptr281, align 4
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc162, %if.then150
  %91 = load i32, i32* %len, align 4
  %tobool153 = icmp ne i32 %91, 0
  br i1 %tobool153, label %for.body154, label %for.end163

for.body154:                                      ; preds = %for.cond152
  %92 = load i8*, i8** %ptr281, align 4
  %93 = load i8, i8* %92, align 1
  %conv155 = sext i8 %93 to i32
  %cmp156 = icmp eq i32 %conv155, 95
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %for.body154
  %94 = load i8*, i8** %ptr281, align 4
  call void @chuck(i8* %94)
  br label %if.end161

if.else159:                                       ; preds = %for.body154
  %95 = load i8*, i8** %ptr281, align 4
  %incdec.ptr160 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr160, i8** %ptr281, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.else159, %if.then158
  br label %for.inc162

for.inc162:                                       ; preds = %if.end161
  %96 = load i32, i32* %len, align 4
  %dec = add nsw i32 %96, -1
  store i32 %dec, i32* %len, align 4
  br label %for.cond152

for.end163:                                       ; preds = %for.cond152
  br label %for.end167

if.end164:                                        ; preds = %for.body146
  br label %for.inc165

for.inc165:                                       ; preds = %if.end164
  %97 = load i8*, i8** %ptr281, align 4
  %incdec.ptr166 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr166, i8** %ptr281, align 4
  br label %for.cond143

for.end167:                                       ; preds = %for.end163, %for.cond143
  %98 = load i8*, i8** @ptr, align 4
  %call168 = call double @strtod(i8* %98, i8** %nptr)
  store double %call168, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  %99 = load i8*, i8** %prev_locale, align 4
  %tobool169 = icmp ne i8* %99, null
  br i1 %tobool169, label %if.then170, label %if.end172

if.then170:                                       ; preds = %for.end167
  %100 = load i8*, i8** %prev_locale, align 4
  %call171 = call i8* @setlocale(i32 1, i8* %100)
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %for.end167
  %101 = load i8*, i8** @ptr, align 4
  %102 = load i8*, i8** %nptr, align 4
  %cmp173 = icmp eq i8* %101, %102
  br i1 %cmp173, label %if.then179, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %if.end172
  %103 = load i8*, i8** %nptr, align 4
  %104 = load i8, i8* %103, align 1
  %conv176 = sext i8 %104 to i32
  %cmp177 = icmp eq i32 %conv176, 46
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %lor.lhs.false175, %if.end172
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  store i32 44, i32* %retval, align 4
  br label %return

if.end180:                                        ; preds = %lor.lhs.false175
  %105 = load i8*, i8** %nptr, align 4
  store i8* %105, i8** @ptr, align 4
  br label %if.end194

if.else181:                                       ; preds = %lor.lhs.false76
  %106 = load i8*, i8** @ptr, align 4
  %call182 = call i32 @zstrtol_underscore(i8* %106, i8** @ptr, i32 10, i32 1)
  store i32 %call182, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  %107 = load i8*, i8** @ptr, align 4
  %108 = load i8, i8* %107, align 1
  %conv183 = sext i8 %108 to i32
  %cmp184 = icmp eq i32 %conv183, 35
  br i1 %cmp184, label %if.then186, label %if.end189

if.then186:                                       ; preds = %if.else181
  %109 = load i8*, i8** @ptr, align 4
  %incdec.ptr187 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr187, i8** @ptr, align 4
  %110 = load i32, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  store i32 %110, i32* @lastbase, align 4
  %111 = load i8*, i8** @ptr, align 4
  %112 = load i32, i32* @lastbase, align 4
  %call188 = call i32 @zstrtol_underscore(i8* %111, i8** @ptr, i32 %112, i32 1)
  store i32 %call188, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %if.else181
  %113 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 58), align 1
  %tobool190 = icmp ne i8 %113, 0
  br i1 %tobool190, label %if.then191, label %if.end193

if.then191:                                       ; preds = %if.end189
  store i32 2, i32* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 1), align 8
  %114 = load i32, i32* bitcast (%struct.mnumber* @yyval to i32*), align 8
  %conv192 = sitofp i32 %114 to double
  store double %conv192, double* getelementptr inbounds (%struct.mnumber, %struct.mnumber* @yyval, i32 0, i32 0, i32 0), align 8
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end189
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end180
  store i32 47, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end194, %if.then179, %if.end53, %if.end22
  %115 = load i32, i32* %retval, align 4
  ret i32 %115
}

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i8* @getkeystring(i8*, i32*, i32, i32*) #1

declare i8* @itype_end(i8*, i32, i32) #1

declare i32 @strncasecmp(i8*, i8*, i32) #1

declare i32 @poundgetfn(%struct.param*) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #5

declare i32 @zstrtol_underscore(i8*, i8**, i32, i32) #1

declare i8* @dupstring(i8*) #1

declare i8* @setlocale(i32, i8*) #1

declare i8* @ztrdup(i8*) #1

declare void @chuck(i8*) #1

declare double @strtod(i8*, i8**) #1

declare i32 @ztrlen(i8*) #1

declare i8* @getsparam(i8*) #1

declare i32 @mb_metacharlenconv(i8*, i32*) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare void @zhandler(i32) #1

declare i32 @strlen(i8*) #1

declare %struct.mathfunc* @getmathfunc(i8*, i32) #1

declare %union.linkroot* @newlinklist() #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare i8* @convfloat(double, i32, i32, %struct._IO_FILE*) #1

declare void @convbase(i8*, i32, i32) #1

declare %struct.shfunc* @getshfunc(i8*) #1

declare i32 @doshfunc(%struct.shfunc*, %union.linkroot*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
