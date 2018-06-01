; ModuleID = 'subst.c'
source_filename = "subst.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.__sigset_t = type { [32 x i32] }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.param = type { %struct.hashnode, %union.anon.0, %union.anon.1, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon.0 = type { double }
%union.anon.1 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.mnumber = type { %union.anon, i32 }
%union.anon = type { double }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct._IO_FILE = type opaque

@nulstring = global [2 x i8] c"\A1\00", align 1
@opts = external global [181 x i8], align 1
@queueing_enabled = external global i32, align 4
@errflag = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@badcshglob = external global i32, align 4
@noerrs = external global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s not found\00", align 1
@home = external global i8*, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pwd = external global i8*, align 4
@oldpwd = external global i8*, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"zsh_directory_name\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"no directory expansion: ~[%s]\00", align 1
@typtab = external global [256 x i16], align 2
@.str.6 = private unnamed_addr constant [36 x i8] c"no such user or named directory: %s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"bad substitution\00", align 1
@hsubl = external global i8*, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"no previous substitution\00", align 1
@hsubr = external global i8*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@keyvalpairelement.marker = internal global [2 x i8] c"\A2\00", align 1
@keyvalpairelement.marker_plus = internal global [3 x i8] c"\A2+\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"closing bracket missing\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"failed to find end of math substitution\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"failed to find end of command substitution\00", align 1
@ztokens = external global [0 x i8], align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"parse error in command substitution\00", align 1
@outputradix = external global i32, align 4
@outputunderscore = external global i32, align 4
@ifs = external global i8*, align 4
@emulation = external global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"error in flags\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"parameter name reference used with array\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"association\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"-local\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"-left\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"-right_blanks\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"-right_zeros\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"-lower\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"-upper\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"-readonly\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"-tag\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"-tag_local\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"-export\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"-unique\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"-hide\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"-hideval\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"-special\00", align 1
@vararray_gsu = external constant %struct.gsu_array, align 4
@pparams = external global i8**, align 4
@.str.37 = private unnamed_addr constant [23 x i8] c"closing brace expected\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"parameter not set\00", align 1
@mypid = external global i32, align 4
@stopmsg = external global i32, align 4
@.str.40 = private unnamed_addr constant [40 x i8] c"parse error in ${...%c...} substitution\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"%s: parameter not set\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"not an identifier: %s\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"invalid subscript: %s\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"invalid length: %s\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"substring expression: %d < %d\00", align 1
@argzero = external global i8*, align 4
@.str.48 = private unnamed_addr constant [27 x i8] c"unrecognized modifier `%c'\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"unrecognized modifier\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"parse error in parameter value\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"\5CU%.8x\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c" \09\0A\83 \00", align 1
@dirstack = external global %union.linkroot*, align 4
@.str.55 = private unnamed_addr constant [36 x i8] c"not enough directory stack entries.\00", align 1

; Function Attrs: noinline nounwind
define void @prefork(%union.linkroot* %list, i32 %flags, i32* %ret_flags) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %flags.addr = alloca i32, align 4
  %ret_flags.addr = alloca i32*, align 4
  %node = alloca %struct.linknode*, align 4
  %insnode = alloca %struct.linknode*, align 4
  %stop = alloca %struct.linknode*, align 4
  %keep = alloca i32, align 4
  %asssub = alloca i32, align 4
  %ret_flags_local = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp20 = alloca %struct.__sigset_t, align 4
  %cptr = alloca i8*, align 4
  %oset43 = alloca %struct.__sigset_t, align 4
  %tmp47 = alloca %struct.__sigset_t, align 4
  %tmp49 = alloca %struct.__sigset_t, align 4
  %oset77 = alloca %struct.__sigset_t, align 4
  %tmp81 = alloca %struct.__sigset_t, align 4
  %tmp83 = alloca %struct.__sigset_t, align 4
  %cptr123 = alloca i8*, align 4
  %oset152 = alloca %struct.__sigset_t, align 4
  %tmp156 = alloca %struct.__sigset_t, align 4
  %tmp158 = alloca %struct.__sigset_t, align 4
  %oset177 = alloca %struct.__sigset_t, align 4
  %tmp181 = alloca %struct.__sigset_t, align 4
  %tmp183 = alloca %struct.__sigset_t, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %ret_flags, i32** %ret_flags.addr, align 4
  store %struct.linknode* null, %struct.linknode** %stop, align 4
  store i32 0, i32* %keep, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 100), align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, i32* %asssub, align 4
  store i32 0, i32* %ret_flags_local, align 4
  %3 = load i32*, i32** %ret_flags.addr, align 4
  %tobool2 = icmp ne i32* %3, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  store i32* %ret_flags_local, i32** %ret_flags.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %5 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list3 = bitcast %union.linkroot* %5 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list3, i32 0, i32 0
  %6 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %6, %struct.linknode** %node, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %if.then8, %if.end
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool4 = icmp ne %struct.linknode* %7, null
  br i1 %tobool4, label %while.body, label %while.end57

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %flags.addr, align 4
  %and5 = and i32 %8, 6
  %cmp = icmp eq i32 %and5, 2
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %9 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %10 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call = call %struct.linknode* @keyvalpairelement(%union.linkroot* %9, %struct.linknode* %10)
  store %struct.linknode* %call, %struct.linknode** %insnode, align 4
  %tobool7 = icmp ne %struct.linknode* %call, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %11 = load %struct.linknode*, %struct.linknode** %insnode, align 4
  store %struct.linknode* %11, %struct.linknode** %node, align 4
  %12 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %12, i32 0, i32 0
  %13 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %13, %struct.linknode** %node, align 4
  %14 = load i32*, i32** %ret_flags.addr, align 4
  %15 = load i32, i32* %14, align 4
  %or = or i32 %15, 128
  store i32 %or, i32* %14, align 4
  br label %while.cond

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %16 = load i32, i32* @errflag, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then11, label %if.end23

if.then11:                                        ; preds = %if.end9
  br label %do.body

do.body:                                          ; preds = %if.then11
  %17 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool12 = icmp ne i32 %dec, 0
  br i1 %tobool12, label %if.end21, label %if.then13

if.then13:                                        ; preds = %do.body
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  br label %while.cond15

while.cond15:                                     ; preds = %while.body18, %do.body14
  %18 = load i32, i32* @queue_front, align 4
  %19 = load i32, i32* @queue_rear, align 4
  %cmp16 = icmp ne i32 %18, %19
  br i1 %cmp16, label %while.body18, label %while.end

while.body18:                                     ; preds = %while.cond15
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
  %arrayidx19 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %24
  %25 = load i32, i32* %arrayidx19, align 4
  call void @zhandler(i32 %25)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp20, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond15

while.end:                                        ; preds = %while.cond15
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %do.end187

if.end23:                                         ; preds = %if.end9
  %26 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 159), align 1
  %tobool24 = icmp ne i8 %26, 0
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  %27 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %27, i32 0, i32 2
  %28 = load i8*, i8** %dat, align 4
  store i8* %28, i8** %cptr, align 4
  %29 = load i32, i32* %flags.addr, align 4
  %and27 = and i32 %29, 3
  call void @filesub(i8** %cptr, i32 %and27)
  %30 = load i8*, i8** %cptr, align 4
  %31 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat28 = getelementptr inbounds %struct.linknode, %struct.linknode* %31, i32 0, i32 2
  store i8* %30, i8** %dat28, align 4
  br label %if.end55

if.else:                                          ; preds = %if.end23
  %32 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %33 = load %struct.linknode*, %struct.linknode** %node, align 4
  %34 = load i32, i32* %flags.addr, align 4
  %and29 = and i32 %34, -4
  %35 = load i32*, i32** %ret_flags.addr, align 4
  %36 = load i32, i32* %asssub, align 4
  %call30 = call %struct.linknode* @stringsubst(%union.linkroot* %32, %struct.linknode* %33, i32 %and29, i32* %35, i32 %36)
  store %struct.linknode* %call30, %struct.linknode** %node, align 4
  %tobool31 = icmp ne %struct.linknode* %call30, null
  br i1 %tobool31, label %if.end54, label %if.then32

if.then32:                                        ; preds = %if.else
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  %37 = load i32, i32* @queueing_enabled, align 4
  %dec34 = add nsw i32 %37, -1
  store i32 %dec34, i32* @queueing_enabled, align 4
  %tobool35 = icmp ne i32 %dec34, 0
  br i1 %tobool35, label %if.end52, label %if.then36

if.then36:                                        ; preds = %do.body33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %while.cond38

while.cond38:                                     ; preds = %while.body41, %do.body37
  %38 = load i32, i32* @queue_front, align 4
  %39 = load i32, i32* @queue_rear, align 4
  %cmp39 = icmp ne i32 %38, %39
  br i1 %cmp39, label %while.body41, label %while.end50

while.body41:                                     ; preds = %while.cond38
  %40 = load i32, i32* @queue_front, align 4
  %add44 = add nsw i32 %40, 1
  %rem45 = srem i32 %add44, 128
  store i32 %rem45, i32* @queue_front, align 4
  %41 = load i32, i32* @queue_front, align 4
  %arrayidx46 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %41
  call void @signal_setmask(%struct.__sigset_t* sret %tmp47, %struct.__sigset_t* byval align 4 %arrayidx46)
  %42 = bitcast %struct.__sigset_t* %oset43 to i8*
  %43 = bitcast %struct.__sigset_t* %tmp47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 128, i32 4, i1 false)
  %44 = load i32, i32* @queue_front, align 4
  %arrayidx48 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %44
  %45 = load i32, i32* %arrayidx48, align 4
  call void @zhandler(i32 %45)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp49, %struct.__sigset_t* byval align 4 %oset43)
  br label %while.cond38

while.end50:                                      ; preds = %while.cond38
  br label %do.end51

do.end51:                                         ; preds = %while.end50
  br label %if.end52

if.end52:                                         ; preds = %do.end51, %do.body33
  br label %do.end53

do.end53:                                         ; preds = %if.end52
  br label %do.end187

if.end54:                                         ; preds = %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then25
  %46 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next56 = getelementptr inbounds %struct.linknode, %struct.linknode* %46, i32 0, i32 0
  %47 = load %struct.linknode*, %struct.linknode** %next56, align 4
  store %struct.linknode* %47, %struct.linknode** %node, align 4
  br label %while.cond

while.end57:                                      ; preds = %while.cond
  %48 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 159), align 1
  %tobool58 = icmp ne i8 %48, 0
  br i1 %tobool58, label %if.then59, label %if.end90

if.then59:                                        ; preds = %while.end57
  %49 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list60 = bitcast %union.linkroot* %49 to %struct.linklist*
  %first61 = getelementptr inbounds %struct.linklist, %struct.linklist* %list60, i32 0, i32 0
  %50 = load %struct.linknode*, %struct.linknode** %first61, align 4
  store %struct.linknode* %50, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then59
  %51 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool62 = icmp ne %struct.linknode* %51, null
  br i1 %tobool62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %53 = load %struct.linknode*, %struct.linknode** %node, align 4
  %54 = load i32, i32* %flags.addr, align 4
  %and63 = and i32 %54, -4
  %55 = load i32*, i32** %ret_flags.addr, align 4
  %56 = load i32, i32* %asssub, align 4
  %call64 = call %struct.linknode* @stringsubst(%union.linkroot* %52, %struct.linknode* %53, i32 %and63, i32* %55, i32 %56)
  store %struct.linknode* %call64, %struct.linknode** %node, align 4
  %tobool65 = icmp ne %struct.linknode* %call64, null
  br i1 %tobool65, label %if.end88, label %if.then66

if.then66:                                        ; preds = %for.body
  br label %do.body67

do.body67:                                        ; preds = %if.then66
  %57 = load i32, i32* @queueing_enabled, align 4
  %dec68 = add nsw i32 %57, -1
  store i32 %dec68, i32* @queueing_enabled, align 4
  %tobool69 = icmp ne i32 %dec68, 0
  br i1 %tobool69, label %if.end86, label %if.then70

if.then70:                                        ; preds = %do.body67
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  br label %while.cond72

while.cond72:                                     ; preds = %while.body75, %do.body71
  %58 = load i32, i32* @queue_front, align 4
  %59 = load i32, i32* @queue_rear, align 4
  %cmp73 = icmp ne i32 %58, %59
  br i1 %cmp73, label %while.body75, label %while.end84

while.body75:                                     ; preds = %while.cond72
  %60 = load i32, i32* @queue_front, align 4
  %add78 = add nsw i32 %60, 1
  %rem79 = srem i32 %add78, 128
  store i32 %rem79, i32* @queue_front, align 4
  %61 = load i32, i32* @queue_front, align 4
  %arrayidx80 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %61
  call void @signal_setmask(%struct.__sigset_t* sret %tmp81, %struct.__sigset_t* byval align 4 %arrayidx80)
  %62 = bitcast %struct.__sigset_t* %oset77 to i8*
  %63 = bitcast %struct.__sigset_t* %tmp81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %62, i8* %63, i32 128, i32 4, i1 false)
  %64 = load i32, i32* @queue_front, align 4
  %arrayidx82 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %64
  %65 = load i32, i32* %arrayidx82, align 4
  call void @zhandler(i32 %65)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp83, %struct.__sigset_t* byval align 4 %oset77)
  br label %while.cond72

while.end84:                                      ; preds = %while.cond72
  br label %do.end85

do.end85:                                         ; preds = %while.end84
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %do.body67
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %do.end187

if.end88:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end88
  %66 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next89 = getelementptr inbounds %struct.linknode, %struct.linknode* %66, i32 0, i32 0
  %67 = load %struct.linknode*, %struct.linknode** %next89, align 4
  store %struct.linknode* %67, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end90

if.end90:                                         ; preds = %for.end, %while.end57
  %68 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list91 = bitcast %union.linkroot* %68 to %struct.linklist*
  %first92 = getelementptr inbounds %struct.linklist, %struct.linklist* %list91, i32 0, i32 0
  %69 = load %struct.linknode*, %struct.linknode** %first92, align 4
  store %struct.linknode* %69, %struct.linknode** %node, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc164, %if.end90
  %70 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool94 = icmp ne %struct.linknode* %70, null
  br i1 %tobool94, label %for.body95, label %for.end166

for.body95:                                       ; preds = %for.cond93
  %71 = load %struct.linknode*, %struct.linknode** %node, align 4
  %72 = load %struct.linknode*, %struct.linknode** %stop, align 4
  %cmp96 = icmp eq %struct.linknode* %71, %72
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %for.body95
  store i32 0, i32* %keep, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %for.body95
  %73 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat100 = getelementptr inbounds %struct.linknode, %struct.linknode* %73, i32 0, i32 2
  %74 = load i8*, i8** %dat100, align 4
  %75 = load i8, i8* %74, align 1
  %tobool101 = icmp ne i8 %75, 0
  br i1 %tobool101, label %if.then102, label %if.else128

if.then102:                                       ; preds = %if.end99
  %76 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat103 = getelementptr inbounds %struct.linknode, %struct.linknode* %76, i32 0, i32 2
  %77 = load i8*, i8** %dat103, align 4
  call void @remnulargs(i8* %77)
  %78 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 89), align 1
  %tobool104 = icmp ne i8 %78, 0
  br i1 %tobool104, label %if.end119, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.then102
  %79 = load i32, i32* %flags.addr, align 4
  %and106 = and i32 %79, 4
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.end119, label %if.then108

if.then108:                                       ; preds = %land.lhs.true105
  %80 = load i32, i32* %keep, align 4
  %tobool109 = icmp ne i32 %80, 0
  br i1 %tobool109, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.then108
  %81 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next111 = getelementptr inbounds %struct.linknode, %struct.linknode* %81, i32 0, i32 0
  %82 = load %struct.linknode*, %struct.linknode** %next111, align 4
  store %struct.linknode* %82, %struct.linknode** %stop, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.then108
  br label %while.cond113

while.cond113:                                    ; preds = %while.body117, %if.end112
  %83 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat114 = getelementptr inbounds %struct.linknode, %struct.linknode* %83, i32 0, i32 2
  %84 = load i8*, i8** %dat114, align 4
  %call115 = call i32 @hasbraces(i8* %84)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %while.body117, label %while.end118

while.body117:                                    ; preds = %while.cond113
  store i32 1, i32* %keep, align 4
  %85 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  call void @xpandbraces(%union.linkroot* %85, %struct.linknode** %node)
  br label %while.cond113

while.end118:                                     ; preds = %while.cond113
  br label %if.end119

if.end119:                                        ; preds = %while.end118, %land.lhs.true105, %if.then102
  %86 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 159), align 1
  %tobool120 = icmp ne i8 %86, 0
  br i1 %tobool120, label %if.end127, label %if.then121

if.then121:                                       ; preds = %if.end119
  %87 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat124 = getelementptr inbounds %struct.linknode, %struct.linknode* %87, i32 0, i32 2
  %88 = load i8*, i8** %dat124, align 4
  store i8* %88, i8** %cptr123, align 4
  %89 = load i32, i32* %flags.addr, align 4
  %and125 = and i32 %89, 3
  call void @filesub(i8** %cptr123, i32 %and125)
  %90 = load i8*, i8** %cptr123, align 4
  %91 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat126 = getelementptr inbounds %struct.linknode, %struct.linknode* %91, i32 0, i32 2
  store i8* %90, i8** %dat126, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then121, %if.end119
  br label %if.end139

if.else128:                                       ; preds = %if.end99
  %92 = load i32, i32* %flags.addr, align 4
  %and129 = and i32 %92, 4
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.end138, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %if.else128
  %93 = load i32*, i32** %ret_flags.addr, align 4
  %94 = load i32, i32* %93, align 4
  %and132 = and i32 %94, 128
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.end138, label %land.lhs.true134

land.lhs.true134:                                 ; preds = %land.lhs.true131
  %95 = load i32, i32* %keep, align 4
  %tobool135 = icmp ne i32 %95, 0
  br i1 %tobool135, label %if.end138, label %if.then136

if.then136:                                       ; preds = %land.lhs.true134
  %96 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %97 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call137 = call i8* @uremnode(%union.linkroot* %96, %struct.linknode* %97)
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %land.lhs.true134, %land.lhs.true131, %if.else128
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end127
  %98 = load i32, i32* @errflag, align 4
  %tobool140 = icmp ne i32 %98, 0
  br i1 %tobool140, label %if.then141, label %if.end163

if.then141:                                       ; preds = %if.end139
  br label %do.body142

do.body142:                                       ; preds = %if.then141
  %99 = load i32, i32* @queueing_enabled, align 4
  %dec143 = add nsw i32 %99, -1
  store i32 %dec143, i32* @queueing_enabled, align 4
  %tobool144 = icmp ne i32 %dec143, 0
  br i1 %tobool144, label %if.end161, label %if.then145

if.then145:                                       ; preds = %do.body142
  br label %do.body146

do.body146:                                       ; preds = %if.then145
  br label %while.cond147

while.cond147:                                    ; preds = %while.body150, %do.body146
  %100 = load i32, i32* @queue_front, align 4
  %101 = load i32, i32* @queue_rear, align 4
  %cmp148 = icmp ne i32 %100, %101
  br i1 %cmp148, label %while.body150, label %while.end159

while.body150:                                    ; preds = %while.cond147
  %102 = load i32, i32* @queue_front, align 4
  %add153 = add nsw i32 %102, 1
  %rem154 = srem i32 %add153, 128
  store i32 %rem154, i32* @queue_front, align 4
  %103 = load i32, i32* @queue_front, align 4
  %arrayidx155 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %103
  call void @signal_setmask(%struct.__sigset_t* sret %tmp156, %struct.__sigset_t* byval align 4 %arrayidx155)
  %104 = bitcast %struct.__sigset_t* %oset152 to i8*
  %105 = bitcast %struct.__sigset_t* %tmp156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %104, i8* %105, i32 128, i32 4, i1 false)
  %106 = load i32, i32* @queue_front, align 4
  %arrayidx157 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %106
  %107 = load i32, i32* %arrayidx157, align 4
  call void @zhandler(i32 %107)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp158, %struct.__sigset_t* byval align 4 %oset152)
  br label %while.cond147

while.end159:                                     ; preds = %while.cond147
  br label %do.end160

do.end160:                                        ; preds = %while.end159
  br label %if.end161

if.end161:                                        ; preds = %do.end160, %do.body142
  br label %do.end162

do.end162:                                        ; preds = %if.end161
  br label %do.end187

if.end163:                                        ; preds = %if.end139
  br label %for.inc164

for.inc164:                                       ; preds = %if.end163
  %108 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next165 = getelementptr inbounds %struct.linknode, %struct.linknode* %108, i32 0, i32 0
  %109 = load %struct.linknode*, %struct.linknode** %next165, align 4
  store %struct.linknode* %109, %struct.linknode** %node, align 4
  br label %for.cond93

for.end166:                                       ; preds = %for.cond93
  br label %do.body167

do.body167:                                       ; preds = %for.end166
  %110 = load i32, i32* @queueing_enabled, align 4
  %dec168 = add nsw i32 %110, -1
  store i32 %dec168, i32* @queueing_enabled, align 4
  %tobool169 = icmp ne i32 %dec168, 0
  br i1 %tobool169, label %if.end186, label %if.then170

if.then170:                                       ; preds = %do.body167
  br label %do.body171

do.body171:                                       ; preds = %if.then170
  br label %while.cond172

while.cond172:                                    ; preds = %while.body175, %do.body171
  %111 = load i32, i32* @queue_front, align 4
  %112 = load i32, i32* @queue_rear, align 4
  %cmp173 = icmp ne i32 %111, %112
  br i1 %cmp173, label %while.body175, label %while.end184

while.body175:                                    ; preds = %while.cond172
  %113 = load i32, i32* @queue_front, align 4
  %add178 = add nsw i32 %113, 1
  %rem179 = srem i32 %add178, 128
  store i32 %rem179, i32* @queue_front, align 4
  %114 = load i32, i32* @queue_front, align 4
  %arrayidx180 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %114
  call void @signal_setmask(%struct.__sigset_t* sret %tmp181, %struct.__sigset_t* byval align 4 %arrayidx180)
  %115 = bitcast %struct.__sigset_t* %oset177 to i8*
  %116 = bitcast %struct.__sigset_t* %tmp181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %115, i8* %116, i32 128, i32 4, i1 false)
  %117 = load i32, i32* @queue_front, align 4
  %arrayidx182 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %117
  %118 = load i32, i32* %arrayidx182, align 4
  call void @zhandler(i32 %118)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp183, %struct.__sigset_t* byval align 4 %oset177)
  br label %while.cond172

while.end184:                                     ; preds = %while.cond172
  br label %do.end185

do.end185:                                        ; preds = %while.end184
  br label %if.end186

if.end186:                                        ; preds = %do.end185, %do.body167
  br label %do.end187

do.end187:                                        ; preds = %do.end22, %do.end53, %do.end87, %do.end162, %if.end186
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.linknode* @keyvalpairelement(%union.linkroot* %list, %struct.linknode* %node) #0 {
entry:
  %retval = alloca %struct.linknode*, align 4
  %list.addr = alloca %union.linkroot*, align 4
  %node.addr = alloca %struct.linknode*, align 4
  %start = alloca i8*, align 4
  %end = alloca i8*, align 4
  %dat = alloca i8*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %node, %struct.linknode** %node.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat1 = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 2
  %1 = load i8*, i8** %dat1, align 4
  store i8* %1, i8** %start, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %start, align 4
  %arrayidx = getelementptr inbounds i8, i8* %2, i32 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -111
  br i1 %cmp, label %land.lhs.true3, label %if.end32

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load i8*, i8** %start, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 1
  %call = call i8* @strchr(i8* %add.ptr, i32 -110)
  store i8* %call, i8** %end, align 4
  %tobool4 = icmp ne i8* %call, null
  br i1 %tobool4, label %land.lhs.true5, label %if.end32

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %5 = load i8*, i8** %end, align 4
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i32 1
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, -115
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %7 = load i8*, i8** %end, align 4
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i32 1
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 43
  br i1 %cmp12, label %land.lhs.true14, label %if.end32

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %9 = load i8*, i8** %end, align 4
  %arrayidx15 = getelementptr inbounds i8, i8* %9, i32 2
  %10 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, -115
  br i1 %cmp17, label %if.then, label %if.end32

if.then:                                          ; preds = %land.lhs.true14, %land.lhs.true5
  %11 = load i8*, i8** %end, align 4
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %start, align 4
  %add.ptr19 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %add.ptr19, i8** %dat, align 4
  call void @singsub(i8** %dat)
  %13 = load i8*, i8** %dat, align 4
  call void @untokenize(i8* %13)
  %14 = load i8*, i8** %end, align 4
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i32 1
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 43
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then
  %16 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat25 = getelementptr inbounds %struct.linknode, %struct.linknode* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @keyvalpairelement.marker_plus, i32 0, i32 0), i8** %dat25, align 4
  %17 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %18 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %19 = load i8*, i8** %dat, align 4
  %call26 = call %struct.linknode* @insertlinknode(%union.linkroot* %17, %struct.linknode* %18, i8* %19)
  store %struct.linknode* %call26, %struct.linknode** %node.addr, align 4
  %20 = load i8*, i8** %end, align 4
  %add.ptr27 = getelementptr inbounds i8, i8* %20, i32 3
  store i8* %add.ptr27, i8** %dat, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat28 = getelementptr inbounds %struct.linknode, %struct.linknode* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @keyvalpairelement.marker, i32 0, i32 0), i8** %dat28, align 4
  %22 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %23 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %24 = load i8*, i8** %dat, align 4
  %call29 = call %struct.linknode* @insertlinknode(%union.linkroot* %22, %struct.linknode* %23, i8* %24)
  store %struct.linknode* %call29, %struct.linknode** %node.addr, align 4
  %25 = load i8*, i8** %end, align 4
  %add.ptr30 = getelementptr inbounds i8, i8* %25, i32 2
  store i8* %add.ptr30, i8** %dat, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then24
  call void @singsub(i8** %dat)
  %26 = load i8*, i8** %dat, align 4
  call void @untokenize(i8* %26)
  %27 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %28 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %29 = load i8*, i8** %dat, align 4
  %call31 = call %struct.linknode* @insertlinknode(%union.linkroot* %27, %struct.linknode* %28, i8* %29)
  store %struct.linknode* %call31, %struct.linknode** %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true14, %lor.lhs.false, %land.lhs.true3, %land.lhs.true, %entry
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.end
  %30 = load %struct.linknode*, %struct.linknode** %retval, align 4
  ret %struct.linknode* %30
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define void @filesub(i8** %namptr, i32 %assign) #0 {
entry:
  %namptr.addr = alloca i8**, align 4
  %assign.addr = alloca i32, align 4
  %eql = alloca i8*, align 4
  %sub = alloca i8*, align 4
  %str = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %len = alloca i32, align 4
  store i8** %namptr, i8*** %namptr.addr, align 4
  store i32 %assign, i32* %assign.addr, align 4
  store i8* null, i8** %eql, align 4
  store i8* null, i8** %sub, align 4
  %0 = load i8**, i8*** %namptr.addr, align 4
  %1 = load i32, i32* %assign.addr, align 4
  %call = call i32 @filesubstr(i8** %0, i32 %1)
  %2 = load i32, i32* %assign.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %assign.addr, align 4
  %and = and i32 %3, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end23

if.then2:                                         ; preds = %if.end
  %4 = load i8**, i8*** %namptr.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then2
  %7 = load i8**, i8*** %namptr.addr, align 4
  %8 = load i8*, i8** %7, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 1
  %call4 = call i8* @strchr(i8* %add.ptr, i32 -115)
  store i8* %call4, i8** %sub, align 4
  store i8* %call4, i8** %eql, align 4
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %9 = load i8*, i8** %sub, align 4
  %add.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %add.ptr7, i8** %str, align 4
  %10 = load i8*, i8** %sub, align 4
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i32 1
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv9, -104
  br i1 %cmp, label %land.lhs.true15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %12 = load i8*, i8** %sub, align 4
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i32 1
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, -115
  br i1 %cmp13, label %land.lhs.true15, label %if.end21

land.lhs.true15:                                  ; preds = %lor.lhs.false, %if.then6
  %14 = load i32, i32* %assign.addr, align 4
  %call16 = call i32 @filesubstr(i8** %str, i32 %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true15
  %15 = load i8*, i8** %sub, align 4
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i32 1
  store i8 0, i8* %arrayidx19, align 1
  %16 = load i8**, i8*** %namptr.addr, align 4
  %17 = load i8*, i8** %16, align 4
  %18 = load i8*, i8** %str, align 4
  %call20 = call i8* @dyncat(i8* %17, i8* %18)
  %19 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call20, i8** %19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true15, %lor.lhs.false
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true, %if.then2
  br label %while.end

if.end22:                                         ; preds = %if.end21
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %20 = load i8**, i8*** %namptr.addr, align 4
  %21 = load i8*, i8** %20, align 4
  store i8* %21, i8** %ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end45, %if.end23
  %22 = load i8*, i8** %ptr, align 4
  %call24 = call i8* @strchr(i8* %22, i32 58)
  store i8* %call24, i8** %sub, align 4
  %tobool25 = icmp ne i8* %call24, null
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %sub, align 4
  %add.ptr26 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %add.ptr26, i8** %str, align 4
  %24 = load i8*, i8** %sub, align 4
  %25 = load i8**, i8*** %namptr.addr, align 4
  %26 = load i8*, i8** %25, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %len, align 4
  %27 = load i8*, i8** %sub, align 4
  %28 = load i8*, i8** %eql, align 4
  %cmp27 = icmp ugt i8* %27, %28
  br i1 %cmp27, label %land.lhs.true29, label %if.end45

land.lhs.true29:                                  ; preds = %while.body
  %29 = load i8*, i8** %sub, align 4
  %arrayidx30 = getelementptr inbounds i8, i8* %29, i32 1
  %30 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %30 to i32
  %cmp32 = icmp eq i32 %conv31, -104
  br i1 %cmp32, label %land.lhs.true39, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true29
  %31 = load i8*, i8** %sub, align 4
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i32 1
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %32 to i32
  %cmp37 = icmp eq i32 %conv36, -115
  br i1 %cmp37, label %land.lhs.true39, label %if.end45

land.lhs.true39:                                  ; preds = %lor.lhs.false34, %land.lhs.true29
  %33 = load i32, i32* %assign.addr, align 4
  %call40 = call i32 @filesubstr(i8** %str, i32 %33)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %land.lhs.true39
  %34 = load i8*, i8** %sub, align 4
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i32 1
  store i8 0, i8* %arrayidx43, align 1
  %35 = load i8**, i8*** %namptr.addr, align 4
  %36 = load i8*, i8** %35, align 4
  %37 = load i8*, i8** %str, align 4
  %call44 = call i8* @dyncat(i8* %36, i8* %37)
  %38 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call44, i8** %38, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true39, %lor.lhs.false34, %while.body
  %39 = load i8**, i8*** %namptr.addr, align 4
  %40 = load i8*, i8** %39, align 4
  %41 = load i32, i32* %len, align 4
  %add.ptr46 = getelementptr inbounds i8, i8* %40, i32 %41
  %add.ptr47 = getelementptr inbounds i8, i8* %add.ptr46, i32 1
  store i8* %add.ptr47, i8** %ptr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.else, %while.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.linknode* @stringsubst(%union.linkroot* %list, %struct.linknode* %node, i32 %pf_flags, i32* %ret_flags, i32 %asssub) #0 {
entry:
  %retval = alloca %struct.linknode*, align 4
  %list.addr = alloca %union.linkroot*, align 4
  %node.addr = alloca %struct.linknode*, align 4
  %pf_flags.addr = alloca i32, align 4
  %ret_flags.addr = alloca i32*, align 4
  %asssub.addr = alloca i32, align 4
  %qt = alloca i32, align 4
  %str3 = alloca i8*, align 4
  %str = alloca i8*, align 4
  %c = alloca i8, align 1
  %subst = alloca i8*, align 4
  %rest = alloca i8*, align 4
  %snew = alloca i8*, align 4
  %sptr = alloca i8*, align 4
  %str3len = alloca i32, align 4
  %sublen = alloca i32, align 4
  %restlen = alloca i32, align 4
  %str2 = alloca i8*, align 4
  %pl = alloca %union.linkroot*, align 4
  %s = alloca i8*, align 4
  %str2135 = alloca i8*, align 4
  %endchar = alloca i8, align 1
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %mathpar = alloca i32, align 4
  %n = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %node, %struct.linknode** %node.addr, align 4
  store i32 %pf_flags, i32* %pf_flags.addr, align 4
  store i32* %ret_flags, i32** %ret_flags.addr, align 4
  store i32 %asssub, i32* %asssub.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 2
  %1 = load i8*, i8** %dat, align 4
  store i8* %1, i8** %str3, align 4
  %2 = load i8*, i8** %str3, align 4
  store i8* %2, i8** %str, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %entry
  %3 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %str, align 4
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %c, align 1
  %conv = sext i8 %5 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %str, align 4
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %c, align 1
  %conv2 = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv2, -108
  br i1 %cmp, label %land.lhs.true13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %9 = load i8, i8* %c, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, -106
  br i1 %cmp5, label %land.lhs.true13, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %10 = load i8*, i8** %str, align 4
  %11 = load i8*, i8** %str3, align 4
  %cmp8 = icmp eq i8* %10, %11
  br i1 %cmp8, label %land.lhs.true, label %if.else51

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %12 = load i8, i8* %c, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, -115
  br i1 %cmp11, label %land.lhs.true13, label %if.else51

land.lhs.true13:                                  ; preds = %land.lhs.true, %lor.lhs.false, %while.body
  %13 = load i8*, i8** %str, align 4
  %arrayidx = getelementptr inbounds i8, i8* %13, i32 1
  %14 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, -120
  br i1 %cmp15, label %if.then, label %if.else51

if.then:                                          ; preds = %land.lhs.true13
  %15 = load i8*, i8** %str, align 4
  %16 = load i8*, i8** %str3, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %str3len, align 4
  %17 = load i8, i8* %c, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, -108
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.then
  %18 = load i8, i8* %c, align 1
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, -106
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %lor.lhs.false20, %if.then
  %19 = load i8*, i8** %str, align 4
  %call = call i8* @getproc(i8* %19, i8** %rest)
  store i8* %call, i8** %subst, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false20
  %20 = load i8*, i8** %str, align 4
  %call25 = call i8* @getoutputfile(i8* %20, i8** %rest)
  store i8* %call25, i8** %subst, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then24
  %21 = load i32, i32* @errflag, align 4
  %tobool26 = icmp ne i32 %21, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end
  %22 = load i8*, i8** %subst, align 4
  %tobool29 = icmp ne i8* %22, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end28
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %subst, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %rest, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %23 = load i8*, i8** %subst, align 4
  %call32 = call i32 @strlen(i8* %23)
  store i32 %call32, i32* %sublen, align 4
  %24 = load i8*, i8** %rest, align 4
  %call33 = call i32 @strlen(i8* %24)
  store i32 %call33, i32* %restlen, align 4
  %25 = load i32, i32* %str3len, align 4
  %26 = load i32, i32* %sublen, align 4
  %add = add nsw i32 %25, %26
  %27 = load i32, i32* %restlen, align 4
  %add34 = add nsw i32 %add, %27
  %add35 = add nsw i32 %add34, 1
  %call36 = call i8* @hcalloc(i32 %add35)
  store i8* %call36, i8** %snew, align 4
  store i8* %call36, i8** %sptr, align 4
  %28 = load i32, i32* %str3len, align 4
  %tobool37 = icmp ne i32 %28, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end31
  %29 = load i8*, i8** %sptr, align 4
  %30 = load i8*, i8** %str3, align 4
  %31 = load i32, i32* %str3len, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 %31, i32 1, i1 false)
  %32 = load i32, i32* %str3len, align 4
  %33 = load i8*, i8** %sptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %33, i32 %32
  store i8* %add.ptr, i8** %sptr, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end31
  %34 = load i32, i32* %sublen, align 4
  %tobool40 = icmp ne i32 %34, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %35 = load i8*, i8** %sptr, align 4
  %36 = load i8*, i8** %subst, align 4
  %37 = load i32, i32* %sublen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 %37, i32 1, i1 false)
  %38 = load i32, i32* %sublen, align 4
  %39 = load i8*, i8** %sptr, align 4
  %add.ptr42 = getelementptr inbounds i8, i8* %39, i32 %38
  store i8* %add.ptr42, i8** %sptr, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  %40 = load i32, i32* %restlen, align 4
  %tobool44 = icmp ne i32 %40, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  %41 = load i8*, i8** %sptr, align 4
  %42 = load i8*, i8** %rest, align 4
  %43 = load i32, i32* %restlen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 %43, i32 1, i1 false)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  %44 = load i8*, i8** %sptr, align 4
  %45 = load i32, i32* %restlen, align 4
  %arrayidx47 = getelementptr inbounds i8, i8* %44, i32 %45
  store i8 0, i8* %arrayidx47, align 1
  %46 = load i8*, i8** %snew, align 4
  store i8* %46, i8** %str3, align 4
  %47 = load i8*, i8** %snew, align 4
  %48 = load i32, i32* %str3len, align 4
  %add.ptr48 = getelementptr inbounds i8, i8* %47, i32 %48
  %49 = load i32, i32* %sublen, align 4
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr48, i32 %49
  store i8* %add.ptr49, i8** %str, align 4
  %50 = load i8*, i8** %str3, align 4
  %51 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat50 = getelementptr inbounds %struct.linknode, %struct.linknode* %51, i32 0, i32 2
  store i8* %50, i8** %dat50, align 4
  br label %if.end52

if.else51:                                        ; preds = %land.lhs.true13, %land.lhs.true, %lor.lhs.false7
  %52 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr, i8** %str, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.end46
  br label %while.cond

while.end:                                        ; preds = %land.end
  %53 = load i8*, i8** %str3, align 4
  store i8* %53, i8** %str, align 4
  br label %while.cond53

while.cond53:                                     ; preds = %if.end324, %if.end300, %if.then260, %if.end182, %if.end120, %if.then100, %if.end91, %while.end
  %54 = load i32, i32* @errflag, align 4
  %tobool54 = icmp ne i32 %54, 0
  br i1 %tobool54, label %land.end58, label %land.rhs55

land.rhs55:                                       ; preds = %while.cond53
  %55 = load i8*, i8** %str, align 4
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %c, align 1
  %conv56 = sext i8 %56 to i32
  %tobool57 = icmp ne i32 %conv56, 0
  br label %land.end58

land.end58:                                       ; preds = %land.rhs55, %while.cond53
  %57 = phi i1 [ false, %while.cond53 ], [ %tobool57, %land.rhs55 ]
  br i1 %57, label %while.body59, label %while.end326

while.body59:                                     ; preds = %land.end58
  %58 = load i8, i8* %c, align 1
  %conv60 = sext i8 %58 to i32
  %cmp61 = icmp eq i32 %conv60, -116
  %conv62 = zext i1 %cmp61 to i32
  store i32 %conv62, i32* %qt, align 4
  br i1 %cmp61, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %while.body59
  %59 = load i8, i8* %c, align 1
  %conv64 = sext i8 %59 to i32
  %cmp65 = icmp eq i32 %conv64, -123
  br i1 %cmp65, label %if.then67, label %if.else122

if.then67:                                        ; preds = %lor.lhs.false63, %while.body59
  %60 = load i8*, i8** %str, align 4
  %arrayidx68 = getelementptr inbounds i8, i8* %60, i32 1
  %61 = load i8, i8* %arrayidx68, align 1
  store i8 %61, i8* %c, align 1
  %conv69 = sext i8 %61 to i32
  %cmp70 = icmp eq i32 %conv69, -120
  br i1 %cmp70, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then67
  %62 = load i8, i8* %c, align 1
  %conv73 = sext i8 %62 to i32
  %cmp74 = icmp eq i32 %conv73, -119
  br i1 %cmp74, label %if.then76, label %if.else82

if.then76:                                        ; preds = %lor.lhs.false72, %if.then67
  %63 = load i32, i32* %qt, align 4
  %tobool77 = icmp ne i32 %63, 0
  br i1 %tobool77, label %if.end80, label %if.then78

if.then78:                                        ; preds = %if.then76
  %64 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list79 = bitcast %union.linkroot* %64 to %struct.linklist*
  %flags = getelementptr inbounds %struct.linklist, %struct.linklist* %list79, i32 0, i32 2
  %65 = load i32, i32* %flags, align 4
  %or = or i32 %65, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then76
  %66 = load i8*, i8** %str, align 4
  %incdec.ptr81 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr81, i8** %str, align 4
  br label %comsub

if.else82:                                        ; preds = %lor.lhs.false72
  %67 = load i8, i8* %c, align 1
  %conv83 = sext i8 %67 to i32
  %cmp84 = icmp eq i32 %conv83, -111
  br i1 %cmp84, label %if.then86, label %if.else96

if.then86:                                        ; preds = %if.else82
  %68 = load i8*, i8** %str, align 4
  store i8* %68, i8** %str2, align 4
  %69 = load i8*, i8** %str2, align 4
  %incdec.ptr87 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr87, i8** %str2, align 4
  %call88 = call i32 @skipparens(i8 signext -111, i8 signext -110, i8** %str2)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then86
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.then86
  %70 = load i8*, i8** %str, align 4
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %str2, align 4
  %arrayidx92 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8 0, i8* %arrayidx92, align 1
  %72 = load i8*, i8** %str, align 4
  %add.ptr93 = getelementptr inbounds i8, i8* %72, i32 2
  %73 = load i8*, i8** %str2, align 4
  %call94 = call i8* @arithsubst(i8* %add.ptr93, i8** %str3, i8* %73)
  store i8* %call94, i8** %str, align 4
  %74 = load i8*, i8** %str3, align 4
  %75 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat95 = getelementptr inbounds %struct.linknode, %struct.linknode* %75, i32 0, i32 2
  store i8* %74, i8** %dat95, align 4
  br label %while.cond53

if.else96:                                        ; preds = %if.else82
  %76 = load i8, i8* %c, align 1
  %conv97 = sext i8 %76 to i32
  %cmp98 = icmp eq i32 %conv97, -99
  br i1 %cmp98, label %if.then100, label %if.else103

if.then100:                                       ; preds = %if.else96
  %77 = load i8*, i8** %str3, align 4
  %call101 = call i8* @stringsubstquote(i8* %77, i8** %str)
  store i8* %call101, i8** %str3, align 4
  %78 = load i8*, i8** %str3, align 4
  %79 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat102 = getelementptr inbounds %struct.linknode, %struct.linknode* %79, i32 0, i32 2
  store i8* %78, i8** %dat102, align 4
  br label %while.cond53

if.else103:                                       ; preds = %if.else96
  %80 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 165), align 1
  %conv104 = sext i8 %80 to i32
  %tobool105 = icmp ne i32 %conv104, 0
  br i1 %tobool105, label %land.lhs.true106, label %lor.lhs.false108

land.lhs.true106:                                 ; preds = %if.else103
  %81 = load i32, i32* %pf_flags.addr, align 4
  %and = and i32 %81, 32
  %tobool107 = icmp ne i32 %and, 0
  br i1 %tobool107, label %lor.lhs.false108, label %if.then111

lor.lhs.false108:                                 ; preds = %land.lhs.true106, %if.else103
  %82 = load i32, i32* %pf_flags.addr, align 4
  %and109 = and i32 %82, 8
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %lor.lhs.false108, %land.lhs.true106
  %83 = load i32, i32* %pf_flags.addr, align 4
  %or112 = or i32 %83, 16
  store i32 %or112, i32* %pf_flags.addr, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %lor.lhs.false108
  %84 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %85 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %86 = load i32, i32* %qt, align 4
  %87 = load i32, i32* %pf_flags.addr, align 4
  %and114 = and i32 %87, 84
  %88 = load i32*, i32** %ret_flags.addr, align 4
  %call115 = call %struct.linknode* @paramsubst(%union.linkroot* %84, %struct.linknode* %85, i8** %str, i32 %86, i32 %and114, i32* %88)
  store %struct.linknode* %call115, %struct.linknode** %node.addr, align 4
  %89 = load i32, i32* @errflag, align 4
  %tobool116 = icmp ne i32 %89, 0
  br i1 %tobool116, label %if.then119, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.end113
  %90 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %tobool118 = icmp ne %struct.linknode* %90, null
  br i1 %tobool118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %lor.lhs.false117, %if.end113
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end120:                                        ; preds = %lor.lhs.false117
  %91 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat121 = getelementptr inbounds %struct.linknode, %struct.linknode* %91, i32 0, i32 2
  %92 = load i8*, i8** %dat121, align 4
  store i8* %92, i8** %str3, align 4
  br label %while.cond53

if.else122:                                       ; preds = %lor.lhs.false63
  %93 = load i8, i8* %c, align 1
  %conv123 = sext i8 %93 to i32
  %cmp124 = icmp eq i32 %conv123, -103
  %conv125 = zext i1 %cmp124 to i32
  store i32 %conv125, i32* %qt, align 4
  br i1 %cmp124, label %if.then134, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.else122
  %94 = load i8, i8* %c, align 1
  %conv127 = sext i8 %94 to i32
  %cmp128 = icmp eq i32 %conv127, -109
  br i1 %cmp128, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false126
  %95 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list130 = bitcast %union.linkroot* %95 to %struct.linklist*
  %flags131 = getelementptr inbounds %struct.linklist, %struct.linklist* %list130, i32 0, i32 2
  %96 = load i32, i32* %flags131, align 4
  %or132 = or i32 %96, 1
  store i32 %or132, i32* %flags131, align 4
  %tobool133 = icmp ne i32 %or132, 0
  br i1 %tobool133, label %if.then134, label %if.else307

cond.false:                                       ; preds = %lor.lhs.false126
  br i1 false, label %if.then134, label %if.else307

if.then134:                                       ; preds = %cond.false, %cond.true, %if.else122
  br label %comsub

comsub:                                           ; preds = %if.then134, %if.end80
  %97 = load i8*, i8** %str, align 4
  store i8* %97, i8** %str2135, align 4
  %98 = load i8, i8* %c, align 1
  %conv136 = sext i8 %98 to i32
  %cmp137 = icmp eq i32 %conv136, -120
  br i1 %cmp137, label %if.then139, label %if.else143

if.then139:                                       ; preds = %comsub
  store i8 -118, i8* %endchar, align 1
  %99 = load i8*, i8** %str, align 4
  %arrayidx140 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8 0, i8* %arrayidx140, align 1
  %call141 = call i32 @skipparens(i8 signext -120, i8 signext -118, i8** %str)
  %100 = load i8*, i8** %str, align 4
  %incdec.ptr142 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %incdec.ptr142, i8** %str, align 4
  br label %if.end197

if.else143:                                       ; preds = %comsub
  %101 = load i8, i8* %c, align 1
  %conv144 = sext i8 %101 to i32
  %cmp145 = icmp eq i32 %conv144, -119
  br i1 %cmp145, label %if.then147, label %if.else184

if.then147:                                       ; preds = %if.else143
  store i32 1, i32* %mathpar, align 4
  %102 = load i8*, i8** %str, align 4
  %arrayidx148 = getelementptr inbounds i8, i8* %102, i32 -1
  store i8 0, i8* %arrayidx148, align 1
  br label %while.cond149

while.cond149:                                    ; preds = %if.end167, %if.then147
  %103 = load i32, i32* %mathpar, align 4
  %tobool150 = icmp ne i32 %103, 0
  br i1 %tobool150, label %land.rhs151, label %land.end154

land.rhs151:                                      ; preds = %while.cond149
  %104 = load i8*, i8** %str, align 4
  %105 = load i8, i8* %104, align 1
  %conv152 = sext i8 %105 to i32
  %tobool153 = icmp ne i32 %conv152, 0
  br label %land.end154

land.end154:                                      ; preds = %land.rhs151, %while.cond149
  %106 = phi i1 [ false, %while.cond149 ], [ %tobool153, %land.rhs151 ]
  br i1 %106, label %while.body155, label %while.end168

while.body155:                                    ; preds = %land.end154
  %107 = load i8*, i8** %str, align 4
  %incdec.ptr156 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr156, i8** %str, align 4
  %108 = load i8*, i8** %str, align 4
  %109 = load i8, i8* %108, align 1
  %conv157 = sext i8 %109 to i32
  %cmp158 = icmp eq i32 %conv157, -117
  br i1 %cmp158, label %if.then160, label %if.else161

if.then160:                                       ; preds = %while.body155
  %110 = load i32, i32* %mathpar, align 4
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %mathpar, align 4
  br label %if.end167

if.else161:                                       ; preds = %while.body155
  %111 = load i8*, i8** %str, align 4
  %112 = load i8, i8* %111, align 1
  %conv162 = sext i8 %112 to i32
  %cmp163 = icmp eq i32 %conv162, -119
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.else161
  %113 = load i32, i32* %mathpar, align 4
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %mathpar, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.else161
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.then160
  br label %while.cond149

while.end168:                                     ; preds = %land.end154
  %114 = load i8*, i8** %str, align 4
  %115 = load i8, i8* %114, align 1
  %conv169 = sext i8 %115 to i32
  %cmp170 = icmp ne i32 %conv169, -117
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %while.end168
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end173:                                        ; preds = %while.end168
  %116 = load i8*, i8** %str, align 4
  %arrayidx174 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8 0, i8* %arrayidx174, align 1
  %117 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool175 = icmp ne i8 %117, 0
  br i1 %tobool175, label %if.then176, label %if.else180

if.then176:                                       ; preds = %if.end173
  %118 = load i8*, i8** %str2135, align 4
  %add.ptr177 = getelementptr inbounds i8, i8* %118, i32 2
  %119 = load i8*, i8** %str, align 4
  %add.ptr178 = getelementptr inbounds i8, i8* %119, i32 1
  %call179 = call i8* @arithsubst(i8* %add.ptr177, i8** %str3, i8* %add.ptr178)
  store i8* %call179, i8** %str, align 4
  br label %if.end182

if.else180:                                       ; preds = %if.end173
  %120 = load i8*, i8** %str3, align 4
  %121 = load i8*, i8** %str2135, align 4
  %call181 = call i8* @strncpy(i8* %120, i8* %121, i32 1)
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then176
  %122 = load i8*, i8** %str3, align 4
  %123 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat183 = getelementptr inbounds %struct.linknode, %struct.linknode* %123, i32 0, i32 2
  store i8* %122, i8** %dat183, align 4
  br label %while.cond53

if.else184:                                       ; preds = %if.else143
  %124 = load i8, i8* %c, align 1
  store i8 %124, i8* %endchar, align 1
  %125 = load i8*, i8** %str, align 4
  store i8 0, i8* %125, align 1
  br label %while.cond185

while.cond185:                                    ; preds = %if.end194, %if.else184
  %126 = load i8*, i8** %str, align 4
  %incdec.ptr186 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr186, i8** %str, align 4
  %127 = load i8, i8* %incdec.ptr186, align 1
  %conv187 = sext i8 %127 to i32
  %128 = load i8, i8* %endchar, align 1
  %conv188 = sext i8 %128 to i32
  %cmp189 = icmp ne i32 %conv187, %conv188
  br i1 %cmp189, label %while.body191, label %while.end195

while.body191:                                    ; preds = %while.cond185
  %129 = load i8*, i8** %str, align 4
  %130 = load i8, i8* %129, align 1
  %tobool192 = icmp ne i8 %130, 0
  br i1 %tobool192, label %if.end194, label %if.then193

if.then193:                                       ; preds = %while.body191
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end194:                                        ; preds = %while.body191
  br label %while.cond185

while.end195:                                     ; preds = %while.cond185
  br label %if.end196

if.end196:                                        ; preds = %while.end195
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.then139
  %131 = load i8*, i8** %str, align 4
  %incdec.ptr198 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr198, i8** %str, align 4
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %str2135, align 4
  store i8* %132, i8** %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end242, %if.end197
  %133 = load i8*, i8** %str, align 4
  %incdec.ptr199 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr199, i8** %str, align 4
  %134 = load i8, i8* %incdec.ptr199, align 1
  store i8 %134, i8* %c, align 1
  %tobool200 = icmp ne i8 %134, 0
  br i1 %tobool200, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %135 = load i8, i8* %c, align 1
  %idxprom = zext i8 %135 to i32
  %arrayidx201 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %136 = load i16, i16* %arrayidx201, align 2
  %conv202 = sext i16 %136 to i32
  %and203 = and i32 %conv202, 16
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %land.lhs.true205, label %if.end242

land.lhs.true205:                                 ; preds = %for.body
  %137 = load i8, i8* %c, align 1
  %conv206 = sext i8 %137 to i32
  %cmp207 = icmp ne i32 %conv206, -95
  br i1 %cmp207, label %land.lhs.true209, label %if.end242

land.lhs.true209:                                 ; preds = %land.lhs.true205
  %138 = load i8, i8* %endchar, align 1
  %conv210 = sext i8 %138 to i32
  %cmp211 = icmp ne i32 %conv210, -118
  br i1 %cmp211, label %land.lhs.true213, label %if.then239

land.lhs.true213:                                 ; preds = %land.lhs.true209
  %139 = load i8, i8* %c, align 1
  %conv214 = sext i8 %139 to i32
  %cmp215 = icmp eq i32 %conv214, -97
  br i1 %cmp215, label %land.lhs.true217, label %if.then239

land.lhs.true217:                                 ; preds = %land.lhs.true213
  %140 = load i8*, i8** %str, align 4
  %arrayidx218 = getelementptr inbounds i8, i8* %140, i32 1
  %141 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %141 to i32
  %cmp220 = icmp eq i32 %conv219, 36
  br i1 %cmp220, label %if.end242, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %land.lhs.true217
  %142 = load i8*, i8** %str, align 4
  %arrayidx223 = getelementptr inbounds i8, i8* %142, i32 1
  %143 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %143 to i32
  %cmp225 = icmp eq i32 %conv224, 92
  br i1 %cmp225, label %if.end242, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %lor.lhs.false222
  %144 = load i8*, i8** %str, align 4
  %arrayidx228 = getelementptr inbounds i8, i8* %144, i32 1
  %145 = load i8, i8* %arrayidx228, align 1
  %conv229 = sext i8 %145 to i32
  %cmp230 = icmp eq i32 %conv229, 96
  br i1 %cmp230, label %if.end242, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %lor.lhs.false227
  %146 = load i32, i32* %qt, align 4
  %tobool233 = icmp ne i32 %146, 0
  br i1 %tobool233, label %land.lhs.true234, label %if.then239

land.lhs.true234:                                 ; preds = %lor.lhs.false232
  %147 = load i8*, i8** %str, align 4
  %arrayidx235 = getelementptr inbounds i8, i8* %147, i32 1
  %148 = load i8, i8* %arrayidx235, align 1
  %conv236 = sext i8 %148 to i32
  %cmp237 = icmp eq i32 %conv236, 34
  br i1 %cmp237, label %if.end242, label %if.then239

if.then239:                                       ; preds = %land.lhs.true234, %lor.lhs.false232, %land.lhs.true213, %land.lhs.true209
  %149 = load i8, i8* %c, align 1
  %conv240 = sext i8 %149 to i32
  %sub = sub nsw i32 %conv240, -124
  %arrayidx241 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub
  %150 = load i8, i8* %arrayidx241, align 1
  %151 = load i8*, i8** %str, align 4
  store i8 %150, i8* %151, align 1
  br label %if.end242

if.end242:                                        ; preds = %if.then239, %land.lhs.true234, %lor.lhs.false227, %lor.lhs.false222, %land.lhs.true217, %land.lhs.true205, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %152 = load i8*, i8** %str, align 4
  %incdec.ptr243 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr243, i8** %str, align 4
  %153 = load i8*, i8** %str2135, align 4
  %add.ptr244 = getelementptr inbounds i8, i8* %153, i32 1
  %154 = load i32, i32* %qt, align 4
  %tobool245 = icmp ne i32 %154, 0
  br i1 %tobool245, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  %155 = load i32, i32* %pf_flags.addr, align 4
  %and246 = and i32 %155, 4
  %tobool247 = icmp ne i32 %and246, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end
  %156 = phi i1 [ true, %for.end ], [ %tobool247, %lor.rhs ]
  %lor.ext = zext i1 %156 to i32
  %call248 = call %union.linkroot* @getoutput(i8* %add.ptr244, i32 %lor.ext)
  store %union.linkroot* %call248, %union.linkroot** %pl, align 4
  %tobool249 = icmp ne %union.linkroot* %call248, null
  br i1 %tobool249, label %if.end251, label %if.then250

if.then250:                                       ; preds = %lor.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end251:                                        ; preds = %lor.end
  %157 = load i8, i8* %endchar, align 1
  %conv252 = sext i8 %157 to i32
  %cmp253 = icmp eq i32 %conv252, -118
  br i1 %cmp253, label %if.then255, label %if.end257

if.then255:                                       ; preds = %if.end251
  %158 = load i8*, i8** %str2135, align 4
  %incdec.ptr256 = getelementptr inbounds i8, i8* %158, i32 -1
  store i8* %incdec.ptr256, i8** %str2135, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then255, %if.end251
  %159 = load %union.linkroot*, %union.linkroot** %pl, align 4
  %call258 = call i8* @ugetnode(%union.linkroot* %159)
  store i8* %call258, i8** %s, align 4
  %tobool259 = icmp ne i8* %call258, null
  br i1 %tobool259, label %if.end263, label %if.then260

if.then260:                                       ; preds = %if.end257
  %160 = load i8*, i8** %str2135, align 4
  %161 = load i8*, i8** %str, align 4
  %162 = load i8*, i8** %str, align 4
  %call261 = call i32 @strlen(i8* %162)
  %add262 = add i32 %call261, 1
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %160, i8* %161, i32 %add262, i32 1, i1 false)
  store i8* %160, i8** %str, align 4
  br label %while.cond53

if.end263:                                        ; preds = %if.end257
  %163 = load i32, i32* %qt, align 4
  %tobool264 = icmp ne i32 %163, 0
  br i1 %tobool264, label %if.end272, label %land.lhs.true265

land.lhs.true265:                                 ; preds = %if.end263
  %164 = load i32, i32* %pf_flags.addr, align 4
  %and266 = and i32 %164, 4
  %tobool267 = icmp ne i32 %and266, 0
  br i1 %tobool267, label %land.lhs.true268, label %if.end272

land.lhs.true268:                                 ; preds = %land.lhs.true265
  %165 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 67), align 1
  %conv269 = sext i8 %165 to i32
  %tobool270 = icmp ne i32 %conv269, 0
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %land.lhs.true268
  %166 = load i8*, i8** %s, align 4
  call void @shtokenize(i8* %166)
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %land.lhs.true268, %land.lhs.true265, %if.end263
  %167 = load i8*, i8** %str2135, align 4
  %168 = load i8*, i8** %str3, align 4
  %sub.ptr.lhs.cast273 = ptrtoint i8* %167 to i32
  %sub.ptr.rhs.cast274 = ptrtoint i8* %168 to i32
  %sub.ptr.sub275 = sub i32 %sub.ptr.lhs.cast273, %sub.ptr.rhs.cast274
  store i32 %sub.ptr.sub275, i32* %l1, align 4
  %169 = load i8*, i8** %s, align 4
  %call276 = call i32 @strlen(i8* %169)
  store i32 %call276, i32* %l2, align 4
  %170 = load %union.linkroot*, %union.linkroot** %pl, align 4
  %list277 = bitcast %union.linkroot* %170 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list277, i32 0, i32 0
  %171 = load %struct.linknode*, %struct.linknode** %first, align 4
  %cmp278 = icmp ne %struct.linknode* %171, null
  br i1 %cmp278, label %if.then280, label %if.end291

if.then280:                                       ; preds = %if.end272
  %172 = load %union.linkroot*, %union.linkroot** %pl, align 4
  %list281 = bitcast %union.linkroot* %172 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list281, i32 0, i32 1
  %173 = load %struct.linknode*, %struct.linknode** %last, align 4
  store %struct.linknode* %173, %struct.linknode** %n, align 4
  %174 = load i32, i32* %l1, align 4
  %175 = load i32, i32* %l2, align 4
  %add282 = add nsw i32 %174, %175
  %add283 = add nsw i32 %add282, 1
  %call284 = call i8* @hcalloc(i32 %add283)
  store i8* %call284, i8** %str2135, align 4
  %176 = load i8*, i8** %str2135, align 4
  %177 = load i8*, i8** %str3, align 4
  %call285 = call i8* @strcpy(i8* %176, i8* %177)
  %178 = load i8*, i8** %str2135, align 4
  %179 = load i32, i32* %l1, align 4
  %add.ptr286 = getelementptr inbounds i8, i8* %178, i32 %179
  %180 = load i8*, i8** %s, align 4
  %call287 = call i8* @strcpy(i8* %add.ptr286, i8* %180)
  %181 = load i8*, i8** %str2135, align 4
  %182 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat288 = getelementptr inbounds %struct.linknode, %struct.linknode* %182, i32 0, i32 2
  store i8* %181, i8** %dat288, align 4
  %183 = load %union.linkroot*, %union.linkroot** %pl, align 4
  %184 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %185 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  call void @insertlinklist(%union.linkroot* %183, %struct.linknode* %184, %union.linkroot* %185)
  %186 = load %struct.linknode*, %struct.linknode** %n, align 4
  store %struct.linknode* %186, %struct.linknode** %node.addr, align 4
  %dat289 = getelementptr inbounds %struct.linknode, %struct.linknode* %186, i32 0, i32 2
  %187 = load i8*, i8** %dat289, align 4
  store i8* %187, i8** %s, align 4
  store i32 0, i32* %l1, align 4
  %188 = load i8*, i8** %s, align 4
  %call290 = call i32 @strlen(i8* %188)
  store i32 %call290, i32* %l2, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.then280, %if.end272
  %189 = load i32, i32* %l1, align 4
  %190 = load i32, i32* %l2, align 4
  %add292 = add nsw i32 %189, %190
  %191 = load i8*, i8** %str, align 4
  %call293 = call i32 @strlen(i8* %191)
  %add294 = add i32 %add292, %call293
  %add295 = add i32 %add294, 1
  %call296 = call i8* @hcalloc(i32 %add295)
  store i8* %call296, i8** %str2135, align 4
  %192 = load i32, i32* %l1, align 4
  %tobool297 = icmp ne i32 %192, 0
  br i1 %tobool297, label %if.then298, label %if.end300

if.then298:                                       ; preds = %if.end291
  %193 = load i8*, i8** %str2135, align 4
  %194 = load i8*, i8** %str3, align 4
  %call299 = call i8* @strcpy(i8* %193, i8* %194)
  br label %if.end300

if.end300:                                        ; preds = %if.then298, %if.end291
  %195 = load i8*, i8** %str2135, align 4
  %196 = load i32, i32* %l1, align 4
  %add.ptr301 = getelementptr inbounds i8, i8* %195, i32 %196
  %197 = load i8*, i8** %s, align 4
  %call302 = call i8* @strcpy(i8* %add.ptr301, i8* %197)
  %198 = load i8*, i8** %str2135, align 4
  %199 = load i32, i32* %l1, align 4
  %add.ptr303 = getelementptr inbounds i8, i8* %198, i32 %199
  %200 = load i32, i32* %l2, align 4
  %add.ptr304 = getelementptr inbounds i8, i8* %add.ptr303, i32 %200
  %201 = load i8*, i8** %str, align 4
  %call305 = call i8* @strcpy(i8* %add.ptr304, i8* %201)
  store i8* %call305, i8** %str, align 4
  %202 = load i8*, i8** %str2135, align 4
  store i8* %202, i8** %str3, align 4
  %203 = load i8*, i8** %str3, align 4
  %204 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %dat306 = getelementptr inbounds %struct.linknode, %struct.linknode* %204, i32 0, i32 2
  store i8* %203, i8** %dat306, align 4
  br label %while.cond53

if.else307:                                       ; preds = %cond.false, %cond.true
  %205 = load i32, i32* %asssub.addr, align 4
  %tobool308 = icmp ne i32 %205, 0
  br i1 %tobool308, label %land.lhs.true309, label %if.end322

land.lhs.true309:                                 ; preds = %if.else307
  %206 = load i8, i8* %c, align 1
  %conv310 = sext i8 %206 to i32
  %cmp311 = icmp eq i32 %conv310, 61
  br i1 %cmp311, label %land.lhs.true317, label %lor.lhs.false313

lor.lhs.false313:                                 ; preds = %land.lhs.true309
  %207 = load i8, i8* %c, align 1
  %conv314 = sext i8 %207 to i32
  %cmp315 = icmp eq i32 %conv314, -115
  br i1 %cmp315, label %land.lhs.true317, label %if.end322

land.lhs.true317:                                 ; preds = %lor.lhs.false313, %land.lhs.true309
  %208 = load i8*, i8** %str, align 4
  %209 = load i8*, i8** %str3, align 4
  %cmp318 = icmp ne i8* %208, %209
  br i1 %cmp318, label %if.then320, label %if.end322

if.then320:                                       ; preds = %land.lhs.true317
  %210 = load i32, i32* %pf_flags.addr, align 4
  %or321 = or i32 %210, 4
  store i32 %or321, i32* %pf_flags.addr, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.then320, %land.lhs.true317, %lor.lhs.false313, %if.else307
  br label %if.end323

if.end323:                                        ; preds = %if.end322
  br label %if.end324

if.end324:                                        ; preds = %if.end323
  %211 = load i8*, i8** %str, align 4
  %incdec.ptr325 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr325, i8** %str, align 4
  br label %while.cond53

while.end326:                                     ; preds = %land.end58
  %212 = load i32, i32* @errflag, align 4
  %tobool327 = icmp ne i32 %212, 0
  br i1 %tobool327, label %cond.true328, label %cond.false329

cond.true328:                                     ; preds = %while.end326
  br label %cond.end

cond.false329:                                    ; preds = %while.end326
  %213 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false329, %cond.true328
  %cond = phi %struct.linknode* [ null, %cond.true328 ], [ %213, %cond.false329 ]
  store %struct.linknode* %cond, %struct.linknode** %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then250, %if.then193, %if.then172, %if.then119, %if.then90, %if.then27
  %214 = load %struct.linknode*, %struct.linknode** %retval, align 4
  ret %struct.linknode* %214
}

declare void @remnulargs(i8*) #1

declare i32 @hasbraces(i8*) #1

declare void @xpandbraces(%union.linkroot*, %struct.linknode**) #1

declare i8* @uremnode(%union.linkroot*, %struct.linknode*) #1

; Function Attrs: noinline nounwind
define i8* @quotesubst(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %s = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  store i8* %0, i8** %s, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8*, i8** %s, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %s, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, -123
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8*, i8** %s, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, -99
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %str.addr, align 4
  %call = call i8* @stringsubstquote(i8* %7, i8** %s)
  store i8* %call, i8** %str.addr, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %8 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %str.addr, align 4
  call void @remnulargs(i8* %9)
  %10 = load i8*, i8** %str.addr, align 4
  ret i8* %10
}

; Function Attrs: noinline nounwind
define internal i8* @stringsubstquote(i8* %strstart, i8** %pstrdpos) #0 {
entry:
  %strstart.addr = alloca i8*, align 4
  %pstrdpos.addr = alloca i8**, align 4
  %len = alloca i32, align 4
  %strdpos = alloca i8*, align 4
  %strsub = alloca i8*, align 4
  %strret = alloca i8*, align 4
  store i8* %strstart, i8** %strstart.addr, align 4
  store i8** %pstrdpos, i8*** %pstrdpos.addr, align 4
  %0 = load i8**, i8*** %pstrdpos.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %strdpos, align 4
  %2 = load i8*, i8** %strdpos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 2
  %call = call i8* @getkeystring(i8* %add.ptr, i32* %len, i32 19, i32* null)
  store i8* %call, i8** %strsub, align 4
  %3 = load i32, i32* %len, align 4
  %add = add nsw i32 %3, 2
  store i32 %add, i32* %len, align 4
  %4 = load i8*, i8** %strstart.addr, align 4
  %5 = load i8*, i8** %strdpos, align 4
  %cmp = icmp ne i8* %4, %5
  br i1 %cmp, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %strdpos, align 4
  store i8 0, i8* %6, align 1
  %7 = load i8*, i8** %strdpos, align 4
  %8 = load i32, i32* %len, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 %8
  %9 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %10 = load i8*, i8** %strstart.addr, align 4
  %11 = load i8*, i8** %strsub, align 4
  %12 = load i8*, i8** %strdpos, align 4
  %13 = load i32, i32* %len, align 4
  %add.ptr2 = getelementptr inbounds i8, i8* %12, i32 %13
  %call3 = call i8* @zhtricat(i8* %10, i8* %11, i8* %add.ptr2)
  store i8* %call3, i8** %strret, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load i8*, i8** %strstart.addr, align 4
  %15 = load i8*, i8** %strsub, align 4
  %call4 = call i8* @dyncat(i8* %14, i8* %15)
  store i8* %call4, i8** %strret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end18

if.else5:                                         ; preds = %entry
  %16 = load i8*, i8** %strdpos, align 4
  %17 = load i32, i32* %len, align 4
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i32 %17
  %18 = load i8, i8* %arrayidx6, align 1
  %tobool7 = icmp ne i8 %18, 0
  br i1 %tobool7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else5
  %19 = load i8*, i8** %strsub, align 4
  %20 = load i8*, i8** %strdpos, align 4
  %21 = load i32, i32* %len, align 4
  %add.ptr9 = getelementptr inbounds i8, i8* %20, i32 %21
  %call10 = call i8* @dyncat(i8* %19, i8* %add.ptr9)
  store i8* %call10, i8** %strret, align 4
  br label %if.end17

if.else11:                                        ; preds = %if.else5
  %22 = load i8*, i8** %strsub, align 4
  %23 = load i8, i8* %22, align 1
  %tobool12 = icmp ne i8 %23, 0
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else11
  %24 = load i8*, i8** %strsub, align 4
  store i8* %24, i8** %strret, align 4
  br label %if.end16

if.else14:                                        ; preds = %if.else11
  %call15 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0))
  store i8* %call15, i8** %strret, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  %25 = load i8*, i8** %strret, align 4
  %26 = load i8*, i8** %strdpos, align 4
  %27 = load i8*, i8** %strstart.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr19 = getelementptr inbounds i8, i8* %25, i32 %sub.ptr.sub
  %28 = load i8*, i8** %strsub, align 4
  %call20 = call i32 @strlen(i8* %28)
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr19, i32 %call20
  %29 = load i8**, i8*** %pstrdpos.addr, align 4
  store i8* %add.ptr21, i8** %29, align 4
  %30 = load i8*, i8** %strret, align 4
  ret i8* %30
}

; Function Attrs: noinline nounwind
define void @globlist(%union.linkroot* %list, i32 %flags) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %flags.addr = alloca i32, align 4
  %node = alloca %struct.linknode*, align 4
  %next = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* @badcshglob, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list1 = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool2 = icmp ne %struct.linknode* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool2, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next3 = getelementptr inbounds %struct.linknode, %struct.linknode* %5, i32 0, i32 0
  %6 = load %struct.linknode*, %struct.linknode** %next3, align 4
  store %struct.linknode* %6, %struct.linknode** %next, align 4
  %7 = load i32, i32* %flags.addr, align 4
  %and = and i32 %7, 128
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 2
  %9 = load i8*, i8** %dat, align 4
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, -94
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.linknode*, %struct.linknode** %next, align 4
  %next6 = getelementptr inbounds %struct.linknode, %struct.linknode* %11, i32 0, i32 0
  %12 = load %struct.linknode*, %struct.linknode** %next6, align 4
  %next7 = getelementptr inbounds %struct.linknode, %struct.linknode* %12, i32 0, i32 0
  %13 = load %struct.linknode*, %struct.linknode** %next7, align 4
  store %struct.linknode* %13, %struct.linknode** %next, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %14 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %15 = load %struct.linknode*, %struct.linknode** %node, align 4
  %16 = load i32, i32* %flags.addr, align 4
  %and8 = and i32 %16, 256
  %cmp9 = icmp ne i32 %and8, 0
  %conv10 = zext i1 %cmp9 to i32
  call void @zglob(%union.linkroot* %14, %struct.linknode* %15, i32 %conv10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %17, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* @noerrs, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %for.end
  store i32 0, i32* @badcshglob, align 4
  br label %if.end18

if.else13:                                        ; preds = %for.end
  %19 = load i32, i32* @badcshglob, align 4
  %cmp14 = icmp eq i32 %19, 1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else13
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then12
  ret void
}

declare void @zglob(%union.linkroot*, %struct.linknode*, i32) #1

declare void @zerr(i8*, ...) #1

; Function Attrs: noinline nounwind
define void @singsub(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %foo = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  store i8** %s, i8*** %s.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %list = bitcast %union.linkroot* %foo to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first, align 4
  %list1 = bitcast %union.linkroot* %foo to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4
  %list2 = bitcast %union.linkroot* %foo to %struct.linklist*
  %flags = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next, align 4
  %node = bitcast %union.linkroot* %foo to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 2
  store i8* %1, i8** %dat, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @prefork(%union.linkroot* %foo, i32 4, i32* null)
  %2 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %call = call i8* @ugetnode(%union.linkroot* %foo)
  %3 = load i8**, i8*** %s.addr, align 4
  store i8* %call, i8** %3, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @ugetnode(%union.linkroot*) #1

; Function Attrs: noinline nounwind
define i32 @filesubstr(i8** %namptr, i32 %assign) #0 {
entry:
  %retval = alloca i32, align 4
  %namptr.addr = alloca i8**, align 4
  %assign.addr = alloca i32, align 4
  %str = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %res = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %val = alloca i32, align 4
  %arr = alloca i8**, align 4
  %ds = alloca i8*, align 4
  %untok = alloca i8*, align 4
  %hom = alloca i8*, align 4
  %expn = alloca i8*, align 4
  store i8** %namptr, i8*** %namptr.addr, align 4
  store i32 %assign, i32* %assign.addr, align 4
  %0 = load i8**, i8*** %namptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %str, align 4
  %2 = load i8*, i8** %str, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, -104
  br i1 %cmp, label %land.lhs.true, label %if.else223

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %str, align 4
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 1
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 61
  br i1 %cmp3, label %land.lhs.true5, label %if.else223

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %str, align 4
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i32 1
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, -115
  br i1 %cmp8, label %if.then, label %if.else223

if.then:                                          ; preds = %land.lhs.true5
  %8 = load i8*, i8** %str, align 4
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i32 1
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, -101
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then
  %10 = load i8*, i8** %str, align 4
  %arrayidx18 = getelementptr inbounds i8, i8* %10, i32 1
  store i8 45, i8* %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  %11 = load i8*, i8** %str, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 1
  %call = call i32 @zstrtol(i8* %add.ptr, i8** %ptr, i32 10)
  store i32 %call, i32* %val, align 4
  %12 = load i8*, i8** %str, align 4
  %arrayidx19 = getelementptr inbounds i8, i8* %12, i32 1
  %13 = load i8, i8* %arrayidx19, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then36

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i8*, i8** %str, align 4
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i32 1
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 47
  br i1 %cmp22, label %if.then36, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %16 = load i8*, i8** %str, align 4
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i32 1
  %17 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %17 to i32
  %cmp27 = icmp eq i32 %conv26, -120
  br i1 %cmp27, label %if.then36, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %18 = load i32, i32* %assign.addr, align 4
  %tobool30 = icmp ne i32 %18, 0
  br i1 %tobool30, label %land.lhs.true31, label %if.else

land.lhs.true31:                                  ; preds = %lor.lhs.false29
  %19 = load i8*, i8** %str, align 4
  %arrayidx32 = getelementptr inbounds i8, i8* %19, i32 1
  %20 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %20 to i32
  %cmp34 = icmp eq i32 %conv33, 58
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %land.lhs.true31, %lor.lhs.false24, %lor.lhs.false, %if.end
  %21 = load i8*, i8** @home, align 4
  %tobool37 = icmp ne i8* %21, null
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then36
  %22 = load i8*, i8** @home, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.false ]
  %23 = load i8*, i8** %str, align 4
  %add.ptr38 = getelementptr inbounds i8, i8* %23, i32 1
  %call39 = call i8* @dyncat(i8* %cond, i8* %add.ptr38)
  %24 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call39, i8** %24, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true31, %lor.lhs.false29
  %25 = load i8*, i8** %str, align 4
  %arrayidx40 = getelementptr inbounds i8, i8* %25, i32 1
  %26 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %26 to i32
  %cmp42 = icmp eq i32 %conv41, 43
  br i1 %cmp42, label %land.lhs.true44, label %if.else67

land.lhs.true44:                                  ; preds = %if.else
  %27 = load i8*, i8** %str, align 4
  %arrayidx45 = getelementptr inbounds i8, i8* %27, i32 2
  %28 = load i8, i8* %arrayidx45, align 1
  %tobool46 = icmp ne i8 %28, 0
  br i1 %tobool46, label %lor.lhs.false47, label %if.then64

lor.lhs.false47:                                  ; preds = %land.lhs.true44
  %29 = load i8*, i8** %str, align 4
  %arrayidx48 = getelementptr inbounds i8, i8* %29, i32 2
  %30 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %30 to i32
  %cmp50 = icmp eq i32 %conv49, 47
  br i1 %cmp50, label %if.then64, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false47
  %31 = load i8*, i8** %str, align 4
  %arrayidx53 = getelementptr inbounds i8, i8* %31, i32 2
  %32 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %32 to i32
  %cmp55 = icmp eq i32 %conv54, -120
  br i1 %cmp55, label %if.then64, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false52
  %33 = load i32, i32* %assign.addr, align 4
  %tobool58 = icmp ne i32 %33, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.else67

land.lhs.true59:                                  ; preds = %lor.lhs.false57
  %34 = load i8*, i8** %str, align 4
  %arrayidx60 = getelementptr inbounds i8, i8* %34, i32 2
  %35 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %35 to i32
  %cmp62 = icmp eq i32 %conv61, 58
  br i1 %cmp62, label %if.then64, label %if.else67

if.then64:                                        ; preds = %land.lhs.true59, %lor.lhs.false52, %lor.lhs.false47, %land.lhs.true44
  %36 = load i8*, i8** @pwd, align 4
  %37 = load i8*, i8** %str, align 4
  %add.ptr65 = getelementptr inbounds i8, i8* %37, i32 2
  %call66 = call i8* @dyncat(i8* %36, i8* %add.ptr65)
  %38 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call66, i8** %38, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.else67:                                        ; preds = %land.lhs.true59, %lor.lhs.false57, %if.else
  %39 = load i8*, i8** %str, align 4
  %arrayidx68 = getelementptr inbounds i8, i8* %39, i32 1
  %40 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %40 to i32
  %cmp70 = icmp eq i32 %conv69, 45
  br i1 %cmp70, label %land.lhs.true72, label %if.else100

land.lhs.true72:                                  ; preds = %if.else67
  %41 = load i8*, i8** %str, align 4
  %arrayidx73 = getelementptr inbounds i8, i8* %41, i32 2
  %42 = load i8, i8* %arrayidx73, align 1
  %tobool74 = icmp ne i8 %42, 0
  br i1 %tobool74, label %lor.lhs.false75, label %if.then92

lor.lhs.false75:                                  ; preds = %land.lhs.true72
  %43 = load i8*, i8** %str, align 4
  %arrayidx76 = getelementptr inbounds i8, i8* %43, i32 2
  %44 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %44 to i32
  %cmp78 = icmp eq i32 %conv77, 47
  br i1 %cmp78, label %if.then92, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false75
  %45 = load i8*, i8** %str, align 4
  %arrayidx81 = getelementptr inbounds i8, i8* %45, i32 2
  %46 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %46 to i32
  %cmp83 = icmp eq i32 %conv82, -120
  br i1 %cmp83, label %if.then92, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false80
  %47 = load i32, i32* %assign.addr, align 4
  %tobool86 = icmp ne i32 %47, 0
  br i1 %tobool86, label %land.lhs.true87, label %if.else100

land.lhs.true87:                                  ; preds = %lor.lhs.false85
  %48 = load i8*, i8** %str, align 4
  %arrayidx88 = getelementptr inbounds i8, i8* %48, i32 2
  %49 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %49 to i32
  %cmp90 = icmp eq i32 %conv89, 58
  br i1 %cmp90, label %if.then92, label %if.else100

if.then92:                                        ; preds = %land.lhs.true87, %lor.lhs.false80, %lor.lhs.false75, %land.lhs.true72
  %50 = load i8*, i8** @oldpwd, align 4
  store i8* %50, i8** %tmp, align 4
  %tobool93 = icmp ne i8* %50, null
  br i1 %tobool93, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %if.then92
  %51 = load i8*, i8** %tmp, align 4
  br label %cond.end96

cond.false95:                                     ; preds = %if.then92
  %52 = load i8*, i8** @pwd, align 4
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false95, %cond.true94
  %cond97 = phi i8* [ %51, %cond.true94 ], [ %52, %cond.false95 ]
  %53 = load i8*, i8** %str, align 4
  %add.ptr98 = getelementptr inbounds i8, i8* %53, i32 2
  %call99 = call i8* @dyncat(i8* %cond97, i8* %add.ptr98)
  %54 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call99, i8** %54, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.else100:                                       ; preds = %land.lhs.true87, %lor.lhs.false85, %if.else67
  %55 = load i8*, i8** %str, align 4
  %arrayidx101 = getelementptr inbounds i8, i8* %55, i32 1
  %56 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %56 to i32
  %cmp103 = icmp eq i32 %conv102, -111
  br i1 %cmp103, label %land.lhs.true105, label %if.else128

land.lhs.true105:                                 ; preds = %if.else100
  %57 = load i8*, i8** %str, align 4
  %add.ptr106 = getelementptr inbounds i8, i8* %57, i32 2
  %call107 = call i8* @strchr(i8* %add.ptr106, i32 -110)
  store i8* %call107, i8** %ptr2, align 4
  %tobool108 = icmp ne i8* %call107, null
  br i1 %tobool108, label %if.then109, label %if.else128

if.then109:                                       ; preds = %land.lhs.true105
  %58 = load i8*, i8** %str, align 4
  %add.ptr111 = getelementptr inbounds i8, i8* %58, i32 2
  %59 = load i8*, i8** %ptr2, align 4
  %60 = load i8*, i8** %str, align 4
  %add.ptr112 = getelementptr inbounds i8, i8* %60, i32 2
  %sub.ptr.lhs.cast = ptrtoint i8* %59 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr112 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call113 = call i8* @dupstrpfx(i8* %add.ptr111, i32 %sub.ptr.sub)
  store i8* %call113, i8** %tmp, align 4
  call void @untokenize(i8* %call113)
  %61 = load i8*, i8** %tmp, align 4
  call void @remnulargs(i8* %61)
  %62 = load i8*, i8** %tmp, align 4
  %call114 = call i8** @subst_string_by_hook(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %62)
  store i8** %call114, i8*** %arr, align 4
  %63 = load i8**, i8*** %arr, align 4
  %tobool115 = icmp ne i8** %63, null
  br i1 %tobool115, label %cond.true116, label %cond.false117

cond.true116:                                     ; preds = %if.then109
  %64 = load i8**, i8*** %arr, align 4
  %65 = load i8*, i8** %64, align 4
  br label %cond.end118

cond.false117:                                    ; preds = %if.then109
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %cond.true116
  %cond119 = phi i8* [ %65, %cond.true116 ], [ null, %cond.false117 ]
  store i8* %cond119, i8** %res, align 4
  %66 = load i8*, i8** %res, align 4
  %tobool120 = icmp ne i8* %66, null
  br i1 %tobool120, label %if.then121, label %if.end124

if.then121:                                       ; preds = %cond.end118
  %67 = load i8*, i8** %res, align 4
  %68 = load i8*, i8** %ptr2, align 4
  %add.ptr122 = getelementptr inbounds i8, i8* %68, i32 1
  %call123 = call i8* @dyncat(i8* %67, i8* %add.ptr122)
  %69 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call123, i8** %69, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end124:                                        ; preds = %cond.end118
  %70 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 121), align 1
  %tobool125 = icmp ne i8 %70, 0
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end124
  %71 = load i8*, i8** %tmp, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %71)
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end124
  store i32 0, i32* %retval, align 4
  br label %return

if.else128:                                       ; preds = %land.lhs.true105, %if.else100
  %72 = load i8*, i8** %str, align 4
  %arrayidx129 = getelementptr inbounds i8, i8* %72, i32 1
  %73 = load i8, i8* %arrayidx129, align 1
  %idxprom = zext i8 %73 to i32
  %arrayidx130 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %74 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %74 to i32
  %and = and i32 %conv131, 8
  %tobool132 = icmp ne i32 %and, 0
  br i1 %tobool132, label %if.else174, label %land.lhs.true133

land.lhs.true133:                                 ; preds = %if.else128
  %75 = load i8*, i8** %ptr, align 4
  %76 = load i8, i8* %75, align 1
  %tobool134 = icmp ne i8 %76, 0
  br i1 %tobool134, label %lor.lhs.false135, label %land.lhs.true149

lor.lhs.false135:                                 ; preds = %land.lhs.true133
  %77 = load i8*, i8** %ptr, align 4
  %78 = load i8, i8* %77, align 1
  %conv136 = sext i8 %78 to i32
  %cmp137 = icmp eq i32 %conv136, 47
  br i1 %cmp137, label %land.lhs.true149, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false135
  %79 = load i8*, i8** %ptr, align 4
  %80 = load i8, i8* %79, align 1
  %conv140 = sext i8 %80 to i32
  %cmp141 = icmp eq i32 %conv140, -120
  br i1 %cmp141, label %land.lhs.true149, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %lor.lhs.false139
  %81 = load i32, i32* %assign.addr, align 4
  %tobool144 = icmp ne i32 %81, 0
  br i1 %tobool144, label %land.lhs.true145, label %if.else174

land.lhs.true145:                                 ; preds = %lor.lhs.false143
  %82 = load i8*, i8** %ptr, align 4
  %83 = load i8, i8* %82, align 1
  %conv146 = sext i8 %83 to i32
  %cmp147 = icmp eq i32 %conv146, 58
  br i1 %cmp147, label %land.lhs.true149, label %if.else174

land.lhs.true149:                                 ; preds = %land.lhs.true145, %lor.lhs.false139, %lor.lhs.false135, %land.lhs.true133
  %84 = load i8*, i8** %str, align 4
  %arrayidx150 = getelementptr inbounds i8, i8* %84, i32 1
  %85 = load i8, i8* %arrayidx150, align 1
  %idxprom151 = zext i8 %85 to i32
  %arrayidx152 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom151
  %86 = load i16, i16* %arrayidx152, align 2
  %conv153 = sext i16 %86 to i32
  %and154 = and i32 %conv153, 1
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %lor.lhs.false156, label %if.then162

lor.lhs.false156:                                 ; preds = %land.lhs.true149
  %87 = load i8*, i8** %ptr, align 4
  %88 = load i8*, i8** %str, align 4
  %sub.ptr.lhs.cast157 = ptrtoint i8* %87 to i32
  %sub.ptr.rhs.cast158 = ptrtoint i8* %88 to i32
  %sub.ptr.sub159 = sub i32 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158
  %cmp160 = icmp slt i32 %sub.ptr.sub159, 4
  br i1 %cmp160, label %if.then162, label %if.else174

if.then162:                                       ; preds = %lor.lhs.false156, %land.lhs.true149
  %89 = load i32, i32* %val, align 4
  %cmp164 = icmp slt i32 %89, 0
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.then162
  %90 = load i32, i32* %val, align 4
  %sub = sub nsw i32 0, %90
  store i32 %sub, i32* %val, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.then162
  %91 = load i8*, i8** %str, align 4
  %arrayidx168 = getelementptr inbounds i8, i8* %91, i32 1
  %92 = load i8, i8* %arrayidx168, align 1
  %93 = load i32, i32* %val, align 4
  %call169 = call i8* @dstackent(i8 signext %92, i32 %93)
  store i8* %call169, i8** %ds, align 4
  %94 = load i8*, i8** %ds, align 4
  %tobool170 = icmp ne i8* %94, null
  br i1 %tobool170, label %if.end172, label %if.then171

if.then171:                                       ; preds = %if.end167
  store i32 0, i32* %retval, align 4
  br label %return

if.end172:                                        ; preds = %if.end167
  %95 = load i8*, i8** %ds, align 4
  %96 = load i8*, i8** %ptr, align 4
  %call173 = call i8* @dyncat(i8* %95, i8* %96)
  %97 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call173, i8** %97, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.else174:                                       ; preds = %lor.lhs.false156, %land.lhs.true145, %lor.lhs.false143, %if.else128
  %98 = load i8*, i8** %str, align 4
  %add.ptr175 = getelementptr inbounds i8, i8* %98, i32 1
  %call176 = call i8* @itype_end(i8* %add.ptr175, i32 256, i32 0)
  store i8* %call176, i8** %ptr, align 4
  %99 = load i8*, i8** %str, align 4
  %add.ptr177 = getelementptr inbounds i8, i8* %99, i32 1
  %cmp178 = icmp ne i8* %call176, %add.ptr177
  br i1 %cmp178, label %if.then180, label %if.end217

if.then180:                                       ; preds = %if.else174
  %100 = load i8*, i8** %ptr, align 4
  %101 = load i8, i8* %100, align 1
  %tobool183 = icmp ne i8 %101, 0
  br i1 %tobool183, label %lor.lhs.false184, label %if.end199

lor.lhs.false184:                                 ; preds = %if.then180
  %102 = load i8*, i8** %ptr, align 4
  %103 = load i8, i8* %102, align 1
  %conv185 = sext i8 %103 to i32
  %cmp186 = icmp eq i32 %conv185, 47
  br i1 %cmp186, label %if.end199, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %lor.lhs.false184
  %104 = load i8*, i8** %ptr, align 4
  %105 = load i8, i8* %104, align 1
  %conv189 = sext i8 %105 to i32
  %cmp190 = icmp eq i32 %conv189, -120
  br i1 %cmp190, label %if.end199, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %lor.lhs.false188
  %106 = load i32, i32* %assign.addr, align 4
  %tobool193 = icmp ne i32 %106, 0
  br i1 %tobool193, label %land.lhs.true194, label %if.then198

land.lhs.true194:                                 ; preds = %lor.lhs.false192
  %107 = load i8*, i8** %ptr, align 4
  %108 = load i8, i8* %107, align 1
  %conv195 = sext i8 %108 to i32
  %cmp196 = icmp eq i32 %conv195, 58
  br i1 %cmp196, label %if.end199, label %if.then198

if.then198:                                       ; preds = %land.lhs.true194, %lor.lhs.false192
  store i32 0, i32* %retval, align 4
  br label %return

if.end199:                                        ; preds = %land.lhs.true194, %lor.lhs.false188, %lor.lhs.false184, %if.then180
  %109 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr, i8** %str, align 4
  %call200 = call i8* @dupstring(i8* %incdec.ptr)
  store i8* %call200, i8** %untok, align 4
  %110 = load i8*, i8** %untok, align 4
  %111 = load i8*, i8** %ptr, align 4
  %112 = load i8*, i8** %str, align 4
  %sub.ptr.lhs.cast201 = ptrtoint i8* %111 to i32
  %sub.ptr.rhs.cast202 = ptrtoint i8* %112 to i32
  %sub.ptr.sub203 = sub i32 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  %arrayidx204 = getelementptr inbounds i8, i8* %110, i32 %sub.ptr.sub203
  store i8 0, i8* %arrayidx204, align 1
  %113 = load i8*, i8** %untok, align 4
  call void @untokenize(i8* %113)
  %114 = load i8*, i8** %untok, align 4
  %call205 = call i8* @getnameddir(i8* %114)
  store i8* %call205, i8** %hom, align 4
  %tobool206 = icmp ne i8* %call205, null
  br i1 %tobool206, label %if.end215, label %if.then207

if.then207:                                       ; preds = %if.end199
  %115 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 121), align 1
  %conv208 = sext i8 %115 to i32
  %tobool209 = icmp ne i32 %conv208, 0
  br i1 %tobool209, label %land.lhs.true210, label %if.end214

land.lhs.true210:                                 ; preds = %if.then207
  %116 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %conv211 = sext i8 %116 to i32
  %tobool212 = icmp ne i32 %conv211, 0
  br i1 %tobool212, label %if.then213, label %if.end214

if.then213:                                       ; preds = %land.lhs.true210
  %117 = load i8*, i8** %untok, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* %117)
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %land.lhs.true210, %if.then207
  store i32 0, i32* %retval, align 4
  br label %return

if.end215:                                        ; preds = %if.end199
  %118 = load i8*, i8** %hom, align 4
  %119 = load i8*, i8** %ptr, align 4
  %call216 = call i8* @dyncat(i8* %118, i8* %119)
  %120 = load i8**, i8*** %namptr.addr, align 4
  store i8* %call216, i8** %120, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end217:                                        ; preds = %if.else174
  br label %if.end218

if.end218:                                        ; preds = %if.end217
  br label %if.end219

if.end219:                                        ; preds = %if.end218
  br label %if.end220

if.end220:                                        ; preds = %if.end219
  br label %if.end221

if.end221:                                        ; preds = %if.end220
  br label %if.end222

if.end222:                                        ; preds = %if.end221
  br label %if.end243

if.else223:                                       ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %121 = load i8*, i8** %str, align 4
  %122 = load i8, i8* %121, align 1
  %conv224 = sext i8 %122 to i32
  %cmp225 = icmp eq i32 %conv224, -115
  br i1 %cmp225, label %land.lhs.true227, label %if.end242

land.lhs.true227:                                 ; preds = %if.else223
  %123 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 50), align 1
  %conv228 = sext i8 %123 to i32
  %tobool229 = icmp ne i32 %conv228, 0
  br i1 %tobool229, label %land.lhs.true230, label %if.end242

land.lhs.true230:                                 ; preds = %land.lhs.true227
  %124 = load i8*, i8** %str, align 4
  %arrayidx231 = getelementptr inbounds i8, i8* %124, i32 1
  %125 = load i8, i8* %arrayidx231, align 1
  %conv232 = sext i8 %125 to i32
  %tobool233 = icmp ne i32 %conv232, 0
  br i1 %tobool233, label %if.then234, label %if.end242

if.then234:                                       ; preds = %land.lhs.true230
  %126 = load i8*, i8** %str, align 4
  %add.ptr236 = getelementptr inbounds i8, i8* %126, i32 1
  %127 = load i32, i32* %assign.addr, align 4
  %128 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 121), align 1
  %conv237 = sext i8 %128 to i32
  %call238 = call i8* @equalsubstr(i8* %add.ptr236, i32 %127, i32 %conv237)
  store i8* %call238, i8** %expn, align 4
  %129 = load i8*, i8** %expn, align 4
  %tobool239 = icmp ne i8* %129, null
  br i1 %tobool239, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.then234
  %130 = load i8*, i8** %expn, align 4
  %131 = load i8**, i8*** %namptr.addr, align 4
  store i8* %130, i8** %131, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end241:                                        ; preds = %if.then234
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %land.lhs.true230, %land.lhs.true227, %if.else223
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end222
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end243, %if.then240, %if.end215, %if.end214, %if.then198, %if.end172, %if.then171, %if.end127, %if.then121, %cond.end96, %if.then64, %cond.end
  %132 = load i32, i32* %retval, align 4
  ret i32 %132
}

declare i8* @strchr(i8*, i32) #1

declare i8* @dyncat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i8* @equalsubstr(i8* %str, i32 %assign, i32 %nomatch) #0 {
entry:
  %retval = alloca i8*, align 4
  %str.addr = alloca i8*, align 4
  %assign.addr = alloca i32, align 4
  %nomatch.addr = alloca i32, align 4
  %pp = alloca i8*, align 4
  %cnam = alloca i8*, align 4
  %cmdstr = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %assign, i32* %assign.addr, align 4
  store i32 %nomatch, i32* %nomatch.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  store i8* %0, i8** %pp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %pp, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %3 = load i8*, i8** %pp, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, -120
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %assign.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i8*, i8** %pp, align 4
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %for.cond
  %9 = phi i1 [ true, %lor.lhs.false ], [ true, %for.cond ], [ %8, %land.end ]
  %lnot = xor i1 %9, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i8*, i8** %pp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %pp, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %11 = load i8*, i8** %str.addr, align 4
  %12 = load i8*, i8** %pp, align 4
  %13 = load i8*, i8** %str.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @dupstrpfx(i8* %11, i32 %sub.ptr.sub)
  store i8* %call, i8** %cmdstr, align 4
  %14 = load i8*, i8** %cmdstr, align 4
  call void @untokenize(i8* %14)
  %15 = load i8*, i8** %cmdstr, align 4
  call void @remnulargs(i8* %15)
  %16 = load i8*, i8** %cmdstr, align 4
  %call6 = call i8* @findcmd(i8* %16, i32 1, i32 0)
  store i8* %call6, i8** %cnam, align 4
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.end10, label %if.then

if.then:                                          ; preds = %for.end
  %17 = load i32, i32* %nomatch.addr, align 4
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %18 = load i8*, i8** %cmdstr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  store i8* null, i8** %retval, align 4
  br label %return

if.end10:                                         ; preds = %for.end
  %19 = load i8*, i8** %pp, align 4
  %20 = load i8, i8* %19, align 1
  %tobool11 = icmp ne i8 %20, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %21 = load i8*, i8** %cnam, align 4
  %22 = load i8*, i8** %pp, align 4
  %call13 = call i8* @dyncat(i8* %21, i8* %22)
  store i8* %call13, i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end10
  %23 = load i8*, i8** %cnam, align 4
  store i8* %23, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then12, %if.end
  %24 = load i8*, i8** %retval, align 4
  ret i8* %24
}

declare i8* @dupstrpfx(i8*, i32) #1

declare void @untokenize(i8*) #1

declare i8* @findcmd(i8*, i32, i32) #1

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i8** @subst_string_by_hook(i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i8* @dstackent(i8 signext %ch, i32 %val) #0 {
entry:
  %retval = alloca i8*, align 4
  %ch.addr = alloca i8, align 1
  %val.addr = alloca i32, align 4
  %backwards = alloca i32, align 4
  %end = alloca %struct.linknode*, align 4
  %n = alloca %struct.linknode*, align 4
  store i8 %ch, i8* %ch.addr, align 1
  store i32 %val, i32* %val.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @dirstack, align 4
  %1 = bitcast %union.linkroot* %0 to %struct.linknode*
  store %struct.linknode* %1, %struct.linknode** %end, align 4
  %2 = load i8, i8* %ch.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 147), align 1
  %conv1 = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv1, 0
  %cond = select i1 %tobool, i32 43, i32 45
  %cmp = icmp eq i32 %conv, %cond
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %backwards, align 4
  %4 = load i32, i32* %backwards, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %val.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %val.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** @pwd, align 4
  store i8* %6, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %backwards, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %8 = load %union.linkroot*, %union.linkroot** @dirstack, align 4
  %list = bitcast %union.linkroot* %8 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %9 = load %struct.linknode*, %struct.linknode** %last, align 4
  store %struct.linknode* %9, %struct.linknode** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %10 = load %struct.linknode*, %struct.linknode** %n, align 4
  %11 = load %struct.linknode*, %struct.linknode** %end, align 4
  %cmp7 = icmp ne %struct.linknode* %10, %11
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %val.addr, align 4
  %tobool9 = icmp ne i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %tobool9, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %val.addr, align 4
  %dec10 = add nsw i32 %14, -1
  store i32 %dec10, i32* %val.addr, align 4
  %15 = load %struct.linknode*, %struct.linknode** %n, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %15, i32 0, i32 1
  %16 = load %struct.linknode*, %struct.linknode** %prev, align 4
  store %struct.linknode* %16, %struct.linknode** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end21

if.else:                                          ; preds = %if.end
  store %struct.linknode* null, %struct.linknode** %end, align 4
  %17 = load %union.linkroot*, %union.linkroot** @dirstack, align 4
  %list11 = bitcast %union.linkroot* %17 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list11, i32 0, i32 0
  %18 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %18, %struct.linknode** %n, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %if.else
  %19 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool13 = icmp ne %struct.linknode* %19, null
  br i1 %tobool13, label %land.rhs14, label %land.end16

land.rhs14:                                       ; preds = %for.cond12
  %20 = load i32, i32* %val.addr, align 4
  %tobool15 = icmp ne i32 %20, 0
  br label %land.end16

land.end16:                                       ; preds = %land.rhs14, %for.cond12
  %21 = phi i1 [ false, %for.cond12 ], [ %tobool15, %land.rhs14 ]
  br i1 %21, label %for.body17, label %for.end20

for.body17:                                       ; preds = %land.end16
  br label %for.inc18

for.inc18:                                        ; preds = %for.body17
  %22 = load i32, i32* %val.addr, align 4
  %dec19 = add nsw i32 %22, -1
  store i32 %dec19, i32* %val.addr, align 4
  %23 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %23, i32 0, i32 0
  %24 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %24, %struct.linknode** %n, align 4
  br label %for.cond12

for.end20:                                        ; preds = %land.end16
  br label %if.end21

if.end21:                                         ; preds = %for.end20, %for.end
  %25 = load %struct.linknode*, %struct.linknode** %n, align 4
  %26 = load %struct.linknode*, %struct.linknode** %end, align 4
  %cmp22 = icmp eq %struct.linknode* %25, %26
  br i1 %cmp22, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.end21
  %27 = load i32, i32* %backwards, align 4
  %tobool25 = icmp ne i32 %27, 0
  br i1 %tobool25, label %land.lhs.true26, label %if.end29

land.lhs.true26:                                  ; preds = %if.then24
  %28 = load i32, i32* %val.addr, align 4
  %tobool27 = icmp ne i32 %28, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %land.lhs.true26
  %29 = load i8*, i8** @pwd, align 4
  store i8* %29, i8** %retval, align 4
  br label %return

if.end29:                                         ; preds = %land.lhs.true26, %if.then24
  %30 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 121), align 1
  %tobool30 = icmp ne i8 %30, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29
  store i8* null, i8** %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end21
  %31 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %31, i32 0, i32 2
  %32 = load i8*, i8** %dat, align 4
  store i8* %32, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.end32, %if.then28, %if.then
  %33 = load i8*, i8** %retval, align 4
  ret i8* %33
}

declare i8* @itype_end(i8*, i32, i32) #1

declare i8* @dupstring(i8*) #1

declare i8* @getnameddir(i8*) #1

; Function Attrs: noinline nounwind
define i8* @get_strarg(i8* %s, i32* %lenp) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %lenp.addr = alloca i32*, align 4
  %del = alloca i32, align 4
  %len = alloca i32, align 4
  %ctok = alloca i8, align 1
  %del2 = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %lenp, i32** %lenp.addr, align 4
  store i8 0, i8* %ctok, align 1
  call void @mb_charinit()
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @mb_metacharlenconv(i8* %0, i32* %del)
  store i32 %call, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %lenp.addr, align 4
  store i32 0, i32* %2, align 4
  %3 = load i8*, i8** %s.addr, align 4
  store i8* %3, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %del, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, -125
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then1
  %7 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %8 to i32
  %xor = xor i32 %conv4, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then1
  %9 = load i8*, i8** %s.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv5, %cond.false ]
  store i32 %cond, i32* %del, align 4
  br label %if.end6

if.end6:                                          ; preds = %cond.end, %if.end
  %11 = load i32, i32* %len, align 4
  %12 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %12, i32 %11
  store i8* %add.ptr, i8** %s.addr, align 4
  %13 = load i32, i32* %del, align 4
  switch i32 %13, label %sw.epilog [
    i32 40, label %sw.bb
    i32 91, label %sw.bb7
    i32 123, label %sw.bb8
    i32 60, label %sw.bb9
    i32 -120, label %sw.bb10
    i32 -108, label %sw.bb11
    i32 -113, label %sw.bb12
    i32 -111, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end6
  store i32 41, i32* %del, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  store i32 93, i32* %del, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  store i32 125, i32* %del, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  store i32 62, i32* %del, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  store i8 -118, i8* %ctok, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end6
  store i8 -107, i8* %ctok, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  store i8 -112, i8* %ctok, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  store i8 -110, i8* %ctok, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end6, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  %14 = load i8, i8* %ctok, align 1
  %tobool14 = icmp ne i8 %14, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then15
  %15 = load i8*, i8** %s.addr, align 4
  %16 = load i8, i8* %15, align 1
  %conv16 = sext i8 %16 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i8*, i8** %s.addr, align 4
  %18 = load i8, i8* %17, align 1
  %conv18 = sext i8 %18 to i32
  %19 = load i8, i8* %ctok, align 1
  %conv19 = sext i8 %19 to i32
  %cmp20 = icmp ne i32 %conv18, %conv19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end47

if.else:                                          ; preds = %sw.epilog
  store i32 0, i32* %len, align 4
  br label %while.cond22

while.cond22:                                     ; preds = %if.end44, %if.else
  %22 = load i8*, i8** %s.addr, align 4
  %23 = load i8, i8* %22, align 1
  %tobool23 = icmp ne i8 %23, 0
  br i1 %tobool23, label %while.body24, label %while.end46

while.body24:                                     ; preds = %while.cond22
  %24 = load i8*, i8** %s.addr, align 4
  %call25 = call i32 @mb_metacharlenconv(i8* %24, i32* %del2)
  store i32 %call25, i32* %len, align 4
  %25 = load i32, i32* %del2, align 4
  %cmp26 = icmp eq i32 %25, -1
  br i1 %cmp26, label %if.then28, label %if.end40

if.then28:                                        ; preds = %while.body24
  %26 = load i8*, i8** %s.addr, align 4
  %27 = load i8, i8* %26, align 1
  %conv29 = sext i8 %27 to i32
  %cmp30 = icmp eq i32 %conv29, -125
  br i1 %cmp30, label %cond.true32, label %cond.false36

cond.true32:                                      ; preds = %if.then28
  %28 = load i8*, i8** %s.addr, align 4
  %arrayidx33 = getelementptr inbounds i8, i8* %28, i32 1
  %29 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %29 to i32
  %xor35 = xor i32 %conv34, 32
  br label %cond.end38

cond.false36:                                     ; preds = %if.then28
  %30 = load i8*, i8** %s.addr, align 4
  %31 = load i8, i8* %30, align 1
  %conv37 = sext i8 %31 to i32
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false36, %cond.true32
  %cond39 = phi i32 [ %xor35, %cond.true32 ], [ %conv37, %cond.false36 ]
  store i32 %cond39, i32* %del2, align 4
  br label %if.end40

if.end40:                                         ; preds = %cond.end38, %while.body24
  %32 = load i32, i32* %del, align 4
  %33 = load i32, i32* %del2, align 4
  %cmp41 = icmp eq i32 %32, %33
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  br label %while.end46

if.end44:                                         ; preds = %if.end40
  %34 = load i32, i32* %len, align 4
  %35 = load i8*, i8** %s.addr, align 4
  %add.ptr45 = getelementptr inbounds i8, i8* %35, i32 %34
  store i8* %add.ptr45, i8** %s.addr, align 4
  br label %while.cond22

while.end46:                                      ; preds = %if.then43, %while.cond22
  br label %if.end47

if.end47:                                         ; preds = %while.end46, %while.end
  %36 = load i32, i32* %len, align 4
  %37 = load i32*, i32** %lenp.addr, align 4
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %s.addr, align 4
  store i8* %38, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.then
  %39 = load i8*, i8** %retval, align 4
  ret i8* %39
}

declare void @mb_charinit() #1

declare i32 @mb_metacharlenconv(i8*, i32*) #1

; Function Attrs: noinline nounwind
define void @modify(i8** %str, i8** %ptr) #0 {
entry:
  %str.addr = alloca i8**, align 4
  %ptr.addr = alloca i8**, align 4
  %ptr1 = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %ptr3 = alloca i8*, align 4
  %lptr = alloca i8*, align 4
  %c = alloca i8, align 1
  %test = alloca i8*, align 4
  %sep = alloca i8*, align 4
  %t = alloca i8*, align 4
  %tt = alloca i8*, align 4
  %tc = alloca i8, align 1
  %e = alloca i8*, align 4
  %copy = alloca i8*, align 4
  %all = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %sav = alloca i8, align 1
  %sav1 = alloca i8, align 1
  %ptr1end = alloca i8*, align 4
  %gbal = alloca i32, align 4
  %wall = alloca i32, align 4
  %rec = alloca i32, align 4
  %al = alloca i32, align 4
  %nl = alloca i32, align 4
  %charlen = alloca i32, align 4
  %dellen = alloca i32, align 4
  %del = alloca i32, align 4
  %del2 = alloca i32, align 4
  %del3 = alloca i32, align 4
  %copy2 = alloca i8*, align 4
  %one = alloca i32, align 4
  %oef = alloca i32, align 4
  %here = alloca i8*, align 4
  %copy2335 = alloca i8*, align 4
  %one363 = alloca i32, align 4
  %oef365 = alloca i32, align 4
  %here375 = alloca i8*, align 4
  store i8** %str, i8*** %str.addr, align 4
  store i8** %ptr, i8*** %ptr.addr, align 4
  store i8* null, i8** %test, align 4
  %0 = load i8**, i8*** %ptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %str.addr, align 4
  %4 = load i8*, i8** %3, align 4
  %call = call i8* @dupstring(i8* %4)
  %5 = load i8**, i8*** %str.addr, align 4
  store i8* %call, i8** %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %6 = load i8**, i8*** %ptr.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %8 = load i8, i8* %7, align 1
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 %conv13, 58
  br i1 %cmp14, label %while.body, label %while.end403

while.body:                                       ; preds = %while.cond
  %9 = load i8**, i8*** %ptr.addr, align 4
  %10 = load i8*, i8** %9, align 4
  store i8* %10, i8** %lptr, align 4
  %11 = load i8**, i8*** %ptr.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %11, align 4
  store i32 0, i32* %gbal, align 4
  store i32 0, i32* %wall, align 4
  store i32 1, i32* %rec, align 4
  store i8 0, i8* %c, align 1
  store i8* null, i8** %sep, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %while.body
  %13 = load i8, i8* %c, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %14 = load i8**, i8*** %ptr.addr, align 4
  %15 = load i8*, i8** %14, align 4
  %16 = load i8, i8* %15, align 1
  %conv16 = sext i8 %16 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %tobool17, %land.rhs ]
  br i1 %17, label %for.body, label %for.end208

for.body:                                         ; preds = %land.end
  %18 = load i8**, i8*** %ptr.addr, align 4
  %19 = load i8*, i8** %18, align 4
  %20 = load i8, i8* %19, align 1
  %conv18 = sext i8 %20 to i32
  switch i32 %conv18, label %sw.default [
    i32 97, label %sw.bb
    i32 65, label %sw.bb
    i32 99, label %sw.bb
    i32 104, label %sw.bb
    i32 114, label %sw.bb
    i32 101, label %sw.bb
    i32 116, label %sw.bb
    i32 108, label %sw.bb
    i32 117, label %sw.bb
    i32 113, label %sw.bb
    i32 81, label %sw.bb
    i32 80, label %sw.bb
    i32 115, label %sw.bb19
    i32 38, label %sw.bb186
    i32 103, label %sw.bb187
    i32 119, label %sw.bb189
    i32 87, label %sw.bb191
    i32 102, label %sw.bb203
    i32 70, label %sw.bb205
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %21 = load i8**, i8*** %ptr.addr, align 4
  %22 = load i8*, i8** %21, align 4
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %c, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  %24 = load i8**, i8*** %ptr.addr, align 4
  %25 = load i8*, i8** %24, align 4
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %c, align 1
  %27 = load i8**, i8*** %ptr.addr, align 4
  %28 = load i8*, i8** %27, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr20, i8** %27, align 4
  %29 = load i8**, i8*** %ptr.addr, align 4
  %30 = load i8*, i8** %29, align 4
  store i8* %30, i8** %ptr1, align 4
  call void @mb_charinit()
  %31 = load i8*, i8** %ptr1, align 4
  %call21 = call i32 @mb_metacharlenconv(i8* %31, i32* %del)
  store i32 %call21, i32* %charlen, align 4
  %32 = load i32, i32* %del, align 4
  %cmp22 = icmp eq i32 %32, -1
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %sw.bb19
  %33 = load i8*, i8** %ptr1, align 4
  %34 = load i8, i8* %33, align 1
  %conv25 = sext i8 %34 to i32
  %cmp26 = icmp eq i32 %conv25, -125
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then24
  %35 = load i8*, i8** %ptr1, align 4
  %arrayidx = getelementptr inbounds i8, i8* %35, i32 1
  %36 = load i8, i8* %arrayidx, align 1
  %conv28 = sext i8 %36 to i32
  %xor = xor i32 %conv28, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then24
  %37 = load i8*, i8** %ptr1, align 4
  %38 = load i8, i8* %37, align 1
  %conv29 = sext i8 %38 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv29, %cond.false ]
  store i32 %cond, i32* %del, align 4
  br label %if.end30

if.end30:                                         ; preds = %cond.end, %sw.bb19
  %39 = load i32, i32* %charlen, align 4
  %40 = load i8*, i8** %ptr1, align 4
  %add.ptr = getelementptr inbounds i8, i8* %40, i32 %39
  store i8* %add.ptr, i8** %ptr1, align 4
  %41 = load i8*, i8** %ptr1, align 4
  store i8* %41, i8** %ptr2, align 4
  store i32 0, i32* %charlen, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %if.end30
  %42 = load i8*, i8** %ptr2, align 4
  %43 = load i8, i8* %42, align 1
  %tobool32 = icmp ne i8 %43, 0
  br i1 %tobool32, label %for.body33, label %for.end

for.body33:                                       ; preds = %for.cond31
  %44 = load i8*, i8** %ptr2, align 4
  %45 = load i8, i8* %44, align 1
  %conv35 = sext i8 %45 to i32
  %cmp36 = icmp eq i32 %conv35, -97
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body33
  %46 = load i8*, i8** %ptr2, align 4
  %47 = load i8, i8* %46, align 1
  %conv38 = sext i8 %47 to i32
  %cmp39 = icmp eq i32 %conv38, 92
  br i1 %cmp39, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body33
  %48 = load i8*, i8** %ptr2, align 4
  %arrayidx41 = getelementptr inbounds i8, i8* %48, i32 1
  %49 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %49 to i32
  %tobool43 = icmp ne i32 %conv42, 0
  br i1 %tobool43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %land.lhs.true
  %50 = load i8*, i8** %ptr2, align 4
  %51 = load i8, i8* %50, align 1
  %conv45 = sext i8 %51 to i32
  %cmp46 = icmp eq i32 %conv45, 92
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then44
  %52 = load i8*, i8** %ptr2, align 4
  store i8 -97, i8* %52, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then44
  store i32 2, i32* %charlen, align 4
  br label %for.inc

if.end50:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %53 = load i8*, i8** %ptr2, align 4
  %call51 = call i32 @mb_metacharlenconv(i8* %53, i32* %del2)
  store i32 %call51, i32* %charlen, align 4
  %54 = load i32, i32* %del2, align 4
  %cmp52 = icmp eq i32 %54, -1
  br i1 %cmp52, label %if.then54, label %if.end66

if.then54:                                        ; preds = %if.end50
  %55 = load i8*, i8** %ptr2, align 4
  %56 = load i8, i8* %55, align 1
  %conv55 = sext i8 %56 to i32
  %cmp56 = icmp eq i32 %conv55, -125
  br i1 %cmp56, label %cond.true58, label %cond.false62

cond.true58:                                      ; preds = %if.then54
  %57 = load i8*, i8** %ptr2, align 4
  %arrayidx59 = getelementptr inbounds i8, i8* %57, i32 1
  %58 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %58 to i32
  %xor61 = xor i32 %conv60, 32
  br label %cond.end64

cond.false62:                                     ; preds = %if.then54
  %59 = load i8*, i8** %ptr2, align 4
  %60 = load i8, i8* %59, align 1
  %conv63 = sext i8 %60 to i32
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false62, %cond.true58
  %cond65 = phi i32 [ %xor61, %cond.true58 ], [ %conv63, %cond.false62 ]
  store i32 %cond65, i32* %del2, align 4
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %if.end50
  %61 = load i32, i32* %del2, align 4
  %62 = load i32, i32* %del, align 4
  %cmp67 = icmp eq i32 %61, %62
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  br label %for.end

if.end70:                                         ; preds = %if.end66
  br label %for.inc

for.inc:                                          ; preds = %if.end70, %if.end49
  %63 = load i32, i32* %charlen, align 4
  %64 = load i8*, i8** %ptr2, align 4
  %add.ptr71 = getelementptr inbounds i8, i8* %64, i32 %63
  store i8* %add.ptr71, i8** %ptr2, align 4
  br label %for.cond31

for.end:                                          ; preds = %if.then69, %for.cond31
  %65 = load i8*, i8** %ptr2, align 4
  %66 = load i8, i8* %65, align 1
  %tobool72 = icmp ne i8 %66, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %for.end
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  br label %while.end403

if.end74:                                         ; preds = %for.end
  %67 = load i8*, i8** %ptr2, align 4
  store i8* %67, i8** %ptr1end, align 4
  %68 = load i32, i32* %charlen, align 4
  %69 = load i8*, i8** %ptr2, align 4
  %add.ptr75 = getelementptr inbounds i8, i8* %69, i32 %68
  store i8* %add.ptr75, i8** %ptr2, align 4
  %70 = load i8*, i8** %ptr1end, align 4
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %sav1, align 1
  %72 = load i8*, i8** %ptr1end, align 4
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %ptr2, align 4
  store i8* %73, i8** %ptr3, align 4
  store i32 0, i32* %charlen, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc118, %if.end74
  %74 = load i8*, i8** %ptr3, align 4
  %75 = load i8, i8* %74, align 1
  %tobool77 = icmp ne i8 %75, 0
  br i1 %tobool77, label %for.body78, label %for.end120

for.body78:                                       ; preds = %for.cond76
  %76 = load i8*, i8** %ptr3, align 4
  %77 = load i8, i8* %76, align 1
  %conv80 = sext i8 %77 to i32
  %cmp81 = icmp eq i32 %conv80, -97
  br i1 %cmp81, label %land.lhs.true87, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %for.body78
  %78 = load i8*, i8** %ptr3, align 4
  %79 = load i8, i8* %78, align 1
  %conv84 = sext i8 %79 to i32
  %cmp85 = icmp eq i32 %conv84, 92
  br i1 %cmp85, label %land.lhs.true87, label %if.end97

land.lhs.true87:                                  ; preds = %lor.lhs.false83, %for.body78
  %80 = load i8*, i8** %ptr3, align 4
  %arrayidx88 = getelementptr inbounds i8, i8* %80, i32 1
  %81 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %81 to i32
  %tobool90 = icmp ne i32 %conv89, 0
  br i1 %tobool90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %land.lhs.true87
  %82 = load i8*, i8** %ptr3, align 4
  %83 = load i8, i8* %82, align 1
  %conv92 = sext i8 %83 to i32
  %cmp93 = icmp eq i32 %conv92, 92
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.then91
  %84 = load i8*, i8** %ptr3, align 4
  store i8 -97, i8* %84, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.then91
  store i32 2, i32* %charlen, align 4
  br label %for.inc118

if.end97:                                         ; preds = %land.lhs.true87, %lor.lhs.false83
  %85 = load i8*, i8** %ptr3, align 4
  %call98 = call i32 @mb_metacharlenconv(i8* %85, i32* %del3)
  store i32 %call98, i32* %charlen, align 4
  %86 = load i32, i32* %del3, align 4
  %cmp99 = icmp eq i32 %86, -1
  br i1 %cmp99, label %if.then101, label %if.end113

if.then101:                                       ; preds = %if.end97
  %87 = load i8*, i8** %ptr3, align 4
  %88 = load i8, i8* %87, align 1
  %conv102 = sext i8 %88 to i32
  %cmp103 = icmp eq i32 %conv102, -125
  br i1 %cmp103, label %cond.true105, label %cond.false109

cond.true105:                                     ; preds = %if.then101
  %89 = load i8*, i8** %ptr3, align 4
  %arrayidx106 = getelementptr inbounds i8, i8* %89, i32 1
  %90 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %90 to i32
  %xor108 = xor i32 %conv107, 32
  br label %cond.end111

cond.false109:                                    ; preds = %if.then101
  %91 = load i8*, i8** %ptr3, align 4
  %92 = load i8, i8* %91, align 1
  %conv110 = sext i8 %92 to i32
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false109, %cond.true105
  %cond112 = phi i32 [ %xor108, %cond.true105 ], [ %conv110, %cond.false109 ]
  store i32 %cond112, i32* %del3, align 4
  br label %if.end113

if.end113:                                        ; preds = %cond.end111, %if.end97
  %93 = load i32, i32* %del3, align 4
  %94 = load i32, i32* %del, align 4
  %cmp114 = icmp eq i32 %93, %94
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end113
  br label %for.end120

if.end117:                                        ; preds = %if.end113
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117, %if.end96
  %95 = load i32, i32* %charlen, align 4
  %96 = load i8*, i8** %ptr3, align 4
  %add.ptr119 = getelementptr inbounds i8, i8* %96, i32 %95
  store i8* %add.ptr119, i8** %ptr3, align 4
  br label %for.cond76

for.end120:                                       ; preds = %if.then116, %for.cond76
  %97 = load i8*, i8** %ptr3, align 4
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %sav, align 1
  %99 = load i8*, i8** %ptr3, align 4
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %ptr1, align 4
  %101 = load i8, i8* %100, align 1
  %tobool121 = icmp ne i8 %101, 0
  br i1 %tobool121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %for.end120
  %102 = load i8*, i8** @hsubl, align 4
  call void @zsfree(i8* %102)
  %103 = load i8*, i8** %ptr1, align 4
  %call123 = call i8* @ztrdup(i8* %103)
  store i8* %call123, i8** @hsubl, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %for.end120
  %104 = load i8*, i8** @hsubl, align 4
  %tobool125 = icmp ne i8* %104, null
  br i1 %tobool125, label %if.end127, label %if.then126

if.then126:                                       ; preds = %if.end124
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  br label %while.end403

if.end127:                                        ; preds = %if.end124
  %105 = load i8*, i8** @hsubr, align 4
  call void @zsfree(i8* %105)
  %106 = load i8*, i8** @hsubl, align 4
  store i8* %106, i8** %tt, align 4
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc141, %if.end127
  %107 = load i8*, i8** %tt, align 4
  %108 = load i8, i8* %107, align 1
  %tobool129 = icmp ne i8 %108, 0
  br i1 %tobool129, label %for.body130, label %for.end143

for.body130:                                      ; preds = %for.cond128
  %109 = load i8*, i8** %tt, align 4
  %110 = load i8, i8* %109, align 1
  %idxprom = zext i8 %110 to i32
  %arrayidx131 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %111 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %111 to i32
  %and = and i32 %conv132, 16384
  %tobool133 = icmp ne i32 %and, 0
  br i1 %tobool133, label %land.lhs.true134, label %if.end140

land.lhs.true134:                                 ; preds = %for.body130
  %112 = load i8*, i8** %tt, align 4
  %113 = load i8, i8* %112, align 1
  %conv135 = sext i8 %113 to i32
  %cmp136 = icmp ne i32 %conv135, -96
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %land.lhs.true134
  %114 = load i8*, i8** %tt, align 4
  %incdec.ptr139 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %incdec.ptr139, i8** %tt, align 4
  call void @chuck(i8* %114)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %land.lhs.true134, %for.body130
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %115 = load i8*, i8** %tt, align 4
  %incdec.ptr142 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr142, i8** %tt, align 4
  br label %for.cond128

for.end143:                                       ; preds = %for.cond128
  %116 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 86), align 1
  %tobool144 = icmp ne i8 %116, 0
  br i1 %tobool144, label %if.end146, label %if.then145

if.then145:                                       ; preds = %for.end143
  %117 = load i8*, i8** @hsubl, align 4
  call void @untokenize(i8* %117)
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %for.end143
  %118 = load i8*, i8** %ptr2, align 4
  %call147 = call i8* @ztrdup(i8* %118)
  store i8* %call147, i8** @hsubr, align 4
  store i8* %call147, i8** %tt, align 4
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc178, %if.end146
  %119 = load i8*, i8** %tt, align 4
  %120 = load i8, i8* %119, align 1
  %tobool149 = icmp ne i8 %120, 0
  br i1 %tobool149, label %for.body150, label %for.end180

for.body150:                                      ; preds = %for.cond148
  %121 = load i8*, i8** %tt, align 4
  %122 = load i8, i8* %121, align 1
  %idxprom151 = zext i8 %122 to i32
  %arrayidx152 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom151
  %123 = load i16, i16* %arrayidx152, align 2
  %conv153 = sext i16 %123 to i32
  %and154 = and i32 %conv153, 16384
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %land.lhs.true156, label %if.end177

land.lhs.true156:                                 ; preds = %for.body150
  %124 = load i8*, i8** %tt, align 4
  %125 = load i8, i8* %124, align 1
  %conv157 = sext i8 %125 to i32
  %cmp158 = icmp ne i32 %conv157, -96
  br i1 %cmp158, label %if.then160, label %if.end177

if.then160:                                       ; preds = %land.lhs.true156
  %126 = load i8*, i8** %tt, align 4
  %127 = load i8, i8* %126, align 1
  %conv161 = sext i8 %127 to i32
  %cmp162 = icmp eq i32 %conv161, -97
  br i1 %cmp162, label %land.lhs.true164, label %if.else

land.lhs.true164:                                 ; preds = %if.then160
  %128 = load i8*, i8** %tt, align 4
  %arrayidx165 = getelementptr inbounds i8, i8* %128, i32 1
  %129 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %129 to i32
  %cmp167 = icmp eq i32 %conv166, 38
  br i1 %cmp167, label %if.then174, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %land.lhs.true164
  %130 = load i8*, i8** %tt, align 4
  %arrayidx170 = getelementptr inbounds i8, i8* %130, i32 1
  %131 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %131 to i32
  %cmp172 = icmp eq i32 %conv171, 92
  br i1 %cmp172, label %if.then174, label %if.else

if.then174:                                       ; preds = %lor.lhs.false169, %land.lhs.true164
  %132 = load i8*, i8** %tt, align 4
  store i8 92, i8* %132, align 1
  br label %if.end176

if.else:                                          ; preds = %lor.lhs.false169, %if.then160
  %133 = load i8*, i8** %tt, align 4
  %incdec.ptr175 = getelementptr inbounds i8, i8* %133, i32 -1
  store i8* %incdec.ptr175, i8** %tt, align 4
  call void @chuck(i8* %133)
  br label %if.end176

if.end176:                                        ; preds = %if.else, %if.then174
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %land.lhs.true156, %for.body150
  br label %for.inc178

for.inc178:                                       ; preds = %if.end177
  %134 = load i8*, i8** %tt, align 4
  %incdec.ptr179 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr179, i8** %tt, align 4
  br label %for.cond148

for.end180:                                       ; preds = %for.cond148
  %135 = load i8, i8* %sav1, align 1
  %136 = load i8*, i8** %ptr1end, align 4
  store i8 %135, i8* %136, align 1
  %137 = load i8, i8* %sav, align 1
  %138 = load i8*, i8** %ptr3, align 4
  store i8 %137, i8* %138, align 1
  %139 = load i8*, i8** %ptr3, align 4
  %add.ptr181 = getelementptr inbounds i8, i8* %139, i32 -1
  %140 = load i8**, i8*** %ptr.addr, align 4
  store i8* %add.ptr181, i8** %140, align 4
  %141 = load i8*, i8** %ptr3, align 4
  %142 = load i8, i8* %141, align 1
  %tobool182 = icmp ne i8 %142, 0
  br i1 %tobool182, label %if.then183, label %if.end185

if.then183:                                       ; preds = %for.end180
  %143 = load i32, i32* %charlen, align 4
  %144 = load i8**, i8*** %ptr.addr, align 4
  %145 = load i8*, i8** %144, align 4
  %add.ptr184 = getelementptr inbounds i8, i8* %145, i32 %143
  store i8* %add.ptr184, i8** %144, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %for.end180
  br label %sw.epilog

sw.bb186:                                         ; preds = %for.body
  store i8 115, i8* %c, align 1
  br label %sw.epilog

sw.bb187:                                         ; preds = %for.body
  %146 = load i8**, i8*** %ptr.addr, align 4
  %147 = load i8*, i8** %146, align 4
  %incdec.ptr188 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr188, i8** %146, align 4
  store i32 1, i32* %gbal, align 4
  br label %sw.epilog

sw.bb189:                                         ; preds = %for.body
  store i32 1, i32* %wall, align 4
  %148 = load i8**, i8*** %ptr.addr, align 4
  %149 = load i8*, i8** %148, align 4
  %incdec.ptr190 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr190, i8** %148, align 4
  br label %sw.epilog

sw.bb191:                                         ; preds = %for.body
  store i32 1, i32* %wall, align 4
  %150 = load i8**, i8*** %ptr.addr, align 4
  %151 = load i8*, i8** %150, align 4
  %incdec.ptr192 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr192, i8** %150, align 4
  %152 = load i8**, i8*** %ptr.addr, align 4
  %153 = load i8*, i8** %152, align 4
  store i8* %153, i8** %ptr2, align 4
  %call193 = call i8* @get_strarg(i8* %153, i32* %charlen)
  store i8* %call193, i8** %ptr1, align 4
  %154 = load i8*, i8** %ptr1, align 4
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %sav, align 1
  %tobool194 = icmp ne i8 %155, 0
  br i1 %tobool194, label %if.then195, label %if.end196

if.then195:                                       ; preds = %sw.bb191
  %156 = load i8*, i8** %ptr1, align 4
  store i8 0, i8* %156, align 1
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %sw.bb191
  %157 = load i8*, i8** %ptr2, align 4
  %158 = load i32, i32* %charlen, align 4
  %add.ptr197 = getelementptr inbounds i8, i8* %157, i32 %158
  %call198 = call i8* @dupstring(i8* %add.ptr197)
  store i8* %call198, i8** %sep, align 4
  %159 = load i8, i8* %sav, align 1
  %tobool199 = icmp ne i8 %159, 0
  br i1 %tobool199, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.end196
  %160 = load i8, i8* %sav, align 1
  %161 = load i8*, i8** %ptr1, align 4
  store i8 %160, i8* %161, align 1
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end196
  %162 = load i8*, i8** %ptr1, align 4
  %163 = load i32, i32* %charlen, align 4
  %add.ptr202 = getelementptr inbounds i8, i8* %162, i32 %163
  %164 = load i8**, i8*** %ptr.addr, align 4
  store i8* %add.ptr202, i8** %164, align 4
  store i8 0, i8* %c, align 1
  br label %sw.epilog

sw.bb203:                                         ; preds = %for.body
  store i32 -1, i32* %rec, align 4
  %165 = load i8**, i8*** %ptr.addr, align 4
  %166 = load i8*, i8** %165, align 4
  %incdec.ptr204 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %incdec.ptr204, i8** %165, align 4
  br label %sw.epilog

sw.bb205:                                         ; preds = %for.body
  %167 = load i8**, i8*** %ptr.addr, align 4
  %168 = load i8*, i8** %167, align 4
  %incdec.ptr206 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr206, i8** %167, align 4
  %169 = load i8**, i8*** %ptr.addr, align 4
  %call207 = call i32 @get_intarg(i8** %169, i32* %dellen)
  store i32 %call207, i32* %rec, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %170 = load i8*, i8** %lptr, align 4
  %171 = load i8**, i8*** %ptr.addr, align 4
  store i8* %170, i8** %171, align 4
  br label %while.end403

sw.epilog:                                        ; preds = %sw.bb205, %sw.bb203, %if.end201, %sw.bb189, %sw.bb187, %sw.bb186, %if.end185, %sw.bb
  br label %for.cond

for.end208:                                       ; preds = %land.end
  %172 = load i8**, i8*** %ptr.addr, align 4
  %173 = load i8*, i8** %172, align 4
  %incdec.ptr209 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr209, i8** %172, align 4
  %174 = load i8, i8* %c, align 1
  %tobool210 = icmp ne i8 %174, 0
  br i1 %tobool210, label %if.end212, label %if.then211

if.then211:                                       ; preds = %for.end208
  %175 = load i8*, i8** %lptr, align 4
  %176 = load i8**, i8*** %ptr.addr, align 4
  store i8* %175, i8** %176, align 4
  br label %while.end403

if.end212:                                        ; preds = %for.end208
  %177 = load i32, i32* %rec, align 4
  %cmp213 = icmp slt i32 %177, 0
  br i1 %cmp213, label %if.then215, label %if.end217

if.then215:                                       ; preds = %if.end212
  %178 = load i8**, i8*** %str.addr, align 4
  %179 = load i8*, i8** %178, align 4
  %call216 = call i8* @dupstring(i8* %179)
  store i8* %call216, i8** %test, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.end212
  br label %while.cond218

while.cond218:                                    ; preds = %if.end402, %if.end217
  %180 = load i32, i32* %rec, align 4
  %dec = add nsw i32 %180, -1
  store i32 %dec, i32* %rec, align 4
  %tobool219 = icmp ne i32 %180, 0
  br i1 %tobool219, label %while.body220, label %while.end

while.body220:                                    ; preds = %while.cond218
  %181 = load i32, i32* %wall, align 4
  %tobool221 = icmp ne i32 %181, 0
  br i1 %tobool221, label %if.then222, label %if.else327

if.then222:                                       ; preds = %while.body220
  store i32 0, i32* %al, align 4
  store i8* null, i8** %all, align 4
  %182 = load i8**, i8*** %str.addr, align 4
  %183 = load i8*, i8** %182, align 4
  store i8* %183, i8** %e, align 4
  store i8* %183, i8** %t, align 4
  br label %for.cond223

for.cond223:                                      ; preds = %for.end320, %if.then222
  %184 = load i8*, i8** %sep, align 4
  %call224 = call i8* @findword(i8** %e, i8* %184)
  store i8* %call224, i8** %tt, align 4
  %tobool225 = icmp ne i8* %call224, null
  br i1 %tobool225, label %for.body226, label %for.end321

for.body226:                                      ; preds = %for.cond223
  %185 = load i8*, i8** %e, align 4
  %186 = load i8, i8* %185, align 1
  store i8 %186, i8* %tc, align 1
  %187 = load i8*, i8** %e, align 4
  store i8 0, i8* %187, align 1
  %188 = load i8, i8* %c, align 1
  %conv227 = sext i8 %188 to i32
  %cmp228 = icmp ne i32 %conv227, 108
  br i1 %cmp228, label %land.lhs.true230, label %if.end236

land.lhs.true230:                                 ; preds = %for.body226
  %189 = load i8, i8* %c, align 1
  %conv231 = sext i8 %189 to i32
  %cmp232 = icmp ne i32 %conv231, 117
  br i1 %cmp232, label %if.then234, label %if.end236

if.then234:                                       ; preds = %land.lhs.true230
  %190 = load i8*, i8** %tt, align 4
  %call235 = call i8* @dupstring(i8* %190)
  store i8* %call235, i8** %copy, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.then234, %land.lhs.true230, %for.body226
  %191 = load i8, i8* %tc, align 1
  %192 = load i8*, i8** %e, align 4
  store i8 %191, i8* %192, align 1
  %193 = load i8, i8* %c, align 1
  %conv237 = sext i8 %193 to i32
  switch i32 %conv237, label %sw.epilog294 [
    i32 97, label %sw.bb238
    i32 65, label %sw.bb240
    i32 99, label %sw.bb242
    i32 104, label %sw.bb248
    i32 114, label %sw.bb250
    i32 101, label %sw.bb252
    i32 116, label %sw.bb254
    i32 108, label %sw.bb256
    i32 117, label %sw.bb258
    i32 115, label %sw.bb260
    i32 113, label %sw.bb267
    i32 81, label %sw.bb269
    i32 80, label %sw.bb274
  ]

sw.bb238:                                         ; preds = %if.end236
  %call239 = call i32 @chabspath(i8** %copy)
  br label %sw.epilog294

sw.bb240:                                         ; preds = %if.end236
  %call241 = call i32 @chrealpath(i8** %copy)
  br label %sw.epilog294

sw.bb242:                                         ; preds = %if.end236
  %194 = load i8*, i8** %copy, align 4
  %call244 = call i8* @equalsubstr(i8* %194, i32 0, i32 0)
  store i8* %call244, i8** %copy2, align 4
  %195 = load i8*, i8** %copy2, align 4
  %tobool245 = icmp ne i8* %195, null
  br i1 %tobool245, label %if.then246, label %if.end247

if.then246:                                       ; preds = %sw.bb242
  %196 = load i8*, i8** %copy2, align 4
  store i8* %196, i8** %copy, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %sw.bb242
  br label %sw.epilog294

sw.bb248:                                         ; preds = %if.end236
  %call249 = call i32 @remtpath(i8** %copy)
  br label %sw.epilog294

sw.bb250:                                         ; preds = %if.end236
  %call251 = call i32 @remtext(i8** %copy)
  br label %sw.epilog294

sw.bb252:                                         ; preds = %if.end236
  %call253 = call i32 @rembutext(i8** %copy)
  br label %sw.epilog294

sw.bb254:                                         ; preds = %if.end236
  %call255 = call i32 @remlpaths(i8** %copy)
  br label %sw.epilog294

sw.bb256:                                         ; preds = %if.end236
  %197 = load i8*, i8** %tt, align 4
  %call257 = call i8* @casemodify(i8* %197, i32 2)
  store i8* %call257, i8** %copy, align 4
  br label %sw.epilog294

sw.bb258:                                         ; preds = %if.end236
  %198 = load i8*, i8** %tt, align 4
  %call259 = call i8* @casemodify(i8* %198, i32 1)
  store i8* %call259, i8** %copy, align 4
  br label %sw.epilog294

sw.bb260:                                         ; preds = %if.end236
  %199 = load i8*, i8** @hsubl, align 4
  %tobool261 = icmp ne i8* %199, null
  br i1 %tobool261, label %land.lhs.true262, label %if.end266

land.lhs.true262:                                 ; preds = %sw.bb260
  %200 = load i8*, i8** @hsubr, align 4
  %tobool263 = icmp ne i8* %200, null
  br i1 %tobool263, label %if.then264, label %if.end266

if.then264:                                       ; preds = %land.lhs.true262
  %201 = load i8*, i8** @hsubl, align 4
  %202 = load i8*, i8** @hsubr, align 4
  %203 = load i32, i32* %gbal, align 4
  %call265 = call i32 @subst(i8** %copy, i8* %201, i8* %202, i32 %203)
  br label %if.end266

if.end266:                                        ; preds = %if.then264, %land.lhs.true262, %sw.bb260
  br label %sw.epilog294

sw.bb267:                                         ; preds = %if.end236
  %204 = load i8*, i8** %copy, align 4
  %call268 = call i8* @quotestring(i8* %204, i32 8)
  store i8* %call268, i8** %copy, align 4
  br label %sw.epilog294

sw.bb269:                                         ; preds = %if.end236
  %205 = load i32, i32* @noerrs, align 4
  store i32 %205, i32* %one, align 4
  %206 = load i32, i32* @errflag, align 4
  store i32 %206, i32* %oef, align 4
  store i32 1, i32* @noerrs, align 4
  %207 = load i8*, i8** %copy, align 4
  %call272 = call i32 @parse_subst_string(i8* %207)
  %208 = load i32, i32* %one, align 4
  store i32 %208, i32* @noerrs, align 4
  %209 = load i32, i32* %oef, align 4
  %210 = load i32, i32* @errflag, align 4
  %and273 = and i32 %210, 2
  %or = or i32 %209, %and273
  store i32 %or, i32* @errflag, align 4
  %211 = load i8*, i8** %copy, align 4
  call void @remnulargs(i8* %211)
  %212 = load i8*, i8** %copy, align 4
  call void @untokenize(i8* %212)
  br label %sw.epilog294

sw.bb274:                                         ; preds = %if.end236
  %213 = load i8*, i8** %copy, align 4
  %214 = load i8, i8* %213, align 1
  %conv275 = sext i8 %214 to i32
  %cmp276 = icmp ne i32 %conv275, 47
  br i1 %cmp276, label %if.then278, label %if.end292

if.then278:                                       ; preds = %sw.bb274
  %call280 = call i8* @zgetcwd()
  store i8* %call280, i8** %here, align 4
  %215 = load i8*, i8** %here, align 4
  %216 = load i8*, i8** %here, align 4
  %call281 = call i32 @strlen(i8* %216)
  %sub = sub i32 %call281, 1
  %arrayidx282 = getelementptr inbounds i8, i8* %215, i32 %sub
  %217 = load i8, i8* %arrayidx282, align 1
  %conv283 = sext i8 %217 to i32
  %cmp284 = icmp ne i32 %conv283, 47
  br i1 %cmp284, label %if.then286, label %if.else289

if.then286:                                       ; preds = %if.then278
  %218 = load i8*, i8** %here, align 4
  %call287 = call i8* @metafy(i8* %218, i32 -1, i32 6)
  %219 = load i8*, i8** %copy, align 4
  %call288 = call i8* @zhtricat(i8* %call287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* %219)
  store i8* %call288, i8** %copy, align 4
  br label %if.end291

if.else289:                                       ; preds = %if.then278
  %220 = load i8*, i8** %here, align 4
  %221 = load i8*, i8** %copy, align 4
  %call290 = call i8* @dyncat(i8* %220, i8* %221)
  store i8* %call290, i8** %copy, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.else289, %if.then286
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %sw.bb274
  %222 = load i8*, i8** %copy, align 4
  %call293 = call i8* @xsymlink(i8* %222, i32 1)
  store i8* %call293, i8** %copy, align 4
  br label %sw.epilog294

sw.epilog294:                                     ; preds = %if.end236, %if.end292, %sw.bb269, %sw.bb267, %if.end266, %sw.bb258, %sw.bb256, %sw.bb254, %sw.bb252, %sw.bb250, %sw.bb248, %if.end247, %sw.bb240, %sw.bb238
  %223 = load i8*, i8** %tt, align 4
  %224 = load i8, i8* %223, align 1
  store i8 %224, i8* %tc, align 1
  %225 = load i8*, i8** %tt, align 4
  store i8 0, i8* %225, align 1
  %226 = load i32, i32* %al, align 4
  %227 = load i8*, i8** %t, align 4
  %call295 = call i32 @strlen(i8* %227)
  %add = add i32 %226, %call295
  %228 = load i8*, i8** %copy, align 4
  %call296 = call i32 @strlen(i8* %228)
  %add297 = add i32 %add, %call296
  store i32 %add297, i32* %nl, align 4
  %229 = load i32, i32* %nl, align 4
  %add298 = add nsw i32 %229, 1
  %call299 = call i8* @zhalloc(i32 %add298)
  store i8* %call299, i8** %tmp, align 4
  store i8* %call299, i8** %ptr1, align 4
  %230 = load i8*, i8** %all, align 4
  %tobool300 = icmp ne i8* %230, null
  br i1 %tobool300, label %if.then301, label %if.end308

if.then301:                                       ; preds = %sw.epilog294
  %231 = load i8*, i8** %all, align 4
  store i8* %231, i8** %ptr2, align 4
  br label %for.cond302

for.cond302:                                      ; preds = %for.body304, %if.then301
  %232 = load i8*, i8** %ptr2, align 4
  %233 = load i8, i8* %232, align 1
  %tobool303 = icmp ne i8 %233, 0
  br i1 %tobool303, label %for.body304, label %for.end307

for.body304:                                      ; preds = %for.cond302
  %234 = load i8*, i8** %ptr2, align 4
  %incdec.ptr305 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr305, i8** %ptr2, align 4
  %235 = load i8, i8* %234, align 1
  %236 = load i8*, i8** %ptr1, align 4
  %incdec.ptr306 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr306, i8** %ptr1, align 4
  store i8 %235, i8* %236, align 1
  br label %for.cond302

for.end307:                                       ; preds = %for.cond302
  br label %if.end308

if.end308:                                        ; preds = %for.end307, %sw.epilog294
  %237 = load i8*, i8** %t, align 4
  store i8* %237, i8** %ptr2, align 4
  br label %for.cond309

for.cond309:                                      ; preds = %for.body311, %if.end308
  %238 = load i8*, i8** %ptr2, align 4
  %239 = load i8, i8* %238, align 1
  %tobool310 = icmp ne i8 %239, 0
  br i1 %tobool310, label %for.body311, label %for.end314

for.body311:                                      ; preds = %for.cond309
  %240 = load i8*, i8** %ptr2, align 4
  %incdec.ptr312 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr312, i8** %ptr2, align 4
  %241 = load i8, i8* %240, align 1
  %242 = load i8*, i8** %ptr1, align 4
  %incdec.ptr313 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr313, i8** %ptr1, align 4
  store i8 %241, i8* %242, align 1
  br label %for.cond309

for.end314:                                       ; preds = %for.cond309
  %243 = load i8, i8* %tc, align 1
  %244 = load i8*, i8** %tt, align 4
  store i8 %243, i8* %244, align 1
  %245 = load i8*, i8** %copy, align 4
  store i8* %245, i8** %ptr2, align 4
  br label %for.cond315

for.cond315:                                      ; preds = %for.body317, %for.end314
  %246 = load i8*, i8** %ptr2, align 4
  %247 = load i8, i8* %246, align 1
  %tobool316 = icmp ne i8 %247, 0
  br i1 %tobool316, label %for.body317, label %for.end320

for.body317:                                      ; preds = %for.cond315
  %248 = load i8*, i8** %ptr2, align 4
  %incdec.ptr318 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr318, i8** %ptr2, align 4
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %ptr1, align 4
  %incdec.ptr319 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %incdec.ptr319, i8** %ptr1, align 4
  store i8 %249, i8* %250, align 1
  br label %for.cond315

for.end320:                                       ; preds = %for.cond315
  %251 = load i8*, i8** %ptr1, align 4
  store i8 0, i8* %251, align 1
  %252 = load i32, i32* %nl, align 4
  store i32 %252, i32* %al, align 4
  %253 = load i8*, i8** %tmp, align 4
  store i8* %253, i8** %all, align 4
  %254 = load i8*, i8** %e, align 4
  store i8* %254, i8** %t, align 4
  br label %for.cond223

for.end321:                                       ; preds = %for.cond223
  %255 = load i8*, i8** %all, align 4
  %tobool322 = icmp ne i8* %255, null
  br i1 %tobool322, label %if.else325, label %if.then323

if.then323:                                       ; preds = %for.end321
  %call324 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %256 = load i8**, i8*** %str.addr, align 4
  store i8* %call324, i8** %256, align 4
  br label %if.end326

if.else325:                                       ; preds = %for.end321
  %257 = load i8*, i8** %all, align 4
  %258 = load i8**, i8*** %str.addr, align 4
  store i8* %257, i8** %258, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.else325, %if.then323
  br label %if.end392

if.else327:                                       ; preds = %while.body220
  %259 = load i8, i8* %c, align 1
  %conv328 = sext i8 %259 to i32
  switch i32 %conv328, label %sw.epilog391 [
    i32 97, label %sw.bb329
    i32 65, label %sw.bb331
    i32 99, label %sw.bb333
    i32 104, label %sw.bb340
    i32 114, label %sw.bb342
    i32 101, label %sw.bb344
    i32 116, label %sw.bb346
    i32 108, label %sw.bb348
    i32 117, label %sw.bb350
    i32 115, label %sw.bb352
    i32 113, label %sw.bb359
    i32 81, label %sw.bb361
    i32 80, label %sw.bb369
  ]

sw.bb329:                                         ; preds = %if.else327
  %260 = load i8**, i8*** %str.addr, align 4
  %call330 = call i32 @chabspath(i8** %260)
  br label %sw.epilog391

sw.bb331:                                         ; preds = %if.else327
  %261 = load i8**, i8*** %str.addr, align 4
  %call332 = call i32 @chrealpath(i8** %261)
  br label %sw.epilog391

sw.bb333:                                         ; preds = %if.else327
  %262 = load i8**, i8*** %str.addr, align 4
  %263 = load i8*, i8** %262, align 4
  %call336 = call i8* @equalsubstr(i8* %263, i32 0, i32 0)
  store i8* %call336, i8** %copy2335, align 4
  %264 = load i8*, i8** %copy2335, align 4
  %tobool337 = icmp ne i8* %264, null
  br i1 %tobool337, label %if.then338, label %if.end339

if.then338:                                       ; preds = %sw.bb333
  %265 = load i8*, i8** %copy2335, align 4
  %266 = load i8**, i8*** %str.addr, align 4
  store i8* %265, i8** %266, align 4
  br label %if.end339

if.end339:                                        ; preds = %if.then338, %sw.bb333
  br label %sw.epilog391

sw.bb340:                                         ; preds = %if.else327
  %267 = load i8**, i8*** %str.addr, align 4
  %call341 = call i32 @remtpath(i8** %267)
  br label %sw.epilog391

sw.bb342:                                         ; preds = %if.else327
  %268 = load i8**, i8*** %str.addr, align 4
  %call343 = call i32 @remtext(i8** %268)
  br label %sw.epilog391

sw.bb344:                                         ; preds = %if.else327
  %269 = load i8**, i8*** %str.addr, align 4
  %call345 = call i32 @rembutext(i8** %269)
  br label %sw.epilog391

sw.bb346:                                         ; preds = %if.else327
  %270 = load i8**, i8*** %str.addr, align 4
  %call347 = call i32 @remlpaths(i8** %270)
  br label %sw.epilog391

sw.bb348:                                         ; preds = %if.else327
  %271 = load i8**, i8*** %str.addr, align 4
  %272 = load i8*, i8** %271, align 4
  %call349 = call i8* @casemodify(i8* %272, i32 2)
  %273 = load i8**, i8*** %str.addr, align 4
  store i8* %call349, i8** %273, align 4
  br label %sw.epilog391

sw.bb350:                                         ; preds = %if.else327
  %274 = load i8**, i8*** %str.addr, align 4
  %275 = load i8*, i8** %274, align 4
  %call351 = call i8* @casemodify(i8* %275, i32 1)
  %276 = load i8**, i8*** %str.addr, align 4
  store i8* %call351, i8** %276, align 4
  br label %sw.epilog391

sw.bb352:                                         ; preds = %if.else327
  %277 = load i8*, i8** @hsubl, align 4
  %tobool353 = icmp ne i8* %277, null
  br i1 %tobool353, label %land.lhs.true354, label %if.end358

land.lhs.true354:                                 ; preds = %sw.bb352
  %278 = load i8*, i8** @hsubr, align 4
  %tobool355 = icmp ne i8* %278, null
  br i1 %tobool355, label %if.then356, label %if.end358

if.then356:                                       ; preds = %land.lhs.true354
  %279 = load i8**, i8*** %str.addr, align 4
  %280 = load i8*, i8** @hsubl, align 4
  %281 = load i8*, i8** @hsubr, align 4
  %282 = load i32, i32* %gbal, align 4
  %call357 = call i32 @subst(i8** %279, i8* %280, i8* %281, i32 %282)
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %land.lhs.true354, %sw.bb352
  br label %sw.epilog391

sw.bb359:                                         ; preds = %if.else327
  %283 = load i8**, i8*** %str.addr, align 4
  %284 = load i8*, i8** %283, align 4
  %call360 = call i8* @quotestring(i8* %284, i32 1)
  %285 = load i8**, i8*** %str.addr, align 4
  store i8* %call360, i8** %285, align 4
  br label %sw.epilog391

sw.bb361:                                         ; preds = %if.else327
  %286 = load i32, i32* @noerrs, align 4
  store i32 %286, i32* %one363, align 4
  %287 = load i32, i32* @errflag, align 4
  store i32 %287, i32* %oef365, align 4
  store i32 1, i32* @noerrs, align 4
  %288 = load i8**, i8*** %str.addr, align 4
  %289 = load i8*, i8** %288, align 4
  %call366 = call i32 @parse_subst_string(i8* %289)
  %290 = load i32, i32* %one363, align 4
  store i32 %290, i32* @noerrs, align 4
  %291 = load i32, i32* %oef365, align 4
  %292 = load i32, i32* @errflag, align 4
  %and367 = and i32 %292, 2
  %or368 = or i32 %291, %and367
  store i32 %or368, i32* @errflag, align 4
  %293 = load i8**, i8*** %str.addr, align 4
  %294 = load i8*, i8** %293, align 4
  call void @remnulargs(i8* %294)
  %295 = load i8**, i8*** %str.addr, align 4
  %296 = load i8*, i8** %295, align 4
  call void @untokenize(i8* %296)
  br label %sw.epilog391

sw.bb369:                                         ; preds = %if.else327
  %297 = load i8**, i8*** %str.addr, align 4
  %298 = load i8*, i8** %297, align 4
  %299 = load i8, i8* %298, align 1
  %conv370 = sext i8 %299 to i32
  %cmp371 = icmp ne i32 %conv370, 47
  br i1 %cmp371, label %if.then373, label %if.end389

if.then373:                                       ; preds = %sw.bb369
  %call376 = call i8* @zgetcwd()
  store i8* %call376, i8** %here375, align 4
  %300 = load i8*, i8** %here375, align 4
  %301 = load i8*, i8** %here375, align 4
  %call377 = call i32 @strlen(i8* %301)
  %sub378 = sub i32 %call377, 1
  %arrayidx379 = getelementptr inbounds i8, i8* %300, i32 %sub378
  %302 = load i8, i8* %arrayidx379, align 1
  %conv380 = sext i8 %302 to i32
  %cmp381 = icmp ne i32 %conv380, 47
  br i1 %cmp381, label %if.then383, label %if.else386

if.then383:                                       ; preds = %if.then373
  %303 = load i8*, i8** %here375, align 4
  %call384 = call i8* @metafy(i8* %303, i32 -1, i32 6)
  %304 = load i8**, i8*** %str.addr, align 4
  %305 = load i8*, i8** %304, align 4
  %call385 = call i8* @zhtricat(i8* %call384, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* %305)
  %306 = load i8**, i8*** %str.addr, align 4
  store i8* %call385, i8** %306, align 4
  br label %if.end388

if.else386:                                       ; preds = %if.then373
  %307 = load i8*, i8** %here375, align 4
  %308 = load i8**, i8*** %str.addr, align 4
  %309 = load i8*, i8** %308, align 4
  %call387 = call i8* @dyncat(i8* %307, i8* %309)
  %310 = load i8**, i8*** %str.addr, align 4
  store i8* %call387, i8** %310, align 4
  br label %if.end388

if.end388:                                        ; preds = %if.else386, %if.then383
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %sw.bb369
  %311 = load i8**, i8*** %str.addr, align 4
  %312 = load i8*, i8** %311, align 4
  %call390 = call i8* @xsymlink(i8* %312, i32 1)
  %313 = load i8**, i8*** %str.addr, align 4
  store i8* %call390, i8** %313, align 4
  br label %sw.epilog391

sw.epilog391:                                     ; preds = %if.else327, %if.end389, %sw.bb361, %sw.bb359, %if.end358, %sw.bb350, %sw.bb348, %sw.bb346, %sw.bb344, %sw.bb342, %sw.bb340, %if.end339, %sw.bb331, %sw.bb329
  br label %if.end392

if.end392:                                        ; preds = %sw.epilog391, %if.end326
  %314 = load i32, i32* %rec, align 4
  %cmp393 = icmp slt i32 %314, 0
  br i1 %cmp393, label %if.then395, label %if.end402

if.then395:                                       ; preds = %if.end392
  %315 = load i8*, i8** %test, align 4
  %316 = load i8**, i8*** %str.addr, align 4
  %317 = load i8*, i8** %316, align 4
  %call396 = call i32 @strcmp(i8* %315, i8* %317)
  %tobool397 = icmp ne i32 %call396, 0
  br i1 %tobool397, label %if.else399, label %if.then398

if.then398:                                       ; preds = %if.then395
  store i32 0, i32* %rec, align 4
  br label %if.end401

if.else399:                                       ; preds = %if.then395
  %318 = load i8**, i8*** %str.addr, align 4
  %319 = load i8*, i8** %318, align 4
  %call400 = call i8* @dupstring(i8* %319)
  store i8* %call400, i8** %test, align 4
  br label %if.end401

if.end401:                                        ; preds = %if.else399, %if.then398
  br label %if.end402

if.end402:                                        ; preds = %if.end401, %if.end392
  br label %while.cond218

while.end:                                        ; preds = %while.cond218
  br label %while.cond

while.end403:                                     ; preds = %if.then73, %if.then126, %sw.default, %if.then211, %while.cond
  ret void
}

declare void @zsfree(i8*) #1

declare i8* @ztrdup(i8*) #1

declare void @chuck(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @get_intarg(i8** %s, i32* %delmatchp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8**, align 4
  %delmatchp.addr = alloca i32*, align 4
  %arglen = alloca i32, align 4
  %t = alloca i8*, align 4
  %p = alloca i8*, align 4
  %sav = alloca i8, align 1
  %ret = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32* %delmatchp, i32** %delmatchp.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @get_strarg(i8* %1, i32* %arglen)
  store i8* %call, i8** %t, align 4
  %2 = load i32*, i32** %delmatchp.addr, align 4
  store i32 0, i32* %2, align 4
  %3 = load i8*, i8** %t, align 4
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %t, align 4
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %sav, align 1
  %7 = load i8*, i8** %t, align 4
  store i8 0, i8* %7, align 1
  %8 = load i8**, i8*** %s.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %10 = load i32, i32* %arglen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 %10
  %call1 = call i8* @dupstring(i8* %add.ptr)
  store i8* %call1, i8** %p, align 4
  %11 = load i8*, i8** %t, align 4
  %12 = load i32, i32* %arglen, align 4
  %add.ptr2 = getelementptr inbounds i8, i8* %11, i32 %12
  %13 = load i8**, i8*** %s.addr, align 4
  store i8* %add.ptr2, i8** %13, align 4
  %14 = load i8, i8* %sav, align 1
  %15 = load i8*, i8** %t, align 4
  store i8 %14, i8* %15, align 1
  %call3 = call i32 @parsestr(i8** %p)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  call void @singsub(i8** %p)
  %16 = load i32, i32* @errflag, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %17 = load i8*, i8** %p, align 4
  %call10 = call i32 @mathevali(i8* %17)
  store i32 %call10, i32* %ret, align 4
  %18 = load i32, i32* @errflag, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %19 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end13
  %20 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %20
  store i32 %sub, i32* %ret, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end13
  %21 = load i32, i32* %arglen, align 4
  %22 = load i32*, i32** %delmatchp.addr, align 4
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then12, %if.then8, %if.then5, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare i8* @findword(i8**, i8*) #1

declare i32 @chabspath(i8**) #1

declare i32 @chrealpath(i8**) #1

declare i32 @remtpath(i8**) #1

declare i32 @remtext(i8**) #1

declare i32 @rembutext(i8**) #1

declare i32 @remlpaths(i8**) #1

declare i8* @casemodify(i8*, i32) #1

declare i32 @subst(i8**, i8*, i8*, i32) #1

declare i8* @quotestring(i8*, i32) #1

declare i32 @parse_subst_string(i8*) #1

declare i8* @zgetcwd() #1

declare i32 @strlen(i8*) #1

declare i8* @zhtricat(i8*, i8*, i8*) #1

declare i8* @metafy(i8*, i32, i32) #1

declare i8* @xsymlink(i8*, i32) #1

declare i8* @zhalloc(i32) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare i8* @getproc(i8*, i8**) #1

declare i8* @getoutputfile(i8*, i8**) #1

declare i8* @hcalloc(i32) #1

declare i32 @skipparens(i8 signext, i8 signext, i8**) #1

; Function Attrs: noinline nounwind
define internal i8* @arithsubst(i8* %a, i8** %bptr, i8* %rest) #0 {
entry:
  %a.addr = alloca i8*, align 4
  %bptr.addr = alloca i8**, align 4
  %rest.addr = alloca i8*, align 4
  %s = alloca i8*, align 4
  %t = alloca i8*, align 4
  %buf = alloca [36 x i8], align 1
  %b = alloca i8*, align 4
  %v = alloca %struct.mnumber, align 8
  %tmp = alloca %struct.mnumber, align 8
  store i8* %a, i8** %a.addr, align 4
  store i8** %bptr, i8*** %bptr.addr, align 4
  store i8* %rest, i8** %rest.addr, align 4
  %0 = load i8**, i8*** %bptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %s, align 4
  call void @singsub(i8** %a.addr)
  %2 = load i8*, i8** %a.addr, align 4
  call void @matheval(%struct.mnumber* sret %tmp, i8* %2)
  %3 = bitcast %struct.mnumber* %v to i8*
  %4 = bitcast %struct.mnumber* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 16, i32 8, i1 false)
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 1
  %5 = load i32, i32* %type, align 8
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* @outputradix, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %d = bitcast %union.anon* %u to double*
  %7 = load double, double* %d, align 8
  %8 = load i32, i32* @outputunderscore, align 4
  %call = call i8* @convfloat_underscore(double %7, i32 %8)
  store i8* %call, i8** %b, align 4
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %entry
  %type2 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 1
  %9 = load i32, i32* %type2, align 8
  %and3 = and i32 %9, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %u6 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %d7 = bitcast %union.anon* %u6 to double*
  %10 = load double, double* %d7, align 8
  %conv = fptosi double %10 to i32
  %u8 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %l = bitcast %union.anon* %u8 to i32*
  store i32 %conv, i32* %l, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %buf, i32 0, i32 0
  %u9 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %v, i32 0, i32 0
  %l10 = bitcast %union.anon* %u9 to i32*
  %11 = load i32, i32* %l10, align 8
  %12 = load i32, i32* @outputradix, align 4
  %13 = load i32, i32* @outputunderscore, align 4
  %call11 = call i8* @convbase_underscore(i8* %arraydecay, i32 %11, i32 %12, i32 %13)
  store i8* %call11, i8** %b, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %14 = load i8**, i8*** %bptr.addr, align 4
  %15 = load i8*, i8** %14, align 4
  %call13 = call i32 @strlen(i8* %15)
  %16 = load i8*, i8** %b, align 4
  %call14 = call i32 @strlen(i8* %16)
  %add = add i32 %call13, %call14
  %17 = load i8*, i8** %rest.addr, align 4
  %call15 = call i32 @strlen(i8* %17)
  %add16 = add i32 %add, %call15
  %add17 = add i32 %add16, 1
  %call18 = call i8* @hcalloc(i32 %add17)
  %18 = load i8**, i8*** %bptr.addr, align 4
  store i8* %call18, i8** %18, align 4
  store i8* %call18, i8** %t, align 4
  %19 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end12
  %20 = load i8*, i8** %s, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr19, i8** %s, align 4
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %t, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr20, i8** %t, align 4
  store i8 %21, i8* %incdec.ptr20, align 1
  %tobool21 = icmp ne i8 %21, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i8*, i8** %t, align 4
  %incdec.ptr22 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr22, i8** %t, align 4
  br label %while.cond23

while.cond23:                                     ; preds = %while.body27, %while.end
  %24 = load i8*, i8** %b, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr24, i8** %b, align 4
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %t, align 4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr25, i8** %t, align 4
  store i8 %25, i8* %incdec.ptr25, align 1
  %tobool26 = icmp ne i8 %25, 0
  br i1 %tobool26, label %while.body27, label %while.end28

while.body27:                                     ; preds = %while.cond23
  br label %while.cond23

while.end28:                                      ; preds = %while.cond23
  %27 = load i8*, i8** %t, align 4
  %28 = load i8*, i8** %rest.addr, align 4
  %call29 = call i8* @strcat(i8* %27, i8* %28)
  %29 = load i8*, i8** %t, align 4
  ret i8* %29
}

; Function Attrs: noinline nounwind
define internal %struct.linknode* @paramsubst(%union.linkroot* %l, %struct.linknode* %n, i8** %str, i32 %qt, i32 %pf_flags, i32* %ret_flags) #0 {
entry:
  %retval = alloca %struct.linknode*, align 4
  %l.addr = alloca %union.linkroot*, align 4
  %n.addr = alloca %struct.linknode*, align 4
  %str.addr = alloca i8**, align 4
  %qt.addr = alloca i32, align 4
  %pf_flags.addr = alloca i32, align 4
  %ret_flags.addr = alloca i32*, align 4
  %aptr = alloca i8*, align 4
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  %s = alloca i8*, align 4
  %fstr = alloca i8*, align 4
  %idbeg = alloca i8*, align 4
  %idend = alloca i8*, align 4
  %ostr = alloca i8*, align 4
  %colf = alloca i32, align 4
  %isarr = alloca i32, align 4
  %plan9 = alloca i32, align 4
  %globsubst = alloca i32, align 4
  %evalchar = alloca i32, align 4
  %getlen = alloca i32, align 4
  %whichlen = alloca i32, align 4
  %chkset = alloca i32, align 4
  %vunset = alloca i32, align 4
  %wantt = alloca i32, align 4
  %spbreak = alloca i32, align 4
  %val = alloca i8*, align 4
  %aval = alloca i8**, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %flags = alloca i32, align 4
  %flnum = alloca i32, align 4
  %sortit = alloca i32, align 4
  %indord = alloca i32, align 4
  %unique = alloca i32, align 4
  %casmod = alloca i32, align 4
  %quotemod = alloca i32, align 4
  %quotetype = alloca i32, align 4
  %quoteerr = alloca i32, align 4
  %mods = alloca i32, align 4
  %shsplit = alloca i32, align 4
  %ssub = alloca i32, align 4
  %sep = alloca i8*, align 4
  %spsep = alloca i8*, align 4
  %premul = alloca i8*, align 4
  %postmul = alloca i8*, align 4
  %preone = alloca i8*, align 4
  %postone = alloca i8*, align 4
  %replstr = alloca i8*, align 4
  %prenum = alloca i32, align 4
  %postnum = alloca i32, align 4
  %multi_width = alloca i32, align 4
  %copied = alloca i32, align 4
  %arrasg = alloca i32, align 4
  %eval = alloca i32, align 4
  %aspar = alloca i32, align 4
  %presc = alloca i32, align 4
  %getkeys = alloca i32, align 4
  %nojoin = alloca i32, align 4
  %inbrace = alloca i8, align 1
  %hkeys = alloca i8, align 1
  %hvals = alloca i8, align 1
  %subexp = alloca i32, align 4
  %horrible_offset_hack = alloca i32, align 4
  %ms_flags = alloca i32, align 4
  %fetch_needed = alloca i32, align 4
  %t = alloca i8*, align 4
  %sav = alloca i8, align 1
  %tt = alloca i32, align 4
  %num = alloca i32, align 4
  %escapes = alloca i32, align 4
  %tok_arg = alloca i32, align 4
  %arglen = alloca i32, align 4
  %dellen = alloca i32, align 4
  %del0 = alloca i8*, align 4
  %sav690 = alloca i32, align 4
  %quoted = alloca i32, align 4
  %outtok = alloca i32, align 4
  %ov = alloca i8*, align 4
  %scanflags = alloca i32, align 4
  %f = alloca i32, align 4
  %pm954 = alloca %struct.param*, align 4
  %os = alloca i8*, align 4
  %tmplen = alloca i32, align 4
  %bct = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %split_flags = alloca i32, align 4
  %sav1458 = alloca i8, align 1
  %l1459 = alloca i32, align 4
  %split_flags1460 = alloca i32, align 4
  %arr1478 = alloca [2 x i8*], align 4
  %t1479 = alloca i8**, align 4
  %a1480 = alloca i8**, align 4
  %p = alloca i8**, align 4
  %pm1536 = alloca %struct.param*, align 4
  %one = alloca i32, align 4
  %oef = alloca i32, align 4
  %haserr = alloca i32, align 4
  %ap = alloca i8**, align 4
  %zip = alloca i8**, align 4
  %shortest = alloca i32, align 4
  %sval = alloca i8*, align 4
  %out = alloca i8**, align 4
  %alen = alloca i32, align 4
  %ziplen = alloca i32, align 4
  %outlen = alloca i32, align 4
  %i = alloca i32, align 4
  %intersect = alloca i32, align 4
  %compare = alloca i8**, align 4
  %ap1793 = alloca i8**, align 4
  %apsrc = alloca i8**, align 4
  %ht = alloca %struct.hashtable*, align 4
  %present = alloca i32, align 4
  %check_offset2 = alloca i8*, align 4
  %check_offset = alloca i8*, align 4
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  %length_set = alloca i32, align 4
  %offset_hack_argzero = alloca i32, align 4
  %alen1950 = alloca i32, align 4
  %count = alloca i32, align 4
  %srcptr = alloca i8**, align 4
  %dstptr = alloca i8**, align 4
  %newarr = alloca i8**, align 4
  %sptr = alloca i8*, align 4
  %eptr = alloca i8*, align 4
  %given_offset = alloca i32, align 4
  %ss = alloca i8*, align 4
  %ap2111 = alloca i8**, align 4
  %pp = alloca i8**, align 4
  %t2125 = alloca i8*, align 4
  %one2163 = alloca i32, align 4
  %oef2164 = alloca i32, align 4
  %haserr2165 = alloca i32, align 4
  %aval2 = alloca i8**, align 4
  %avptr = alloca i8**, align 4
  %av2ptr = alloca i8**, align 4
  %len = alloca i32, align 4
  %buf = alloca [14 x i8], align 1
  %ctr = alloca i8**, align 4
  %sl = alloca i32, align 4
  %force_split = alloca i32, align 4
  %ap2391 = alloca i8**, align 4
  %ap2 = alloca i8**, align 4
  %len2411 = alloca i32, align 4
  %ap2414 = alloca i8**, align 4
  %ap22415 = alloca i8**, align 4
  %ops = alloca i32, align 4
  %opb = alloca i32, align 4
  %opp = alloca i32, align 4
  %ap2446 = alloca i8**, align 4
  %tmps = alloca i8*, align 4
  %tmps2460 = alloca i8*, align 4
  %pre = alloca i32, align 4
  %post = alloca i32, align 4
  %ap2484 = alloca i8**, align 4
  %sl2506 = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %one2556 = alloca i32, align 4
  %oef2558 = alloca i32, align 4
  %haserr2560 = alloca i32, align 4
  %sl2601 = alloca i32, align 4
  %tmp2603 = alloca i8*, align 4
  %one2637 = alloca i32, align 4
  %oef2639 = alloca i32, align 4
  %haserr2641 = alloca i32, align 4
  %ap2665 = alloca i8**, align 4
  %list2706 = alloca %union.linkroot*, align 4
  %ap2710 = alloca i8**, align 4
  %x = alloca i8*, align 4
  %y = alloca i8*, align 4
  %xlen = alloca i32, align 4
  %i2791 = alloca i32, align 4
  %on = alloca %struct.linknode*, align 4
  %vallen = alloca i32, align 4
  %copy = alloca i8*, align 4
  %end2874 = alloca i8**, align 4
  %start2879 = alloca i8**, align 4
  %tn = alloca %struct.linknode*, align 4
  %tl = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  %xlen3118 = alloca i32, align 4
  %x3120 = alloca i8*, align 4
  %y3122 = alloca i8*, align 4
  store %union.linkroot* %l, %union.linkroot** %l.addr, align 4
  store %struct.linknode* %n, %struct.linknode** %n.addr, align 4
  store i8** %str, i8*** %str.addr, align 4
  store i32 %qt, i32* %qt.addr, align 4
  store i32 %pf_flags, i32* %pf_flags.addr, align 4
  store i32* %ret_flags, i32** %ret_flags.addr, align 4
  %0 = load i8**, i8*** %str.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %aptr, align 4
  %2 = load i8*, i8** %aptr, align 4
  store i8* %2, i8** %s, align 4
  %3 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 2
  %4 = load i8*, i8** %dat, align 4
  store i8* %4, i8** %ostr, align 4
  store i32 0, i32* %isarr, align 4
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 150), align 1
  %conv = sext i8 %5 to i32
  store i32 %conv, i32* %plan9, align 4
  %6 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 67), align 1
  %conv1 = sext i8 %6 to i32
  store i32 %conv1, i32* %globsubst, align 4
  store i32 0, i32* %evalchar, align 4
  store i32 0, i32* %getlen, align 4
  store i32 0, i32* %whichlen, align 4
  store i32 0, i32* %chkset, align 4
  store i32 0, i32* %vunset, align 4
  store i32 0, i32* %wantt, align 4
  %7 = load i32, i32* %pf_flags.addr, align 4
  %and = and i32 %7, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %pf_flags.addr, align 4
  %and2 = and i32 %8, 4
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %qt.addr, align 4
  %tobool4 = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %spbreak, align 4
  store i8* null, i8** %val, align 4
  store i8** null, i8*** %aval, align 4
  store %struct.value* null, %struct.value** %v, align 4
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %flnum, align 4
  store i32 0, i32* %sortit, align 4
  store i32 0, i32* %indord, align 4
  store i32 0, i32* %unique, align 4
  store i32 0, i32* %casmod, align 4
  store i32 0, i32* %quotemod, align 4
  store i32 0, i32* %quotetype, align 4
  store i32 0, i32* %quoteerr, align 4
  store i32 0, i32* %mods, align 4
  store i32 0, i32* %shsplit, align 4
  %11 = load i32, i32* %pf_flags.addr, align 4
  %and5 = and i32 %11, 4
  store i32 %and5, i32* %ssub, align 4
  store i8* null, i8** %sep, align 4
  store i8* null, i8** %spsep, align 4
  store i8* null, i8** %premul, align 4
  store i8* null, i8** %postmul, align 4
  store i8* null, i8** %preone, align 4
  store i8* null, i8** %postone, align 4
  store i8* null, i8** %replstr, align 4
  store i32 0, i32* %prenum, align 4
  store i32 0, i32* %postnum, align 4
  store i32 0, i32* %multi_width, align 4
  store i32 0, i32* %copied, align 4
  store i32 0, i32* %arrasg, align 4
  store i32 0, i32* %eval, align 4
  store i32 0, i32* %aspar, align 4
  store i32 0, i32* %presc, align 4
  store i32 -1, i32* %getkeys, align 4
  %12 = load i32, i32* %pf_flags.addr, align 4
  %and6 = and i32 %12, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %13 = load i8*, i8** @ifs, align 4
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %land.lhs.true9, label %land.rhs12

land.lhs.true9:                                   ; preds = %cond.true
  %14 = load i8*, i8** @ifs, align 4
  %15 = load i8, i8* %14, align 1
  %conv10 = sext i8 %15 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %land.end15, label %land.rhs12

land.rhs12:                                       ; preds = %land.lhs.true9, %cond.true
  %16 = load i32, i32* %qt.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  %lnot14 = xor i1 %tobool13, true
  br label %land.end15

land.end15:                                       ; preds = %land.rhs12, %land.lhs.true9
  %17 = phi i1 [ false, %land.lhs.true9 ], [ %lnot14, %land.rhs12 ]
  %land.ext16 = zext i1 %17 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.end15
  %cond = phi i32 [ %land.ext16, %land.end15 ], [ 0, %cond.false ]
  store i32 %cond, i32* %nojoin, align 4
  store i8 0, i8* %inbrace, align 1
  store i8 0, i8* %hkeys, align 1
  store i8 0, i8* %hvals, align 1
  store i32 0, i32* %horrible_offset_hack, align 4
  store i32 0, i32* %ms_flags, align 4
  %18 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %s, align 4
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %c, align 1
  %21 = load i8*, i8** %s, align 4
  %call = call i8* @itype_end(i8* %21, i32 128, i32 1)
  %22 = load i8*, i8** %s, align 4
  %cmp = icmp eq i8* %call, %22
  br i1 %cmp, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %cond.end
  %23 = load i8*, i8** %s, align 4
  %24 = load i8, i8* %23, align 1
  %conv19 = sext i8 %24 to i32
  %cmp20 = icmp ne i32 %conv19, 35
  br i1 %cmp20, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %25 = load i8, i8* %c, align 1
  %conv23 = sext i8 %25 to i32
  %cmp24 = icmp ne i32 %conv23, -124
  br i1 %cmp24, label %land.lhs.true26, label %if.end

land.lhs.true26:                                  ; preds = %land.lhs.true22
  %26 = load i8, i8* %c, align 1
  %conv27 = sext i8 %26 to i32
  %cmp28 = icmp eq i32 %conv27, 45
  br i1 %cmp28, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true26
  %27 = load i8, i8* %c, align 1
  %conv30 = sext i8 %27 to i32
  %cmp31 = icmp eq i32 %conv30, -101
  br i1 %cmp31, label %if.end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %lor.lhs.false
  %28 = load i8, i8* %c, align 1
  %conv34 = sext i8 %28 to i32
  %cmp35 = icmp ne i32 %conv34, 33
  br i1 %cmp35, label %land.lhs.true37, label %if.end

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %29 = load i8, i8* %c, align 1
  %conv38 = sext i8 %29 to i32
  %cmp39 = icmp ne i32 %conv38, 36
  br i1 %cmp39, label %land.lhs.true41, label %if.end

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %30 = load i8, i8* %c, align 1
  %conv42 = sext i8 %30 to i32
  %cmp43 = icmp ne i32 %conv42, -123
  br i1 %cmp43, label %land.lhs.true45, label %if.end

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %31 = load i8, i8* %c, align 1
  %conv46 = sext i8 %31 to i32
  %cmp47 = icmp ne i32 %conv46, -116
  br i1 %cmp47, label %land.lhs.true49, label %if.end

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %32 = load i8, i8* %c, align 1
  %conv50 = sext i8 %32 to i32
  %cmp51 = icmp ne i32 %conv50, 63
  br i1 %cmp51, label %land.lhs.true53, label %if.end

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %33 = load i8, i8* %c, align 1
  %conv54 = sext i8 %33 to i32
  %cmp55 = icmp ne i32 %conv54, -105
  br i1 %cmp55, label %land.lhs.true57, label %if.end

land.lhs.true57:                                  ; preds = %land.lhs.true53
  %34 = load i8, i8* %c, align 1
  %conv58 = sext i8 %34 to i32
  %cmp59 = icmp ne i32 %conv58, 42
  br i1 %cmp59, label %land.lhs.true61, label %if.end

land.lhs.true61:                                  ; preds = %land.lhs.true57
  %35 = load i8, i8* %c, align 1
  %conv62 = sext i8 %35 to i32
  %cmp63 = icmp ne i32 %conv62, -121
  br i1 %cmp63, label %land.lhs.true65, label %if.end

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %36 = load i8, i8* %c, align 1
  %conv66 = sext i8 %36 to i32
  %cmp67 = icmp ne i32 %conv66, 64
  br i1 %cmp67, label %land.lhs.true69, label %if.end

land.lhs.true69:                                  ; preds = %land.lhs.true65
  %37 = load i8, i8* %c, align 1
  %conv70 = sext i8 %37 to i32
  %cmp71 = icmp ne i32 %conv70, 123
  br i1 %cmp71, label %land.lhs.true73, label %if.end

land.lhs.true73:                                  ; preds = %land.lhs.true69
  %38 = load i8, i8* %c, align 1
  %conv74 = sext i8 %38 to i32
  %cmp75 = icmp ne i32 %conv74, -113
  br i1 %cmp75, label %land.lhs.true77, label %if.end

land.lhs.true77:                                  ; preds = %land.lhs.true73
  %39 = load i8, i8* %c, align 1
  %conv78 = sext i8 %39 to i32
  %cmp79 = icmp ne i32 %conv78, 61
  br i1 %cmp79, label %land.lhs.true81, label %if.end

land.lhs.true81:                                  ; preds = %land.lhs.true77
  %40 = load i8, i8* %c, align 1
  %conv82 = sext i8 %40 to i32
  %cmp83 = icmp ne i32 %conv82, -115
  br i1 %cmp83, label %land.lhs.true85, label %if.end

land.lhs.true85:                                  ; preds = %land.lhs.true81
  %41 = load i8, i8* %c, align 1
  %conv86 = sext i8 %41 to i32
  %cmp87 = icmp ne i32 %conv86, -122
  br i1 %cmp87, label %land.lhs.true89, label %if.end

land.lhs.true89:                                  ; preds = %land.lhs.true85
  %42 = load i8, i8* %c, align 1
  %conv90 = sext i8 %42 to i32
  %cmp91 = icmp ne i32 %conv90, 94
  br i1 %cmp91, label %land.lhs.true93, label %if.end

land.lhs.true93:                                  ; preds = %land.lhs.true89
  %43 = load i8, i8* %c, align 1
  %conv94 = sext i8 %43 to i32
  %cmp95 = icmp ne i32 %conv94, 126
  br i1 %cmp95, label %land.lhs.true97, label %if.end

land.lhs.true97:                                  ; preds = %land.lhs.true93
  %44 = load i8, i8* %c, align 1
  %conv98 = sext i8 %44 to i32
  %cmp99 = icmp ne i32 %conv98, -104
  br i1 %cmp99, label %land.lhs.true101, label %if.end

land.lhs.true101:                                 ; preds = %land.lhs.true97
  %45 = load i8, i8* %c, align 1
  %conv102 = sext i8 %45 to i32
  %cmp103 = icmp ne i32 %conv102, 43
  br i1 %cmp103, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true101
  %46 = load i8*, i8** %s, align 4
  %arrayidx = getelementptr inbounds i8, i8* %46, i32 -1
  store i8 36, i8* %arrayidx, align 1
  %47 = load i8*, i8** %s, align 4
  %48 = load i8**, i8*** %str.addr, align 4
  store i8* %47, i8** %48, align 4
  %49 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  store %struct.linknode* %49, %struct.linknode** %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true101, %land.lhs.true97, %land.lhs.true93, %land.lhs.true89, %land.lhs.true85, %land.lhs.true81, %land.lhs.true77, %land.lhs.true73, %land.lhs.true69, %land.lhs.true65, %land.lhs.true61, %land.lhs.true57, %land.lhs.true53, %land.lhs.true49, %land.lhs.true45, %land.lhs.true41, %land.lhs.true37, %land.lhs.true33, %lor.lhs.false, %land.lhs.true26, %land.lhs.true22, %land.lhs.true18, %cond.end
  %50 = load i8, i8* %c, align 1
  %conv105 = sext i8 %50 to i32
  %cmp106 = icmp eq i32 %conv105, -113
  br i1 %cmp106, label %if.then108, label %if.end392

if.then108:                                       ; preds = %if.end
  store i8 1, i8* %inbrace, align 1
  %51 = load i8*, i8** %s, align 4
  %incdec.ptr109 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr109, i8** %s, align 4
  %52 = load i8*, i8** %s, align 4
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %c, align 1
  %conv110 = sext i8 %53 to i32
  %cmp111 = icmp eq i32 %conv110, 33
  br i1 %cmp111, label %land.lhs.true113, label %if.else

land.lhs.true113:                                 ; preds = %if.then108
  %54 = load i8*, i8** %s, align 4
  %arrayidx114 = getelementptr inbounds i8, i8* %54, i32 1
  %55 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %55 to i32
  %cmp116 = icmp ne i32 %conv115, -112
  br i1 %cmp116, label %land.lhs.true118, label %if.else

land.lhs.true118:                                 ; preds = %land.lhs.true113
  %56 = load i32, i32* @emulation, align 4
  %and119 = and i32 %56, 4
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then121, label %if.else

if.then121:                                       ; preds = %land.lhs.true118
  store i8 2, i8* %hkeys, align 1
  %57 = load i8*, i8** %s, align 4
  %incdec.ptr122 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr122, i8** %s, align 4
  br label %if.end391

if.else:                                          ; preds = %land.lhs.true118, %land.lhs.true113, %if.then108
  %58 = load i8, i8* %c, align 1
  %conv123 = sext i8 %58 to i32
  %cmp124 = icmp eq i32 %conv123, 40
  br i1 %cmp124, label %if.then130, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.else
  %59 = load i8, i8* %c, align 1
  %conv127 = sext i8 %59 to i32
  %cmp128 = icmp eq i32 %conv127, -120
  br i1 %cmp128, label %if.then130, label %if.end390

if.then130:                                       ; preds = %lor.lhs.false126, %if.else
  store i32 0, i32* %tt, align 4
  store i32 0, i32* %escapes, align 4
  store i32 0, i32* %tok_arg, align 4
  %60 = load i8*, i8** %s, align 4
  %incdec.ptr131 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr131, i8** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then130
  %61 = load i8*, i8** %s, align 4
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %c, align 1
  %conv132 = sext i8 %62 to i32
  %cmp133 = icmp ne i32 %conv132, 41
  br i1 %cmp133, label %land.rhs135, label %land.end139

land.rhs135:                                      ; preds = %for.cond
  %63 = load i8, i8* %c, align 1
  %conv136 = sext i8 %63 to i32
  %cmp137 = icmp ne i32 %conv136, -118
  br label %land.end139

land.end139:                                      ; preds = %land.rhs135, %for.cond
  %64 = phi i1 [ false, %for.cond ], [ %cmp137, %land.rhs135 ]
  br i1 %64, label %for.body, label %for.end

for.body:                                         ; preds = %land.end139
  %65 = load i8, i8* %c, align 1
  %conv141 = sext i8 %65 to i32
  switch i32 %conv141, label %sw.default386 [
    i32 41, label %sw.bb
    i32 -118, label %sw.bb
    i32 126, label %sw.bb142
    i32 -104, label %sw.bb142
    i32 65, label %sw.bb145
    i32 64, label %sw.bb146
    i32 77, label %sw.bb147
    i32 82, label %sw.bb148
    i32 66, label %sw.bb150
    i32 69, label %sw.bb152
    i32 78, label %sw.bb154
    i32 83, label %sw.bb156
    i32 73, label %sw.bb158
    i32 76, label %sw.bb166
    i32 85, label %sw.bb167
    i32 67, label %sw.bb168
    i32 111, label %sw.bb169
    i32 79, label %sw.bb174
    i32 105, label %sw.bb176
    i32 110, label %sw.bb178
    i32 97, label %sw.bb180
    i32 68, label %sw.bb182
    i32 86, label %sw.bb184
    i32 113, label %sw.bb186
    i32 98, label %sw.bb225
    i32 81, label %sw.bb232
    i32 88, label %sw.bb233
    i32 101, label %sw.bb234
    i32 80, label %sw.bb235
    i32 99, label %sw.bb236
    i32 119, label %sw.bb237
    i32 87, label %sw.bb238
    i32 102, label %sw.bb239
    i32 70, label %sw.bb240
    i32 48, label %sw.bb241
    i32 115, label %sw.bb246
    i32 106, label %sw.bb247
    i32 108, label %sw.bb263
    i32 114, label %sw.bb264
    i32 109, label %sw.bb314
    i32 112, label %sw.bb316
    i32 107, label %sw.bb317
    i32 118, label %sw.bb318
    i32 116, label %sw.bb319
    i32 37, label %sw.bb320
    i32 103, label %sw.bb322
    i32 122, label %sw.bb344
    i32 90, label %sw.bb345
    i32 117, label %sw.bb368
    i32 35, label %sw.bb369
    i32 -124, label %sw.bb369
    i32 95, label %sw.bb370
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  br label %sw.epilog387

sw.bb142:                                         ; preds = %for.body, %for.body
  %66 = load i32, i32* %tok_arg, align 4
  %tobool143 = icmp ne i32 %66, 0
  %lnot144 = xor i1 %tobool143, true
  %lnot.ext = zext i1 %lnot144 to i32
  store i32 %lnot.ext, i32* %tok_arg, align 4
  br label %sw.epilog387

sw.bb145:                                         ; preds = %for.body
  %67 = load i32, i32* %arrasg, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %arrasg, align 4
  br label %sw.epilog387

sw.bb146:                                         ; preds = %for.body
  store i32 2, i32* %nojoin, align 4
  br label %sw.epilog387

sw.bb147:                                         ; preds = %for.body
  %68 = load i32, i32* %flags, align 4
  %or = or i32 %68, 8
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog387

sw.bb148:                                         ; preds = %for.body
  %69 = load i32, i32* %flags, align 4
  %or149 = or i32 %69, 16
  store i32 %or149, i32* %flags, align 4
  br label %sw.epilog387

sw.bb150:                                         ; preds = %for.body
  %70 = load i32, i32* %flags, align 4
  %or151 = or i32 %70, 32
  store i32 %or151, i32* %flags, align 4
  br label %sw.epilog387

sw.bb152:                                         ; preds = %for.body
  %71 = load i32, i32* %flags, align 4
  %or153 = or i32 %71, 64
  store i32 %or153, i32* %flags, align 4
  br label %sw.epilog387

sw.bb154:                                         ; preds = %for.body
  %72 = load i32, i32* %flags, align 4
  %or155 = or i32 %72, 128
  store i32 %or155, i32* %flags, align 4
  br label %sw.epilog387

sw.bb156:                                         ; preds = %for.body
  %73 = load i32, i32* %flags, align 4
  %or157 = or i32 %73, 4
  store i32 %or157, i32* %flags, align 4
  br label %sw.epilog387

sw.bb158:                                         ; preds = %for.body
  %74 = load i8*, i8** %s, align 4
  %incdec.ptr159 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr159, i8** %s, align 4
  %call160 = call i32 @get_intarg(i8** %s, i32* %dellen)
  store i32 %call160, i32* %flnum, align 4
  %75 = load i32, i32* %flnum, align 4
  %cmp161 = icmp slt i32 %75, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %sw.bb158
  br label %flagerr

if.end164:                                        ; preds = %sw.bb158
  %76 = load i8*, i8** %s, align 4
  %incdec.ptr165 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %incdec.ptr165, i8** %s, align 4
  br label %sw.epilog387

sw.bb166:                                         ; preds = %for.body
  store i32 2, i32* %casmod, align 4
  br label %sw.epilog387

sw.bb167:                                         ; preds = %for.body
  store i32 1, i32* %casmod, align 4
  br label %sw.epilog387

sw.bb168:                                         ; preds = %for.body
  store i32 3, i32* %casmod, align 4
  br label %sw.epilog387

sw.bb169:                                         ; preds = %for.body
  %77 = load i32, i32* %sortit, align 4
  %tobool170 = icmp ne i32 %77, 0
  br i1 %tobool170, label %if.end173, label %if.then171

if.then171:                                       ; preds = %sw.bb169
  %78 = load i32, i32* %sortit, align 4
  %or172 = or i32 %78, 16
  store i32 %or172, i32* %sortit, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %sw.bb169
  br label %sw.epilog387

sw.bb174:                                         ; preds = %for.body
  %79 = load i32, i32* %sortit, align 4
  %or175 = or i32 %79, 4
  store i32 %or175, i32* %sortit, align 4
  br label %sw.epilog387

sw.bb176:                                         ; preds = %for.body
  %80 = load i32, i32* %sortit, align 4
  %or177 = or i32 %80, 1
  store i32 %or177, i32* %sortit, align 4
  br label %sw.epilog387

sw.bb178:                                         ; preds = %for.body
  %81 = load i32, i32* %sortit, align 4
  %or179 = or i32 %81, 2
  store i32 %or179, i32* %sortit, align 4
  br label %sw.epilog387

sw.bb180:                                         ; preds = %for.body
  %82 = load i32, i32* %sortit, align 4
  %or181 = or i32 %82, 16
  store i32 %or181, i32* %sortit, align 4
  store i32 1, i32* %indord, align 4
  br label %sw.epilog387

sw.bb182:                                         ; preds = %for.body
  %83 = load i32, i32* %mods, align 4
  %or183 = or i32 %83, 1
  store i32 %or183, i32* %mods, align 4
  br label %sw.epilog387

sw.bb184:                                         ; preds = %for.body
  %84 = load i32, i32* %mods, align 4
  %or185 = or i32 %84, 2
  store i32 %or185, i32* %mods, align 4
  br label %sw.epilog387

sw.bb186:                                         ; preds = %for.body
  %85 = load i32, i32* %quotetype, align 4
  %cmp187 = icmp eq i32 %85, 4
  br i1 %cmp187, label %if.then192, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %sw.bb186
  %86 = load i32, i32* %quotetype, align 4
  %cmp190 = icmp eq i32 %86, 7
  br i1 %cmp190, label %if.then192, label %if.end193

if.then192:                                       ; preds = %lor.lhs.false189, %sw.bb186
  br label %flagerr

if.end193:                                        ; preds = %lor.lhs.false189
  %87 = load i8*, i8** %s, align 4
  %arrayidx194 = getelementptr inbounds i8, i8* %87, i32 1
  %88 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %88 to i32
  %cmp196 = icmp eq i32 %conv195, 45
  br i1 %cmp196, label %if.then208, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %if.end193
  %89 = load i8*, i8** %s, align 4
  %arrayidx199 = getelementptr inbounds i8, i8* %89, i32 1
  %90 = load i8, i8* %arrayidx199, align 1
  %conv200 = sext i8 %90 to i32
  %cmp201 = icmp eq i32 %conv200, -101
  br i1 %cmp201, label %if.then208, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %lor.lhs.false198
  %91 = load i8*, i8** %s, align 4
  %arrayidx204 = getelementptr inbounds i8, i8* %91, i32 1
  %92 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %92 to i32
  %cmp206 = icmp eq i32 %conv205, 43
  br i1 %cmp206, label %if.then208, label %if.else217

if.then208:                                       ; preds = %lor.lhs.false203, %lor.lhs.false198, %if.end193
  %93 = load i32, i32* %quotemod, align 4
  %tobool209 = icmp ne i32 %93, 0
  br i1 %tobool209, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.then208
  br label %flagerr

if.end211:                                        ; preds = %if.then208
  %94 = load i8*, i8** %s, align 4
  %incdec.ptr212 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr212, i8** %s, align 4
  store i32 1, i32* %quotemod, align 4
  %95 = load i8*, i8** %s, align 4
  %96 = load i8, i8* %95, align 1
  %conv213 = sext i8 %96 to i32
  %cmp214 = icmp eq i32 %conv213, 43
  %cond216 = select i1 %cmp214, i32 9, i32 6
  store i32 %cond216, i32* %quotetype, align 4
  br label %if.end224

if.else217:                                       ; preds = %lor.lhs.false203
  %97 = load i32, i32* %quotetype, align 4
  %cmp218 = icmp eq i32 %97, 6
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.else217
  br label %flagerr

if.end221:                                        ; preds = %if.else217
  %98 = load i32, i32* %quotemod, align 4
  %inc222 = add nsw i32 %98, 1
  store i32 %inc222, i32* %quotemod, align 4
  %99 = load i32, i32* %quotetype, align 4
  %inc223 = add nsw i32 %99, 1
  store i32 %inc223, i32* %quotetype, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.end221, %if.end211
  br label %sw.epilog387

sw.bb225:                                         ; preds = %for.body
  %100 = load i32, i32* %quotemod, align 4
  %tobool226 = icmp ne i32 %100, 0
  br i1 %tobool226, label %if.then230, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %sw.bb225
  %101 = load i32, i32* %quotetype, align 4
  %cmp228 = icmp ne i32 %101, 0
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %lor.lhs.false227, %sw.bb225
  br label %flagerr

if.end231:                                        ; preds = %lor.lhs.false227
  store i32 1, i32* %quotemod, align 4
  store i32 7, i32* %quotetype, align 4
  br label %sw.epilog387

sw.bb232:                                         ; preds = %for.body
  %102 = load i32, i32* %quotemod, align 4
  %dec = add nsw i32 %102, -1
  store i32 %dec, i32* %quotemod, align 4
  br label %sw.epilog387

sw.bb233:                                         ; preds = %for.body
  store i32 1, i32* %quoteerr, align 4
  br label %sw.epilog387

sw.bb234:                                         ; preds = %for.body
  store i32 1, i32* %eval, align 4
  br label %sw.epilog387

sw.bb235:                                         ; preds = %for.body
  store i32 1, i32* %aspar, align 4
  br label %sw.epilog387

sw.bb236:                                         ; preds = %for.body
  store i32 1, i32* %whichlen, align 4
  br label %sw.epilog387

sw.bb237:                                         ; preds = %for.body
  store i32 2, i32* %whichlen, align 4
  br label %sw.epilog387

sw.bb238:                                         ; preds = %for.body
  store i32 3, i32* %whichlen, align 4
  br label %sw.epilog387

sw.bb239:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %spsep, align 4
  br label %sw.epilog387

sw.bb240:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %sep, align 4
  br label %sw.epilog387

sw.bb241:                                         ; preds = %for.body
  %call242 = call i8* @zhalloc(i32 3)
  store i8* %call242, i8** %spsep, align 4
  %103 = load i8*, i8** %spsep, align 4
  %arrayidx243 = getelementptr inbounds i8, i8* %103, i32 0
  store i8 -125, i8* %arrayidx243, align 1
  %104 = load i8*, i8** %spsep, align 4
  %arrayidx244 = getelementptr inbounds i8, i8* %104, i32 1
  store i8 32, i8* %arrayidx244, align 1
  %105 = load i8*, i8** %spsep, align 4
  %arrayidx245 = getelementptr inbounds i8, i8* %105, i32 2
  store i8 0, i8* %arrayidx245, align 1
  br label %sw.epilog387

sw.bb246:                                         ; preds = %for.body
  store i32 1, i32* %tt, align 4
  br label %sw.bb247

sw.bb247:                                         ; preds = %for.body, %sw.bb246
  %106 = load i8*, i8** %s, align 4
  %incdec.ptr248 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr248, i8** %s, align 4
  %call249 = call i8* @get_strarg(i8* %incdec.ptr248, i32* %arglen)
  store i8* %call249, i8** %t, align 4
  %107 = load i8*, i8** %t, align 4
  %108 = load i8, i8* %107, align 1
  %tobool250 = icmp ne i8 %108, 0
  br i1 %tobool250, label %if.then251, label %if.else261

if.then251:                                       ; preds = %sw.bb247
  %109 = load i8*, i8** %t, align 4
  %110 = load i8, i8* %109, align 1
  store i8 %110, i8* %sav, align 1
  %111 = load i8*, i8** %t, align 4
  store i8 0, i8* %111, align 1
  %112 = load i32, i32* %tt, align 4
  %tobool252 = icmp ne i32 %112, 0
  br i1 %tobool252, label %if.then253, label %if.else255

if.then253:                                       ; preds = %if.then251
  %113 = load i8*, i8** %s, align 4
  %114 = load i32, i32* %arglen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %113, i32 %114
  %115 = load i32, i32* %escapes, align 4
  %116 = load i32, i32* %tok_arg, align 4
  %call254 = call i8* @untok_and_escape(i8* %add.ptr, i32 %115, i32 %116)
  store i8* %call254, i8** %spsep, align 4
  br label %if.end258

if.else255:                                       ; preds = %if.then251
  %117 = load i8*, i8** %s, align 4
  %118 = load i32, i32* %arglen, align 4
  %add.ptr256 = getelementptr inbounds i8, i8* %117, i32 %118
  %119 = load i32, i32* %escapes, align 4
  %120 = load i32, i32* %tok_arg, align 4
  %call257 = call i8* @untok_and_escape(i8* %add.ptr256, i32 %119, i32 %120)
  store i8* %call257, i8** %sep, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.else255, %if.then253
  %121 = load i8, i8* %sav, align 1
  %122 = load i8*, i8** %t, align 4
  store i8 %121, i8* %122, align 1
  %123 = load i8*, i8** %t, align 4
  %124 = load i32, i32* %arglen, align 4
  %add.ptr259 = getelementptr inbounds i8, i8* %123, i32 %124
  %add.ptr260 = getelementptr inbounds i8, i8* %add.ptr259, i32 -1
  store i8* %add.ptr260, i8** %s, align 4
  br label %if.end262

if.else261:                                       ; preds = %sw.bb247
  br label %flagerr

if.end262:                                        ; preds = %if.end258
  br label %sw.epilog387

sw.bb263:                                         ; preds = %for.body
  store i32 1, i32* %tt, align 4
  br label %sw.bb264

sw.bb264:                                         ; preds = %for.body, %sw.bb263
  %125 = load i8*, i8** %s, align 4
  %incdec.ptr265 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr265, i8** %s, align 4
  %126 = load i8*, i8** %s, align 4
  store i8* %126, i8** %del0, align 4
  %call266 = call i32 @get_intarg(i8** %s, i32* %dellen)
  store i32 %call266, i32* %num, align 4
  %127 = load i32, i32* %num, align 4
  %cmp267 = icmp slt i32 %127, 0
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %sw.bb264
  br label %flagerr

if.end270:                                        ; preds = %sw.bb264
  %128 = load i32, i32* %tt, align 4
  %tobool271 = icmp ne i32 %128, 0
  br i1 %tobool271, label %if.then272, label %if.else273

if.then272:                                       ; preds = %if.end270
  %129 = load i32, i32* %num, align 4
  store i32 %129, i32* %prenum, align 4
  br label %if.end274

if.else273:                                       ; preds = %if.end270
  %130 = load i32, i32* %num, align 4
  store i32 %130, i32* %postnum, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.else273, %if.then272
  %131 = load i32, i32* %dellen, align 4
  %tobool275 = icmp ne i32 %131, 0
  br i1 %tobool275, label %lor.lhs.false276, label %if.then279

lor.lhs.false276:                                 ; preds = %if.end274
  %132 = load i8*, i8** %del0, align 4
  %133 = load i8*, i8** %s, align 4
  %134 = load i32, i32* %dellen, align 4
  %call277 = call i32 @memcmp(i8* %132, i8* %133, i32 %134)
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %if.then279, label %if.end281

if.then279:                                       ; preds = %lor.lhs.false276, %if.end274
  %135 = load i8*, i8** %s, align 4
  %incdec.ptr280 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %incdec.ptr280, i8** %s, align 4
  br label %sw.epilog387

if.end281:                                        ; preds = %lor.lhs.false276
  %136 = load i8*, i8** %s, align 4
  %call282 = call i8* @get_strarg(i8* %136, i32* %arglen)
  store i8* %call282, i8** %t, align 4
  %137 = load i8*, i8** %t, align 4
  %138 = load i8, i8* %137, align 1
  %tobool283 = icmp ne i8 %138, 0
  br i1 %tobool283, label %if.end285, label %if.then284

if.then284:                                       ; preds = %if.end281
  br label %flagerr

if.end285:                                        ; preds = %if.end281
  %139 = load i8*, i8** %t, align 4
  %140 = load i8, i8* %139, align 1
  store i8 %140, i8* %sav, align 1
  %141 = load i8*, i8** %t, align 4
  store i8 0, i8* %141, align 1
  %142 = load i32, i32* %tt, align 4
  %tobool286 = icmp ne i32 %142, 0
  br i1 %tobool286, label %if.then287, label %if.else290

if.then287:                                       ; preds = %if.end285
  %143 = load i8*, i8** %s, align 4
  %144 = load i32, i32* %arglen, align 4
  %add.ptr288 = getelementptr inbounds i8, i8* %143, i32 %144
  %145 = load i32, i32* %escapes, align 4
  %146 = load i32, i32* %tok_arg, align 4
  %call289 = call i8* @untok_and_escape(i8* %add.ptr288, i32 %145, i32 %146)
  store i8* %call289, i8** %premul, align 4
  br label %if.end293

if.else290:                                       ; preds = %if.end285
  %147 = load i8*, i8** %s, align 4
  %148 = load i32, i32* %arglen, align 4
  %add.ptr291 = getelementptr inbounds i8, i8* %147, i32 %148
  %149 = load i32, i32* %escapes, align 4
  %150 = load i32, i32* %tok_arg, align 4
  %call292 = call i8* @untok_and_escape(i8* %add.ptr291, i32 %149, i32 %150)
  store i8* %call292, i8** %postmul, align 4
  br label %if.end293

if.end293:                                        ; preds = %if.else290, %if.then287
  %151 = load i8, i8* %sav, align 1
  %152 = load i8*, i8** %t, align 4
  store i8 %151, i8* %152, align 1
  %153 = load i8*, i8** %s, align 4
  %154 = load i8, i8* %153, align 1
  store i8 %154, i8* %sav, align 1
  %155 = load i8*, i8** %t, align 4
  %156 = load i32, i32* %arglen, align 4
  %add.ptr294 = getelementptr inbounds i8, i8* %155, i32 %156
  store i8* %add.ptr294, i8** %s, align 4
  %157 = load i8*, i8** %del0, align 4
  %158 = load i8*, i8** %s, align 4
  %159 = load i32, i32* %dellen, align 4
  %call295 = call i32 @memcmp(i8* %157, i8* %158, i32 %159)
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.then297, label %if.end299

if.then297:                                       ; preds = %if.end293
  %160 = load i8*, i8** %s, align 4
  %incdec.ptr298 = getelementptr inbounds i8, i8* %160, i32 -1
  store i8* %incdec.ptr298, i8** %s, align 4
  br label %sw.epilog387

if.end299:                                        ; preds = %if.end293
  %161 = load i8*, i8** %s, align 4
  %call300 = call i8* @get_strarg(i8* %161, i32* %arglen)
  store i8* %call300, i8** %t, align 4
  %162 = load i8*, i8** %t, align 4
  %163 = load i8, i8* %162, align 1
  %tobool301 = icmp ne i8 %163, 0
  br i1 %tobool301, label %if.end303, label %if.then302

if.then302:                                       ; preds = %if.end299
  br label %flagerr

if.end303:                                        ; preds = %if.end299
  %164 = load i8*, i8** %t, align 4
  %165 = load i8, i8* %164, align 1
  store i8 %165, i8* %sav, align 1
  %166 = load i8*, i8** %t, align 4
  store i8 0, i8* %166, align 1
  %167 = load i32, i32* %tt, align 4
  %tobool304 = icmp ne i32 %167, 0
  br i1 %tobool304, label %if.then305, label %if.else308

if.then305:                                       ; preds = %if.end303
  %168 = load i8*, i8** %s, align 4
  %169 = load i32, i32* %arglen, align 4
  %add.ptr306 = getelementptr inbounds i8, i8* %168, i32 %169
  %170 = load i32, i32* %escapes, align 4
  %171 = load i32, i32* %tok_arg, align 4
  %call307 = call i8* @untok_and_escape(i8* %add.ptr306, i32 %170, i32 %171)
  store i8* %call307, i8** %preone, align 4
  br label %if.end311

if.else308:                                       ; preds = %if.end303
  %172 = load i8*, i8** %s, align 4
  %173 = load i32, i32* %arglen, align 4
  %add.ptr309 = getelementptr inbounds i8, i8* %172, i32 %173
  %174 = load i32, i32* %escapes, align 4
  %175 = load i32, i32* %tok_arg, align 4
  %call310 = call i8* @untok_and_escape(i8* %add.ptr309, i32 %174, i32 %175)
  store i8* %call310, i8** %postone, align 4
  br label %if.end311

if.end311:                                        ; preds = %if.else308, %if.then305
  %176 = load i8, i8* %sav, align 1
  %177 = load i8*, i8** %t, align 4
  store i8 %176, i8* %177, align 1
  %178 = load i8*, i8** %t, align 4
  %179 = load i32, i32* %arglen, align 4
  %add.ptr312 = getelementptr inbounds i8, i8* %178, i32 %179
  %add.ptr313 = getelementptr inbounds i8, i8* %add.ptr312, i32 -1
  store i8* %add.ptr313, i8** %s, align 4
  br label %sw.epilog387

sw.bb314:                                         ; preds = %for.body
  %180 = load i32, i32* %multi_width, align 4
  %inc315 = add nsw i32 %180, 1
  store i32 %inc315, i32* %multi_width, align 4
  br label %sw.epilog387

sw.bb316:                                         ; preds = %for.body
  store i32 1, i32* %escapes, align 4
  br label %sw.epilog387

sw.bb317:                                         ; preds = %for.body
  store i8 2, i8* %hkeys, align 1
  br label %sw.epilog387

sw.bb318:                                         ; preds = %for.body
  store i8 1, i8* %hvals, align 1
  br label %sw.epilog387

sw.bb319:                                         ; preds = %for.body
  store i32 1, i32* %wantt, align 4
  br label %sw.epilog387

sw.bb320:                                         ; preds = %for.body
  %181 = load i32, i32* %presc, align 4
  %inc321 = add nsw i32 %181, 1
  store i32 %inc321, i32* %presc, align 4
  br label %sw.epilog387

sw.bb322:                                         ; preds = %for.body
  %182 = load i8*, i8** %s, align 4
  %incdec.ptr323 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr323, i8** %s, align 4
  %call324 = call i8* @get_strarg(i8* %incdec.ptr323, i32* %arglen)
  store i8* %call324, i8** %t, align 4
  %183 = load i32, i32* %getkeys, align 4
  %cmp325 = icmp slt i32 %183, 0
  br i1 %cmp325, label %if.then327, label %if.end328

if.then327:                                       ; preds = %sw.bb322
  store i32 0, i32* %getkeys, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then327, %sw.bb322
  %184 = load i8*, i8** %t, align 4
  %185 = load i8, i8* %184, align 1
  %tobool329 = icmp ne i8 %185, 0
  br i1 %tobool329, label %if.then330, label %if.else342

if.then330:                                       ; preds = %if.end328
  %186 = load i8*, i8** %t, align 4
  %187 = load i8, i8* %186, align 1
  store i8 %187, i8* %sav, align 1
  %188 = load i8*, i8** %t, align 4
  store i8 0, i8* %188, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then330
  %189 = load i8*, i8** %s, align 4
  %incdec.ptr331 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr331, i8** %s, align 4
  %190 = load i8, i8* %incdec.ptr331, align 1
  %tobool332 = icmp ne i8 %190, 0
  br i1 %tobool332, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %191 = load i8*, i8** %s, align 4
  %192 = load i8, i8* %191, align 1
  %conv333 = sext i8 %192 to i32
  switch i32 %conv333, label %sw.default [
    i32 101, label %sw.bb334
    i32 111, label %sw.bb336
    i32 99, label %sw.bb338
  ]

sw.bb334:                                         ; preds = %while.body
  %193 = load i32, i32* %getkeys, align 4
  %or335 = or i32 %193, 2
  store i32 %or335, i32* %getkeys, align 4
  br label %sw.epilog

sw.bb336:                                         ; preds = %while.body
  %194 = load i32, i32* %getkeys, align 4
  %or337 = or i32 %194, 1
  store i32 %or337, i32* %getkeys, align 4
  br label %sw.epilog

sw.bb338:                                         ; preds = %while.body
  %195 = load i32, i32* %getkeys, align 4
  %or339 = or i32 %195, 4
  store i32 %or339, i32* %getkeys, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %196 = load i8, i8* %sav, align 1
  %197 = load i8*, i8** %t, align 4
  store i8 %196, i8* %197, align 1
  br label %flagerr

sw.epilog:                                        ; preds = %sw.bb338, %sw.bb336, %sw.bb334
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %198 = load i8, i8* %sav, align 1
  %199 = load i8*, i8** %t, align 4
  store i8 %198, i8* %199, align 1
  %200 = load i8*, i8** %t, align 4
  %201 = load i32, i32* %arglen, align 4
  %add.ptr340 = getelementptr inbounds i8, i8* %200, i32 %201
  %add.ptr341 = getelementptr inbounds i8, i8* %add.ptr340, i32 -1
  store i8* %add.ptr341, i8** %s, align 4
  br label %if.end343

if.else342:                                       ; preds = %if.end328
  br label %flagerr

if.end343:                                        ; preds = %while.end
  br label %sw.epilog387

sw.bb344:                                         ; preds = %for.body
  store i32 1, i32* %shsplit, align 4
  br label %sw.epilog387

sw.bb345:                                         ; preds = %for.body
  %202 = load i8*, i8** %s, align 4
  %incdec.ptr346 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %incdec.ptr346, i8** %s, align 4
  %call347 = call i8* @get_strarg(i8* %incdec.ptr346, i32* %arglen)
  store i8* %call347, i8** %t, align 4
  %203 = load i8*, i8** %t, align 4
  %204 = load i8, i8* %203, align 1
  %tobool348 = icmp ne i8 %204, 0
  br i1 %tobool348, label %if.then349, label %if.else366

if.then349:                                       ; preds = %sw.bb345
  %205 = load i8*, i8** %t, align 4
  %206 = load i8, i8* %205, align 1
  store i8 %206, i8* %sav, align 1
  %207 = load i8*, i8** %t, align 4
  store i8 0, i8* %207, align 1
  br label %while.cond350

while.cond350:                                    ; preds = %sw.epilog362, %if.then349
  %208 = load i8*, i8** %s, align 4
  %incdec.ptr351 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr351, i8** %s, align 4
  %209 = load i8, i8* %incdec.ptr351, align 1
  %tobool352 = icmp ne i8 %209, 0
  br i1 %tobool352, label %while.body353, label %while.end363

while.body353:                                    ; preds = %while.cond350
  %210 = load i8*, i8** %s, align 4
  %211 = load i8, i8* %210, align 1
  %conv354 = sext i8 %211 to i32
  switch i32 %conv354, label %sw.default361 [
    i32 99, label %sw.bb355
    i32 67, label %sw.bb357
    i32 110, label %sw.bb359
  ]

sw.bb355:                                         ; preds = %while.body353
  %212 = load i32, i32* %shsplit, align 4
  %or356 = or i32 %212, 4
  store i32 %or356, i32* %shsplit, align 4
  br label %sw.epilog362

sw.bb357:                                         ; preds = %while.body353
  %213 = load i32, i32* %shsplit, align 4
  %or358 = or i32 %213, 8
  store i32 %or358, i32* %shsplit, align 4
  br label %sw.epilog362

sw.bb359:                                         ; preds = %while.body353
  %214 = load i32, i32* %shsplit, align 4
  %or360 = or i32 %214, 16
  store i32 %or360, i32* %shsplit, align 4
  br label %sw.epilog362

sw.default361:                                    ; preds = %while.body353
  %215 = load i8, i8* %sav, align 1
  %216 = load i8*, i8** %t, align 4
  store i8 %215, i8* %216, align 1
  br label %flagerr

sw.epilog362:                                     ; preds = %sw.bb359, %sw.bb357, %sw.bb355
  br label %while.cond350

while.end363:                                     ; preds = %while.cond350
  %217 = load i8, i8* %sav, align 1
  %218 = load i8*, i8** %t, align 4
  store i8 %217, i8* %218, align 1
  %219 = load i8*, i8** %t, align 4
  %220 = load i32, i32* %arglen, align 4
  %add.ptr364 = getelementptr inbounds i8, i8* %219, i32 %220
  %add.ptr365 = getelementptr inbounds i8, i8* %add.ptr364, i32 -1
  store i8* %add.ptr365, i8** %s, align 4
  br label %if.end367

if.else366:                                       ; preds = %sw.bb345
  br label %flagerr

if.end367:                                        ; preds = %while.end363
  br label %sw.epilog387

sw.bb368:                                         ; preds = %for.body
  store i32 1, i32* %unique, align 4
  br label %sw.epilog387

sw.bb369:                                         ; preds = %for.body, %for.body
  store i32 1, i32* %evalchar, align 4
  br label %sw.epilog387

sw.bb370:                                         ; preds = %for.body
  %221 = load i8*, i8** %s, align 4
  %incdec.ptr371 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr371, i8** %s, align 4
  %call372 = call i8* @get_strarg(i8* %incdec.ptr371, i32* %arglen)
  store i8* %call372, i8** %t, align 4
  %222 = load i8*, i8** %t, align 4
  %223 = load i8, i8* %222, align 1
  %tobool373 = icmp ne i8 %223, 0
  br i1 %tobool373, label %if.then374, label %if.else384

if.then374:                                       ; preds = %sw.bb370
  %224 = load i8*, i8** %t, align 4
  %225 = load i8, i8* %224, align 1
  store i8 %225, i8* %sav, align 1
  %226 = load i8*, i8** %t, align 4
  store i8 0, i8* %226, align 1
  br label %while.cond375

while.cond375:                                    ; preds = %if.then374
  %227 = load i8*, i8** %s, align 4
  %incdec.ptr376 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr376, i8** %s, align 4
  %228 = load i8, i8* %incdec.ptr376, align 1
  %tobool377 = icmp ne i8 %228, 0
  br i1 %tobool377, label %while.body378, label %while.end381

while.body378:                                    ; preds = %while.cond375
  %229 = load i8*, i8** %s, align 4
  %230 = load i8, i8* %229, align 1
  %conv379 = sext i8 %230 to i32
  switch i32 %conv379, label %sw.default380 [
  ]

sw.default380:                                    ; preds = %while.body378
  %231 = load i8, i8* %sav, align 1
  %232 = load i8*, i8** %t, align 4
  store i8 %231, i8* %232, align 1
  br label %flagerr

while.end381:                                     ; preds = %while.cond375
  %233 = load i8, i8* %sav, align 1
  %234 = load i8*, i8** %t, align 4
  store i8 %233, i8* %234, align 1
  %235 = load i8*, i8** %t, align 4
  %236 = load i32, i32* %arglen, align 4
  %add.ptr382 = getelementptr inbounds i8, i8* %235, i32 %236
  %add.ptr383 = getelementptr inbounds i8, i8* %add.ptr382, i32 -1
  store i8* %add.ptr383, i8** %s, align 4
  br label %if.end385

if.else384:                                       ; preds = %sw.bb370
  br label %flagerr

if.end385:                                        ; preds = %while.end381
  br label %sw.epilog387

sw.default386:                                    ; preds = %for.body
  br label %flagerr

flagerr:                                          ; preds = %sw.default386, %if.else384, %sw.default380, %if.else366, %sw.default361, %if.else342, %sw.default, %if.then302, %if.then284, %if.then269, %if.else261, %if.then230, %if.then220, %if.then210, %if.then192, %if.then163
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

sw.epilog387:                                     ; preds = %if.end385, %sw.bb369, %sw.bb368, %if.end367, %sw.bb344, %if.end343, %sw.bb320, %sw.bb319, %sw.bb318, %sw.bb317, %sw.bb316, %sw.bb314, %if.end311, %if.then297, %if.then279, %if.end262, %sw.bb241, %sw.bb240, %sw.bb239, %sw.bb238, %sw.bb237, %sw.bb236, %sw.bb235, %sw.bb234, %sw.bb233, %sw.bb232, %if.end231, %if.end224, %sw.bb184, %sw.bb182, %sw.bb180, %sw.bb178, %sw.bb176, %sw.bb174, %if.end173, %sw.bb168, %sw.bb167, %sw.bb166, %if.end164, %sw.bb156, %sw.bb154, %sw.bb152, %sw.bb150, %sw.bb148, %sw.bb147, %sw.bb146, %sw.bb145, %sw.bb142, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog387
  %237 = load i8*, i8** %s, align 4
  %incdec.ptr388 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr388, i8** %s, align 4
  store i32 0, i32* %tt, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end139
  %238 = load i8*, i8** %s, align 4
  %incdec.ptr389 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %incdec.ptr389, i8** %s, align 4
  br label %if.end390

if.end390:                                        ; preds = %for.end, %lor.lhs.false126
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %if.then121
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %if.end
  %239 = load i8*, i8** %premul, align 4
  %tobool393 = icmp ne i8* %239, null
  br i1 %tobool393, label %if.end395, label %if.then394

if.then394:                                       ; preds = %if.end392
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %premul, align 4
  br label %if.end395

if.end395:                                        ; preds = %if.then394, %if.end392
  %240 = load i8*, i8** %postmul, align 4
  %tobool396 = icmp ne i8* %240, null
  br i1 %tobool396, label %if.end398, label %if.then397

if.then397:                                       ; preds = %if.end395
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %postmul, align 4
  br label %if.end398

if.end398:                                        ; preds = %if.then397, %if.end395
  br label %for.cond399

for.cond399:                                      ; preds = %if.end650, %if.end398
  %241 = load i8*, i8** %s, align 4
  %242 = load i8, i8* %241, align 1
  store i8 %242, i8* %c, align 1
  %conv400 = sext i8 %242 to i32
  %cmp401 = icmp eq i32 %conv400, 94
  br i1 %cmp401, label %if.then407, label %lor.lhs.false403

lor.lhs.false403:                                 ; preds = %for.cond399
  %243 = load i8, i8* %c, align 1
  %conv404 = sext i8 %243 to i32
  %cmp405 = icmp eq i32 %conv404, -122
  br i1 %cmp405, label %if.then407, label %if.else420

if.then407:                                       ; preds = %lor.lhs.false403, %for.cond399
  %244 = load i8*, i8** %s, align 4
  %incdec.ptr408 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr408, i8** %s, align 4
  %245 = load i8, i8* %incdec.ptr408, align 1
  store i8 %245, i8* %c, align 1
  %conv409 = sext i8 %245 to i32
  %cmp410 = icmp eq i32 %conv409, 94
  br i1 %cmp410, label %if.then416, label %lor.lhs.false412

lor.lhs.false412:                                 ; preds = %if.then407
  %246 = load i8, i8* %c, align 1
  %conv413 = sext i8 %246 to i32
  %cmp414 = icmp eq i32 %conv413, -122
  br i1 %cmp414, label %if.then416, label %if.else418

if.then416:                                       ; preds = %lor.lhs.false412, %if.then407
  store i32 0, i32* %plan9, align 4
  %247 = load i8*, i8** %s, align 4
  %incdec.ptr417 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %incdec.ptr417, i8** %s, align 4
  br label %if.end419

if.else418:                                       ; preds = %lor.lhs.false412
  store i32 1, i32* %plan9, align 4
  br label %if.end419

if.end419:                                        ; preds = %if.else418, %if.then416
  br label %if.end650

if.else420:                                       ; preds = %lor.lhs.false403
  %248 = load i8*, i8** %s, align 4
  %249 = load i8, i8* %248, align 1
  store i8 %249, i8* %c, align 1
  %conv421 = sext i8 %249 to i32
  %cmp422 = icmp eq i32 %conv421, 61
  br i1 %cmp422, label %if.then428, label %lor.lhs.false424

lor.lhs.false424:                                 ; preds = %if.else420
  %250 = load i8, i8* %c, align 1
  %conv425 = sext i8 %250 to i32
  %cmp426 = icmp eq i32 %conv425, -115
  br i1 %cmp426, label %if.then428, label %if.else457

if.then428:                                       ; preds = %lor.lhs.false424, %if.else420
  %251 = load i8*, i8** %s, align 4
  %incdec.ptr429 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr429, i8** %s, align 4
  %252 = load i8, i8* %incdec.ptr429, align 1
  store i8 %252, i8* %c, align 1
  %conv430 = sext i8 %252 to i32
  %cmp431 = icmp eq i32 %conv430, 61
  br i1 %cmp431, label %if.then437, label %lor.lhs.false433

lor.lhs.false433:                                 ; preds = %if.then428
  %253 = load i8, i8* %c, align 1
  %conv434 = sext i8 %253 to i32
  %cmp435 = icmp eq i32 %conv434, -115
  br i1 %cmp435, label %if.then437, label %if.else443

if.then437:                                       ; preds = %lor.lhs.false433, %if.then428
  store i32 0, i32* %spbreak, align 4
  %254 = load i32, i32* %nojoin, align 4
  %cmp438 = icmp slt i32 %254, 2
  br i1 %cmp438, label %if.then440, label %if.end441

if.then440:                                       ; preds = %if.then437
  store i32 0, i32* %nojoin, align 4
  br label %if.end441

if.end441:                                        ; preds = %if.then440, %if.then437
  %255 = load i8*, i8** %s, align 4
  %incdec.ptr442 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr442, i8** %s, align 4
  br label %if.end456

if.else443:                                       ; preds = %lor.lhs.false433
  store i32 2, i32* %spbreak, align 4
  %256 = load i32, i32* %nojoin, align 4
  %cmp444 = icmp slt i32 %256, 2
  br i1 %cmp444, label %if.then446, label %if.end455

if.then446:                                       ; preds = %if.else443
  %257 = load i8*, i8** @ifs, align 4
  %tobool447 = icmp ne i8* %257, null
  br i1 %tobool447, label %land.rhs448, label %land.end451

land.rhs448:                                      ; preds = %if.then446
  %258 = load i8*, i8** @ifs, align 4
  %259 = load i8, i8* %258, align 1
  %conv449 = sext i8 %259 to i32
  %tobool450 = icmp ne i32 %conv449, 0
  br label %land.end451

land.end451:                                      ; preds = %land.rhs448, %if.then446
  %260 = phi i1 [ false, %if.then446 ], [ %tobool450, %land.rhs448 ]
  %lnot453 = xor i1 %260, true
  %lnot.ext454 = zext i1 %lnot453 to i32
  store i32 %lnot.ext454, i32* %nojoin, align 4
  br label %if.end455

if.end455:                                        ; preds = %land.end451, %if.else443
  br label %if.end456

if.end456:                                        ; preds = %if.end455, %if.end441
  br label %if.end649

if.else457:                                       ; preds = %lor.lhs.false424
  %261 = load i8, i8* %c, align 1
  %conv458 = sext i8 %261 to i32
  %cmp459 = icmp eq i32 %conv458, 35
  br i1 %cmp459, label %land.lhs.true465, label %lor.lhs.false461

lor.lhs.false461:                                 ; preds = %if.else457
  %262 = load i8, i8* %c, align 1
  %conv462 = sext i8 %262 to i32
  %cmp463 = icmp eq i32 %conv462, -124
  br i1 %cmp463, label %land.lhs.true465, label %if.else568

land.lhs.true465:                                 ; preds = %lor.lhs.false461, %if.else457
  %263 = load i8, i8* %inbrace, align 1
  %conv466 = sext i8 %263 to i32
  %tobool467 = icmp ne i32 %conv466, 0
  br i1 %tobool467, label %land.lhs.true470, label %lor.lhs.false468

lor.lhs.false468:                                 ; preds = %land.lhs.true465
  %264 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 134), align 1
  %tobool469 = icmp ne i8 %264, 0
  br i1 %tobool469, label %if.else568, label %land.lhs.true470

land.lhs.true470:                                 ; preds = %lor.lhs.false468, %land.lhs.true465
  %265 = load i8*, i8** %s, align 4
  %add.ptr471 = getelementptr inbounds i8, i8* %265, i32 1
  %call472 = call i8* @itype_end(i8* %add.ptr471, i32 128, i32 0)
  %266 = load i8*, i8** %s, align 4
  %add.ptr473 = getelementptr inbounds i8, i8* %266, i32 1
  %cmp474 = icmp ne i8* %call472, %add.ptr473
  br i1 %cmp474, label %if.then566, label %lor.lhs.false476

lor.lhs.false476:                                 ; preds = %land.lhs.true470
  %267 = load i8*, i8** %s, align 4
  %arrayidx477 = getelementptr inbounds i8, i8* %267, i32 1
  %268 = load i8, i8* %arrayidx477, align 1
  store i8 %268, i8* %cc, align 1
  %conv478 = sext i8 %268 to i32
  %cmp479 = icmp eq i32 %conv478, 42
  br i1 %cmp479, label %if.then566, label %lor.lhs.false481

lor.lhs.false481:                                 ; preds = %lor.lhs.false476
  %269 = load i8, i8* %cc, align 1
  %conv482 = sext i8 %269 to i32
  %cmp483 = icmp eq i32 %conv482, -121
  br i1 %cmp483, label %if.then566, label %lor.lhs.false485

lor.lhs.false485:                                 ; preds = %lor.lhs.false481
  %270 = load i8, i8* %cc, align 1
  %conv486 = sext i8 %270 to i32
  %cmp487 = icmp eq i32 %conv486, 64
  br i1 %cmp487, label %if.then566, label %lor.lhs.false489

lor.lhs.false489:                                 ; preds = %lor.lhs.false485
  %271 = load i8, i8* %cc, align 1
  %conv490 = sext i8 %271 to i32
  %cmp491 = icmp eq i32 %conv490, 63
  br i1 %cmp491, label %if.then566, label %lor.lhs.false493

lor.lhs.false493:                                 ; preds = %lor.lhs.false489
  %272 = load i8, i8* %cc, align 1
  %conv494 = sext i8 %272 to i32
  %cmp495 = icmp eq i32 %conv494, -105
  br i1 %cmp495, label %if.then566, label %lor.lhs.false497

lor.lhs.false497:                                 ; preds = %lor.lhs.false493
  %273 = load i8, i8* %cc, align 1
  %conv498 = sext i8 %273 to i32
  %cmp499 = icmp eq i32 %conv498, 36
  br i1 %cmp499, label %if.then566, label %lor.lhs.false501

lor.lhs.false501:                                 ; preds = %lor.lhs.false497
  %274 = load i8, i8* %cc, align 1
  %conv502 = sext i8 %274 to i32
  %cmp503 = icmp eq i32 %conv502, -123
  br i1 %cmp503, label %if.then566, label %lor.lhs.false505

lor.lhs.false505:                                 ; preds = %lor.lhs.false501
  %275 = load i8, i8* %cc, align 1
  %conv506 = sext i8 %275 to i32
  %cmp507 = icmp eq i32 %conv506, -116
  br i1 %cmp507, label %if.then566, label %lor.lhs.false509

lor.lhs.false509:                                 ; preds = %lor.lhs.false505
  %276 = load i8, i8* %cc, align 1
  %conv510 = sext i8 %276 to i32
  %cmp511 = icmp eq i32 %conv510, 35
  br i1 %cmp511, label %land.lhs.true517, label %lor.lhs.false513

lor.lhs.false513:                                 ; preds = %lor.lhs.false509
  %277 = load i8, i8* %cc, align 1
  %conv514 = sext i8 %277 to i32
  %cmp515 = icmp eq i32 %conv514, -124
  br i1 %cmp515, label %land.lhs.true517, label %lor.lhs.false522

land.lhs.true517:                                 ; preds = %lor.lhs.false513, %lor.lhs.false509
  %278 = load i8*, i8** %s, align 4
  %arrayidx518 = getelementptr inbounds i8, i8* %278, i32 2
  %279 = load i8, i8* %arrayidx518, align 1
  %conv519 = sext i8 %279 to i32
  %cmp520 = icmp eq i32 %conv519, -112
  br i1 %cmp520, label %if.then566, label %lor.lhs.false522

lor.lhs.false522:                                 ; preds = %land.lhs.true517, %lor.lhs.false513
  %280 = load i8, i8* %cc, align 1
  %conv523 = sext i8 %280 to i32
  %cmp524 = icmp eq i32 %conv523, 45
  br i1 %cmp524, label %if.then566, label %lor.lhs.false526

lor.lhs.false526:                                 ; preds = %lor.lhs.false522
  %281 = load i8, i8* %cc, align 1
  %conv527 = sext i8 %281 to i32
  %cmp528 = icmp eq i32 %conv527, -101
  br i1 %cmp528, label %if.then566, label %lor.lhs.false530

lor.lhs.false530:                                 ; preds = %lor.lhs.false526
  %282 = load i8, i8* %cc, align 1
  %conv531 = sext i8 %282 to i32
  %cmp532 = icmp eq i32 %conv531, 58
  br i1 %cmp532, label %land.lhs.true534, label %lor.lhs.false544

land.lhs.true534:                                 ; preds = %lor.lhs.false530
  %283 = load i8*, i8** %s, align 4
  %arrayidx535 = getelementptr inbounds i8, i8* %283, i32 2
  %284 = load i8, i8* %arrayidx535, align 1
  %conv536 = sext i8 %284 to i32
  %cmp537 = icmp eq i32 %conv536, 45
  br i1 %cmp537, label %if.then566, label %lor.lhs.false539

lor.lhs.false539:                                 ; preds = %land.lhs.true534
  %285 = load i8*, i8** %s, align 4
  %arrayidx540 = getelementptr inbounds i8, i8* %285, i32 2
  %286 = load i8, i8* %arrayidx540, align 1
  %conv541 = sext i8 %286 to i32
  %cmp542 = icmp eq i32 %conv541, -101
  br i1 %cmp542, label %if.then566, label %lor.lhs.false544

lor.lhs.false544:                                 ; preds = %lor.lhs.false539, %lor.lhs.false530
  %287 = load i8, i8* %cc, align 1
  %conv545 = sext i8 %287 to i32
  %cmp546 = icmp eq i32 %conv545, 36
  br i1 %cmp546, label %land.lhs.true556, label %lor.lhs.false548

lor.lhs.false548:                                 ; preds = %lor.lhs.false544
  %288 = load i8, i8* %cc, align 1
  %conv549 = sext i8 %288 to i32
  %cmp550 = icmp eq i32 %conv549, -123
  br i1 %cmp550, label %land.lhs.true556, label %lor.lhs.false552

lor.lhs.false552:                                 ; preds = %lor.lhs.false548
  %289 = load i8, i8* %cc, align 1
  %conv553 = sext i8 %289 to i32
  %cmp554 = icmp eq i32 %conv553, -116
  br i1 %cmp554, label %land.lhs.true556, label %if.else568

land.lhs.true556:                                 ; preds = %lor.lhs.false552, %lor.lhs.false548, %lor.lhs.false544
  %290 = load i8*, i8** %s, align 4
  %arrayidx557 = getelementptr inbounds i8, i8* %290, i32 2
  %291 = load i8, i8* %arrayidx557, align 1
  %conv558 = sext i8 %291 to i32
  %cmp559 = icmp eq i32 %conv558, -113
  br i1 %cmp559, label %if.then566, label %lor.lhs.false561

lor.lhs.false561:                                 ; preds = %land.lhs.true556
  %292 = load i8*, i8** %s, align 4
  %arrayidx562 = getelementptr inbounds i8, i8* %292, i32 2
  %293 = load i8, i8* %arrayidx562, align 1
  %conv563 = sext i8 %293 to i32
  %cmp564 = icmp eq i32 %conv563, -120
  br i1 %cmp564, label %if.then566, label %if.else568

if.then566:                                       ; preds = %lor.lhs.false561, %land.lhs.true556, %lor.lhs.false539, %land.lhs.true534, %lor.lhs.false526, %lor.lhs.false522, %land.lhs.true517, %lor.lhs.false505, %lor.lhs.false501, %lor.lhs.false497, %lor.lhs.false493, %lor.lhs.false489, %lor.lhs.false485, %lor.lhs.false481, %lor.lhs.false476, %land.lhs.true470
  %294 = load i32, i32* %whichlen, align 4
  %add = add nsw i32 1, %294
  store i32 %add, i32* %getlen, align 4
  %295 = load i8*, i8** %s, align 4
  %incdec.ptr567 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr567, i8** %s, align 4
  br label %if.end648

if.else568:                                       ; preds = %lor.lhs.false561, %lor.lhs.false552, %lor.lhs.false468, %lor.lhs.false461
  %296 = load i8, i8* %c, align 1
  %conv569 = sext i8 %296 to i32
  %cmp570 = icmp eq i32 %conv569, 126
  br i1 %cmp570, label %if.then576, label %lor.lhs.false572

lor.lhs.false572:                                 ; preds = %if.else568
  %297 = load i8, i8* %c, align 1
  %conv573 = sext i8 %297 to i32
  %cmp574 = icmp eq i32 %conv573, -104
  br i1 %cmp574, label %if.then576, label %if.else589

if.then576:                                       ; preds = %lor.lhs.false572, %if.else568
  %298 = load i8*, i8** %s, align 4
  %incdec.ptr577 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %incdec.ptr577, i8** %s, align 4
  %299 = load i8, i8* %incdec.ptr577, align 1
  store i8 %299, i8* %c, align 1
  %conv578 = sext i8 %299 to i32
  %cmp579 = icmp eq i32 %conv578, 126
  br i1 %cmp579, label %if.then585, label %lor.lhs.false581

lor.lhs.false581:                                 ; preds = %if.then576
  %300 = load i8, i8* %c, align 1
  %conv582 = sext i8 %300 to i32
  %cmp583 = icmp eq i32 %conv582, -104
  br i1 %cmp583, label %if.then585, label %if.else587

if.then585:                                       ; preds = %lor.lhs.false581, %if.then576
  store i32 0, i32* %globsubst, align 4
  %301 = load i8*, i8** %s, align 4
  %incdec.ptr586 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %incdec.ptr586, i8** %s, align 4
  br label %if.end588

if.else587:                                       ; preds = %lor.lhs.false581
  store i32 2, i32* %globsubst, align 4
  br label %if.end588

if.end588:                                        ; preds = %if.else587, %if.then585
  br label %if.end647

if.else589:                                       ; preds = %lor.lhs.false572
  %302 = load i8, i8* %c, align 1
  %conv590 = sext i8 %302 to i32
  %cmp591 = icmp eq i32 %conv590, 43
  br i1 %cmp591, label %if.then593, label %if.else634

if.then593:                                       ; preds = %if.else589
  %303 = load i8*, i8** %s, align 4
  %add.ptr594 = getelementptr inbounds i8, i8* %303, i32 1
  %call595 = call i8* @itype_end(i8* %add.ptr594, i32 128, i32 0)
  %304 = load i8*, i8** %s, align 4
  %add.ptr596 = getelementptr inbounds i8, i8* %304, i32 1
  %cmp597 = icmp ne i8* %call595, %add.ptr596
  br i1 %cmp597, label %if.then626, label %lor.lhs.false599

lor.lhs.false599:                                 ; preds = %if.then593
  %305 = load i32, i32* %aspar, align 4
  %tobool600 = icmp ne i32 %305, 0
  br i1 %tobool600, label %land.lhs.true601, label %if.else628

land.lhs.true601:                                 ; preds = %lor.lhs.false599
  %306 = load i8*, i8** %s, align 4
  %arrayidx602 = getelementptr inbounds i8, i8* %306, i32 1
  %307 = load i8, i8* %arrayidx602, align 1
  %conv603 = sext i8 %307 to i32
  %cmp604 = icmp eq i32 %conv603, 36
  br i1 %cmp604, label %land.lhs.true616, label %lor.lhs.false606

lor.lhs.false606:                                 ; preds = %land.lhs.true601
  %308 = load i8*, i8** %s, align 4
  %arrayidx607 = getelementptr inbounds i8, i8* %308, i32 1
  %309 = load i8, i8* %arrayidx607, align 1
  %conv608 = sext i8 %309 to i32
  %cmp609 = icmp eq i32 %conv608, -123
  br i1 %cmp609, label %land.lhs.true616, label %lor.lhs.false611

lor.lhs.false611:                                 ; preds = %lor.lhs.false606
  %310 = load i8*, i8** %s, align 4
  %arrayidx612 = getelementptr inbounds i8, i8* %310, i32 1
  %311 = load i8, i8* %arrayidx612, align 1
  %conv613 = sext i8 %311 to i32
  %cmp614 = icmp eq i32 %conv613, -116
  br i1 %cmp614, label %land.lhs.true616, label %if.else628

land.lhs.true616:                                 ; preds = %lor.lhs.false611, %lor.lhs.false606, %land.lhs.true601
  %312 = load i8*, i8** %s, align 4
  %arrayidx617 = getelementptr inbounds i8, i8* %312, i32 2
  %313 = load i8, i8* %arrayidx617, align 1
  %conv618 = sext i8 %313 to i32
  %cmp619 = icmp eq i32 %conv618, -113
  br i1 %cmp619, label %if.then626, label %lor.lhs.false621

lor.lhs.false621:                                 ; preds = %land.lhs.true616
  %314 = load i8*, i8** %s, align 4
  %arrayidx622 = getelementptr inbounds i8, i8* %314, i32 2
  %315 = load i8, i8* %arrayidx622, align 1
  %conv623 = sext i8 %315 to i32
  %cmp624 = icmp eq i32 %conv623, -120
  br i1 %cmp624, label %if.then626, label %if.else628

if.then626:                                       ; preds = %lor.lhs.false621, %land.lhs.true616, %if.then593
  store i32 1, i32* %chkset, align 4
  %316 = load i8*, i8** %s, align 4
  %incdec.ptr627 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %incdec.ptr627, i8** %s, align 4
  br label %if.end633

if.else628:                                       ; preds = %lor.lhs.false621, %lor.lhs.false611, %lor.lhs.false599
  %317 = load i8, i8* %inbrace, align 1
  %tobool629 = icmp ne i8 %317, 0
  br i1 %tobool629, label %if.else632, label %if.then630

if.then630:                                       ; preds = %if.else628
  %318 = load i8*, i8** %aptr, align 4
  store i8 36, i8* %318, align 1
  %319 = load i8*, i8** %aptr, align 4
  %add.ptr631 = getelementptr inbounds i8, i8* %319, i32 1
  %320 = load i8**, i8*** %str.addr, align 4
  store i8* %add.ptr631, i8** %320, align 4
  %321 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  store %struct.linknode* %321, %struct.linknode** %retval, align 4
  br label %return

if.else632:                                       ; preds = %if.else628
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end633:                                        ; preds = %if.then626
  br label %if.end646

if.else634:                                       ; preds = %if.else589
  %322 = load i8, i8* %inbrace, align 1
  %conv635 = sext i8 %322 to i32
  %tobool636 = icmp ne i32 %conv635, 0
  br i1 %tobool636, label %land.lhs.true637, label %if.else644

land.lhs.true637:                                 ; preds = %if.else634
  %323 = load i8*, i8** %s, align 4
  %324 = load i8, i8* %323, align 1
  %idxprom = zext i8 %324 to i32
  %arrayidx638 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %325 = load i16, i16* %arrayidx638, align 2
  %conv639 = sext i16 %325 to i32
  %and640 = and i32 %conv639, 16384
  %tobool641 = icmp ne i32 %and640, 0
  br i1 %tobool641, label %if.then642, label %if.else644

if.then642:                                       ; preds = %land.lhs.true637
  %326 = load i8*, i8** %s, align 4
  %incdec.ptr643 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr643, i8** %s, align 4
  br label %if.end645

if.else644:                                       ; preds = %land.lhs.true637, %if.else634
  br label %for.end651

if.end645:                                        ; preds = %if.then642
  br label %if.end646

if.end646:                                        ; preds = %if.end645, %if.end633
  br label %if.end647

if.end647:                                        ; preds = %if.end646, %if.end588
  br label %if.end648

if.end648:                                        ; preds = %if.end647, %if.then566
  br label %if.end649

if.end649:                                        ; preds = %if.end648, %if.end456
  br label %if.end650

if.end650:                                        ; preds = %if.end649, %if.end419
  br label %for.cond399

for.end651:                                       ; preds = %if.else644
  %327 = load i32, i32* %qt.addr, align 4
  %tobool652 = icmp ne i32 %327, 0
  br i1 %tobool652, label %if.then653, label %if.end654

if.then653:                                       ; preds = %for.end651
  store i32 0, i32* %globsubst, align 4
  br label %if.end654

if.end654:                                        ; preds = %if.then653, %for.end651
  %328 = load i8*, i8** %s, align 4
  store i8* %328, i8** %idbeg, align 4
  %329 = load i8, i8* %inbrace, align 1
  %conv655 = sext i8 %329 to i32
  %tobool656 = icmp ne i32 %conv655, 0
  br i1 %tobool656, label %land.lhs.true657, label %land.end687

land.lhs.true657:                                 ; preds = %if.end654
  %330 = load i8*, i8** %s, align 4
  %arrayidx658 = getelementptr inbounds i8, i8* %330, i32 -1
  %331 = load i8, i8* %arrayidx658, align 1
  %conv659 = sext i8 %331 to i32
  %tobool660 = icmp ne i32 %conv659, 0
  br i1 %tobool660, label %land.lhs.true661, label %land.end687

land.lhs.true661:                                 ; preds = %land.lhs.true657
  %332 = load i8*, i8** %s, align 4
  %333 = load i8, i8* %332, align 1
  %conv662 = sext i8 %333 to i32
  %cmp663 = icmp eq i32 %conv662, 36
  br i1 %cmp663, label %land.rhs673, label %lor.lhs.false665

lor.lhs.false665:                                 ; preds = %land.lhs.true661
  %334 = load i8*, i8** %s, align 4
  %335 = load i8, i8* %334, align 1
  %conv666 = sext i8 %335 to i32
  %cmp667 = icmp eq i32 %conv666, -123
  br i1 %cmp667, label %land.rhs673, label %lor.lhs.false669

lor.lhs.false669:                                 ; preds = %lor.lhs.false665
  %336 = load i8*, i8** %s, align 4
  %337 = load i8, i8* %336, align 1
  %conv670 = sext i8 %337 to i32
  %cmp671 = icmp eq i32 %conv670, -116
  br i1 %cmp671, label %land.rhs673, label %land.end687

land.rhs673:                                      ; preds = %lor.lhs.false669, %lor.lhs.false665, %land.lhs.true661
  %338 = load i8*, i8** %s, align 4
  %arrayidx674 = getelementptr inbounds i8, i8* %338, i32 1
  %339 = load i8, i8* %arrayidx674, align 1
  %conv675 = sext i8 %339 to i32
  %cmp676 = icmp eq i32 %conv675, -113
  br i1 %cmp676, label %lor.end, label %lor.lhs.false678

lor.lhs.false678:                                 ; preds = %land.rhs673
  %340 = load i8*, i8** %s, align 4
  %arrayidx679 = getelementptr inbounds i8, i8* %340, i32 1
  %341 = load i8, i8* %arrayidx679, align 1
  %conv680 = sext i8 %341 to i32
  %cmp681 = icmp eq i32 %conv680, -120
  br i1 %cmp681, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false678
  %342 = load i8*, i8** %s, align 4
  %arrayidx683 = getelementptr inbounds i8, i8* %342, i32 1
  %343 = load i8, i8* %arrayidx683, align 1
  %conv684 = sext i8 %343 to i32
  %cmp685 = icmp eq i32 %conv684, -119
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false678, %land.rhs673
  %344 = phi i1 [ true, %lor.lhs.false678 ], [ true, %land.rhs673 ], [ %cmp685, %lor.rhs ]
  br label %land.end687

land.end687:                                      ; preds = %lor.end, %lor.lhs.false669, %land.lhs.true657, %if.end654
  %345 = phi i1 [ false, %lor.lhs.false669 ], [ false, %land.lhs.true657 ], [ false, %if.end654 ], [ %344, %lor.end ]
  %land.ext688 = zext i1 %345 to i32
  store i32 %land.ext688, i32* %subexp, align 4
  br i1 %345, label %if.then689, label %if.else761

if.then689:                                       ; preds = %land.end687
  %346 = load i8*, i8** %s, align 4
  %347 = load i8, i8* %346, align 1
  %conv691 = sext i8 %347 to i32
  %cmp692 = icmp eq i32 %conv691, -116
  %conv693 = zext i1 %cmp692 to i32
  store i32 %conv693, i32* %quoted, align 4
  %348 = load i8*, i8** %s, align 4
  %incdec.ptr694 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %incdec.ptr694, i8** %s, align 4
  store i8* %348, i8** %val, align 4
  %349 = load i8*, i8** %s, align 4
  %350 = load i8, i8* %349, align 1
  %conv695 = sext i8 %350 to i32
  switch i32 %conv695, label %sw.default699 [
    i32 -113, label %sw.bb696
    i32 -120, label %sw.bb697
    i32 -119, label %sw.bb698
  ]

sw.bb696:                                         ; preds = %if.then689
  store i32 -112, i32* %outtok, align 4
  br label %sw.epilog700

sw.bb697:                                         ; preds = %if.then689
  store i32 -118, i32* %outtok, align 4
  br label %sw.epilog700

sw.bb698:                                         ; preds = %if.then689
  store i32 -117, i32* %outtok, align 4
  br label %sw.epilog700

sw.default699:                                    ; preds = %if.then689
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

sw.epilog700:                                     ; preds = %sw.bb698, %sw.bb697, %sw.bb696
  %351 = load i8*, i8** %s, align 4
  %352 = load i8, i8* %351, align 1
  %353 = load i32, i32* %outtok, align 4
  %conv701 = trunc i32 %353 to i8
  %call702 = call i32 @skipparens(i8 signext %352, i8 signext %conv701, i8** %s)
  %354 = load i8*, i8** %s, align 4
  %355 = load i8, i8* %354, align 1
  %conv703 = sext i8 %355 to i32
  store i32 %conv703, i32* %sav690, align 4
  %356 = load i8*, i8** %s, align 4
  store i8 0, i8* %356, align 1
  %357 = load i32, i32* %aspar, align 4
  %tobool704 = icmp ne i32 %357, 0
  br i1 %tobool704, label %cond.true705, label %cond.false706

cond.true705:                                     ; preds = %sw.epilog700
  br label %cond.end707

cond.false706:                                    ; preds = %sw.epilog700
  br label %cond.end707

cond.end707:                                      ; preds = %cond.false706, %cond.true705
  %cond708 = phi i8*** [ null, %cond.true705 ], [ %aval, %cond.false706 ]
  %call709 = call i32 @multsub(i8** %val, i32 64, i8*** %cond708, i32* %isarr, i8* null, i32* %ms_flags)
  %tobool710 = icmp ne i32 %call709, 0
  br i1 %tobool710, label %land.lhs.true711, label %if.else715

land.lhs.true711:                                 ; preds = %cond.end707
  %358 = load i32, i32* %quoted, align 4
  %tobool712 = icmp ne i32 %358, 0
  br i1 %tobool712, label %if.then713, label %if.else715

if.then713:                                       ; preds = %land.lhs.true711
  store i32 -1, i32* %isarr, align 4
  %call714 = call i8* @hcalloc(i32 4)
  %359 = bitcast i8* %call714 to i8**
  store i8** %359, i8*** %aval, align 4
  store i32 0, i32* %aspar, align 4
  br label %if.end719

if.else715:                                       ; preds = %land.lhs.true711, %cond.end707
  %360 = load i32, i32* %aspar, align 4
  %tobool716 = icmp ne i32 %360, 0
  br i1 %tobool716, label %if.then717, label %if.end718

if.then717:                                       ; preds = %if.else715
  %361 = load i8*, i8** %val, align 4
  store i8* %361, i8** %idbeg, align 4
  br label %if.end718

if.end718:                                        ; preds = %if.then717, %if.else715
  br label %if.end719

if.end719:                                        ; preds = %if.end718, %if.then713
  %362 = load i32, i32* %sav690, align 4
  %conv720 = trunc i32 %362 to i8
  %363 = load i8*, i8** %s, align 4
  store i8 %conv720, i8* %363, align 1
  br label %while.cond721

while.cond721:                                    ; preds = %while.body727, %if.end719
  %364 = load i8*, i8** %s, align 4
  %365 = load i8, i8* %364, align 1
  %idxprom722 = zext i8 %365 to i32
  %arrayidx723 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom722
  %366 = load i16, i16* %arrayidx723, align 2
  %conv724 = sext i16 %366 to i32
  %and725 = and i32 %conv724, 16384
  %tobool726 = icmp ne i32 %and725, 0
  br i1 %tobool726, label %while.body727, label %while.end729

while.body727:                                    ; preds = %while.cond721
  %367 = load i8*, i8** %s, align 4
  %incdec.ptr728 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %incdec.ptr728, i8** %s, align 4
  br label %while.cond721

while.end729:                                     ; preds = %while.cond721
  %368 = load i32, i32* %ms_flags, align 4
  %and730 = and i32 %368, 4
  %tobool731 = icmp ne i32 %and730, 0
  br i1 %tobool731, label %if.then732, label %if.else759

if.then732:                                       ; preds = %while.end729
  %369 = load i32, i32* %isarr, align 4
  %tobool733 = icmp ne i32 %369, 0
  br i1 %tobool733, label %if.then734, label %if.end743

if.then734:                                       ; preds = %if.then732
  %370 = load i8**, i8*** %aval, align 4
  %arrayidx735 = getelementptr inbounds i8*, i8** %370, i32 0
  %371 = load i8*, i8** %arrayidx735, align 4
  %tobool736 = icmp ne i8* %371, null
  br i1 %tobool736, label %land.lhs.true737, label %if.end741

land.lhs.true737:                                 ; preds = %if.then734
  %372 = load i8**, i8*** %aval, align 4
  %arrayidx738 = getelementptr inbounds i8*, i8** %372, i32 1
  %373 = load i8*, i8** %arrayidx738, align 4
  %tobool739 = icmp ne i8* %373, null
  br i1 %tobool739, label %if.then740, label %if.end741

if.then740:                                       ; preds = %land.lhs.true737
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end741:                                        ; preds = %land.lhs.true737, %if.then734
  %374 = load i8**, i8*** %aval, align 4
  %arrayidx742 = getelementptr inbounds i8*, i8** %374, i32 0
  %375 = load i8*, i8** %arrayidx742, align 4
  store i8* %375, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end743

if.end743:                                        ; preds = %if.end741, %if.then732
  %376 = load i8*, i8** %val, align 4
  %tobool744 = icmp ne i8* %376, null
  br i1 %tobool744, label %cond.true745, label %cond.false747

cond.true745:                                     ; preds = %if.end743
  %377 = load i8*, i8** %val, align 4
  %378 = load i8*, i8** %s, align 4
  %call746 = call i8* @dyncat(i8* %377, i8* %378)
  br label %cond.end749

cond.false747:                                    ; preds = %if.end743
  %379 = load i8*, i8** %s, align 4
  %call748 = call i8* @dupstring(i8* %379)
  br label %cond.end749

cond.end749:                                      ; preds = %cond.false747, %cond.true745
  %cond750 = phi i8* [ %call746, %cond.true745 ], [ %call748, %cond.false747 ]
  store i8* %cond750, i8** %s, align 4
  store i32 0, i32* %subexp, align 4
  %380 = load i32, i32* %aspar, align 4
  %tobool751 = icmp ne i32 %380, 0
  br i1 %tobool751, label %land.rhs752, label %land.end757

land.rhs752:                                      ; preds = %cond.end749
  %381 = load i32, i32* %pf_flags.addr, align 4
  %and753 = and i32 %381, 64
  %tobool754 = icmp ne i32 %and753, 0
  %lnot755 = xor i1 %tobool754, true
  br label %land.end757

land.end757:                                      ; preds = %land.rhs752, %cond.end749
  %382 = phi i1 [ false, %cond.end749 ], [ %lnot755, %land.rhs752 ]
  %land.ext758 = zext i1 %382 to i32
  store i32 %land.ext758, i32* %fetch_needed, align 4
  br label %if.end760

if.else759:                                       ; preds = %while.end729
  store i32 0, i32* %fetch_needed, align 4
  br label %if.end760

if.end760:                                        ; preds = %if.else759, %land.end757
  store %struct.value* null, %struct.value** %v, align 4
  br label %if.end762

if.else761:                                       ; preds = %land.end687
  %383 = load i32, i32* %aspar, align 4
  store i32 %383, i32* %fetch_needed, align 4
  br label %if.end762

if.end762:                                        ; preds = %if.else761, %if.end760
  %384 = load i32, i32* %fetch_needed, align 4
  %tobool763 = icmp ne i32 %384, 0
  br i1 %tobool763, label %if.then764, label %if.end773

if.then764:                                       ; preds = %if.end762
  %385 = load i32, i32* %qt.addr, align 4
  %tobool765 = icmp ne i32 %385, 0
  %cond766 = select i1 %tobool765, i32 256, i32 0
  %call767 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s, i32 1, i32 %cond766)
  store %struct.value* %call767, %struct.value** %v, align 4
  %tobool768 = icmp ne %struct.value* %call767, null
  br i1 %tobool768, label %if.then769, label %if.else771

if.then769:                                       ; preds = %if.then764
  %386 = load %struct.value*, %struct.value** %v, align 4
  %call770 = call i8* @getstrvalue(%struct.value* %386)
  store i8* %call770, i8** %idbeg, align 4
  store i8* %call770, i8** %val, align 4
  store i32 1, i32* %subexp, align 4
  br label %if.end772

if.else771:                                       ; preds = %if.then764
  store i32 1, i32* %vunset, align 4
  br label %if.end772

if.end772:                                        ; preds = %if.else771, %if.then769
  br label %if.end773

if.end773:                                        ; preds = %if.end772, %if.end762
  %387 = load i32, i32* %aspar, align 4
  %tobool774 = icmp ne i32 %387, 0
  br i1 %tobool774, label %land.lhs.true775, label %if.end780

land.lhs.true775:                                 ; preds = %if.end773
  %388 = load i32, i32* %pf_flags.addr, align 4
  %and776 = and i32 %388, 64
  %tobool777 = icmp ne i32 %and776, 0
  br i1 %tobool777, label %if.then778, label %if.end780

if.then778:                                       ; preds = %land.lhs.true775
  store i32 0, i32* %aspar, align 4
  %389 = load i32*, i32** %ret_flags.addr, align 4
  %390 = load i32, i32* %389, align 4
  %or779 = or i32 %390, 4
  store i32 %or779, i32* %389, align 4
  br label %if.end780

if.end780:                                        ; preds = %if.then778, %land.lhs.true775, %if.end773
  %391 = load i32, i32* %subexp, align 4
  %tobool781 = icmp ne i32 %391, 0
  br i1 %tobool781, label %lor.lhs.false782, label %if.then784

lor.lhs.false782:                                 ; preds = %if.end780
  %392 = load i32, i32* %aspar, align 4
  %tobool783 = icmp ne i32 %392, 0
  br i1 %tobool783, label %if.then784, label %if.end929

if.then784:                                       ; preds = %lor.lhs.false782, %if.end780
  %393 = load i8*, i8** %val, align 4
  store i8* %393, i8** %ov, align 4
  %394 = load i8, i8* %hkeys, align 1
  %conv785 = sext i8 %394 to i32
  %395 = load i8, i8* %hvals, align 1
  %conv786 = sext i8 %395 to i32
  %or787 = or i32 %conv785, %conv786
  store i32 %or787, i32* %scanflags, align 4
  %396 = load i32, i32* %arrasg, align 4
  %tobool788 = icmp ne i32 %396, 0
  br i1 %tobool788, label %if.then789, label %if.end791

if.then789:                                       ; preds = %if.then784
  %397 = load i32, i32* %scanflags, align 4
  %or790 = or i32 %397, 64
  store i32 %or790, i32* %scanflags, align 4
  br label %if.end791

if.end791:                                        ; preds = %if.then789, %if.then784
  %398 = load i32, i32* %qt.addr, align 4
  %tobool792 = icmp ne i32 %398, 0
  br i1 %tobool792, label %if.then793, label %if.end795

if.then793:                                       ; preds = %if.end791
  %399 = load i32, i32* %scanflags, align 4
  %or794 = or i32 %399, 256
  store i32 %or794, i32* %scanflags, align 4
  br label %if.end795

if.end795:                                        ; preds = %if.then793, %if.end791
  %400 = load i32, i32* %chkset, align 4
  %tobool796 = icmp ne i32 %400, 0
  br i1 %tobool796, label %if.then797, label %if.end799

if.then797:                                       ; preds = %if.end795
  %401 = load i32, i32* %scanflags, align 4
  %or798 = or i32 %401, 1024
  store i32 %or798, i32* %scanflags, align 4
  br label %if.end799

if.end799:                                        ; preds = %if.then797, %if.end795
  %402 = load i32, i32* %subexp, align 4
  %tobool800 = icmp ne i32 %402, 0
  br i1 %tobool800, label %cond.true801, label %cond.false802

cond.true801:                                     ; preds = %if.end799
  br label %cond.end803

cond.false802:                                    ; preds = %if.end799
  br label %cond.end803

cond.end803:                                      ; preds = %cond.false802, %cond.true801
  %cond804 = phi i8** [ %ov, %cond.true801 ], [ %s, %cond.false802 ]
  %403 = load i32, i32* %wantt, align 4
  %tobool805 = icmp ne i32 %403, 0
  br i1 %tobool805, label %cond.true806, label %cond.false807

cond.true806:                                     ; preds = %cond.end803
  br label %cond.end814

cond.false807:                                    ; preds = %cond.end803
  %404 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool808 = icmp ne i8 %404, 0
  br i1 %tobool808, label %lor.rhs809, label %lor.end812

lor.rhs809:                                       ; preds = %cond.false807
  %405 = load i8, i8* %inbrace, align 1
  %conv810 = sext i8 %405 to i32
  %tobool811 = icmp ne i32 %conv810, 0
  br label %lor.end812

lor.end812:                                       ; preds = %lor.rhs809, %cond.false807
  %406 = phi i1 [ true, %cond.false807 ], [ %tobool811, %lor.rhs809 ]
  %cond813 = select i1 %406, i32 1, i32 -1
  br label %cond.end814

cond.end814:                                      ; preds = %lor.end812, %cond.true806
  %cond815 = phi i32 [ -1, %cond.true806 ], [ %cond813, %lor.end812 ]
  %407 = load i32, i32* %scanflags, align 4
  %call816 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %cond804, i32 %cond815, i32 %407)
  store %struct.value* %call816, %struct.value** %v, align 4
  %tobool817 = icmp ne %struct.value* %call816, null
  br i1 %tobool817, label %lor.lhs.false818, label %if.then829

lor.lhs.false818:                                 ; preds = %cond.end814
  %408 = load %struct.value*, %struct.value** %v, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %408, i32 0, i32 1
  %409 = load %struct.param*, %struct.param** %pm, align 4
  %tobool819 = icmp ne %struct.param* %409, null
  br i1 %tobool819, label %land.lhs.true820, label %lor.lhs.false825

land.lhs.true820:                                 ; preds = %lor.lhs.false818
  %410 = load %struct.value*, %struct.value** %v, align 4
  %pm821 = getelementptr inbounds %struct.value, %struct.value* %410, i32 0, i32 1
  %411 = load %struct.param*, %struct.param** %pm821, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %411, i32 0, i32 0
  %flags822 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %412 = load i32, i32* %flags822, align 8
  %and823 = and i32 %412, 33554432
  %tobool824 = icmp ne i32 %and823, 0
  br i1 %tobool824, label %if.then829, label %lor.lhs.false825

lor.lhs.false825:                                 ; preds = %land.lhs.true820, %lor.lhs.false818
  %413 = load %struct.value*, %struct.value** %v, align 4
  %flags826 = getelementptr inbounds %struct.value, %struct.value* %413, i32 0, i32 2
  %414 = load i32, i32* %flags826, align 4
  %and827 = and i32 %414, 2
  %tobool828 = icmp ne i32 %and827, 0
  br i1 %tobool828, label %if.then829, label %if.end830

if.then829:                                       ; preds = %lor.lhs.false825, %land.lhs.true820, %cond.end814
  store i32 1, i32* %vunset, align 4
  br label %if.end830

if.end830:                                        ; preds = %if.then829, %lor.lhs.false825
  %415 = load i32, i32* %wantt, align 4
  %tobool831 = icmp ne i32 %415, 0
  br i1 %tobool831, label %if.then832, label %if.end928

if.then832:                                       ; preds = %if.end830
  %416 = load %struct.value*, %struct.value** %v, align 4
  %tobool833 = icmp ne %struct.value* %416, null
  br i1 %tobool833, label %land.lhs.true834, label %if.else925

land.lhs.true834:                                 ; preds = %if.then832
  %417 = load %struct.value*, %struct.value** %v, align 4
  %pm835 = getelementptr inbounds %struct.value, %struct.value* %417, i32 0, i32 1
  %418 = load %struct.param*, %struct.param** %pm835, align 4
  %tobool836 = icmp ne %struct.param* %418, null
  br i1 %tobool836, label %land.lhs.true837, label %if.else925

land.lhs.true837:                                 ; preds = %land.lhs.true834
  %419 = load %struct.value*, %struct.value** %v, align 4
  %pm838 = getelementptr inbounds %struct.value, %struct.value* %419, i32 0, i32 1
  %420 = load %struct.param*, %struct.param** %pm838, align 4
  %node839 = getelementptr inbounds %struct.param, %struct.param* %420, i32 0, i32 0
  %flags840 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node839, i32 0, i32 2
  %421 = load i32, i32* %flags840, align 8
  %and841 = and i32 %421, 33554432
  %tobool842 = icmp ne i32 %and841, 0
  br i1 %tobool842, label %if.else925, label %if.then843

if.then843:                                       ; preds = %land.lhs.true837
  %422 = load %struct.value*, %struct.value** %v, align 4
  %pm844 = getelementptr inbounds %struct.value, %struct.value* %422, i32 0, i32 1
  %423 = load %struct.param*, %struct.param** %pm844, align 4
  %node845 = getelementptr inbounds %struct.param, %struct.param* %423, i32 0, i32 0
  %flags846 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node845, i32 0, i32 2
  %424 = load i32, i32* %flags846, align 8
  store i32 %424, i32* %f, align 4
  %425 = load i32, i32* %f, align 4
  %and847 = and i32 %425, 31
  switch i32 %and847, label %sw.epilog853 [
    i32 0, label %sw.bb848
    i32 1, label %sw.bb849
    i32 2, label %sw.bb850
    i32 4, label %sw.bb851
    i32 8, label %sw.bb851
    i32 16, label %sw.bb852
  ]

sw.bb848:                                         ; preds = %if.then843
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog853

sw.bb849:                                         ; preds = %if.then843
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog853

sw.bb850:                                         ; preds = %if.then843
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog853

sw.bb851:                                         ; preds = %if.then843, %if.then843
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog853

sw.bb852:                                         ; preds = %if.then843
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog853

sw.epilog853:                                     ; preds = %if.then843, %sw.bb852, %sw.bb851, %sw.bb850, %sw.bb849, %sw.bb848
  %426 = load i8*, i8** %val, align 4
  %call854 = call i8* @dupstring(i8* %426)
  store i8* %call854, i8** %val, align 4
  %427 = load %struct.value*, %struct.value** %v, align 4
  %pm855 = getelementptr inbounds %struct.value, %struct.value* %427, i32 0, i32 1
  %428 = load %struct.param*, %struct.param** %pm855, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %428, i32 0, i32 8
  %429 = load i32, i32* %level, align 8
  %tobool856 = icmp ne i32 %429, 0
  br i1 %tobool856, label %if.then857, label %if.end859

if.then857:                                       ; preds = %sw.epilog853
  %430 = load i8*, i8** %val, align 4
  %call858 = call i8* @dyncat(i8* %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  store i8* %call858, i8** %val, align 4
  br label %if.end859

if.end859:                                        ; preds = %if.then857, %sw.epilog853
  %431 = load i32, i32* %f, align 4
  %and860 = and i32 %431, 32
  %tobool861 = icmp ne i32 %and860, 0
  br i1 %tobool861, label %if.then862, label %if.end864

if.then862:                                       ; preds = %if.end859
  %432 = load i8*, i8** %val, align 4
  %call863 = call i8* @dyncat(i8* %432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0))
  store i8* %call863, i8** %val, align 4
  br label %if.end864

if.end864:                                        ; preds = %if.then862, %if.end859
  %433 = load i32, i32* %f, align 4
  %and865 = and i32 %433, 64
  %tobool866 = icmp ne i32 %and865, 0
  br i1 %tobool866, label %if.then867, label %if.end869

if.then867:                                       ; preds = %if.end864
  %434 = load i8*, i8** %val, align 4
  %call868 = call i8* @dyncat(i8* %434, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  store i8* %call868, i8** %val, align 4
  br label %if.end869

if.end869:                                        ; preds = %if.then867, %if.end864
  %435 = load i32, i32* %f, align 4
  %and870 = and i32 %435, 128
  %tobool871 = icmp ne i32 %and870, 0
  br i1 %tobool871, label %if.then872, label %if.end874

if.then872:                                       ; preds = %if.end869
  %436 = load i8*, i8** %val, align 4
  %call873 = call i8* @dyncat(i8* %436, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0))
  store i8* %call873, i8** %val, align 4
  br label %if.end874

if.end874:                                        ; preds = %if.then872, %if.end869
  %437 = load i32, i32* %f, align 4
  %and875 = and i32 %437, 256
  %tobool876 = icmp ne i32 %and875, 0
  br i1 %tobool876, label %if.then877, label %if.end879

if.then877:                                       ; preds = %if.end874
  %438 = load i8*, i8** %val, align 4
  %call878 = call i8* @dyncat(i8* %438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  store i8* %call878, i8** %val, align 4
  br label %if.end879

if.end879:                                        ; preds = %if.then877, %if.end874
  %439 = load i32, i32* %f, align 4
  %and880 = and i32 %439, 512
  %tobool881 = icmp ne i32 %and880, 0
  br i1 %tobool881, label %if.then882, label %if.end884

if.then882:                                       ; preds = %if.end879
  %440 = load i8*, i8** %val, align 4
  %call883 = call i8* @dyncat(i8* %440, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call883, i8** %val, align 4
  br label %if.end884

if.end884:                                        ; preds = %if.then882, %if.end879
  %441 = load i32, i32* %f, align 4
  %and885 = and i32 %441, 1024
  %tobool886 = icmp ne i32 %and885, 0
  br i1 %tobool886, label %if.then887, label %if.end889

if.then887:                                       ; preds = %if.end884
  %442 = load i8*, i8** %val, align 4
  %call888 = call i8* @dyncat(i8* %442, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0))
  store i8* %call888, i8** %val, align 4
  br label %if.end889

if.end889:                                        ; preds = %if.then887, %if.end884
  %443 = load i32, i32* %f, align 4
  %and890 = and i32 %443, 2048
  %tobool891 = icmp ne i32 %and890, 0
  br i1 %tobool891, label %if.then892, label %if.end894

if.then892:                                       ; preds = %if.end889
  %444 = load i8*, i8** %val, align 4
  %call893 = call i8* @dyncat(i8* %444, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  store i8* %call893, i8** %val, align 4
  br label %if.end894

if.end894:                                        ; preds = %if.then892, %if.end889
  %445 = load i32, i32* %f, align 4
  %and895 = and i32 %445, 65536
  %tobool896 = icmp ne i32 %and895, 0
  br i1 %tobool896, label %if.then897, label %if.end899

if.then897:                                       ; preds = %if.end894
  %446 = load i8*, i8** %val, align 4
  %call898 = call i8* @dyncat(i8* %446, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0))
  store i8* %call898, i8** %val, align 4
  br label %if.end899

if.end899:                                        ; preds = %if.then897, %if.end894
  %447 = load i32, i32* %f, align 4
  %and900 = and i32 %447, 4096
  %tobool901 = icmp ne i32 %and900, 0
  br i1 %tobool901, label %if.then902, label %if.end904

if.then902:                                       ; preds = %if.end899
  %448 = load i8*, i8** %val, align 4
  %call903 = call i8* @dyncat(i8* %448, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0))
  store i8* %call903, i8** %val, align 4
  br label %if.end904

if.end904:                                        ; preds = %if.then902, %if.end899
  %449 = load i32, i32* %f, align 4
  %and905 = and i32 %449, 8192
  %tobool906 = icmp ne i32 %and905, 0
  br i1 %tobool906, label %if.then907, label %if.end909

if.then907:                                       ; preds = %if.end904
  %450 = load i8*, i8** %val, align 4
  %call908 = call i8* @dyncat(i8* %450, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  store i8* %call908, i8** %val, align 4
  br label %if.end909

if.end909:                                        ; preds = %if.then907, %if.end904
  %451 = load i32, i32* %f, align 4
  %and910 = and i32 %451, 16384
  %tobool911 = icmp ne i32 %and910, 0
  br i1 %tobool911, label %if.then912, label %if.end914

if.then912:                                       ; preds = %if.end909
  %452 = load i8*, i8** %val, align 4
  %call913 = call i8* @dyncat(i8* %452, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  store i8* %call913, i8** %val, align 4
  br label %if.end914

if.end914:                                        ; preds = %if.then912, %if.end909
  %453 = load i32, i32* %f, align 4
  %and915 = and i32 %453, 32768
  %tobool916 = icmp ne i32 %and915, 0
  br i1 %tobool916, label %if.then917, label %if.end919

if.then917:                                       ; preds = %if.end914
  %454 = load i8*, i8** %val, align 4
  %call918 = call i8* @dyncat(i8* %454, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0))
  store i8* %call918, i8** %val, align 4
  br label %if.end919

if.end919:                                        ; preds = %if.then917, %if.end914
  %455 = load i32, i32* %f, align 4
  %and920 = and i32 %455, 4194304
  %tobool921 = icmp ne i32 %and920, 0
  br i1 %tobool921, label %if.then922, label %if.end924

if.then922:                                       ; preds = %if.end919
  %456 = load i8*, i8** %val, align 4
  %call923 = call i8* @dyncat(i8* %456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0))
  store i8* %call923, i8** %val, align 4
  br label %if.end924

if.end924:                                        ; preds = %if.then922, %if.end919
  store i32 0, i32* %vunset, align 4
  br label %if.end927

if.else925:                                       ; preds = %land.lhs.true837, %land.lhs.true834, %if.then832
  %call926 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call926, i8** %val, align 4
  br label %if.end927

if.end927:                                        ; preds = %if.else925, %if.end924
  store %struct.value* null, %struct.value** %v, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end928

if.end928:                                        ; preds = %if.end927, %if.end830
  br label %if.end929

if.end929:                                        ; preds = %if.end928, %lor.lhs.false782
  br label %while.cond930

while.cond930:                                    ; preds = %if.end1082, %if.end929
  %457 = load %struct.value*, %struct.value** %v, align 4
  %tobool931 = icmp ne %struct.value* %457, null
  br i1 %tobool931, label %lor.end950, label %lor.rhs932

lor.rhs932:                                       ; preds = %while.cond930
  %458 = load i8, i8* %inbrace, align 1
  %conv933 = sext i8 %458 to i32
  %tobool934 = icmp ne i32 %conv933, 0
  br i1 %tobool934, label %land.rhs939, label %lor.lhs.false935

lor.lhs.false935:                                 ; preds = %lor.rhs932
  %459 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool936 = icmp ne i8 %459, 0
  br i1 %tobool936, label %land.end948, label %land.lhs.true937

land.lhs.true937:                                 ; preds = %lor.lhs.false935
  %460 = load i32, i32* %vunset, align 4
  %tobool938 = icmp ne i32 %460, 0
  br i1 %tobool938, label %land.rhs939, label %land.end948

land.rhs939:                                      ; preds = %land.lhs.true937, %lor.rhs932
  %461 = load i8*, i8** %s, align 4
  %462 = load i8, i8* %461, align 1
  %conv940 = sext i8 %462 to i32
  %cmp941 = icmp eq i32 %conv940, 91
  br i1 %cmp941, label %lor.end947, label %lor.rhs943

lor.rhs943:                                       ; preds = %land.rhs939
  %463 = load i8*, i8** %s, align 4
  %464 = load i8, i8* %463, align 1
  %conv944 = sext i8 %464 to i32
  %cmp945 = icmp eq i32 %conv944, -111
  br label %lor.end947

lor.end947:                                       ; preds = %lor.rhs943, %land.rhs939
  %465 = phi i1 [ true, %land.rhs939 ], [ %cmp945, %lor.rhs943 ]
  br label %land.end948

land.end948:                                      ; preds = %lor.end947, %land.lhs.true937, %lor.lhs.false935
  %466 = phi i1 [ false, %land.lhs.true937 ], [ false, %lor.lhs.false935 ], [ %465, %lor.end947 ]
  br label %lor.end950

lor.end950:                                       ; preds = %land.end948, %while.cond930
  %467 = phi i1 [ true, %while.cond930 ], [ %466, %land.end948 ]
  br i1 %467, label %while.body951, label %while.end1083

while.body951:                                    ; preds = %lor.end950
  %468 = load %struct.value*, %struct.value** %v, align 4
  %tobool952 = icmp ne %struct.value* %468, null
  br i1 %tobool952, label %if.end989, label %if.then953

if.then953:                                       ; preds = %while.body951
  %469 = load i8*, i8** %s, align 4
  store i8* %469, i8** %os, align 4
  %470 = load i8*, i8** %s, align 4
  %471 = load i8, i8* %470, align 1
  %conv955 = sext i8 %471 to i32
  %cmp956 = icmp eq i32 %conv955, 91
  br i1 %cmp956, label %if.end963, label %lor.lhs.false958

lor.lhs.false958:                                 ; preds = %if.then953
  %472 = load i8*, i8** %s, align 4
  %473 = load i8, i8* %472, align 1
  %conv959 = sext i8 %473 to i32
  %cmp960 = icmp eq i32 %conv959, -111
  br i1 %cmp960, label %if.end963, label %if.then962

if.then962:                                       ; preds = %lor.lhs.false958
  br label %while.end1083

if.end963:                                        ; preds = %lor.lhs.false958, %if.then953
  %474 = load i32, i32* %vunset, align 4
  %tobool964 = icmp ne i32 %474, 0
  br i1 %tobool964, label %if.then965, label %if.end967

if.then965:                                       ; preds = %if.end963
  %call966 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call966, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end967

if.end967:                                        ; preds = %if.then965, %if.end963
  %475 = load i32, i32* %isarr, align 4
  %tobool968 = icmp ne i32 %475, 0
  %cond969 = select i1 %tobool968, i32 1, i32 0
  %call970 = call %struct.param* @createparam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0), i32 %cond969)
  store %struct.param* %call970, %struct.param** %pm954, align 4
  %476 = load i32, i32* %isarr, align 4
  %tobool971 = icmp ne i32 %476, 0
  br i1 %tobool971, label %if.then972, label %if.else973

if.then972:                                       ; preds = %if.end967
  %477 = load i8**, i8*** %aval, align 4
  %478 = load %struct.param*, %struct.param** %pm954, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %478, i32 0, i32 1
  %arr = bitcast %union.anon.0* %u to i8***
  store i8** %477, i8*** %arr, align 8
  br label %if.end976

if.else973:                                       ; preds = %if.end967
  %479 = load i8*, i8** %val, align 4
  %480 = load %struct.param*, %struct.param** %pm954, align 4
  %u974 = getelementptr inbounds %struct.param, %struct.param* %480, i32 0, i32 1
  %str975 = bitcast %union.anon.0* %u974 to i8**
  store i8* %479, i8** %str975, align 8
  br label %if.end976

if.end976:                                        ; preds = %if.else973, %if.then972
  %call977 = call i8* @hcalloc(i32 24)
  %481 = bitcast i8* %call977 to %struct.value*
  store %struct.value* %481, %struct.value** %v, align 4
  %482 = load i32, i32* %isarr, align 4
  %483 = load %struct.value*, %struct.value** %v, align 4
  %isarr978 = getelementptr inbounds %struct.value, %struct.value* %483, i32 0, i32 0
  store i32 %482, i32* %isarr978, align 4
  %484 = load %struct.param*, %struct.param** %pm954, align 4
  %485 = load %struct.value*, %struct.value** %v, align 4
  %pm979 = getelementptr inbounds %struct.value, %struct.value* %485, i32 0, i32 1
  store %struct.param* %484, %struct.param** %pm979, align 4
  %486 = load %struct.value*, %struct.value** %v, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %486, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %487 = load %struct.value*, %struct.value** %v, align 4
  %488 = load i32, i32* %qt.addr, align 4
  %tobool980 = icmp ne i32 %488, 0
  %cond981 = select i1 %tobool980, i32 256, i32 0
  %call982 = call i32 @getindex(i8** %s, %struct.value* %487, i32 %cond981)
  %tobool983 = icmp ne i32 %call982, 0
  br i1 %tobool983, label %if.then987, label %lor.lhs.false984

lor.lhs.false984:                                 ; preds = %if.end976
  %489 = load i8*, i8** %s, align 4
  %490 = load i8*, i8** %os, align 4
  %cmp985 = icmp eq i8* %489, %490
  br i1 %cmp985, label %if.then987, label %if.end988

if.then987:                                       ; preds = %lor.lhs.false984, %if.end976
  br label %while.end1083

if.end988:                                        ; preds = %lor.lhs.false984
  br label %if.end989

if.end989:                                        ; preds = %if.end988, %while.body951
  %491 = load %struct.value*, %struct.value** %v, align 4
  %isarr990 = getelementptr inbounds %struct.value, %struct.value* %491, i32 0, i32 0
  %492 = load i32, i32* %isarr990, align 4
  store i32 %492, i32* %isarr, align 4
  %tobool991 = icmp ne i32 %492, 0
  br i1 %tobool991, label %if.then992, label %if.else1004

if.then992:                                       ; preds = %if.end989
  %493 = load %struct.value*, %struct.value** %v, align 4
  %isarr993 = getelementptr inbounds %struct.value, %struct.value* %493, i32 0, i32 0
  %494 = load i32, i32* %isarr993, align 4
  %cmp994 = icmp eq i32 %494, 4
  br i1 %cmp994, label %if.then996, label %if.else1001

if.then996:                                       ; preds = %if.then992
  %495 = load %struct.value*, %struct.value** %v, align 4
  %isarr997 = getelementptr inbounds %struct.value, %struct.value* %495, i32 0, i32 0
  store i32 0, i32* %isarr997, align 4
  store i32 0, i32* %isarr, align 4
  %496 = load %struct.value*, %struct.value** %v, align 4
  %pm998 = getelementptr inbounds %struct.value, %struct.value* %496, i32 0, i32 1
  %497 = load %struct.param*, %struct.param** %pm998, align 4
  %node999 = getelementptr inbounds %struct.param, %struct.param* %497, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node999, i32 0, i32 1
  %498 = load i8*, i8** %nam, align 4
  %call1000 = call i8* @dupstring(i8* %498)
  store i8* %call1000, i8** %val, align 4
  br label %if.end1003

if.else1001:                                      ; preds = %if.then992
  %499 = load %struct.value*, %struct.value** %v, align 4
  %call1002 = call i8** @getarrvalue(%struct.value* %499)
  store i8** %call1002, i8*** %aval, align 4
  br label %if.end1003

if.end1003:                                       ; preds = %if.else1001, %if.then996
  br label %if.end1061

if.else1004:                                      ; preds = %if.end989
  %500 = load %struct.value*, %struct.value** %v, align 4
  %pm1005 = getelementptr inbounds %struct.value, %struct.value* %500, i32 0, i32 1
  %501 = load %struct.param*, %struct.param** %pm1005, align 4
  %node1006 = getelementptr inbounds %struct.param, %struct.param* %501, i32 0, i32 0
  %flags1007 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1006, i32 0, i32 2
  %502 = load i32, i32* %flags1007, align 8
  %and1008 = and i32 %502, 1
  %tobool1009 = icmp ne i32 %and1008, 0
  br i1 %tobool1009, label %if.then1010, label %if.end1054

if.then1010:                                      ; preds = %if.else1004
  store i32 -1, i32* %tmplen, align 4
  %503 = load %struct.value*, %struct.value** %v, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %503, i32 0, i32 3
  %504 = load i32, i32* %start, align 4
  %cmp1011 = icmp slt i32 %504, 0
  br i1 %cmp1011, label %if.then1013, label %if.end1025

if.then1013:                                      ; preds = %if.then1010
  %505 = load %struct.value*, %struct.value** %v, align 4
  %pm1014 = getelementptr inbounds %struct.value, %struct.value* %505, i32 0, i32 1
  %506 = load %struct.param*, %struct.param** %pm1014, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %506, i32 0, i32 2
  %a = bitcast %union.anon.1* %gsu to %struct.gsu_array**
  %507 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %getfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %507, i32 0, i32 0
  %508 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn, align 4
  %509 = load %struct.value*, %struct.value** %v, align 4
  %pm1015 = getelementptr inbounds %struct.value, %struct.value* %509, i32 0, i32 1
  %510 = load %struct.param*, %struct.param** %pm1015, align 4
  %call1016 = call i8** %508(%struct.param* %510)
  %call1017 = call i32 @arrlen(i8** %call1016)
  store i32 %call1017, i32* %tmplen, align 4
  %511 = load i32, i32* %tmplen, align 4
  %512 = load %struct.value*, %struct.value** %v, align 4
  %flags1018 = getelementptr inbounds %struct.value, %struct.value* %512, i32 0, i32 2
  %513 = load i32, i32* %flags1018, align 4
  %and1019 = and i32 %513, 1
  %tobool1020 = icmp ne i32 %and1019, 0
  %cond1021 = select i1 %tobool1020, i32 1, i32 0
  %add1022 = add nsw i32 %511, %cond1021
  %514 = load %struct.value*, %struct.value** %v, align 4
  %start1023 = getelementptr inbounds %struct.value, %struct.value* %514, i32 0, i32 3
  %515 = load i32, i32* %start1023, align 4
  %add1024 = add nsw i32 %515, %add1022
  store i32 %add1024, i32* %start1023, align 4
  br label %if.end1025

if.end1025:                                       ; preds = %if.then1013, %if.then1010
  %516 = load %struct.value*, %struct.value** %v, align 4
  %flags1026 = getelementptr inbounds %struct.value, %struct.value* %516, i32 0, i32 2
  %517 = load i32, i32* %flags1026, align 4
  %and1027 = and i32 %517, 1
  %tobool1028 = icmp ne i32 %and1027, 0
  br i1 %tobool1028, label %if.end1053, label %if.then1029

if.then1029:                                      ; preds = %if.end1025
  %518 = load %struct.value*, %struct.value** %v, align 4
  %start1030 = getelementptr inbounds %struct.value, %struct.value* %518, i32 0, i32 3
  %519 = load i32, i32* %start1030, align 4
  %cmp1031 = icmp slt i32 %519, 0
  br i1 %cmp1031, label %if.then1051, label %lor.lhs.false1033

lor.lhs.false1033:                                ; preds = %if.then1029
  %520 = load i32, i32* %tmplen, align 4
  %cmp1034 = icmp ne i32 %520, -1
  br i1 %cmp1034, label %cond.true1036, label %cond.false1040

cond.true1036:                                    ; preds = %lor.lhs.false1033
  %521 = load %struct.value*, %struct.value** %v, align 4
  %start1037 = getelementptr inbounds %struct.value, %struct.value* %521, i32 0, i32 3
  %522 = load i32, i32* %start1037, align 4
  %523 = load i32, i32* %tmplen, align 4
  %cmp1038 = icmp sge i32 %522, %523
  br i1 %cmp1038, label %if.then1051, label %if.end1052

cond.false1040:                                   ; preds = %lor.lhs.false1033
  %524 = load %struct.value*, %struct.value** %v, align 4
  %pm1041 = getelementptr inbounds %struct.value, %struct.value* %524, i32 0, i32 1
  %525 = load %struct.param*, %struct.param** %pm1041, align 4
  %gsu1042 = getelementptr inbounds %struct.param, %struct.param* %525, i32 0, i32 2
  %a1043 = bitcast %union.anon.1* %gsu1042 to %struct.gsu_array**
  %526 = load %struct.gsu_array*, %struct.gsu_array** %a1043, align 8
  %getfn1044 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %526, i32 0, i32 0
  %527 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn1044, align 4
  %528 = load %struct.value*, %struct.value** %v, align 4
  %pm1045 = getelementptr inbounds %struct.value, %struct.value* %528, i32 0, i32 1
  %529 = load %struct.param*, %struct.param** %pm1045, align 4
  %call1046 = call i8** %527(%struct.param* %529)
  %530 = load %struct.value*, %struct.value** %v, align 4
  %start1047 = getelementptr inbounds %struct.value, %struct.value* %530, i32 0, i32 3
  %531 = load i32, i32* %start1047, align 4
  %call1048 = call signext i8 @arrlen_le(i8** %call1046, i32 %531)
  %conv1049 = sext i8 %call1048 to i32
  %tobool1050 = icmp ne i32 %conv1049, 0
  br i1 %tobool1050, label %if.then1051, label %if.end1052

if.then1051:                                      ; preds = %cond.false1040, %cond.true1036, %if.then1029
  store i32 1, i32* %vunset, align 4
  br label %if.end1052

if.end1052:                                       ; preds = %if.then1051, %cond.false1040, %cond.true1036
  br label %if.end1053

if.end1053:                                       ; preds = %if.end1052, %if.end1025
  br label %if.end1054

if.end1054:                                       ; preds = %if.end1053, %if.else1004
  %532 = load i32, i32* %vunset, align 4
  %tobool1055 = icmp ne i32 %532, 0
  br i1 %tobool1055, label %if.end1060, label %if.then1056

if.then1056:                                      ; preds = %if.end1054
  %533 = load %struct.value*, %struct.value** %v, align 4
  %flags1057 = getelementptr inbounds %struct.value, %struct.value* %533, i32 0, i32 2
  %534 = load i32, i32* %flags1057, align 4
  %or1058 = or i32 %534, 4
  store i32 %or1058, i32* %flags1057, align 4
  %535 = load %struct.value*, %struct.value** %v, align 4
  %call1059 = call i8* @getstrvalue(%struct.value* %535)
  store i8* %call1059, i8** %val, align 4
  br label %if.end1060

if.end1060:                                       ; preds = %if.then1056, %if.end1054
  br label %if.end1061

if.end1061:                                       ; preds = %if.end1060, %if.end1003
  %536 = load %struct.value*, %struct.value** %v, align 4
  %tobool1062 = icmp ne %struct.value* %536, null
  br i1 %tobool1062, label %land.lhs.true1063, label %if.else1078

land.lhs.true1063:                                ; preds = %if.end1061
  %537 = load %struct.value*, %struct.value** %v, align 4
  %pm1064 = getelementptr inbounds %struct.value, %struct.value* %537, i32 0, i32 1
  %538 = load %struct.param*, %struct.param** %pm1064, align 4
  %tobool1065 = icmp ne %struct.param* %538, null
  br i1 %tobool1065, label %land.lhs.true1066, label %if.else1078

land.lhs.true1066:                                ; preds = %land.lhs.true1063
  %539 = load %struct.value*, %struct.value** %v, align 4
  %pm1067 = getelementptr inbounds %struct.value, %struct.value* %539, i32 0, i32 1
  %540 = load %struct.param*, %struct.param** %pm1067, align 4
  %gsu1068 = getelementptr inbounds %struct.param, %struct.param* %540, i32 0, i32 2
  %a1069 = bitcast %union.anon.1* %gsu1068 to %struct.gsu_array**
  %541 = load %struct.gsu_array*, %struct.gsu_array** %a1069, align 8
  %cmp1070 = icmp eq %struct.gsu_array* %541, @vararray_gsu
  br i1 %cmp1070, label %land.lhs.true1072, label %if.else1078

land.lhs.true1072:                                ; preds = %land.lhs.true1066
  %542 = load %struct.value*, %struct.value** %v, align 4
  %pm1073 = getelementptr inbounds %struct.value, %struct.value* %542, i32 0, i32 1
  %543 = load %struct.param*, %struct.param** %pm1073, align 4
  %u1074 = getelementptr inbounds %struct.param, %struct.param* %543, i32 0, i32 1
  %data = bitcast %union.anon.0* %u1074 to i8**
  %544 = load i8*, i8** %data, align 8
  %545 = bitcast i8* %544 to i8***
  %cmp1075 = icmp eq i8*** %545, @pparams
  br i1 %cmp1075, label %if.then1077, label %if.else1078

if.then1077:                                      ; preds = %land.lhs.true1072
  store i32 1, i32* %horrible_offset_hack, align 4
  br label %if.end1079

if.else1078:                                      ; preds = %land.lhs.true1072, %land.lhs.true1066, %land.lhs.true1063, %if.end1061
  store i32 0, i32* %horrible_offset_hack, align 4
  br label %if.end1079

if.end1079:                                       ; preds = %if.else1078, %if.then1077
  store %struct.value* null, %struct.value** %v, align 4
  %546 = load i8, i8* %inbrace, align 1
  %tobool1080 = icmp ne i8 %546, 0
  br i1 %tobool1080, label %if.end1082, label %if.then1081

if.then1081:                                      ; preds = %if.end1079
  br label %while.end1083

if.end1082:                                       ; preds = %if.end1079
  br label %while.cond930

while.end1083:                                    ; preds = %if.then1081, %if.then987, %if.then962, %lor.end950
  %547 = load i8, i8* %inbrace, align 1
  %tobool1084 = icmp ne i8 %547, 0
  br i1 %tobool1084, label %if.then1085, label %if.end1143

if.then1085:                                      ; preds = %while.end1083
  %548 = load i8*, i8** %s, align 4
  %549 = load i8, i8* %548, align 1
  store i8 %549, i8* %c, align 1
  %550 = load i8, i8* %c, align 1
  %conv1086 = sext i8 %550 to i32
  %cmp1087 = icmp eq i32 %conv1086, 45
  br i1 %cmp1087, label %if.end1142, label %lor.lhs.false1089

lor.lhs.false1089:                                ; preds = %if.then1085
  %551 = load i8, i8* %c, align 1
  %conv1090 = sext i8 %551 to i32
  %cmp1091 = icmp eq i32 %conv1090, -101
  br i1 %cmp1091, label %if.end1142, label %land.lhs.true1093

land.lhs.true1093:                                ; preds = %lor.lhs.false1089
  %552 = load i8, i8* %c, align 1
  %conv1094 = sext i8 %552 to i32
  %cmp1095 = icmp ne i32 %conv1094, 43
  br i1 %cmp1095, label %land.lhs.true1097, label %if.end1142

land.lhs.true1097:                                ; preds = %land.lhs.true1093
  %553 = load i8, i8* %c, align 1
  %conv1098 = sext i8 %553 to i32
  %cmp1099 = icmp ne i32 %conv1098, 58
  br i1 %cmp1099, label %land.lhs.true1101, label %if.end1142

land.lhs.true1101:                                ; preds = %land.lhs.true1097
  %554 = load i8, i8* %c, align 1
  %conv1102 = sext i8 %554 to i32
  %cmp1103 = icmp ne i32 %conv1102, 37
  br i1 %cmp1103, label %land.lhs.true1105, label %if.end1142

land.lhs.true1105:                                ; preds = %land.lhs.true1101
  %555 = load i8, i8* %c, align 1
  %conv1106 = sext i8 %555 to i32
  %cmp1107 = icmp ne i32 %conv1106, 47
  br i1 %cmp1107, label %land.lhs.true1109, label %if.end1142

land.lhs.true1109:                                ; preds = %land.lhs.true1105
  %556 = load i8, i8* %c, align 1
  %conv1110 = sext i8 %556 to i32
  %cmp1111 = icmp ne i32 %conv1110, 61
  br i1 %cmp1111, label %land.lhs.true1113, label %if.end1142

land.lhs.true1113:                                ; preds = %land.lhs.true1109
  %557 = load i8, i8* %c, align 1
  %conv1114 = sext i8 %557 to i32
  %cmp1115 = icmp ne i32 %conv1114, -115
  br i1 %cmp1115, label %land.lhs.true1117, label %if.end1142

land.lhs.true1117:                                ; preds = %land.lhs.true1113
  %558 = load i8, i8* %c, align 1
  %conv1118 = sext i8 %558 to i32
  %cmp1119 = icmp ne i32 %conv1118, 35
  br i1 %cmp1119, label %land.lhs.true1121, label %if.end1142

land.lhs.true1121:                                ; preds = %land.lhs.true1117
  %559 = load i8, i8* %c, align 1
  %conv1122 = sext i8 %559 to i32
  %cmp1123 = icmp ne i32 %conv1122, -124
  br i1 %cmp1123, label %land.lhs.true1125, label %if.end1142

land.lhs.true1125:                                ; preds = %land.lhs.true1121
  %560 = load i8, i8* %c, align 1
  %conv1126 = sext i8 %560 to i32
  %cmp1127 = icmp ne i32 %conv1126, 63
  br i1 %cmp1127, label %land.lhs.true1129, label %if.end1142

land.lhs.true1129:                                ; preds = %land.lhs.true1125
  %561 = load i8, i8* %c, align 1
  %conv1130 = sext i8 %561 to i32
  %cmp1131 = icmp ne i32 %conv1130, -105
  br i1 %cmp1131, label %land.lhs.true1133, label %if.end1142

land.lhs.true1133:                                ; preds = %land.lhs.true1129
  %562 = load i8, i8* %c, align 1
  %conv1134 = sext i8 %562 to i32
  %cmp1135 = icmp ne i32 %conv1134, 125
  br i1 %cmp1135, label %land.lhs.true1137, label %if.end1142

land.lhs.true1137:                                ; preds = %land.lhs.true1133
  %563 = load i8, i8* %c, align 1
  %conv1138 = sext i8 %563 to i32
  %cmp1139 = icmp ne i32 %conv1138, -112
  br i1 %cmp1139, label %if.then1141, label %if.end1142

if.then1141:                                      ; preds = %land.lhs.true1137
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1142:                                       ; preds = %land.lhs.true1137, %land.lhs.true1133, %land.lhs.true1129, %land.lhs.true1125, %land.lhs.true1121, %land.lhs.true1117, %land.lhs.true1113, %land.lhs.true1109, %land.lhs.true1105, %land.lhs.true1101, %land.lhs.true1097, %land.lhs.true1093, %lor.lhs.false1089, %if.then1085
  br label %if.end1143

if.end1143:                                       ; preds = %if.end1142, %while.end1083
  %564 = load i32, i32* %isarr, align 4
  %tobool1144 = icmp ne i32 %564, 0
  br i1 %tobool1144, label %if.then1145, label %if.end1158

if.then1145:                                      ; preds = %if.end1143
  %565 = load i32, i32* %nojoin, align 4
  %tobool1146 = icmp ne i32 %565, 0
  br i1 %tobool1146, label %if.then1147, label %if.end1148

if.then1147:                                      ; preds = %if.then1145
  store i32 -1, i32* %isarr, align 4
  br label %if.end1148

if.end1148:                                       ; preds = %if.then1147, %if.then1145
  %566 = load i32, i32* %qt.addr, align 4
  %tobool1149 = icmp ne i32 %566, 0
  br i1 %tobool1149, label %land.lhs.true1150, label %if.end1157

land.lhs.true1150:                                ; preds = %if.end1148
  %567 = load i32, i32* %getlen, align 4
  %tobool1151 = icmp ne i32 %567, 0
  br i1 %tobool1151, label %if.end1157, label %land.lhs.true1152

land.lhs.true1152:                                ; preds = %land.lhs.true1150
  %568 = load i32, i32* %isarr, align 4
  %cmp1153 = icmp sgt i32 %568, 0
  br i1 %cmp1153, label %if.then1155, label %if.end1157

if.then1155:                                      ; preds = %land.lhs.true1152
  %569 = load i8**, i8*** %aval, align 4
  %570 = load i8*, i8** %sep, align 4
  %call1156 = call i8* @sepjoin(i8** %569, i8* %570, i32 1)
  store i8* %call1156, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end1157

if.end1157:                                       ; preds = %if.then1155, %land.lhs.true1152, %land.lhs.true1150, %if.end1148
  br label %if.end1158

if.end1158:                                       ; preds = %if.end1157, %if.end1143
  %571 = load i8*, i8** %s, align 4
  store i8* %571, i8** %idend, align 4
  %572 = load i8, i8* %inbrace, align 1
  %tobool1159 = icmp ne i8 %572, 0
  br i1 %tobool1159, label %if.then1160, label %if.end1170

if.then1160:                                      ; preds = %if.end1158
  br label %while.cond1161

while.cond1161:                                   ; preds = %while.body1167, %if.then1160
  %573 = load i8*, i8** %s, align 4
  %574 = load i8, i8* %573, align 1
  %idxprom1162 = zext i8 %574 to i32
  %arrayidx1163 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom1162
  %575 = load i16, i16* %arrayidx1163, align 2
  %conv1164 = sext i16 %575 to i32
  %and1165 = and i32 %conv1164, 16384
  %tobool1166 = icmp ne i32 %and1165, 0
  br i1 %tobool1166, label %while.body1167, label %while.end1169

while.body1167:                                   ; preds = %while.cond1161
  %576 = load i8*, i8** %s, align 4
  %incdec.ptr1168 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %incdec.ptr1168, i8** %s, align 4
  br label %while.cond1161

while.end1169:                                    ; preds = %while.cond1161
  br label %if.end1170

if.end1170:                                       ; preds = %while.end1169, %if.end1158
  %577 = load i8*, i8** %s, align 4
  %578 = load i8, i8* %577, align 1
  %conv1171 = sext i8 %578 to i32
  %cmp1172 = icmp eq i32 %conv1171, 58
  %conv1173 = zext i1 %cmp1172 to i32
  store i32 %conv1173, i32* %colf, align 4
  br i1 %cmp1172, label %if.then1174, label %if.end1176

if.then1174:                                      ; preds = %if.end1170
  %579 = load i8*, i8** %s, align 4
  %incdec.ptr1175 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %incdec.ptr1175, i8** %s, align 4
  br label %if.end1176

if.end1176:                                       ; preds = %if.then1174, %if.end1170
  %580 = load i8*, i8** %s, align 4
  store i8* %580, i8** %fstr, align 4
  %581 = load i8, i8* %inbrace, align 1
  %tobool1177 = icmp ne i8 %581, 0
  br i1 %tobool1177, label %if.then1178, label %if.end1207

if.then1178:                                      ; preds = %if.end1176
  store i32 1, i32* %bct, align 4
  br label %for.cond1179

for.cond1179:                                     ; preds = %for.inc1197, %if.then1178
  %582 = load i8*, i8** %fstr, align 4
  %583 = load i8, i8* %582, align 1
  store i8 %583, i8* %c, align 1
  %tobool1180 = icmp ne i8 %583, 0
  br i1 %tobool1180, label %for.body1181, label %for.end1199

for.body1181:                                     ; preds = %for.cond1179
  %584 = load i8, i8* %c, align 1
  %conv1182 = sext i8 %584 to i32
  %cmp1183 = icmp eq i32 %conv1182, -113
  br i1 %cmp1183, label %if.then1185, label %if.else1187

if.then1185:                                      ; preds = %for.body1181
  %585 = load i32, i32* %bct, align 4
  %inc1186 = add nsw i32 %585, 1
  store i32 %inc1186, i32* %bct, align 4
  br label %if.end1196

if.else1187:                                      ; preds = %for.body1181
  %586 = load i8, i8* %c, align 1
  %conv1188 = sext i8 %586 to i32
  %cmp1189 = icmp eq i32 %conv1188, -112
  br i1 %cmp1189, label %land.lhs.true1191, label %if.end1195

land.lhs.true1191:                                ; preds = %if.else1187
  %587 = load i32, i32* %bct, align 4
  %dec1192 = add nsw i32 %587, -1
  store i32 %dec1192, i32* %bct, align 4
  %tobool1193 = icmp ne i32 %dec1192, 0
  br i1 %tobool1193, label %if.end1195, label %if.then1194

if.then1194:                                      ; preds = %land.lhs.true1191
  br label %for.end1199

if.end1195:                                       ; preds = %land.lhs.true1191, %if.else1187
  br label %if.end1196

if.end1196:                                       ; preds = %if.end1195, %if.then1185
  br label %for.inc1197

for.inc1197:                                      ; preds = %if.end1196
  %588 = load i8*, i8** %fstr, align 4
  %incdec.ptr1198 = getelementptr inbounds i8, i8* %588, i32 1
  store i8* %incdec.ptr1198, i8** %fstr, align 4
  br label %for.cond1179

for.end1199:                                      ; preds = %if.then1194, %for.cond1179
  %589 = load i32, i32* %bct, align 4
  %tobool1200 = icmp ne i32 %589, 0
  br i1 %tobool1200, label %if.then1201, label %if.end1202

if.then1201:                                      ; preds = %for.end1199
  br label %noclosebrace

noclosebrace:                                     ; preds = %if.then1452, %if.then1201
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1202:                                       ; preds = %for.end1199
  %590 = load i8, i8* %c, align 1
  %tobool1203 = icmp ne i8 %590, 0
  br i1 %tobool1203, label %if.then1204, label %if.end1206

if.then1204:                                      ; preds = %if.end1202
  %591 = load i8*, i8** %fstr, align 4
  %incdec.ptr1205 = getelementptr inbounds i8, i8* %591, i32 1
  store i8* %incdec.ptr1205, i8** %fstr, align 4
  store i8 0, i8* %591, align 1
  br label %if.end1206

if.end1206:                                       ; preds = %if.then1204, %if.end1202
  br label %if.end1207

if.end1207:                                       ; preds = %if.end1206, %if.end1176
  %592 = load i8, i8* %inbrace, align 1
  %conv1208 = sext i8 %592 to i32
  %tobool1209 = icmp ne i32 %conv1208, 0
  br i1 %tobool1209, label %land.lhs.true1210, label %if.else1652

land.lhs.true1210:                                ; preds = %if.end1207
  %593 = load i8*, i8** %s, align 4
  %594 = load i8, i8* %593, align 1
  store i8 %594, i8* %c, align 1
  %conv1211 = sext i8 %594 to i32
  %cmp1212 = icmp eq i32 %conv1211, 43
  br i1 %cmp1212, label %if.then1258, label %lor.lhs.false1214

lor.lhs.false1214:                                ; preds = %land.lhs.true1210
  %595 = load i8, i8* %c, align 1
  %conv1215 = sext i8 %595 to i32
  %cmp1216 = icmp eq i32 %conv1215, 45
  br i1 %cmp1216, label %if.then1258, label %lor.lhs.false1218

lor.lhs.false1218:                                ; preds = %lor.lhs.false1214
  %596 = load i8, i8* %c, align 1
  %conv1219 = sext i8 %596 to i32
  %cmp1220 = icmp eq i32 %conv1219, -101
  br i1 %cmp1220, label %if.then1258, label %lor.lhs.false1222

lor.lhs.false1222:                                ; preds = %lor.lhs.false1218
  %597 = load i8, i8* %c, align 1
  %conv1223 = sext i8 %597 to i32
  %cmp1224 = icmp eq i32 %conv1223, 58
  br i1 %cmp1224, label %if.then1258, label %lor.lhs.false1226

lor.lhs.false1226:                                ; preds = %lor.lhs.false1222
  %598 = load i8, i8* %c, align 1
  %conv1227 = sext i8 %598 to i32
  %cmp1228 = icmp eq i32 %conv1227, 61
  br i1 %cmp1228, label %if.then1258, label %lor.lhs.false1230

lor.lhs.false1230:                                ; preds = %lor.lhs.false1226
  %599 = load i8, i8* %c, align 1
  %conv1231 = sext i8 %599 to i32
  %cmp1232 = icmp eq i32 %conv1231, -115
  br i1 %cmp1232, label %if.then1258, label %lor.lhs.false1234

lor.lhs.false1234:                                ; preds = %lor.lhs.false1230
  %600 = load i8, i8* %c, align 1
  %conv1235 = sext i8 %600 to i32
  %cmp1236 = icmp eq i32 %conv1235, 37
  br i1 %cmp1236, label %if.then1258, label %lor.lhs.false1238

lor.lhs.false1238:                                ; preds = %lor.lhs.false1234
  %601 = load i8, i8* %c, align 1
  %conv1239 = sext i8 %601 to i32
  %cmp1240 = icmp eq i32 %conv1239, 35
  br i1 %cmp1240, label %if.then1258, label %lor.lhs.false1242

lor.lhs.false1242:                                ; preds = %lor.lhs.false1238
  %602 = load i8, i8* %c, align 1
  %conv1243 = sext i8 %602 to i32
  %cmp1244 = icmp eq i32 %conv1243, -124
  br i1 %cmp1244, label %if.then1258, label %lor.lhs.false1246

lor.lhs.false1246:                                ; preds = %lor.lhs.false1242
  %603 = load i8, i8* %c, align 1
  %conv1247 = sext i8 %603 to i32
  %cmp1248 = icmp eq i32 %conv1247, 63
  br i1 %cmp1248, label %if.then1258, label %lor.lhs.false1250

lor.lhs.false1250:                                ; preds = %lor.lhs.false1246
  %604 = load i8, i8* %c, align 1
  %conv1251 = sext i8 %604 to i32
  %cmp1252 = icmp eq i32 %conv1251, -105
  br i1 %cmp1252, label %if.then1258, label %lor.lhs.false1254

lor.lhs.false1254:                                ; preds = %lor.lhs.false1250
  %605 = load i8, i8* %c, align 1
  %conv1255 = sext i8 %605 to i32
  %cmp1256 = icmp eq i32 %conv1255, 47
  br i1 %cmp1256, label %if.then1258, label %if.else1652

if.then1258:                                      ; preds = %lor.lhs.false1254, %lor.lhs.false1250, %lor.lhs.false1246, %lor.lhs.false1242, %lor.lhs.false1238, %lor.lhs.false1234, %lor.lhs.false1230, %lor.lhs.false1226, %lor.lhs.false1222, %lor.lhs.false1218, %lor.lhs.false1214, %land.lhs.true1210
  %606 = load i32, i32* %flnum, align 4
  %tobool1259 = icmp ne i32 %606, 0
  br i1 %tobool1259, label %if.end1262, label %if.then1260

if.then1260:                                      ; preds = %if.then1258
  %607 = load i32, i32* %flnum, align 4
  %inc1261 = add nsw i32 %607, 1
  store i32 %inc1261, i32* %flnum, align 4
  br label %if.end1262

if.end1262:                                       ; preds = %if.then1260, %if.then1258
  %608 = load i8, i8* %c, align 1
  %conv1263 = sext i8 %608 to i32
  %cmp1264 = icmp eq i32 %conv1263, 37
  br i1 %cmp1264, label %if.then1266, label %if.end1268

if.then1266:                                      ; preds = %if.end1262
  %609 = load i32, i32* %flags, align 4
  %or1267 = or i32 %609, 1
  store i32 %or1267, i32* %flags, align 4
  br label %if.end1268

if.end1268:                                       ; preds = %if.then1266, %if.end1262
  %610 = load i8, i8* %c, align 1
  %conv1269 = sext i8 %610 to i32
  %cmp1270 = icmp eq i32 %conv1269, 37
  br i1 %cmp1270, label %land.lhs.true1280, label %lor.lhs.false1272

lor.lhs.false1272:                                ; preds = %if.end1268
  %611 = load i8, i8* %c, align 1
  %conv1273 = sext i8 %611 to i32
  %cmp1274 = icmp eq i32 %conv1273, 35
  br i1 %cmp1274, label %land.lhs.true1280, label %lor.lhs.false1276

lor.lhs.false1276:                                ; preds = %lor.lhs.false1272
  %612 = load i8, i8* %c, align 1
  %conv1277 = sext i8 %612 to i32
  %cmp1278 = icmp eq i32 %conv1277, -124
  br i1 %cmp1278, label %land.lhs.true1280, label %if.end1289

land.lhs.true1280:                                ; preds = %lor.lhs.false1276, %lor.lhs.false1272, %if.end1268
  %613 = load i8, i8* %c, align 1
  %conv1281 = sext i8 %613 to i32
  %614 = load i8*, i8** %s, align 4
  %arrayidx1282 = getelementptr inbounds i8, i8* %614, i32 1
  %615 = load i8, i8* %arrayidx1282, align 1
  %conv1283 = sext i8 %615 to i32
  %cmp1284 = icmp eq i32 %conv1281, %conv1283
  br i1 %cmp1284, label %if.then1286, label %if.end1289

if.then1286:                                      ; preds = %land.lhs.true1280
  %616 = load i8*, i8** %s, align 4
  %incdec.ptr1287 = getelementptr inbounds i8, i8* %616, i32 1
  store i8* %incdec.ptr1287, i8** %s, align 4
  %617 = load i32, i32* %flags, align 4
  %or1288 = or i32 %617, 2
  store i32 %or1288, i32* %flags, align 4
  br label %if.end1289

if.end1289:                                       ; preds = %if.then1286, %land.lhs.true1280, %lor.lhs.false1276
  %618 = load i8*, i8** %s, align 4
  %incdec.ptr1290 = getelementptr inbounds i8, i8* %618, i32 1
  store i8* %incdec.ptr1290, i8** %s, align 4
  %619 = load i8*, i8** %s, align 4
  %arrayidx1291 = getelementptr inbounds i8, i8* %619, i32 -1
  %620 = load i8, i8* %arrayidx1291, align 1
  %conv1292 = sext i8 %620 to i32
  %cmp1293 = icmp eq i32 %conv1292, 47
  br i1 %cmp1293, label %if.then1295, label %if.end1378

if.then1295:                                      ; preds = %if.end1289
  %621 = load i32, i32* %flags, align 4
  %and1296 = and i32 %621, 4
  %tobool1297 = icmp ne i32 %and1296, 0
  %cond1298 = select i1 %tobool1297, i32 0, i32 2
  store i32 %cond1298, i32* %flags, align 4
  %622 = load i8*, i8** %s, align 4
  %623 = load i8, i8* %622, align 1
  store i8 %623, i8* %c, align 1
  %conv1299 = sext i8 %623 to i32
  %cmp1300 = icmp eq i32 %conv1299, 47
  br i1 %cmp1300, label %if.then1302, label %if.end1305

if.then1302:                                      ; preds = %if.then1295
  %624 = load i32, i32* %flags, align 4
  %or1303 = or i32 %624, 512
  store i32 %or1303, i32* %flags, align 4
  %625 = load i8*, i8** %s, align 4
  %incdec.ptr1304 = getelementptr inbounds i8, i8* %625, i32 1
  store i8* %incdec.ptr1304, i8** %s, align 4
  %626 = load i8, i8* %incdec.ptr1304, align 1
  store i8 %626, i8* %c, align 1
  br label %if.end1305

if.end1305:                                       ; preds = %if.then1302, %if.then1295
  %627 = load i8, i8* %c, align 1
  %conv1306 = sext i8 %627 to i32
  %cmp1307 = icmp eq i32 %conv1306, 35
  br i1 %cmp1307, label %if.then1313, label %lor.lhs.false1309

lor.lhs.false1309:                                ; preds = %if.end1305
  %628 = load i8, i8* %c, align 1
  %conv1310 = sext i8 %628 to i32
  %cmp1311 = icmp eq i32 %conv1310, -124
  br i1 %cmp1311, label %if.then1313, label %if.end1316

if.then1313:                                      ; preds = %lor.lhs.false1309, %if.end1305
  %629 = load i32, i32* %flags, align 4
  %or1314 = or i32 %629, 4096
  store i32 %or1314, i32* %flags, align 4
  %630 = load i8*, i8** %s, align 4
  %incdec.ptr1315 = getelementptr inbounds i8, i8* %630, i32 1
  store i8* %incdec.ptr1315, i8** %s, align 4
  br label %if.end1316

if.end1316:                                       ; preds = %if.then1313, %lor.lhs.false1309
  %631 = load i8*, i8** %s, align 4
  %632 = load i8, i8* %631, align 1
  %conv1317 = sext i8 %632 to i32
  %cmp1318 = icmp eq i32 %conv1317, 37
  br i1 %cmp1318, label %if.then1320, label %if.end1323

if.then1320:                                      ; preds = %if.end1316
  %633 = load i32, i32* %flags, align 4
  %or1321 = or i32 %633, 1
  store i32 %or1321, i32* %flags, align 4
  %634 = load i8*, i8** %s, align 4
  %incdec.ptr1322 = getelementptr inbounds i8, i8* %634, i32 1
  store i8* %incdec.ptr1322, i8** %s, align 4
  br label %if.end1323

if.end1323:                                       ; preds = %if.then1320, %if.end1316
  %635 = load i32, i32* %flags, align 4
  %and1324 = and i32 %635, 4097
  %tobool1325 = icmp ne i32 %and1324, 0
  br i1 %tobool1325, label %if.end1328, label %if.then1326

if.then1326:                                      ; preds = %if.end1323
  %636 = load i32, i32* %flags, align 4
  %or1327 = or i32 %636, 4
  store i32 %or1327, i32* %flags, align 4
  br label %if.end1328

if.end1328:                                       ; preds = %if.then1326, %if.end1323
  %637 = load i8*, i8** %s, align 4
  store i8* %637, i8** %ptr, align 4
  br label %for.cond1329

for.cond1329:                                     ; preds = %for.inc1364, %if.end1328
  %638 = load i8*, i8** %ptr, align 4
  %639 = load i8, i8* %638, align 1
  store i8 %639, i8* %c, align 1
  %conv1330 = sext i8 %639 to i32
  %tobool1331 = icmp ne i32 %conv1330, 0
  br i1 %tobool1331, label %land.rhs1332, label %land.end1336

land.rhs1332:                                     ; preds = %for.cond1329
  %640 = load i8, i8* %c, align 1
  %conv1333 = sext i8 %640 to i32
  %cmp1334 = icmp ne i32 %conv1333, 47
  br label %land.end1336

land.end1336:                                     ; preds = %land.rhs1332, %for.cond1329
  %641 = phi i1 [ false, %for.cond1329 ], [ %cmp1334, %land.rhs1332 ]
  br i1 %641, label %for.body1338, label %for.end1366

for.body1338:                                     ; preds = %land.end1336
  %642 = load i8, i8* %c, align 1
  %conv1339 = sext i8 %642 to i32
  %cmp1340 = icmp eq i32 %conv1339, -97
  br i1 %cmp1340, label %land.lhs.true1350, label %lor.lhs.false1342

lor.lhs.false1342:                                ; preds = %for.body1338
  %643 = load i8, i8* %c, align 1
  %conv1343 = sext i8 %643 to i32
  %cmp1344 = icmp eq i32 %conv1343, -96
  br i1 %cmp1344, label %land.lhs.true1350, label %lor.lhs.false1346

lor.lhs.false1346:                                ; preds = %lor.lhs.false1342
  %644 = load i8, i8* %c, align 1
  %conv1347 = sext i8 %644 to i32
  %cmp1348 = icmp eq i32 %conv1347, 92
  br i1 %cmp1348, label %land.lhs.true1350, label %if.end1363

land.lhs.true1350:                                ; preds = %lor.lhs.false1346, %lor.lhs.false1342, %for.body1338
  %645 = load i8*, i8** %ptr, align 4
  %arrayidx1351 = getelementptr inbounds i8, i8* %645, i32 1
  %646 = load i8, i8* %arrayidx1351, align 1
  %conv1352 = sext i8 %646 to i32
  %tobool1353 = icmp ne i32 %conv1352, 0
  br i1 %tobool1353, label %if.then1354, label %if.end1363

if.then1354:                                      ; preds = %land.lhs.true1350
  %647 = load i8*, i8** %ptr, align 4
  %arrayidx1355 = getelementptr inbounds i8, i8* %647, i32 1
  %648 = load i8, i8* %arrayidx1355, align 1
  %conv1356 = sext i8 %648 to i32
  %cmp1357 = icmp eq i32 %conv1356, 47
  br i1 %cmp1357, label %if.then1359, label %if.else1360

if.then1359:                                      ; preds = %if.then1354
  %649 = load i8*, i8** %ptr, align 4
  call void @chuck(i8* %649)
  br label %if.end1362

if.else1360:                                      ; preds = %if.then1354
  %650 = load i8*, i8** %ptr, align 4
  %incdec.ptr1361 = getelementptr inbounds i8, i8* %650, i32 1
  store i8* %incdec.ptr1361, i8** %ptr, align 4
  br label %if.end1362

if.end1362:                                       ; preds = %if.else1360, %if.then1359
  br label %if.end1363

if.end1363:                                       ; preds = %if.end1362, %land.lhs.true1350, %lor.lhs.false1346
  br label %for.inc1364

for.inc1364:                                      ; preds = %if.end1363
  %651 = load i8*, i8** %ptr, align 4
  %incdec.ptr1365 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %incdec.ptr1365, i8** %ptr, align 4
  br label %for.cond1329

for.end1366:                                      ; preds = %land.end1336
  %652 = load i8*, i8** %ptr, align 4
  %653 = load i8, i8* %652, align 1
  %conv1367 = sext i8 %653 to i32
  %tobool1368 = icmp ne i32 %conv1367, 0
  br i1 %tobool1368, label %land.lhs.true1369, label %cond.false1375

land.lhs.true1369:                                ; preds = %for.end1366
  %654 = load i8*, i8** %ptr, align 4
  %arrayidx1370 = getelementptr inbounds i8, i8* %654, i32 1
  %655 = load i8, i8* %arrayidx1370, align 1
  %conv1371 = sext i8 %655 to i32
  %tobool1372 = icmp ne i32 %conv1371, 0
  br i1 %tobool1372, label %cond.true1373, label %cond.false1375

cond.true1373:                                    ; preds = %land.lhs.true1369
  %656 = load i8*, i8** %ptr, align 4
  %add.ptr1374 = getelementptr inbounds i8, i8* %656, i32 1
  br label %cond.end1376

cond.false1375:                                   ; preds = %land.lhs.true1369, %for.end1366
  br label %cond.end1376

cond.end1376:                                     ; preds = %cond.false1375, %cond.true1373
  %cond1377 = phi i8* [ %add.ptr1374, %cond.true1373 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %cond.false1375 ]
  store i8* %cond1377, i8** %replstr, align 4
  %657 = load i8*, i8** %ptr, align 4
  store i8 0, i8* %657, align 1
  br label %if.end1378

if.end1378:                                       ; preds = %cond.end1376, %if.end1289
  %658 = load i32, i32* %colf, align 4
  %tobool1379 = icmp ne i32 %658, 0
  br i1 %tobool1379, label %if.then1380, label %if.end1382

if.then1380:                                      ; preds = %if.end1378
  %659 = load i32, i32* %flags, align 4
  %or1381 = or i32 %659, 256
  store i32 %or1381, i32* %flags, align 4
  br label %if.end1382

if.end1382:                                       ; preds = %if.then1380, %if.end1378
  %660 = load i32, i32* %flags, align 4
  %and1383 = and i32 %660, 248
  %tobool1384 = icmp ne i32 %and1383, 0
  br i1 %tobool1384, label %if.end1387, label %if.then1385

if.then1385:                                      ; preds = %if.end1382
  %661 = load i32, i32* %flags, align 4
  %or1386 = or i32 %661, 16
  store i32 %or1386, i32* %flags, align 4
  br label %if.end1387

if.end1387:                                       ; preds = %if.then1385, %if.end1382
  %662 = load i32, i32* %colf, align 4
  %tobool1388 = icmp ne i32 %662, 0
  br i1 %tobool1388, label %land.lhs.true1389, label %if.end1413

land.lhs.true1389:                                ; preds = %if.end1387
  %663 = load i32, i32* %vunset, align 4
  %tobool1390 = icmp ne i32 %663, 0
  br i1 %tobool1390, label %if.end1413, label %if.then1391

if.then1391:                                      ; preds = %land.lhs.true1389
  %664 = load i32, i32* %isarr, align 4
  %tobool1392 = icmp ne i32 %664, 0
  br i1 %tobool1392, label %cond.true1393, label %cond.false1397

cond.true1393:                                    ; preds = %if.then1391
  %665 = load i8**, i8*** %aval, align 4
  %666 = load i8*, i8** %665, align 4
  %tobool1394 = icmp ne i8* %666, null
  %lnot1395 = xor i1 %tobool1394, true
  %lnot.ext1396 = zext i1 %lnot1395 to i32
  br label %cond.end1411

cond.false1397:                                   ; preds = %if.then1391
  %667 = load i8*, i8** %val, align 4
  %668 = load i8, i8* %667, align 1
  %tobool1398 = icmp ne i8 %668, 0
  br i1 %tobool1398, label %lor.rhs1399, label %lor.end1410

lor.rhs1399:                                      ; preds = %cond.false1397
  %669 = load i8*, i8** %val, align 4
  %670 = load i8, i8* %669, align 1
  %conv1400 = sext i8 %670 to i32
  %cmp1401 = icmp eq i32 %conv1400, -95
  br i1 %cmp1401, label %land.rhs1403, label %land.end1408

land.rhs1403:                                     ; preds = %lor.rhs1399
  %671 = load i8*, i8** %val, align 4
  %arrayidx1404 = getelementptr inbounds i8, i8* %671, i32 1
  %672 = load i8, i8* %arrayidx1404, align 1
  %tobool1405 = icmp ne i8 %672, 0
  %lnot1406 = xor i1 %tobool1405, true
  br label %land.end1408

land.end1408:                                     ; preds = %land.rhs1403, %lor.rhs1399
  %673 = phi i1 [ false, %lor.rhs1399 ], [ %lnot1406, %land.rhs1403 ]
  br label %lor.end1410

lor.end1410:                                      ; preds = %land.end1408, %cond.false1397
  %674 = phi i1 [ true, %cond.false1397 ], [ %673, %land.end1408 ]
  %lor.ext = zext i1 %674 to i32
  br label %cond.end1411

cond.end1411:                                     ; preds = %lor.end1410, %cond.true1393
  %cond1412 = phi i32 [ %lnot.ext1396, %cond.true1393 ], [ %lor.ext, %lor.end1410 ]
  store i32 %cond1412, i32* %vunset, align 4
  %675 = load i32, i32* %vunset, align 4
  %mul = mul nsw i32 %675, -1
  store i32 %mul, i32* %vunset, align 4
  br label %if.end1413

if.end1413:                                       ; preds = %cond.end1411, %land.lhs.true1389, %if.end1387
  %676 = load i8*, i8** %s, align 4
  %arrayidx1414 = getelementptr inbounds i8, i8* %676, i32 -1
  %677 = load i8, i8* %arrayidx1414, align 1
  %conv1415 = sext i8 %677 to i32
  switch i32 %conv1415, label %sw.epilog1651 [
    i32 43, label %sw.bb1416
    i32 45, label %sw.bb1421
    i32 -101, label %sw.bb1421
    i32 58, label %sw.bb1444
    i32 61, label %sw.bb1455
    i32 -115, label %sw.bb1455
    i32 63, label %sw.bb1576
    i32 -105, label %sw.bb1576
    i32 37, label %sw.bb1599
    i32 35, label %sw.bb1599
    i32 -124, label %sw.bb1599
    i32 47, label %sw.bb1599
  ]

sw.bb1416:                                        ; preds = %if.end1413
  %678 = load i32, i32* %vunset, align 4
  %tobool1417 = icmp ne i32 %678, 0
  br i1 %tobool1417, label %if.then1418, label %if.end1420

if.then1418:                                      ; preds = %sw.bb1416
  %call1419 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1419, i8** %val, align 4
  store i32 1, i32* %copied, align 4
  store i32 0, i32* %isarr, align 4
  br label %sw.epilog1651

if.end1420:                                       ; preds = %sw.bb1416
  store i32 1, i32* %vunset, align 4
  br label %sw.bb1421

sw.bb1421:                                        ; preds = %if.end1413, %if.end1413, %if.end1420
  %679 = load i32, i32* %vunset, align 4
  %tobool1422 = icmp ne i32 %679, 0
  br i1 %tobool1422, label %if.then1423, label %if.end1443

if.then1423:                                      ; preds = %sw.bb1421
  %680 = load i8*, i8** %s, align 4
  %call1424 = call i8* @dupstring(i8* %680)
  store i8* %call1424, i8** %val, align 4
  %681 = load i32, i32* %spbreak, align 4
  %tobool1425 = icmp ne i32 %681, 0
  br i1 %tobool1425, label %if.then1426, label %if.else1431

if.then1426:                                      ; preds = %if.then1423
  store i32 16, i32* %split_flags, align 4
  %682 = load i32, i32* %aspar, align 4
  %tobool1427 = icmp ne i32 %682, 0
  br i1 %tobool1427, label %if.end1430, label %if.then1428

if.then1428:                                      ; preds = %if.then1426
  %683 = load i32, i32* %split_flags, align 4
  %or1429 = or i32 %683, 8
  store i32 %or1429, i32* %split_flags, align 4
  br label %if.end1430

if.end1430:                                       ; preds = %if.then1428, %if.then1426
  br label %if.end1432

if.else1431:                                      ; preds = %if.then1423
  store i32 32, i32* %split_flags, align 4
  br label %if.end1432

if.end1432:                                       ; preds = %if.else1431, %if.end1430
  %684 = load i32, i32* %split_flags, align 4
  %685 = load i32, i32* %aspar, align 4
  %tobool1433 = icmp ne i32 %685, 0
  br i1 %tobool1433, label %cond.true1434, label %cond.false1435

cond.true1434:                                    ; preds = %if.end1432
  br label %cond.end1436

cond.false1435:                                   ; preds = %if.end1432
  br label %cond.end1436

cond.end1436:                                     ; preds = %cond.false1435, %cond.true1434
  %cond1437 = phi i8*** [ null, %cond.true1434 ], [ %aval, %cond.false1435 ]
  %call1438 = call i32 @multsub(i8** %val, i32 %684, i8*** %cond1437, i32* %isarr, i8* null, i32* %ms_flags)
  store i32 1, i32* %copied, align 4
  store i32 0, i32* %spbreak, align 4
  %686 = load i32, i32* %globsubst, align 4
  %cmp1439 = icmp ne i32 %686, 2
  br i1 %cmp1439, label %if.then1441, label %if.end1442

if.then1441:                                      ; preds = %cond.end1436
  store i32 0, i32* %globsubst, align 4
  br label %if.end1442

if.end1442:                                       ; preds = %if.then1441, %cond.end1436
  br label %if.end1443

if.end1443:                                       ; preds = %if.end1442, %sw.bb1421
  br label %sw.epilog1651

sw.bb1444:                                        ; preds = %if.end1413
  %687 = load i8*, i8** %s, align 4
  %688 = load i8, i8* %687, align 1
  %conv1445 = sext i8 %688 to i32
  %cmp1446 = icmp ne i32 %conv1445, 61
  br i1 %cmp1446, label %land.lhs.true1448, label %if.end1453

land.lhs.true1448:                                ; preds = %sw.bb1444
  %689 = load i8*, i8** %s, align 4
  %690 = load i8, i8* %689, align 1
  %conv1449 = sext i8 %690 to i32
  %cmp1450 = icmp ne i32 %conv1449, -115
  br i1 %cmp1450, label %if.then1452, label %if.end1453

if.then1452:                                      ; preds = %land.lhs.true1448
  br label %noclosebrace

if.end1453:                                       ; preds = %land.lhs.true1448, %sw.bb1444
  store i32 1, i32* %vunset, align 4
  %691 = load i8*, i8** %s, align 4
  %incdec.ptr1454 = getelementptr inbounds i8, i8* %691, i32 1
  store i8* %incdec.ptr1454, i8** %s, align 4
  br label %sw.bb1455

sw.bb1455:                                        ; preds = %if.end1413, %if.end1413, %if.end1453
  %692 = load i32, i32* %vunset, align 4
  %tobool1456 = icmp ne i32 %692, 0
  br i1 %tobool1456, label %if.then1457, label %if.end1575

if.then1457:                                      ; preds = %sw.bb1455
  %693 = load i8*, i8** %idend, align 4
  %694 = load i8, i8* %693, align 1
  store i8 %694, i8* %sav1458, align 1
  %695 = load i8*, i8** %idend, align 4
  store i8 0, i8* %695, align 1
  %696 = load i8*, i8** %s, align 4
  %call1461 = call i8* @dupstring(i8* %696)
  store i8* %call1461, i8** %val, align 4
  %697 = load i8*, i8** %spsep, align 4
  %tobool1462 = icmp ne i8* %697, null
  br i1 %tobool1462, label %if.then1465, label %lor.lhs.false1463

lor.lhs.false1463:                                ; preds = %if.then1457
  %698 = load i32, i32* %arrasg, align 4
  %tobool1464 = icmp ne i32 %698, 0
  br i1 %tobool1464, label %if.else1469, label %if.then1465

if.then1465:                                      ; preds = %lor.lhs.false1463, %if.then1457
  %699 = load i32, i32* %spbreak, align 4
  %tobool1466 = icmp ne i32 %699, 0
  %cond1467 = select i1 %tobool1466, i32 4, i32 32
  %call1468 = call i32 @multsub(i8** %val, i32 %cond1467, i8*** null, i32* %isarr, i8* null, i32* %ms_flags)
  br label %if.end1475

if.else1469:                                      ; preds = %lor.lhs.false1463
  %700 = load i32, i32* %spbreak, align 4
  %tobool1470 = icmp ne i32 %700, 0
  br i1 %tobool1470, label %if.then1471, label %if.else1472

if.then1471:                                      ; preds = %if.else1469
  store i32 24, i32* %split_flags1460, align 4
  br label %if.end1473

if.else1472:                                      ; preds = %if.else1469
  store i32 32, i32* %split_flags1460, align 4
  br label %if.end1473

if.end1473:                                       ; preds = %if.else1472, %if.then1471
  %701 = load i32, i32* %split_flags1460, align 4
  %call1474 = call i32 @multsub(i8** %val, i32 %701, i8*** %aval, i32* %isarr, i8* null, i32* %ms_flags)
  store i32 0, i32* %spbreak, align 4
  br label %if.end1475

if.end1475:                                       ; preds = %if.end1473, %if.then1465
  %702 = load i32, i32* %arrasg, align 4
  %tobool1476 = icmp ne i32 %702, 0
  br i1 %tobool1476, label %if.then1477, label %if.else1551

if.then1477:                                      ; preds = %if.end1475
  %703 = load i8*, i8** %spsep, align 4
  %tobool1481 = icmp ne i8* %703, null
  br i1 %tobool1481, label %if.then1484, label %lor.lhs.false1482

lor.lhs.false1482:                                ; preds = %if.then1477
  %704 = load i32, i32* %spbreak, align 4
  %tobool1483 = icmp ne i32 %704, 0
  br i1 %tobool1483, label %if.then1484, label %if.else1504

if.then1484:                                      ; preds = %lor.lhs.false1482, %if.then1477
  %705 = load i8*, i8** %val, align 4
  %706 = load i8*, i8** %spsep, align 4
  %call1485 = call i8** @sepsplit(i8* %705, i8* %706, i32 0, i32 1)
  store i8** %call1485, i8*** %aval, align 4
  %707 = load i32, i32* %nojoin, align 4
  %tobool1486 = icmp ne i32 %707, 0
  %cond1487 = select i1 %tobool1486, i32 1, i32 2
  store i32 %cond1487, i32* %isarr, align 4
  %708 = load i8**, i8*** %aval, align 4
  %call1488 = call i32 @arrlen(i8** %708)
  store i32 %call1488, i32* %l1459, align 4
  %709 = load i32, i32* %l1459, align 4
  %tobool1489 = icmp ne i32 %709, 0
  br i1 %tobool1489, label %land.lhs.true1490, label %if.end1495

land.lhs.true1490:                                ; preds = %if.then1484
  %710 = load i8**, i8*** %aval, align 4
  %711 = load i32, i32* %l1459, align 4
  %sub = sub nsw i32 %711, 1
  %arrayidx1491 = getelementptr inbounds i8*, i8** %710, i32 %sub
  %712 = load i8*, i8** %arrayidx1491, align 4
  %713 = load i8, i8* %712, align 1
  %tobool1492 = icmp ne i8 %713, 0
  br i1 %tobool1492, label %if.end1495, label %if.then1493

if.then1493:                                      ; preds = %land.lhs.true1490
  %714 = load i32, i32* %l1459, align 4
  %dec1494 = add nsw i32 %714, -1
  store i32 %dec1494, i32* %l1459, align 4
  br label %if.end1495

if.end1495:                                       ; preds = %if.then1493, %land.lhs.true1490, %if.then1484
  %715 = load i32, i32* %l1459, align 4
  %tobool1496 = icmp ne i32 %715, 0
  br i1 %tobool1496, label %land.lhs.true1497, label %if.else1502

land.lhs.true1497:                                ; preds = %if.end1495
  %716 = load i8**, i8*** %aval, align 4
  %717 = load i8*, i8** %716, align 4
  %718 = load i8, i8* %717, align 1
  %tobool1498 = icmp ne i8 %718, 0
  br i1 %tobool1498, label %if.else1502, label %if.then1499

if.then1499:                                      ; preds = %land.lhs.true1497
  %719 = load i32, i32* %l1459, align 4
  %dec1500 = add nsw i32 %719, -1
  store i32 %dec1500, i32* %l1459, align 4
  %720 = load i8**, i8*** %aval, align 4
  %add.ptr1501 = getelementptr inbounds i8*, i8** %720, i32 1
  store i8** %add.ptr1501, i8*** %t1479, align 4
  br label %if.end1503

if.else1502:                                      ; preds = %land.lhs.true1497, %if.end1495
  %721 = load i8**, i8*** %aval, align 4
  store i8** %721, i8*** %t1479, align 4
  br label %if.end1503

if.end1503:                                       ; preds = %if.else1502, %if.then1499
  br label %if.end1520

if.else1504:                                      ; preds = %lor.lhs.false1482
  %722 = load i32, i32* %isarr, align 4
  %tobool1505 = icmp ne i32 %722, 0
  br i1 %tobool1505, label %if.else1517, label %if.then1506

if.then1506:                                      ; preds = %if.else1504
  %723 = load i8*, i8** %val, align 4
  %724 = load i8, i8* %723, align 1
  %tobool1507 = icmp ne i8 %724, 0
  br i1 %tobool1507, label %if.else1513, label %land.lhs.true1508

land.lhs.true1508:                                ; preds = %if.then1506
  %725 = load i32, i32* %arrasg, align 4
  %cmp1509 = icmp sgt i32 %725, 1
  br i1 %cmp1509, label %if.then1511, label %if.else1513

if.then1511:                                      ; preds = %land.lhs.true1508
  %arrayidx1512 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arr1478, i32 0, i32 0
  store i8* null, i8** %arrayidx1512, align 4
  store i32 0, i32* %l1459, align 4
  br label %if.end1516

if.else1513:                                      ; preds = %land.lhs.true1508, %if.then1506
  %726 = load i8*, i8** %val, align 4
  %arrayidx1514 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arr1478, i32 0, i32 0
  store i8* %726, i8** %arrayidx1514, align 4
  %arrayidx1515 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arr1478, i32 0, i32 1
  store i8* null, i8** %arrayidx1515, align 4
  store i32 1, i32* %l1459, align 4
  br label %if.end1516

if.end1516:                                       ; preds = %if.else1513, %if.then1511
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %arr1478, i32 0, i32 0
  store i8** %arraydecay, i8*** %aval, align 4
  store i8** %arraydecay, i8*** %t1479, align 4
  br label %if.end1519

if.else1517:                                      ; preds = %if.else1504
  %727 = load i8**, i8*** %aval, align 4
  %call1518 = call i32 @arrlen(i8** %727)
  store i32 %call1518, i32* %l1459, align 4
  %728 = load i8**, i8*** %aval, align 4
  store i8** %728, i8*** %t1479, align 4
  br label %if.end1519

if.end1519:                                       ; preds = %if.else1517, %if.end1516
  br label %if.end1520

if.end1520:                                       ; preds = %if.end1519, %if.end1503
  %729 = load i32, i32* %l1459, align 4
  %add1521 = add nsw i32 %729, 1
  %mul1522 = mul i32 4, %add1521
  %call1523 = call i8* @zalloc(i32 %mul1522)
  %730 = bitcast i8* %call1523 to i8**
  store i8** %730, i8*** %a1480, align 4
  store i8** %730, i8*** %p, align 4
  br label %while.cond1524

while.cond1524:                                   ; preds = %while.body1527, %if.end1520
  %731 = load i32, i32* %l1459, align 4
  %dec1525 = add nsw i32 %731, -1
  store i32 %dec1525, i32* %l1459, align 4
  %tobool1526 = icmp ne i32 %731, 0
  br i1 %tobool1526, label %while.body1527, label %while.end1531

while.body1527:                                   ; preds = %while.cond1524
  %732 = load i8**, i8*** %t1479, align 4
  %733 = load i8*, i8** %732, align 4
  call void @untokenize(i8* %733)
  %734 = load i8**, i8*** %t1479, align 4
  %incdec.ptr1528 = getelementptr inbounds i8*, i8** %734, i32 1
  store i8** %incdec.ptr1528, i8*** %t1479, align 4
  %735 = load i8*, i8** %734, align 4
  %call1529 = call i8* @ztrdup(i8* %735)
  %736 = load i8**, i8*** %p, align 4
  %incdec.ptr1530 = getelementptr inbounds i8*, i8** %736, i32 1
  store i8** %incdec.ptr1530, i8*** %p, align 4
  store i8* %call1529, i8** %736, align 4
  br label %while.cond1524

while.end1531:                                    ; preds = %while.cond1524
  %737 = load i8**, i8*** %p, align 4
  %incdec.ptr1532 = getelementptr inbounds i8*, i8** %737, i32 1
  store i8** %incdec.ptr1532, i8*** %p, align 4
  store i8* null, i8** %737, align 4
  %738 = load i32, i32* %arrasg, align 4
  %cmp1533 = icmp sgt i32 %738, 1
  br i1 %cmp1533, label %if.then1535, label %if.else1548

if.then1535:                                      ; preds = %while.end1531
  %739 = load i8*, i8** %idbeg, align 4
  %740 = load i8**, i8*** %a1480, align 4
  %call1537 = call %struct.param* @sethparam(i8* %739, i8** %740)
  store %struct.param* %call1537, %struct.param** %pm1536, align 4
  %741 = load %struct.param*, %struct.param** %pm1536, align 4
  %tobool1538 = icmp ne %struct.param* %741, null
  br i1 %tobool1538, label %if.then1539, label %if.end1547

if.then1539:                                      ; preds = %if.then1535
  %742 = load %struct.param*, %struct.param** %pm1536, align 4
  %gsu1540 = getelementptr inbounds %struct.param, %struct.param* %742, i32 0, i32 2
  %h = bitcast %union.anon.1* %gsu1540 to %struct.gsu_hash**
  %743 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %getfn1541 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %743, i32 0, i32 0
  %744 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn1541, align 4
  %745 = load %struct.param*, %struct.param** %pm1536, align 4
  %call1542 = call %struct.hashtable* %744(%struct.param* %745)
  %746 = load i8, i8* %hkeys, align 1
  %conv1543 = sext i8 %746 to i32
  %747 = load i8, i8* %hvals, align 1
  %conv1544 = sext i8 %747 to i32
  %or1545 = or i32 %conv1543, %conv1544
  %call1546 = call i8** @paramvalarr(%struct.hashtable* %call1542, i32 %or1545)
  store i8** %call1546, i8*** %aval, align 4
  br label %if.end1547

if.end1547:                                       ; preds = %if.then1539, %if.then1535
  br label %if.end1550

if.else1548:                                      ; preds = %while.end1531
  %748 = load i8*, i8** %idbeg, align 4
  %749 = load i8**, i8*** %a1480, align 4
  %call1549 = call %struct.param* @setaparam(i8* %748, i8** %749)
  br label %if.end1550

if.end1550:                                       ; preds = %if.else1548, %if.end1547
  store i32 1, i32* %isarr, align 4
  store i32 0, i32* %arrasg, align 4
  br label %if.end1554

if.else1551:                                      ; preds = %if.end1475
  %750 = load i8*, i8** %val, align 4
  call void @untokenize(i8* %750)
  %751 = load i8*, i8** %idbeg, align 4
  %752 = load i8*, i8** %val, align 4
  %call1552 = call i8* @ztrdup(i8* %752)
  %call1553 = call %struct.param* @setsparam(i8* %751, i8* %call1552)
  br label %if.end1554

if.end1554:                                       ; preds = %if.else1551, %if.end1550
  %753 = load i8, i8* %sav1458, align 1
  %754 = load i8*, i8** %idend, align 4
  store i8 %753, i8* %754, align 1
  store i32 1, i32* %copied, align 4
  %755 = load i32, i32* %isarr, align 4
  %tobool1555 = icmp ne i32 %755, 0
  br i1 %tobool1555, label %if.then1556, label %if.end1574

if.then1556:                                      ; preds = %if.end1554
  %756 = load i32, i32* %nojoin, align 4
  %tobool1557 = icmp ne i32 %756, 0
  br i1 %tobool1557, label %if.then1558, label %if.end1559

if.then1558:                                      ; preds = %if.then1556
  store i32 -1, i32* %isarr, align 4
  br label %if.end1559

if.end1559:                                       ; preds = %if.then1558, %if.then1556
  %757 = load i32, i32* %qt.addr, align 4
  %tobool1560 = icmp ne i32 %757, 0
  br i1 %tobool1560, label %land.lhs.true1561, label %if.end1573

land.lhs.true1561:                                ; preds = %if.end1559
  %758 = load i32, i32* %getlen, align 4
  %tobool1562 = icmp ne i32 %758, 0
  br i1 %tobool1562, label %if.end1573, label %land.lhs.true1563

land.lhs.true1563:                                ; preds = %land.lhs.true1561
  %759 = load i32, i32* %isarr, align 4
  %cmp1564 = icmp sgt i32 %759, 0
  br i1 %cmp1564, label %land.lhs.true1566, label %if.end1573

land.lhs.true1566:                                ; preds = %land.lhs.true1563
  %760 = load i8*, i8** %spsep, align 4
  %tobool1567 = icmp ne i8* %760, null
  br i1 %tobool1567, label %if.end1573, label %land.lhs.true1568

land.lhs.true1568:                                ; preds = %land.lhs.true1566
  %761 = load i32, i32* %spbreak, align 4
  %cmp1569 = icmp slt i32 %761, 2
  br i1 %cmp1569, label %if.then1571, label %if.end1573

if.then1571:                                      ; preds = %land.lhs.true1568
  %762 = load i8**, i8*** %aval, align 4
  %763 = load i8*, i8** %sep, align 4
  %call1572 = call i8* @sepjoin(i8** %762, i8* %763, i32 1)
  store i8* %call1572, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end1573

if.end1573:                                       ; preds = %if.then1571, %land.lhs.true1568, %land.lhs.true1566, %land.lhs.true1563, %land.lhs.true1561, %if.end1559
  store i8* null, i8** %spsep, align 4
  store i8* null, i8** %sep, align 4
  store i32 0, i32* %spbreak, align 4
  br label %if.end1574

if.end1574:                                       ; preds = %if.end1573, %if.end1554
  br label %if.end1575

if.end1575:                                       ; preds = %if.end1574, %sw.bb1455
  br label %sw.epilog1651

sw.bb1576:                                        ; preds = %if.end1413, %if.end1413
  %764 = load i32, i32* %vunset, align 4
  %tobool1577 = icmp ne i32 %764, 0
  br i1 %tobool1577, label %if.then1578, label %if.end1598

if.then1578:                                      ; preds = %sw.bb1576
  %765 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool1579 = icmp ne i8 %765, 0
  br i1 %tobool1579, label %if.then1580, label %if.end1597

if.then1580:                                      ; preds = %if.then1578
  %766 = load i8*, i8** %idend, align 4
  store i8 0, i8* %766, align 1
  %767 = load i8*, i8** %idbeg, align 4
  %768 = load i8*, i8** %s, align 4
  %769 = load i8, i8* %768, align 1
  %conv1581 = sext i8 %769 to i32
  %tobool1582 = icmp ne i32 %conv1581, 0
  br i1 %tobool1582, label %cond.true1583, label %cond.false1584

cond.true1583:                                    ; preds = %if.then1580
  %770 = load i8*, i8** %s, align 4
  br label %cond.end1585

cond.false1584:                                   ; preds = %if.then1580
  br label %cond.end1585

cond.end1585:                                     ; preds = %cond.false1584, %cond.true1583
  %cond1586 = phi i8* [ %770, %cond.true1583 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), %cond.false1584 ]
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %767, i8* %cond1586)
  %771 = load i32, i32* @errflag, align 4
  %or1587 = or i32 %771, 4
  store i32 %or1587, i32* @errflag, align 4
  %772 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool1588 = icmp ne i8 %772, 0
  br i1 %tobool1588, label %if.end1596, label %if.then1589

if.then1589:                                      ; preds = %cond.end1585
  %773 = load i32, i32* @mypid, align 4
  %call1590 = call i32 @getpid()
  %cmp1591 = icmp eq i32 %773, %call1590
  br i1 %cmp1591, label %if.then1593, label %if.else1594

if.then1593:                                      ; preds = %if.then1589
  store i32 1, i32* @stopmsg, align 4
  call void @zexit(i32 1, i32 0)
  br label %if.end1595

if.else1594:                                      ; preds = %if.then1589
  call void @_exit(i32 1) #4
  unreachable

if.end1595:                                       ; preds = %if.then1593
  br label %if.end1596

if.end1596:                                       ; preds = %if.end1595, %cond.end1585
  br label %if.end1597

if.end1597:                                       ; preds = %if.end1596, %if.then1578
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1598:                                       ; preds = %sw.bb1576
  br label %sw.epilog1651

sw.bb1599:                                        ; preds = %if.end1413, %if.end1413, %if.end1413, %if.end1413
  %774 = load i32, i32* @noerrs, align 4
  store i32 %774, i32* %one, align 4
  %775 = load i32, i32* @errflag, align 4
  store i32 %775, i32* %oef, align 4
  %776 = load i32, i32* %quoteerr, align 4
  %tobool1600 = icmp ne i32 %776, 0
  br i1 %tobool1600, label %if.end1602, label %if.then1601

if.then1601:                                      ; preds = %sw.bb1599
  store i32 1, i32* @noerrs, align 4
  br label %if.end1602

if.end1602:                                       ; preds = %if.then1601, %sw.bb1599
  %777 = load i8*, i8** %s, align 4
  %call1603 = call i32 @parse_subst_string(i8* %777)
  store i32 %call1603, i32* %haserr, align 4
  %778 = load i32, i32* %one, align 4
  store i32 %778, i32* @noerrs, align 4
  %779 = load i32, i32* %quoteerr, align 4
  %tobool1604 = icmp ne i32 %779, 0
  br i1 %tobool1604, label %if.else1611, label %if.then1605

if.then1605:                                      ; preds = %if.end1602
  %780 = load i32, i32* %oef, align 4
  %781 = load i32, i32* @errflag, align 4
  %and1606 = and i32 %781, 2
  %or1607 = or i32 %780, %and1606
  store i32 %or1607, i32* @errflag, align 4
  %782 = load i32, i32* %haserr, align 4
  %tobool1608 = icmp ne i32 %782, 0
  br i1 %tobool1608, label %if.then1609, label %if.end1610

if.then1609:                                      ; preds = %if.then1605
  %783 = load i8*, i8** %s, align 4
  call void @shtokenize(i8* %783)
  br label %if.end1610

if.end1610:                                       ; preds = %if.then1609, %if.then1605
  br label %if.end1619

if.else1611:                                      ; preds = %if.end1602
  %784 = load i32, i32* %haserr, align 4
  %tobool1612 = icmp ne i32 %784, 0
  br i1 %tobool1612, label %if.then1615, label %lor.lhs.false1613

lor.lhs.false1613:                                ; preds = %if.else1611
  %785 = load i32, i32* @errflag, align 4
  %tobool1614 = icmp ne i32 %785, 0
  br i1 %tobool1614, label %if.then1615, label %if.end1618

if.then1615:                                      ; preds = %lor.lhs.false1613, %if.else1611
  %786 = load i8*, i8** %s, align 4
  %arrayidx1616 = getelementptr inbounds i8, i8* %786, i32 -1
  %787 = load i8, i8* %arrayidx1616, align 1
  %conv1617 = sext i8 %787 to i32
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0), i32 %conv1617)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1618:                                       ; preds = %lor.lhs.false1613
  br label %if.end1619

if.end1619:                                       ; preds = %if.end1618, %if.end1610
  call void @singsub(i8** %s)
  %788 = load i32, i32* %vunset, align 4
  %tobool1620 = icmp ne i32 %788, 0
  br i1 %tobool1620, label %if.else1634, label %land.lhs.true1621

land.lhs.true1621:                                ; preds = %if.end1619
  %789 = load i32, i32* %isarr, align 4
  %tobool1622 = icmp ne i32 %789, 0
  br i1 %tobool1622, label %if.then1623, label %if.else1634

if.then1623:                                      ; preds = %land.lhs.true1621
  %790 = load i32, i32* %copied, align 4
  %tobool1624 = icmp ne i32 %790, 0
  br i1 %tobool1624, label %if.end1627, label %if.then1625

if.then1625:                                      ; preds = %if.then1623
  %791 = load i8**, i8*** %aval, align 4
  %call1626 = call i8** @arrdup(i8** %791)
  store i8** %call1626, i8*** %aval, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end1627

if.end1627:                                       ; preds = %if.then1625, %if.then1623
  %792 = load i8**, i8*** %aval, align 4
  store i8** %792, i8*** %ap, align 4
  br label %for.cond1628

for.cond1628:                                     ; preds = %for.inc1631, %if.end1627
  %793 = load i8**, i8*** %ap, align 4
  %794 = load i8*, i8** %793, align 4
  %tobool1629 = icmp ne i8* %794, null
  br i1 %tobool1629, label %for.body1630, label %for.end1633

for.body1630:                                     ; preds = %for.cond1628
  %795 = load i8**, i8*** %ap, align 4
  %796 = load i8*, i8** %795, align 4
  call void @untokenize(i8* %796)
  br label %for.inc1631

for.inc1631:                                      ; preds = %for.body1630
  %797 = load i8**, i8*** %ap, align 4
  %incdec.ptr1632 = getelementptr inbounds i8*, i8** %797, i32 1
  store i8** %incdec.ptr1632, i8*** %ap, align 4
  br label %for.cond1628

for.end1633:                                      ; preds = %for.cond1628
  %798 = load i8*, i8** %s, align 4
  %799 = load i32, i32* %flags, align 4
  %800 = load i32, i32* %flnum, align 4
  %801 = load i8*, i8** %replstr, align 4
  call void @getmatcharr(i8*** %aval, i8* %798, i32 %799, i32 %800, i8* %801)
  br label %if.end1650

if.else1634:                                      ; preds = %land.lhs.true1621, %if.end1619
  %802 = load i32, i32* %vunset, align 4
  %tobool1635 = icmp ne i32 %802, 0
  br i1 %tobool1635, label %if.then1636, label %if.end1644

if.then1636:                                      ; preds = %if.else1634
  %803 = load i32, i32* %vunset, align 4
  %cmp1637 = icmp sgt i32 %803, 0
  br i1 %cmp1637, label %land.lhs.true1639, label %if.end1642

land.lhs.true1639:                                ; preds = %if.then1636
  %804 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 173), align 1
  %tobool1640 = icmp ne i8 %804, 0
  br i1 %tobool1640, label %if.end1642, label %if.then1641

if.then1641:                                      ; preds = %land.lhs.true1639
  %805 = load i8*, i8** %idend, align 4
  store i8 0, i8* %805, align 1
  %806 = load i8*, i8** %idbeg, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %806)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1642:                                       ; preds = %land.lhs.true1639, %if.then1636
  %call1643 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1643, i8** %val, align 4
  br label %if.end1644

if.end1644:                                       ; preds = %if.end1642, %if.else1634
  %807 = load i32, i32* %copied, align 4
  %tobool1645 = icmp ne i32 %807, 0
  br i1 %tobool1645, label %if.end1648, label %if.then1646

if.then1646:                                      ; preds = %if.end1644
  %808 = load i8*, i8** %val, align 4
  %call1647 = call i8* @dupstring(i8* %808)
  store i8* %call1647, i8** %val, align 4
  store i32 1, i32* %copied, align 4
  %809 = load i8*, i8** %val, align 4
  call void @untokenize(i8* %809)
  br label %if.end1648

if.end1648:                                       ; preds = %if.then1646, %if.end1644
  %810 = load i8*, i8** %s, align 4
  %811 = load i32, i32* %flags, align 4
  %812 = load i32, i32* %flnum, align 4
  %813 = load i8*, i8** %replstr, align 4
  %call1649 = call i32 @getmatch(i8** %val, i8* %810, i32 %811, i32 %812, i8* %813)
  br label %if.end1650

if.end1650:                                       ; preds = %if.end1648, %for.end1633
  br label %sw.epilog1651

sw.epilog1651:                                    ; preds = %if.end1413, %if.end1650, %if.end1598, %if.end1575, %if.end1443, %if.then1418
  br label %if.end2157

if.else1652:                                      ; preds = %lor.lhs.false1254, %if.end1207
  %814 = load i8, i8* %inbrace, align 1
  %conv1653 = sext i8 %814 to i32
  %tobool1654 = icmp ne i32 %conv1653, 0
  br i1 %tobool1654, label %land.lhs.true1655, label %if.else1764

land.lhs.true1655:                                ; preds = %if.else1652
  %815 = load i8*, i8** %s, align 4
  %816 = load i8, i8* %815, align 1
  %conv1656 = sext i8 %816 to i32
  %cmp1657 = icmp eq i32 %conv1656, 94
  br i1 %cmp1657, label %if.then1663, label %lor.lhs.false1659

lor.lhs.false1659:                                ; preds = %land.lhs.true1655
  %817 = load i8*, i8** %s, align 4
  %818 = load i8, i8* %817, align 1
  %conv1660 = sext i8 %818 to i32
  %cmp1661 = icmp eq i32 %conv1660, -122
  br i1 %cmp1661, label %if.then1663, label %if.else1764

if.then1663:                                      ; preds = %lor.lhs.false1659, %land.lhs.true1655
  store i32 1, i32* %shortest, align 4
  %819 = load i8*, i8** %s, align 4
  %incdec.ptr1664 = getelementptr inbounds i8, i8* %819, i32 1
  store i8* %incdec.ptr1664, i8** %s, align 4
  %820 = load i8*, i8** %s, align 4
  %821 = load i8, i8* %820, align 1
  %conv1665 = sext i8 %821 to i32
  %cmp1666 = icmp eq i32 %conv1665, 94
  br i1 %cmp1666, label %if.then1672, label %lor.lhs.false1668

lor.lhs.false1668:                                ; preds = %if.then1663
  %822 = load i8*, i8** %s, align 4
  %823 = load i8, i8* %822, align 1
  %conv1669 = sext i8 %823 to i32
  %cmp1670 = icmp eq i32 %conv1669, -122
  br i1 %cmp1670, label %if.then1672, label %if.end1674

if.then1672:                                      ; preds = %lor.lhs.false1668, %if.then1663
  store i32 0, i32* %shortest, align 4
  %824 = load i8*, i8** %s, align 4
  %incdec.ptr1673 = getelementptr inbounds i8, i8* %824, i32 1
  store i8* %incdec.ptr1673, i8** %s, align 4
  br label %if.end1674

if.end1674:                                       ; preds = %if.then1672, %lor.lhs.false1668
  %825 = load i8*, i8** %s, align 4
  %call1675 = call i8* @itype_end(i8* %825, i32 128, i32 0)
  %826 = load i8, i8* %call1675, align 1
  %tobool1676 = icmp ne i8 %826, 0
  br i1 %tobool1676, label %if.then1677, label %if.end1678

if.then1677:                                      ; preds = %if.end1674
  %827 = load i8*, i8** %s, align 4
  call void @untokenize(i8* %827)
  %828 = load i8*, i8** %s, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* %828)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1678:                                       ; preds = %if.end1674
  %829 = load i32, i32* %vunset, align 4
  %tobool1679 = icmp ne i32 %829, 0
  br i1 %tobool1679, label %if.then1680, label %if.else1688

if.then1680:                                      ; preds = %if.end1678
  %830 = load i32, i32* %vunset, align 4
  %cmp1681 = icmp sgt i32 %830, 0
  br i1 %cmp1681, label %land.lhs.true1683, label %if.end1686

land.lhs.true1683:                                ; preds = %if.then1680
  %831 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 173), align 1
  %tobool1684 = icmp ne i8 %831, 0
  br i1 %tobool1684, label %if.end1686, label %if.then1685

if.then1685:                                      ; preds = %land.lhs.true1683
  %832 = load i8*, i8** %idend, align 4
  store i8 0, i8* %832, align 1
  %833 = load i8*, i8** %idbeg, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %833)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1686:                                       ; preds = %land.lhs.true1683, %if.then1680
  %call1687 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1687, i8** %val, align 4
  br label %if.end1763

if.else1688:                                      ; preds = %if.end1678
  %834 = load i8*, i8** %s, align 4
  %call1689 = call i8** @getaparam(i8* %834)
  store i8** %call1689, i8*** %zip, align 4
  %835 = load i8**, i8*** %zip, align 4
  %tobool1690 = icmp ne i8** %835, null
  br i1 %tobool1690, label %if.end1697, label %if.then1691

if.then1691:                                      ; preds = %if.else1688
  %836 = load i8*, i8** %s, align 4
  %call1692 = call i8* @getsparam(i8* %836)
  store i8* %call1692, i8** %sval, align 4
  %837 = load i8*, i8** %sval, align 4
  %tobool1693 = icmp ne i8* %837, null
  br i1 %tobool1693, label %if.then1694, label %if.end1696

if.then1694:                                      ; preds = %if.then1691
  %838 = load i8*, i8** %sval, align 4
  %call1695 = call i8** @hmkarray(i8* %838)
  store i8** %call1695, i8*** %zip, align 4
  br label %if.end1696

if.end1696:                                       ; preds = %if.then1694, %if.then1691
  br label %if.end1697

if.end1697:                                       ; preds = %if.end1696, %if.else1688
  %839 = load i32, i32* %isarr, align 4
  %tobool1698 = icmp ne i32 %839, 0
  br i1 %tobool1698, label %if.end1701, label %if.then1699

if.then1699:                                      ; preds = %if.end1697
  %840 = load i8*, i8** %val, align 4
  %call1700 = call i8** @mkarray(i8* %840)
  store i8** %call1700, i8*** %aval, align 4
  store i32 1, i32* %isarr, align 4
  br label %if.end1701

if.end1701:                                       ; preds = %if.then1699, %if.end1697
  %841 = load i8**, i8*** %zip, align 4
  %tobool1702 = icmp ne i8** %841, null
  br i1 %tobool1702, label %if.then1703, label %if.else1757

if.then1703:                                      ; preds = %if.end1701
  store i32 0, i32* %i, align 4
  %842 = load i8**, i8*** %aval, align 4
  %call1704 = call i32 @arrlen(i8** %842)
  store i32 %call1704, i32* %alen, align 4
  %843 = load i8**, i8*** %zip, align 4
  %call1705 = call i32 @arrlen(i8** %843)
  store i32 %call1705, i32* %ziplen, align 4
  %844 = load i32, i32* %shortest, align 4
  %845 = load i32, i32* %alen, align 4
  %846 = load i32, i32* %ziplen, align 4
  %cmp1706 = icmp sgt i32 %845, %846
  %conv1707 = zext i1 %cmp1706 to i32
  %xor = xor i32 %844, %conv1707
  %tobool1708 = icmp ne i32 %xor, 0
  br i1 %tobool1708, label %cond.true1709, label %cond.false1710

cond.true1709:                                    ; preds = %if.then1703
  %847 = load i32, i32* %alen, align 4
  br label %cond.end1711

cond.false1710:                                   ; preds = %if.then1703
  %848 = load i32, i32* %ziplen, align 4
  br label %cond.end1711

cond.end1711:                                     ; preds = %cond.false1710, %cond.true1709
  %cond1712 = phi i32 [ %847, %cond.true1709 ], [ %848, %cond.false1710 ]
  store i32 %cond1712, i32* %outlen, align 4
  %849 = load i32, i32* %shortest, align 4
  %tobool1713 = icmp ne i32 %849, 0
  br i1 %tobool1713, label %if.else1725, label %land.lhs.true1714

land.lhs.true1714:                                ; preds = %cond.end1711
  %850 = load i32, i32* %alen, align 4
  %cmp1715 = icmp eq i32 %850, 0
  br i1 %cmp1715, label %if.then1720, label %lor.lhs.false1717

lor.lhs.false1717:                                ; preds = %land.lhs.true1714
  %851 = load i32, i32* %ziplen, align 4
  %cmp1718 = icmp eq i32 %851, 0
  br i1 %cmp1718, label %if.then1720, label %if.else1725

if.then1720:                                      ; preds = %lor.lhs.false1717, %land.lhs.true1714
  %852 = load i32, i32* %ziplen, align 4
  %tobool1721 = icmp ne i32 %852, 0
  br i1 %tobool1721, label %if.then1722, label %if.end1724

if.then1722:                                      ; preds = %if.then1720
  %853 = load i8**, i8*** %zip, align 4
  %call1723 = call i8** @arrdup(i8** %853)
  store i8** %call1723, i8*** %aval, align 4
  br label %if.end1724

if.end1724:                                       ; preds = %if.then1722, %if.then1720
  br label %if.end1756

if.else1725:                                      ; preds = %lor.lhs.false1717, %cond.end1711
  %854 = load i32, i32* %outlen, align 4
  %mul1726 = mul nsw i32 2, %854
  %add1727 = add nsw i32 %mul1726, 1
  %mul1728 = mul i32 4, %add1727
  %call1729 = call i8* @zhalloc(i32 %mul1728)
  %855 = bitcast i8* %call1729 to i8**
  store i8** %855, i8*** %out, align 4
  br label %while.cond1730

while.cond1730:                                   ; preds = %if.end1745, %if.else1725
  %856 = load i32, i32* %i, align 4
  %857 = load i32, i32* %outlen, align 4
  %cmp1731 = icmp slt i32 %856, %857
  br i1 %cmp1731, label %while.body1733, label %while.end1753

while.body1733:                                   ; preds = %while.cond1730
  %858 = load i32, i32* %copied, align 4
  %tobool1734 = icmp ne i32 %858, 0
  br i1 %tobool1734, label %if.then1735, label %if.else1739

if.then1735:                                      ; preds = %while.body1733
  %859 = load i8**, i8*** %aval, align 4
  %860 = load i32, i32* %i, align 4
  %861 = load i32, i32* %alen, align 4
  %rem = srem i32 %860, %861
  %arrayidx1736 = getelementptr inbounds i8*, i8** %859, i32 %rem
  %862 = load i8*, i8** %arrayidx1736, align 4
  %863 = load i8**, i8*** %out, align 4
  %864 = load i32, i32* %i, align 4
  %mul1737 = mul nsw i32 %864, 2
  %arrayidx1738 = getelementptr inbounds i8*, i8** %863, i32 %mul1737
  store i8* %862, i8** %arrayidx1738, align 4
  br label %if.end1745

if.else1739:                                      ; preds = %while.body1733
  %865 = load i8**, i8*** %aval, align 4
  %866 = load i32, i32* %i, align 4
  %867 = load i32, i32* %alen, align 4
  %rem1740 = srem i32 %866, %867
  %arrayidx1741 = getelementptr inbounds i8*, i8** %865, i32 %rem1740
  %868 = load i8*, i8** %arrayidx1741, align 4
  %call1742 = call i8* @dupstring(i8* %868)
  %869 = load i8**, i8*** %out, align 4
  %870 = load i32, i32* %i, align 4
  %mul1743 = mul nsw i32 %870, 2
  %arrayidx1744 = getelementptr inbounds i8*, i8** %869, i32 %mul1743
  store i8* %call1742, i8** %arrayidx1744, align 4
  br label %if.end1745

if.end1745:                                       ; preds = %if.else1739, %if.then1735
  %871 = load i8**, i8*** %zip, align 4
  %872 = load i32, i32* %i, align 4
  %873 = load i32, i32* %ziplen, align 4
  %rem1746 = srem i32 %872, %873
  %arrayidx1747 = getelementptr inbounds i8*, i8** %871, i32 %rem1746
  %874 = load i8*, i8** %arrayidx1747, align 4
  %call1748 = call i8* @dupstring(i8* %874)
  %875 = load i8**, i8*** %out, align 4
  %876 = load i32, i32* %i, align 4
  %mul1749 = mul nsw i32 %876, 2
  %add1750 = add nsw i32 %mul1749, 1
  %arrayidx1751 = getelementptr inbounds i8*, i8** %875, i32 %add1750
  store i8* %call1748, i8** %arrayidx1751, align 4
  %877 = load i32, i32* %i, align 4
  %inc1752 = add nsw i32 %877, 1
  store i32 %inc1752, i32* %i, align 4
  br label %while.cond1730

while.end1753:                                    ; preds = %while.cond1730
  %878 = load i8**, i8*** %out, align 4
  %879 = load i32, i32* %i, align 4
  %mul1754 = mul nsw i32 %879, 2
  %arrayidx1755 = getelementptr inbounds i8*, i8** %878, i32 %mul1754
  store i8* null, i8** %arrayidx1755, align 4
  %880 = load i8**, i8*** %out, align 4
  store i8** %880, i8*** %aval, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end1756

if.end1756:                                       ; preds = %while.end1753, %if.end1724
  br label %if.end1762

if.else1757:                                      ; preds = %if.end1701
  %881 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 173), align 1
  %tobool1758 = icmp ne i8 %881, 0
  br i1 %tobool1758, label %if.end1760, label %if.then1759

if.then1759:                                      ; preds = %if.else1757
  %882 = load i8*, i8** %s, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %882)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1760:                                       ; preds = %if.else1757
  %call1761 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1761, i8** %val, align 4
  br label %if.end1762

if.end1762:                                       ; preds = %if.end1760, %if.end1756
  br label %if.end1763

if.end1763:                                       ; preds = %if.end1762, %if.end1686
  br label %if.end2156

if.else1764:                                      ; preds = %lor.lhs.false1659, %if.else1652
  %883 = load i8, i8* %inbrace, align 1
  %conv1765 = sext i8 %883 to i32
  %tobool1766 = icmp ne i32 %conv1765, 0
  br i1 %tobool1766, label %land.lhs.true1767, label %if.else1890

land.lhs.true1767:                                ; preds = %if.else1764
  %884 = load i8*, i8** %s, align 4
  %885 = load i8, i8* %884, align 1
  %conv1768 = sext i8 %885 to i32
  %cmp1769 = icmp eq i32 %conv1768, 124
  br i1 %cmp1769, label %if.then1783, label %lor.lhs.false1771

lor.lhs.false1771:                                ; preds = %land.lhs.true1767
  %886 = load i8*, i8** %s, align 4
  %887 = load i8, i8* %886, align 1
  %conv1772 = sext i8 %887 to i32
  %cmp1773 = icmp eq i32 %conv1772, -114
  br i1 %cmp1773, label %if.then1783, label %lor.lhs.false1775

lor.lhs.false1775:                                ; preds = %lor.lhs.false1771
  %888 = load i8*, i8** %s, align 4
  %889 = load i8, i8* %888, align 1
  %conv1776 = sext i8 %889 to i32
  %cmp1777 = icmp eq i32 %conv1776, 42
  br i1 %cmp1777, label %if.then1783, label %lor.lhs.false1779

lor.lhs.false1779:                                ; preds = %lor.lhs.false1775
  %890 = load i8*, i8** %s, align 4
  %891 = load i8, i8* %890, align 1
  %conv1780 = sext i8 %891 to i32
  %cmp1781 = icmp eq i32 %conv1780, -121
  br i1 %cmp1781, label %if.then1783, label %if.else1890

if.then1783:                                      ; preds = %lor.lhs.false1779, %lor.lhs.false1775, %lor.lhs.false1771, %land.lhs.true1767
  %892 = load i8*, i8** %s, align 4
  %893 = load i8, i8* %892, align 1
  %conv1784 = sext i8 %893 to i32
  %cmp1785 = icmp eq i32 %conv1784, 42
  br i1 %cmp1785, label %lor.end1791, label %lor.rhs1787

lor.rhs1787:                                      ; preds = %if.then1783
  %894 = load i8*, i8** %s, align 4
  %895 = load i8, i8* %894, align 1
  %conv1788 = sext i8 %895 to i32
  %cmp1789 = icmp eq i32 %conv1788, -121
  br label %lor.end1791

lor.end1791:                                      ; preds = %lor.rhs1787, %if.then1783
  %896 = phi i1 [ true, %if.then1783 ], [ %cmp1789, %lor.rhs1787 ]
  %lor.ext1792 = zext i1 %896 to i32
  store i32 %lor.ext1792, i32* %intersect, align 4
  %897 = load i8*, i8** %s, align 4
  %incdec.ptr1794 = getelementptr inbounds i8, i8* %897, i32 1
  store i8* %incdec.ptr1794, i8** %s, align 4
  %898 = load i8*, i8** %s, align 4
  %call1795 = call i8* @itype_end(i8* %898, i32 128, i32 0)
  %899 = load i8, i8* %call1795, align 1
  %tobool1796 = icmp ne i8 %899, 0
  br i1 %tobool1796, label %if.then1797, label %if.end1798

if.then1797:                                      ; preds = %lor.end1791
  %900 = load i8*, i8** %s, align 4
  call void @untokenize(i8* %900)
  %901 = load i8*, i8** %s, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* %901)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1798:                                       ; preds = %lor.end1791
  %902 = load i8*, i8** %s, align 4
  %call1799 = call i8** @getaparam(i8* %902)
  store i8** %call1799, i8*** %compare, align 4
  %903 = load i8**, i8*** %compare, align 4
  %tobool1800 = icmp ne i8** %903, null
  br i1 %tobool1800, label %if.then1801, label %if.else1866

if.then1801:                                      ; preds = %if.end1798
  %904 = load i8**, i8*** %compare, align 4
  %call1802 = call i32 @arrlen(i8** %904)
  %add1803 = add nsw i32 %call1802, 1
  %call1804 = call %struct.hashtable* @newuniqtable(i32 %add1803)
  store %struct.hashtable* %call1804, %struct.hashtable** %ht, align 4
  %905 = load i8**, i8*** %compare, align 4
  store i8** %905, i8*** %ap1793, align 4
  br label %for.cond1805

for.cond1805:                                     ; preds = %for.inc1810, %if.then1801
  %906 = load i8**, i8*** %ap1793, align 4
  %907 = load i8*, i8** %906, align 4
  %tobool1806 = icmp ne i8* %907, null
  br i1 %tobool1806, label %for.body1807, label %for.end1812

for.body1807:                                     ; preds = %for.cond1805
  %908 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %909 = load i8**, i8*** %ap1793, align 4
  %910 = load i8*, i8** %909, align 4
  %call1808 = call i8* @zhalloc(i32 12)
  %911 = bitcast i8* %call1808 to %struct.hashnode*
  %912 = bitcast %struct.hashnode* %911 to i8*
  %call1809 = call %struct.hashnode* @addhashnode2(%struct.hashtable* %908, i8* %910, i8* %912)
  br label %for.inc1810

for.inc1810:                                      ; preds = %for.body1807
  %913 = load i8**, i8*** %ap1793, align 4
  %incdec.ptr1811 = getelementptr inbounds i8*, i8** %913, i32 1
  store i8** %incdec.ptr1811, i8*** %ap1793, align 4
  br label %for.cond1805

for.end1812:                                      ; preds = %for.cond1805
  %914 = load i32, i32* %vunset, align 4
  %tobool1813 = icmp ne i32 %914, 0
  br i1 %tobool1813, label %if.else1842, label %land.lhs.true1814

land.lhs.true1814:                                ; preds = %for.end1812
  %915 = load i32, i32* %isarr, align 4
  %tobool1815 = icmp ne i32 %915, 0
  br i1 %tobool1815, label %if.then1816, label %if.else1842

if.then1816:                                      ; preds = %land.lhs.true1814
  %916 = load i32, i32* %copied, align 4
  %tobool1817 = icmp ne i32 %916, 0
  br i1 %tobool1817, label %if.end1820, label %if.then1818

if.then1818:                                      ; preds = %if.then1816
  %917 = load i8**, i8*** %aval, align 4
  %call1819 = call i8** @arrdup(i8** %917)
  store i8** %call1819, i8*** %aval, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end1820

if.end1820:                                       ; preds = %if.then1818, %if.then1816
  %918 = load i8**, i8*** %aval, align 4
  store i8** %918, i8*** %apsrc, align 4
  store i8** %918, i8*** %ap1793, align 4
  br label %for.cond1821

for.cond1821:                                     ; preds = %for.inc1839, %if.end1820
  %919 = load i8**, i8*** %apsrc, align 4
  %920 = load i8*, i8** %919, align 4
  %tobool1822 = icmp ne i8* %920, null
  br i1 %tobool1822, label %for.body1823, label %for.end1841

for.body1823:                                     ; preds = %for.cond1821
  %921 = load i8**, i8*** %apsrc, align 4
  %922 = load i8*, i8** %921, align 4
  call void @untokenize(i8* %922)
  %923 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %924 = load i8**, i8*** %apsrc, align 4
  %925 = load i8*, i8** %924, align 4
  %call1824 = call %struct.hashnode* @gethashnode2(%struct.hashtable* %923, i8* %925)
  %cmp1825 = icmp ne %struct.hashnode* %call1824, null
  %conv1826 = zext i1 %cmp1825 to i32
  store i32 %conv1826, i32* %present, align 4
  %926 = load i32, i32* %intersect, align 4
  %tobool1827 = icmp ne i32 %926, 0
  br i1 %tobool1827, label %cond.true1828, label %cond.false1830

cond.true1828:                                    ; preds = %for.body1823
  %927 = load i32, i32* %present, align 4
  %tobool1829 = icmp ne i32 %927, 0
  br i1 %tobool1829, label %if.then1832, label %if.end1838

cond.false1830:                                   ; preds = %for.body1823
  %928 = load i32, i32* %present, align 4
  %tobool1831 = icmp ne i32 %928, 0
  br i1 %tobool1831, label %if.end1838, label %if.then1832

if.then1832:                                      ; preds = %cond.false1830, %cond.true1828
  %929 = load i8**, i8*** %ap1793, align 4
  %930 = load i8**, i8*** %apsrc, align 4
  %cmp1833 = icmp ne i8** %929, %930
  br i1 %cmp1833, label %if.then1835, label %if.end1836

if.then1835:                                      ; preds = %if.then1832
  %931 = load i8**, i8*** %apsrc, align 4
  %932 = load i8*, i8** %931, align 4
  %933 = load i8**, i8*** %ap1793, align 4
  store i8* %932, i8** %933, align 4
  br label %if.end1836

if.end1836:                                       ; preds = %if.then1835, %if.then1832
  %934 = load i8**, i8*** %ap1793, align 4
  %incdec.ptr1837 = getelementptr inbounds i8*, i8** %934, i32 1
  store i8** %incdec.ptr1837, i8*** %ap1793, align 4
  br label %if.end1838

if.end1838:                                       ; preds = %if.end1836, %cond.false1830, %cond.true1828
  br label %for.inc1839

for.inc1839:                                      ; preds = %if.end1838
  %935 = load i8**, i8*** %apsrc, align 4
  %incdec.ptr1840 = getelementptr inbounds i8*, i8** %935, i32 1
  store i8** %incdec.ptr1840, i8*** %apsrc, align 4
  br label %for.cond1821

for.end1841:                                      ; preds = %for.cond1821
  %936 = load i8**, i8*** %ap1793, align 4
  store i8* null, i8** %936, align 4
  br label %if.end1865

if.else1842:                                      ; preds = %land.lhs.true1814, %for.end1812
  %937 = load i32, i32* %vunset, align 4
  %tobool1843 = icmp ne i32 %937, 0
  br i1 %tobool1843, label %if.then1844, label %if.else1852

if.then1844:                                      ; preds = %if.else1842
  %938 = load i32, i32* %vunset, align 4
  %cmp1845 = icmp sgt i32 %938, 0
  br i1 %cmp1845, label %land.lhs.true1847, label %if.end1850

land.lhs.true1847:                                ; preds = %if.then1844
  %939 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 173), align 1
  %tobool1848 = icmp ne i8 %939, 0
  br i1 %tobool1848, label %if.end1850, label %if.then1849

if.then1849:                                      ; preds = %land.lhs.true1847
  %940 = load i8*, i8** %idend, align 4
  store i8 0, i8* %940, align 1
  %941 = load i8*, i8** %idbeg, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %941)
  %942 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  call void @deletehashtable(%struct.hashtable* %942)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1850:                                       ; preds = %land.lhs.true1847, %if.then1844
  %call1851 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1851, i8** %val, align 4
  br label %if.end1864

if.else1852:                                      ; preds = %if.else1842
  %943 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %944 = load i8*, i8** %val, align 4
  %call1853 = call %struct.hashnode* @gethashnode2(%struct.hashtable* %943, i8* %944)
  %cmp1854 = icmp ne %struct.hashnode* %call1853, null
  %conv1855 = zext i1 %cmp1854 to i32
  store i32 %conv1855, i32* %present, align 4
  %945 = load i32, i32* %intersect, align 4
  %tobool1856 = icmp ne i32 %945, 0
  br i1 %tobool1856, label %cond.true1857, label %cond.false1859

cond.true1857:                                    ; preds = %if.else1852
  %946 = load i32, i32* %present, align 4
  %tobool1858 = icmp ne i32 %946, 0
  br i1 %tobool1858, label %if.end1863, label %if.then1861

cond.false1859:                                   ; preds = %if.else1852
  %947 = load i32, i32* %present, align 4
  %tobool1860 = icmp ne i32 %947, 0
  br i1 %tobool1860, label %if.then1861, label %if.end1863

if.then1861:                                      ; preds = %cond.false1859, %cond.true1857
  %call1862 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1862, i8** %val, align 4
  br label %if.end1863

if.end1863:                                       ; preds = %if.then1861, %cond.false1859, %cond.true1857
  br label %if.end1864

if.end1864:                                       ; preds = %if.end1863, %if.end1850
  br label %if.end1865

if.end1865:                                       ; preds = %if.end1864, %for.end1841
  %948 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  call void @deletehashtable(%struct.hashtable* %948)
  br label %if.end1879

if.else1866:                                      ; preds = %if.end1798
  %949 = load i32, i32* %intersect, align 4
  %tobool1867 = icmp ne i32 %949, 0
  br i1 %tobool1867, label %if.then1868, label %if.end1878

if.then1868:                                      ; preds = %if.else1866
  %950 = load i32, i32* %vunset, align 4
  %tobool1869 = icmp ne i32 %950, 0
  br i1 %tobool1869, label %if.end1877, label %if.then1870

if.then1870:                                      ; preds = %if.then1868
  %951 = load i32, i32* %isarr, align 4
  %tobool1871 = icmp ne i32 %951, 0
  br i1 %tobool1871, label %if.then1872, label %if.else1874

if.then1872:                                      ; preds = %if.then1870
  %call1873 = call i8** @hmkarray(i8* null)
  store i8** %call1873, i8*** %aval, align 4
  br label %if.end1876

if.else1874:                                      ; preds = %if.then1870
  %call1875 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1875, i8** %val, align 4
  br label %if.end1876

if.end1876:                                       ; preds = %if.else1874, %if.then1872
  br label %if.end1877

if.end1877:                                       ; preds = %if.end1876, %if.then1868
  br label %if.end1878

if.end1878:                                       ; preds = %if.end1877, %if.else1866
  br label %if.end1879

if.end1879:                                       ; preds = %if.end1878, %if.end1865
  %952 = load i32, i32* %vunset, align 4
  %tobool1880 = icmp ne i32 %952, 0
  br i1 %tobool1880, label %if.then1881, label %if.end1889

if.then1881:                                      ; preds = %if.end1879
  %953 = load i32, i32* %vunset, align 4
  %cmp1882 = icmp sgt i32 %953, 0
  br i1 %cmp1882, label %land.lhs.true1884, label %if.end1887

land.lhs.true1884:                                ; preds = %if.then1881
  %954 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 173), align 1
  %tobool1885 = icmp ne i8 %954, 0
  br i1 %tobool1885, label %if.end1887, label %if.then1886

if.then1886:                                      ; preds = %land.lhs.true1884
  %955 = load i8*, i8** %idend, align 4
  store i8 0, i8* %955, align 1
  %956 = load i8*, i8** %idbeg, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %956)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1887:                                       ; preds = %land.lhs.true1884, %if.then1881
  %call1888 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1888, i8** %val, align 4
  br label %if.end1889

if.end1889:                                       ; preds = %if.end1887, %if.end1879
  br label %if.end2155

if.else1890:                                      ; preds = %lor.lhs.false1779, %if.else1764
  %957 = load i32, i32* %chkset, align 4
  %tobool1891 = icmp ne i32 %957, 0
  br i1 %tobool1891, label %if.then1892, label %if.else1896

if.then1892:                                      ; preds = %if.else1890
  %958 = load i32, i32* %vunset, align 4
  %tobool1893 = icmp ne i32 %958, 0
  %cond1894 = select i1 %tobool1893, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)
  %call1895 = call i8* @dupstring(i8* %cond1894)
  store i8* %call1895, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end1907

if.else1896:                                      ; preds = %if.else1890
  %959 = load i32, i32* %vunset, align 4
  %tobool1897 = icmp ne i32 %959, 0
  br i1 %tobool1897, label %if.then1898, label %if.end1906

if.then1898:                                      ; preds = %if.else1896
  %960 = load i32, i32* %vunset, align 4
  %cmp1899 = icmp sgt i32 %960, 0
  br i1 %cmp1899, label %land.lhs.true1901, label %if.end1904

land.lhs.true1901:                                ; preds = %if.then1898
  %961 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 173), align 1
  %tobool1902 = icmp ne i8 %961, 0
  br i1 %tobool1902, label %if.end1904, label %if.then1903

if.then1903:                                      ; preds = %land.lhs.true1901
  %962 = load i8*, i8** %idend, align 4
  store i8 0, i8* %962, align 1
  %963 = load i8*, i8** %idbeg, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %963)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1904:                                       ; preds = %land.lhs.true1901, %if.then1898
  %call1905 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call1905, i8** %val, align 4
  br label %if.end1906

if.end1906:                                       ; preds = %if.end1904, %if.else1896
  br label %if.end1907

if.end1907:                                       ; preds = %if.end1906, %if.then1892
  %964 = load i32, i32* %colf, align 4
  %tobool1908 = icmp ne i32 %964, 0
  br i1 %tobool1908, label %land.lhs.true1909, label %if.end2099

land.lhs.true1909:                                ; preds = %if.end1907
  %965 = load i8, i8* %inbrace, align 1
  %conv1910 = sext i8 %965 to i32
  %tobool1911 = icmp ne i32 %conv1910, 0
  br i1 %tobool1911, label %if.then1912, label %if.end2099

if.then1912:                                      ; preds = %land.lhs.true1909
  %966 = load i8*, i8** %s, align 4
  %call1913 = call i8* @check_colon_subscript(i8* %966, i8** %check_offset2)
  store i8* %call1913, i8** %check_offset, align 4
  %967 = load i8*, i8** %check_offset, align 4
  %tobool1914 = icmp ne i8* %967, null
  br i1 %tobool1914, label %if.then1915, label %if.end2098

if.then1915:                                      ; preds = %if.then1912
  %968 = load i8*, i8** %check_offset, align 4
  %call1916 = call i32 @mathevali(i8* %968)
  store i32 %call1916, i32* %offset, align 4
  store i32 0, i32* %length, align 4
  store i32 0, i32* %length_set, align 4
  store i32 0, i32* %offset_hack_argzero, align 4
  %969 = load i32, i32* @errflag, align 4
  %tobool1917 = icmp ne i32 %969, 0
  br i1 %tobool1917, label %if.then1918, label %if.end1919

if.then1918:                                      ; preds = %if.then1915
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1919:                                       ; preds = %if.then1915
  %970 = load i8*, i8** %check_offset2, align 4
  %971 = load i8, i8* %970, align 1
  %conv1920 = sext i8 %971 to i32
  %tobool1921 = icmp ne i32 %conv1920, 0
  br i1 %tobool1921, label %land.lhs.true1922, label %if.end1927

land.lhs.true1922:                                ; preds = %if.end1919
  %972 = load i8*, i8** %check_offset2, align 4
  %973 = load i8, i8* %972, align 1
  %conv1923 = sext i8 %973 to i32
  %cmp1924 = icmp ne i32 %conv1923, 58
  br i1 %cmp1924, label %if.then1926, label %if.end1927

if.then1926:                                      ; preds = %land.lhs.true1922
  %974 = load i8*, i8** %check_offset, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i8* %974)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1927:                                       ; preds = %land.lhs.true1922, %if.end1919
  %975 = load i8*, i8** %check_offset2, align 4
  %976 = load i8, i8* %975, align 1
  %tobool1928 = icmp ne i8 %976, 0
  br i1 %tobool1928, label %if.then1929, label %if.end1947

if.then1929:                                      ; preds = %if.end1927
  %977 = load i8*, i8** %check_offset2, align 4
  %add.ptr1930 = getelementptr inbounds i8, i8* %977, i32 1
  %call1931 = call i8* @check_colon_subscript(i8* %add.ptr1930, i8** %check_offset2)
  store i8* %call1931, i8** %check_offset, align 4
  %978 = load i8*, i8** %check_offset2, align 4
  %979 = load i8, i8* %978, align 1
  %conv1932 = sext i8 %979 to i32
  %tobool1933 = icmp ne i32 %conv1932, 0
  br i1 %tobool1933, label %land.lhs.true1934, label %if.end1939

land.lhs.true1934:                                ; preds = %if.then1929
  %980 = load i8*, i8** %check_offset2, align 4
  %981 = load i8, i8* %980, align 1
  %conv1935 = sext i8 %981 to i32
  %cmp1936 = icmp ne i32 %conv1935, 58
  br i1 %cmp1936, label %if.then1938, label %if.end1939

if.then1938:                                      ; preds = %land.lhs.true1934
  %982 = load i8*, i8** %check_offset, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* %982)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1939:                                       ; preds = %land.lhs.true1934, %if.then1929
  %983 = load i8*, i8** %check_offset, align 4
  %tobool1940 = icmp ne i8* %983, null
  br i1 %tobool1940, label %if.then1941, label %if.end1946

if.then1941:                                      ; preds = %if.end1939
  %984 = load i8*, i8** %check_offset, align 4
  %call1942 = call i32 @mathevali(i8* %984)
  store i32 %call1942, i32* %length, align 4
  store i32 1, i32* %length_set, align 4
  %985 = load i32, i32* @errflag, align 4
  %tobool1943 = icmp ne i32 %985, 0
  br i1 %tobool1943, label %if.then1944, label %if.end1945

if.then1944:                                      ; preds = %if.then1941
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1945:                                       ; preds = %if.then1941
  br label %if.end1946

if.end1946:                                       ; preds = %if.end1945, %if.end1939
  br label %if.end1947

if.end1947:                                       ; preds = %if.end1946, %if.end1927
  %986 = load i32, i32* %isarr, align 4
  %tobool1948 = icmp ne i32 %986, 0
  br i1 %tobool1948, label %if.then1949, label %if.else2023

if.then1949:                                      ; preds = %if.end1947
  %987 = load i32, i32* %horrible_offset_hack, align 4
  %tobool1951 = icmp ne i32 %987, 0
  br i1 %tobool1951, label %if.then1952, label %if.end1963

if.then1952:                                      ; preds = %if.then1949
  %988 = load i32, i32* %offset, align 4
  %cmp1953 = icmp eq i32 %988, 0
  br i1 %cmp1953, label %if.then1955, label %if.else1956

if.then1955:                                      ; preds = %if.then1952
  store i32 1, i32* %offset_hack_argzero, align 4
  br label %if.end1962

if.else1956:                                      ; preds = %if.then1952
  %989 = load i32, i32* %offset, align 4
  %cmp1957 = icmp sgt i32 %989, 0
  br i1 %cmp1957, label %if.then1959, label %if.end1961

if.then1959:                                      ; preds = %if.else1956
  %990 = load i32, i32* %offset, align 4
  %dec1960 = add nsw i32 %990, -1
  store i32 %dec1960, i32* %offset, align 4
  br label %if.end1961

if.end1961:                                       ; preds = %if.then1959, %if.else1956
  br label %if.end1962

if.end1962:                                       ; preds = %if.end1961, %if.then1955
  br label %if.end1963

if.end1963:                                       ; preds = %if.end1962, %if.then1949
  %991 = load i8**, i8*** %aval, align 4
  %call1964 = call i32 @arrlen(i8** %991)
  store i32 %call1964, i32* %alen1950, align 4
  %992 = load i32, i32* %offset, align 4
  %cmp1965 = icmp slt i32 %992, 0
  br i1 %cmp1965, label %if.then1967, label %if.end1973

if.then1967:                                      ; preds = %if.end1963
  %993 = load i32, i32* %alen1950, align 4
  %994 = load i32, i32* %offset, align 4
  %add1968 = add nsw i32 %994, %993
  store i32 %add1968, i32* %offset, align 4
  %995 = load i32, i32* %offset, align 4
  %cmp1969 = icmp slt i32 %995, 0
  br i1 %cmp1969, label %if.then1971, label %if.end1972

if.then1971:                                      ; preds = %if.then1967
  store i32 0, i32* %offset, align 4
  br label %if.end1972

if.end1972:                                       ; preds = %if.then1971, %if.then1967
  br label %if.end1973

if.end1973:                                       ; preds = %if.end1972, %if.end1963
  %996 = load i32, i32* %offset_hack_argzero, align 4
  %tobool1974 = icmp ne i32 %996, 0
  br i1 %tobool1974, label %if.then1975, label %if.end1977

if.then1975:                                      ; preds = %if.end1973
  %997 = load i32, i32* %alen1950, align 4
  %inc1976 = add nsw i32 %997, 1
  store i32 %inc1976, i32* %alen1950, align 4
  br label %if.end1977

if.end1977:                                       ; preds = %if.then1975, %if.end1973
  %998 = load i32, i32* %length_set, align 4
  %tobool1978 = icmp ne i32 %998, 0
  br i1 %tobool1978, label %if.then1979, label %if.else1991

if.then1979:                                      ; preds = %if.end1977
  %999 = load i32, i32* %length, align 4
  %cmp1980 = icmp slt i32 %999, 0
  br i1 %cmp1980, label %if.then1982, label %if.end1985

if.then1982:                                      ; preds = %if.then1979
  %1000 = load i32, i32* %alen1950, align 4
  %1001 = load i32, i32* %offset, align 4
  %sub1983 = sub nsw i32 %1000, %1001
  %1002 = load i32, i32* %length, align 4
  %add1984 = add nsw i32 %1002, %sub1983
  store i32 %add1984, i32* %length, align 4
  br label %if.end1985

if.end1985:                                       ; preds = %if.then1982, %if.then1979
  %1003 = load i32, i32* %length, align 4
  %cmp1986 = icmp slt i32 %1003, 0
  br i1 %cmp1986, label %if.then1988, label %if.end1990

if.then1988:                                      ; preds = %if.end1985
  %1004 = load i32, i32* %length, align 4
  %1005 = load i32, i32* %offset, align 4
  %add1989 = add nsw i32 %1004, %1005
  %1006 = load i32, i32* %offset, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 %add1989, i32 %1006)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end1990:                                       ; preds = %if.end1985
  br label %if.end1992

if.else1991:                                      ; preds = %if.end1977
  %1007 = load i32, i32* %alen1950, align 4
  store i32 %1007, i32* %length, align 4
  br label %if.end1992

if.end1992:                                       ; preds = %if.else1991, %if.end1990
  %1008 = load i32, i32* %offset, align 4
  %1009 = load i32, i32* %alen1950, align 4
  %cmp1993 = icmp sgt i32 %1008, %1009
  br i1 %cmp1993, label %if.then1995, label %if.end1996

if.then1995:                                      ; preds = %if.end1992
  %1010 = load i32, i32* %alen1950, align 4
  store i32 %1010, i32* %offset, align 4
  br label %if.end1996

if.end1996:                                       ; preds = %if.then1995, %if.end1992
  %1011 = load i32, i32* %offset, align 4
  %1012 = load i32, i32* %length, align 4
  %add1997 = add nsw i32 %1011, %1012
  %1013 = load i32, i32* %alen1950, align 4
  %cmp1998 = icmp sgt i32 %add1997, %1013
  br i1 %cmp1998, label %if.then2000, label %if.end2002

if.then2000:                                      ; preds = %if.end1996
  %1014 = load i32, i32* %alen1950, align 4
  %1015 = load i32, i32* %offset, align 4
  %sub2001 = sub nsw i32 %1014, %1015
  store i32 %sub2001, i32* %length, align 4
  br label %if.end2002

if.end2002:                                       ; preds = %if.then2000, %if.end1996
  %1016 = load i32, i32* %length, align 4
  store i32 %1016, i32* %count, align 4
  %1017 = load i8**, i8*** %aval, align 4
  %1018 = load i32, i32* %offset, align 4
  %add.ptr2003 = getelementptr inbounds i8*, i8** %1017, i32 %1018
  store i8** %add.ptr2003, i8*** %srcptr, align 4
  %1019 = load i32, i32* %length, align 4
  %add2004 = add nsw i32 %1019, 1
  %mul2005 = mul i32 %add2004, 4
  %call2006 = call i8* @zhalloc(i32 %mul2005)
  %1020 = bitcast i8* %call2006 to i8**
  store i8** %1020, i8*** %dstptr, align 4
  store i8** %1020, i8*** %newarr, align 4
  %1021 = load i32, i32* %count, align 4
  %tobool2007 = icmp ne i32 %1021, 0
  br i1 %tobool2007, label %land.lhs.true2008, label %if.end2014

land.lhs.true2008:                                ; preds = %if.end2002
  %1022 = load i32, i32* %offset_hack_argzero, align 4
  %tobool2009 = icmp ne i32 %1022, 0
  br i1 %tobool2009, label %if.then2010, label %if.end2014

if.then2010:                                      ; preds = %land.lhs.true2008
  %1023 = load i8*, i8** @argzero, align 4
  %call2011 = call i8* @dupstring(i8* %1023)
  %1024 = load i8**, i8*** %dstptr, align 4
  %incdec.ptr2012 = getelementptr inbounds i8*, i8** %1024, i32 1
  store i8** %incdec.ptr2012, i8*** %dstptr, align 4
  store i8* %call2011, i8** %1024, align 4
  %1025 = load i32, i32* %count, align 4
  %dec2013 = add nsw i32 %1025, -1
  store i32 %dec2013, i32* %count, align 4
  br label %if.end2014

if.end2014:                                       ; preds = %if.then2010, %land.lhs.true2008, %if.end2002
  br label %while.cond2015

while.cond2015:                                   ; preds = %while.body2018, %if.end2014
  %1026 = load i32, i32* %count, align 4
  %dec2016 = add nsw i32 %1026, -1
  store i32 %dec2016, i32* %count, align 4
  %tobool2017 = icmp ne i32 %1026, 0
  br i1 %tobool2017, label %while.body2018, label %while.end2022

while.body2018:                                   ; preds = %while.cond2015
  %1027 = load i8**, i8*** %srcptr, align 4
  %incdec.ptr2019 = getelementptr inbounds i8*, i8** %1027, i32 1
  store i8** %incdec.ptr2019, i8*** %srcptr, align 4
  %1028 = load i8*, i8** %1027, align 4
  %call2020 = call i8* @dupstring(i8* %1028)
  %1029 = load i8**, i8*** %dstptr, align 4
  %incdec.ptr2021 = getelementptr inbounds i8*, i8** %1029, i32 1
  store i8** %incdec.ptr2021, i8*** %dstptr, align 4
  store i8* %call2020, i8** %1029, align 4
  br label %while.cond2015

while.end2022:                                    ; preds = %while.cond2015
  %1030 = load i8**, i8*** %dstptr, align 4
  store i8* null, i8** %1030, align 4
  %1031 = load i8**, i8*** %newarr, align 4
  store i8** %1031, i8*** %aval, align 4
  br label %if.end2092

if.else2023:                                      ; preds = %if.end1947
  %1032 = load i32, i32* %offset, align 4
  %cmp2024 = icmp slt i32 %1032, 0
  br i1 %cmp2024, label %if.then2026, label %if.end2038

if.then2026:                                      ; preds = %if.else2023
  call void @mb_charinit()
  %1033 = load i8*, i8** %val, align 4
  store i8* %1033, i8** %sptr, align 4
  br label %for.cond2027

for.cond2027:                                     ; preds = %for.body2029, %if.then2026
  %1034 = load i8*, i8** %sptr, align 4
  %1035 = load i8, i8* %1034, align 1
  %tobool2028 = icmp ne i8 %1035, 0
  br i1 %tobool2028, label %for.body2029, label %for.end2033

for.body2029:                                     ; preds = %for.cond2027
  %1036 = load i8*, i8** %sptr, align 4
  %call2030 = call i32 @mb_metacharlenconv(i8* %1036, i32* null)
  %1037 = load i8*, i8** %sptr, align 4
  %add.ptr2031 = getelementptr inbounds i8, i8* %1037, i32 %call2030
  store i8* %add.ptr2031, i8** %sptr, align 4
  %1038 = load i32, i32* %offset, align 4
  %inc2032 = add nsw i32 %1038, 1
  store i32 %inc2032, i32* %offset, align 4
  br label %for.cond2027

for.end2033:                                      ; preds = %for.cond2027
  %1039 = load i32, i32* %offset, align 4
  %cmp2034 = icmp slt i32 %1039, 0
  br i1 %cmp2034, label %if.then2036, label %if.end2037

if.then2036:                                      ; preds = %for.end2033
  store i32 0, i32* %offset, align 4
  br label %if.end2037

if.end2037:                                       ; preds = %if.then2036, %for.end2033
  br label %if.end2038

if.end2038:                                       ; preds = %if.end2037, %if.else2023
  %1040 = load i32, i32* %offset, align 4
  store i32 %1040, i32* %given_offset, align 4
  call void @mb_charinit()
  %1041 = load i32, i32* %length_set, align 4
  %tobool2039 = icmp ne i32 %1041, 0
  br i1 %tobool2039, label %land.lhs.true2040, label %if.end2045

land.lhs.true2040:                                ; preds = %if.end2038
  %1042 = load i32, i32* %length, align 4
  %cmp2041 = icmp slt i32 %1042, 0
  br i1 %cmp2041, label %if.then2043, label %if.end2045

if.then2043:                                      ; preds = %land.lhs.true2040
  %1043 = load i32, i32* %offset, align 4
  %1044 = load i32, i32* %length, align 4
  %sub2044 = sub nsw i32 %1044, %1043
  store i32 %sub2044, i32* %length, align 4
  br label %if.end2045

if.end2045:                                       ; preds = %if.then2043, %land.lhs.true2040, %if.end2038
  %1045 = load i8*, i8** %val, align 4
  store i8* %1045, i8** %sptr, align 4
  br label %for.cond2046

for.cond2046:                                     ; preds = %for.body2053, %if.end2045
  %1046 = load i8*, i8** %sptr, align 4
  %1047 = load i8, i8* %1046, align 1
  %conv2047 = sext i8 %1047 to i32
  %tobool2048 = icmp ne i32 %conv2047, 0
  br i1 %tobool2048, label %land.rhs2049, label %land.end2051

land.rhs2049:                                     ; preds = %for.cond2046
  %1048 = load i32, i32* %offset, align 4
  %tobool2050 = icmp ne i32 %1048, 0
  br label %land.end2051

land.end2051:                                     ; preds = %land.rhs2049, %for.cond2046
  %1049 = phi i1 [ false, %for.cond2046 ], [ %tobool2050, %land.rhs2049 ]
  br i1 %1049, label %for.body2053, label %for.end2057

for.body2053:                                     ; preds = %land.end2051
  %1050 = load i8*, i8** %sptr, align 4
  %call2054 = call i32 @mb_metacharlenconv(i8* %1050, i32* null)
  %1051 = load i8*, i8** %sptr, align 4
  %add.ptr2055 = getelementptr inbounds i8, i8* %1051, i32 %call2054
  store i8* %add.ptr2055, i8** %sptr, align 4
  %1052 = load i32, i32* %offset, align 4
  %dec2056 = add nsw i32 %1052, -1
  store i32 %dec2056, i32* %offset, align 4
  br label %for.cond2046

for.end2057:                                      ; preds = %land.end2051
  %1053 = load i32, i32* %length_set, align 4
  %tobool2058 = icmp ne i32 %1053, 0
  br i1 %tobool2058, label %if.then2059, label %if.else2089

if.then2059:                                      ; preds = %for.end2057
  %1054 = load i32, i32* %length, align 4
  %cmp2060 = icmp slt i32 %1054, 0
  br i1 %cmp2060, label %if.then2062, label %if.end2075

if.then2062:                                      ; preds = %if.then2059
  call void @mb_charinit()
  %1055 = load i8*, i8** %val, align 4
  store i8* %1055, i8** %eptr, align 4
  br label %for.cond2063

for.cond2063:                                     ; preds = %for.body2065, %if.then2062
  %1056 = load i8*, i8** %eptr, align 4
  %1057 = load i8, i8* %1056, align 1
  %tobool2064 = icmp ne i8 %1057, 0
  br i1 %tobool2064, label %for.body2065, label %for.end2069

for.body2065:                                     ; preds = %for.cond2063
  %1058 = load i8*, i8** %eptr, align 4
  %call2066 = call i32 @mb_metacharlenconv(i8* %1058, i32* null)
  %1059 = load i8*, i8** %eptr, align 4
  %add.ptr2067 = getelementptr inbounds i8, i8* %1059, i32 %call2066
  store i8* %add.ptr2067, i8** %eptr, align 4
  %1060 = load i32, i32* %length, align 4
  %inc2068 = add nsw i32 %1060, 1
  store i32 %inc2068, i32* %length, align 4
  br label %for.cond2063

for.end2069:                                      ; preds = %for.cond2063
  %1061 = load i32, i32* %length, align 4
  %cmp2070 = icmp slt i32 %1061, 0
  br i1 %cmp2070, label %if.then2072, label %if.end2074

if.then2072:                                      ; preds = %for.end2069
  %1062 = load i32, i32* %length, align 4
  %1063 = load i32, i32* %given_offset, align 4
  %add2073 = add nsw i32 %1062, %1063
  %1064 = load i32, i32* %given_offset, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 %add2073, i32 %1064)
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2074:                                       ; preds = %for.end2069
  br label %if.end2075

if.end2075:                                       ; preds = %if.end2074, %if.then2059
  %1065 = load i8*, i8** %sptr, align 4
  store i8* %1065, i8** %eptr, align 4
  br label %for.cond2076

for.cond2076:                                     ; preds = %for.body2083, %if.end2075
  %1066 = load i8*, i8** %eptr, align 4
  %1067 = load i8, i8* %1066, align 1
  %conv2077 = sext i8 %1067 to i32
  %tobool2078 = icmp ne i32 %conv2077, 0
  br i1 %tobool2078, label %land.rhs2079, label %land.end2081

land.rhs2079:                                     ; preds = %for.cond2076
  %1068 = load i32, i32* %length, align 4
  %tobool2080 = icmp ne i32 %1068, 0
  br label %land.end2081

land.end2081:                                     ; preds = %land.rhs2079, %for.cond2076
  %1069 = phi i1 [ false, %for.cond2076 ], [ %tobool2080, %land.rhs2079 ]
  br i1 %1069, label %for.body2083, label %for.end2087

for.body2083:                                     ; preds = %land.end2081
  %1070 = load i8*, i8** %eptr, align 4
  %call2084 = call i32 @mb_metacharlenconv(i8* %1070, i32* null)
  %1071 = load i8*, i8** %eptr, align 4
  %add.ptr2085 = getelementptr inbounds i8, i8* %1071, i32 %call2084
  store i8* %add.ptr2085, i8** %eptr, align 4
  %1072 = load i32, i32* %length, align 4
  %dec2086 = add nsw i32 %1072, -1
  store i32 %dec2086, i32* %length, align 4
  br label %for.cond2076

for.end2087:                                      ; preds = %land.end2081
  %1073 = load i8*, i8** %sptr, align 4
  %1074 = load i8*, i8** %eptr, align 4
  %1075 = load i8*, i8** %sptr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %1074 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %1075 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2088 = call i8* @dupstrpfx(i8* %1073, i32 %sub.ptr.sub)
  store i8* %call2088, i8** %val, align 4
  br label %if.end2091

if.else2089:                                      ; preds = %for.end2057
  %1076 = load i8*, i8** %sptr, align 4
  %call2090 = call i8* @dupstring(i8* %1076)
  store i8* %call2090, i8** %val, align 4
  br label %if.end2091

if.end2091:                                       ; preds = %if.else2089, %for.end2087
  br label %if.end2092

if.end2092:                                       ; preds = %if.end2091, %while.end2022
  %1077 = load i8*, i8** %check_offset2, align 4
  %1078 = load i8, i8* %1077, align 1
  %tobool2093 = icmp ne i8 %1078, 0
  br i1 %tobool2093, label %if.else2095, label %if.then2094

if.then2094:                                      ; preds = %if.end2092
  store i32 0, i32* %colf, align 4
  br label %if.end2097

if.else2095:                                      ; preds = %if.end2092
  %1079 = load i8*, i8** %check_offset2, align 4
  %add.ptr2096 = getelementptr inbounds i8, i8* %1079, i32 1
  store i8* %add.ptr2096, i8** %s, align 4
  br label %if.end2097

if.end2097:                                       ; preds = %if.else2095, %if.then2094
  br label %if.end2098

if.end2098:                                       ; preds = %if.end2097, %if.then1912
  br label %if.end2099

if.end2099:                                       ; preds = %if.end2098, %land.lhs.true1909, %if.end1907
  %1080 = load i32, i32* %colf, align 4
  %tobool2100 = icmp ne i32 %1080, 0
  br i1 %tobool2100, label %if.then2101, label %if.end2151

if.then2101:                                      ; preds = %if.end2099
  %1081 = load i8*, i8** %s, align 4
  %incdec.ptr2102 = getelementptr inbounds i8, i8* %1081, i32 -1
  store i8* %incdec.ptr2102, i8** %s, align 4
  %1082 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool2103 = icmp ne i8 %1082, 0
  br i1 %tobool2103, label %lor.lhs.false2104, label %if.then2107

lor.lhs.false2104:                                ; preds = %if.then2101
  %1083 = load i8, i8* %inbrace, align 1
  %conv2105 = sext i8 %1083 to i32
  %tobool2106 = icmp ne i32 %conv2105, 0
  br i1 %tobool2106, label %if.then2107, label %if.end2150

if.then2107:                                      ; preds = %lor.lhs.false2104, %if.then2101
  %1084 = load i32, i32* %isarr, align 4
  %tobool2108 = icmp ne i32 %1084, 0
  br i1 %tobool2108, label %if.else2110, label %if.then2109

if.then2109:                                      ; preds = %if.then2107
  call void @modify(i8** %val, i8** %s)
  br label %if.end2127

if.else2110:                                      ; preds = %if.then2107
  %1085 = load i8**, i8*** %aval, align 4
  store i8** %1085, i8*** %ap2111, align 4
  %1086 = load i8**, i8*** %aval, align 4
  %call2112 = call i32 @arrlen(i8** %1086)
  %add2113 = add nsw i32 %call2112, 1
  %mul2114 = mul i32 4, %add2113
  %call2115 = call i8* @hcalloc(i32 %mul2114)
  %1087 = bitcast i8* %call2115 to i8**
  store i8** %1087, i8*** %aval, align 4
  store i8** %1087, i8*** %pp, align 4
  br label %while.cond2116

while.cond2116:                                   ; preds = %while.body2119, %if.else2110
  %1088 = load i8**, i8*** %ap2111, align 4
  %incdec.ptr2117 = getelementptr inbounds i8*, i8** %1088, i32 1
  store i8** %incdec.ptr2117, i8*** %ap2111, align 4
  %1089 = load i8*, i8** %1088, align 4
  %1090 = load i8**, i8*** %pp, align 4
  store i8* %1089, i8** %1090, align 4
  %tobool2118 = icmp ne i8* %1089, null
  br i1 %tobool2118, label %while.body2119, label %while.end2121

while.body2119:                                   ; preds = %while.cond2116
  %1091 = load i8*, i8** %s, align 4
  store i8* %1091, i8** %ss, align 4
  %1092 = load i8**, i8*** %pp, align 4
  %incdec.ptr2120 = getelementptr inbounds i8*, i8** %1092, i32 1
  store i8** %incdec.ptr2120, i8*** %pp, align 4
  call void @modify(i8** %1092, i8** %ss)
  br label %while.cond2116

while.end2121:                                    ; preds = %while.cond2116
  %1093 = load i8**, i8*** %pp, align 4
  %1094 = load i8**, i8*** %aval, align 4
  %cmp2122 = icmp eq i8** %1093, %1094
  br i1 %cmp2122, label %if.then2124, label %if.end2126

if.then2124:                                      ; preds = %while.end2121
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %t2125, align 4
  %1095 = load i8*, i8** %s, align 4
  store i8* %1095, i8** %ss, align 4
  call void @modify(i8** %t2125, i8** %ss)
  br label %if.end2126

if.end2126:                                       ; preds = %if.then2124, %while.end2121
  %1096 = load i8*, i8** %ss, align 4
  store i8* %1096, i8** %s, align 4
  br label %if.end2127

if.end2127:                                       ; preds = %if.end2126, %if.then2109
  store i32 1, i32* %copied, align 4
  %1097 = load i8, i8* %inbrace, align 1
  %conv2128 = sext i8 %1097 to i32
  %tobool2129 = icmp ne i32 %conv2128, 0
  br i1 %tobool2129, label %land.lhs.true2130, label %if.end2149

land.lhs.true2130:                                ; preds = %if.end2127
  %1098 = load i8*, i8** %s, align 4
  %1099 = load i8, i8* %1098, align 1
  %conv2131 = sext i8 %1099 to i32
  %tobool2132 = icmp ne i32 %conv2131, 0
  br i1 %tobool2132, label %if.then2133, label %if.end2149

if.then2133:                                      ; preds = %land.lhs.true2130
  %1100 = load i8*, i8** %s, align 4
  %1101 = load i8, i8* %1100, align 1
  %conv2134 = sext i8 %1101 to i32
  %cmp2135 = icmp eq i32 %conv2134, 58
  br i1 %cmp2135, label %land.lhs.true2137, label %if.else2147

land.lhs.true2137:                                ; preds = %if.then2133
  %1102 = load i8*, i8** %s, align 4
  %arrayidx2138 = getelementptr inbounds i8, i8* %1102, i32 1
  %1103 = load i8, i8* %arrayidx2138, align 1
  %idxprom2139 = zext i8 %1103 to i32
  %arrayidx2140 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom2139
  %1104 = load i16, i16* %arrayidx2140, align 2
  %conv2141 = sext i16 %1104 to i32
  %and2142 = and i32 %conv2141, 4096
  %tobool2143 = icmp ne i32 %and2142, 0
  br i1 %tobool2143, label %if.else2147, label %if.then2144

if.then2144:                                      ; preds = %land.lhs.true2137
  %1105 = load i8*, i8** %s, align 4
  %arrayidx2145 = getelementptr inbounds i8, i8* %1105, i32 1
  %1106 = load i8, i8* %arrayidx2145, align 1
  %conv2146 = sext i8 %1106 to i32
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i32 0, i32 0), i32 %conv2146)
  br label %if.end2148

if.else2147:                                      ; preds = %land.lhs.true2137, %if.then2133
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end2148

if.end2148:                                       ; preds = %if.else2147, %if.then2144
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2149:                                       ; preds = %land.lhs.true2130, %if.end2127
  br label %if.end2150

if.end2150:                                       ; preds = %if.end2149, %lor.lhs.false2104
  br label %if.end2151

if.end2151:                                       ; preds = %if.end2150, %if.end2099
  %1107 = load i8, i8* %inbrace, align 1
  %tobool2152 = icmp ne i8 %1107, 0
  br i1 %tobool2152, label %if.end2154, label %if.then2153

if.then2153:                                      ; preds = %if.end2151
  %1108 = load i8*, i8** %s, align 4
  store i8* %1108, i8** %fstr, align 4
  br label %if.end2154

if.end2154:                                       ; preds = %if.then2153, %if.end2151
  br label %if.end2155

if.end2155:                                       ; preds = %if.end2154, %if.end1889
  br label %if.end2156

if.end2156:                                       ; preds = %if.end2155, %if.end1763
  br label %if.end2157

if.end2157:                                       ; preds = %if.end2156, %sw.epilog1651
  %1109 = load i32, i32* @errflag, align 4
  %tobool2158 = icmp ne i32 %1109, 0
  br i1 %tobool2158, label %if.then2159, label %if.end2160

if.then2159:                                      ; preds = %if.end2157
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2160:                                       ; preds = %if.end2157
  %1110 = load i32, i32* %evalchar, align 4
  %tobool2161 = icmp ne i32 %1110, 0
  br i1 %tobool2161, label %if.then2162, label %if.end2202

if.then2162:                                      ; preds = %if.end2160
  %1111 = load i32, i32* @noerrs, align 4
  store i32 %1111, i32* %one2163, align 4
  %1112 = load i32, i32* @errflag, align 4
  store i32 %1112, i32* %oef2164, align 4
  store i32 0, i32* %haserr2165, align 4
  %1113 = load i32, i32* %quoteerr, align 4
  %tobool2166 = icmp ne i32 %1113, 0
  br i1 %tobool2166, label %if.end2168, label %if.then2167

if.then2167:                                      ; preds = %if.then2162
  store i32 1, i32* @noerrs, align 4
  br label %if.end2168

if.end2168:                                       ; preds = %if.then2167, %if.then2162
  %1114 = load i32, i32* %isarr, align 4
  %tobool2169 = icmp ne i32 %1114, 0
  br i1 %tobool2169, label %if.then2170, label %if.else2186

if.then2170:                                      ; preds = %if.end2168
  %1115 = load i8**, i8*** %aval, align 4
  %call2171 = call i32 @arrlen(i8** %1115)
  %add2172 = add nsw i32 %call2171, 1
  %mul2173 = mul i32 %add2172, 4
  %call2174 = call i8* @zhalloc(i32 %mul2173)
  %1116 = bitcast i8* %call2174 to i8**
  store i8** %1116, i8*** %aval2, align 4
  %1117 = load i8**, i8*** %aval, align 4
  store i8** %1117, i8*** %avptr, align 4
  %1118 = load i8**, i8*** %aval2, align 4
  store i8** %1118, i8*** %av2ptr, align 4
  br label %for.cond2175

for.cond2175:                                     ; preds = %for.inc2182, %if.then2170
  %1119 = load i8**, i8*** %avptr, align 4
  %1120 = load i8*, i8** %1119, align 4
  %tobool2176 = icmp ne i8* %1120, null
  br i1 %tobool2176, label %for.body2177, label %for.end2185

for.body2177:                                     ; preds = %for.cond2175
  %1121 = load i8**, i8*** %avptr, align 4
  %1122 = load i8*, i8** %1121, align 4
  %call2178 = call i8* @substevalchar(i8* %1122)
  %1123 = load i8**, i8*** %av2ptr, align 4
  store i8* %call2178, i8** %1123, align 4
  %tobool2179 = icmp ne i8* %call2178, null
  br i1 %tobool2179, label %if.end2181, label %if.then2180

if.then2180:                                      ; preds = %for.body2177
  store i32 1, i32* %haserr2165, align 4
  br label %for.end2185

if.end2181:                                       ; preds = %for.body2177
  br label %for.inc2182

for.inc2182:                                      ; preds = %if.end2181
  %1124 = load i8**, i8*** %avptr, align 4
  %incdec.ptr2183 = getelementptr inbounds i8*, i8** %1124, i32 1
  store i8** %incdec.ptr2183, i8*** %avptr, align 4
  %1125 = load i8**, i8*** %av2ptr, align 4
  %incdec.ptr2184 = getelementptr inbounds i8*, i8** %1125, i32 1
  store i8** %incdec.ptr2184, i8*** %av2ptr, align 4
  br label %for.cond2175

for.end2185:                                      ; preds = %if.then2180, %for.cond2175
  %1126 = load i8**, i8*** %av2ptr, align 4
  store i8* null, i8** %1126, align 4
  %1127 = load i8**, i8*** %aval2, align 4
  store i8** %1127, i8*** %aval, align 4
  br label %if.end2191

if.else2186:                                      ; preds = %if.end2168
  %1128 = load i8*, i8** %val, align 4
  %call2187 = call i8* @substevalchar(i8* %1128)
  store i8* %call2187, i8** %val, align 4
  %tobool2188 = icmp ne i8* %call2187, null
  br i1 %tobool2188, label %if.end2190, label %if.then2189

if.then2189:                                      ; preds = %if.else2186
  store i32 1, i32* %haserr2165, align 4
  br label %if.end2190

if.end2190:                                       ; preds = %if.then2189, %if.else2186
  br label %if.end2191

if.end2191:                                       ; preds = %if.end2190, %for.end2185
  %1129 = load i32, i32* %one2163, align 4
  store i32 %1129, i32* @noerrs, align 4
  %1130 = load i32, i32* %quoteerr, align 4
  %tobool2192 = icmp ne i32 %1130, 0
  br i1 %tobool2192, label %if.end2196, label %if.then2193

if.then2193:                                      ; preds = %if.end2191
  %1131 = load i32, i32* %oef2164, align 4
  %1132 = load i32, i32* @errflag, align 4
  %and2194 = and i32 %1132, 2
  %or2195 = or i32 %1131, %and2194
  store i32 %or2195, i32* @errflag, align 4
  br label %if.end2196

if.end2196:                                       ; preds = %if.then2193, %if.end2191
  %1133 = load i32, i32* %haserr2165, align 4
  %tobool2197 = icmp ne i32 %1133, 0
  br i1 %tobool2197, label %if.then2200, label %lor.lhs.false2198

lor.lhs.false2198:                                ; preds = %if.end2196
  %1134 = load i32, i32* @errflag, align 4
  %tobool2199 = icmp ne i32 %1134, 0
  br i1 %tobool2199, label %if.then2200, label %if.end2201

if.then2200:                                      ; preds = %lor.lhs.false2198, %if.end2196
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2201:                                       ; preds = %lor.lhs.false2198
  store i32 0, i32* %ms_flags, align 4
  br label %if.end2202

if.end2202:                                       ; preds = %if.end2201, %if.end2160
  %1135 = load i32, i32* %getlen, align 4
  %tobool2203 = icmp ne i32 %1135, 0
  br i1 %tobool2203, label %if.then2204, label %if.end2267

if.then2204:                                      ; preds = %if.end2202
  store i32 0, i32* %len, align 4
  %1136 = load i32, i32* %isarr, align 4
  %tobool2205 = icmp ne i32 %1136, 0
  br i1 %tobool2205, label %if.then2206, label %if.else2252

if.then2206:                                      ; preds = %if.then2204
  %1137 = load i8*, i8** %sep, align 4
  %tobool2207 = icmp ne i8* %1137, null
  br i1 %tobool2207, label %cond.true2208, label %cond.false2210

cond.true2208:                                    ; preds = %if.then2206
  %1138 = load i8*, i8** %sep, align 4
  %call2209 = call i32 @mb_metastrlenend(i8* %1138, i32 0, i8* null)
  br label %cond.end2211

cond.false2210:                                   ; preds = %if.then2206
  br label %cond.end2211

cond.end2211:                                     ; preds = %cond.false2210, %cond.true2208
  %cond2212 = phi i32 [ %call2209, %cond.true2208 ], [ 1, %cond.false2210 ]
  store i32 %cond2212, i32* %sl, align 4
  %1139 = load i32, i32* %getlen, align 4
  %cmp2213 = icmp eq i32 %1139, 1
  br i1 %cmp2213, label %if.then2215, label %if.else2223

if.then2215:                                      ; preds = %cond.end2211
  %1140 = load i8**, i8*** %aval, align 4
  store i8** %1140, i8*** %ctr, align 4
  br label %for.cond2216

for.cond2216:                                     ; preds = %for.inc2219, %if.then2215
  %1141 = load i8**, i8*** %ctr, align 4
  %1142 = load i8*, i8** %1141, align 4
  %tobool2217 = icmp ne i8* %1142, null
  br i1 %tobool2217, label %for.body2218, label %for.end2222

for.body2218:                                     ; preds = %for.cond2216
  br label %for.inc2219

for.inc2219:                                      ; preds = %for.body2218
  %1143 = load i8**, i8*** %ctr, align 4
  %incdec.ptr2220 = getelementptr inbounds i8*, i8** %1143, i32 1
  store i8** %incdec.ptr2220, i8*** %ctr, align 4
  %1144 = load i32, i32* %len, align 4
  %inc2221 = add nsw i32 %1144, 1
  store i32 %inc2221, i32* %len, align 4
  br label %for.cond2216

for.end2222:                                      ; preds = %for.cond2216
  br label %if.end2251

if.else2223:                                      ; preds = %cond.end2211
  %1145 = load i32, i32* %getlen, align 4
  %cmp2224 = icmp eq i32 %1145, 2
  br i1 %cmp2224, label %if.then2226, label %if.else2239

if.then2226:                                      ; preds = %if.else2223
  %1146 = load i8**, i8*** %aval, align 4
  %1147 = load i8*, i8** %1146, align 4
  %tobool2227 = icmp ne i8* %1147, null
  br i1 %tobool2227, label %if.then2228, label %if.end2238

if.then2228:                                      ; preds = %if.then2226
  %1148 = load i32, i32* %sl, align 4
  %sub2229 = sub nsw i32 0, %1148
  store i32 %sub2229, i32* %len, align 4
  %1149 = load i8**, i8*** %aval, align 4
  store i8** %1149, i8*** %ctr, align 4
  br label %for.cond2230

for.cond2230:                                     ; preds = %for.body2236, %if.then2228
  %1150 = load i32, i32* %sl, align 4
  %1151 = load i8**, i8*** %ctr, align 4
  %1152 = load i8*, i8** %1151, align 4
  %1153 = load i32, i32* %multi_width, align 4
  %call2231 = call i32 @mb_metastrlenend(i8* %1152, i32 %1153, i8* null)
  %add2232 = add nsw i32 %1150, %call2231
  %1154 = load i32, i32* %len, align 4
  %add2233 = add nsw i32 %1154, %add2232
  store i32 %add2233, i32* %len, align 4
  %1155 = load i8**, i8*** %ctr, align 4
  %incdec.ptr2234 = getelementptr inbounds i8*, i8** %1155, i32 1
  store i8** %incdec.ptr2234, i8*** %ctr, align 4
  %1156 = load i8*, i8** %incdec.ptr2234, align 4
  %tobool2235 = icmp ne i8* %1156, null
  br i1 %tobool2235, label %for.body2236, label %for.end2237

for.body2236:                                     ; preds = %for.cond2230
  br label %for.cond2230

for.end2237:                                      ; preds = %for.cond2230
  br label %if.end2238

if.end2238:                                       ; preds = %for.end2237, %if.then2226
  br label %if.end2250

if.else2239:                                      ; preds = %if.else2223
  %1157 = load i8**, i8*** %aval, align 4
  store i8** %1157, i8*** %ctr, align 4
  br label %for.cond2240

for.cond2240:                                     ; preds = %for.inc2243, %if.else2239
  %1158 = load i8**, i8*** %ctr, align 4
  %1159 = load i8*, i8** %1158, align 4
  %tobool2241 = icmp ne i8* %1159, null
  br i1 %tobool2241, label %for.body2242, label %for.end2249

for.body2242:                                     ; preds = %for.cond2240
  br label %for.inc2243

for.inc2243:                                      ; preds = %for.body2242
  %1160 = load i8**, i8*** %ctr, align 4
  %1161 = load i8*, i8** %1160, align 4
  %1162 = load i8*, i8** %spsep, align 4
  %1163 = load i32, i32* %getlen, align 4
  %cmp2244 = icmp sgt i32 %1163, 3
  %conv2245 = zext i1 %cmp2244 to i32
  %call2246 = call i32 @wordcount(i8* %1161, i8* %1162, i32 %conv2245)
  %1164 = load i32, i32* %len, align 4
  %add2247 = add nsw i32 %1164, %call2246
  store i32 %add2247, i32* %len, align 4
  %1165 = load i8**, i8*** %ctr, align 4
  %incdec.ptr2248 = getelementptr inbounds i8*, i8** %1165, i32 1
  store i8** %incdec.ptr2248, i8*** %ctr, align 4
  br label %for.cond2240

for.end2249:                                      ; preds = %for.cond2240
  br label %if.end2250

if.end2250:                                       ; preds = %for.end2249, %if.end2238
  br label %if.end2251

if.end2251:                                       ; preds = %if.end2250, %for.end2222
  br label %if.end2262

if.else2252:                                      ; preds = %if.then2204
  %1166 = load i32, i32* %getlen, align 4
  %cmp2253 = icmp slt i32 %1166, 3
  br i1 %cmp2253, label %if.then2255, label %if.else2257

if.then2255:                                      ; preds = %if.else2252
  %1167 = load i8*, i8** %val, align 4
  %1168 = load i32, i32* %multi_width, align 4
  %call2256 = call i32 @mb_metastrlenend(i8* %1167, i32 %1168, i8* null)
  store i32 %call2256, i32* %len, align 4
  br label %if.end2261

if.else2257:                                      ; preds = %if.else2252
  %1169 = load i8*, i8** %val, align 4
  %1170 = load i8*, i8** %spsep, align 4
  %1171 = load i32, i32* %getlen, align 4
  %cmp2258 = icmp sgt i32 %1171, 3
  %conv2259 = zext i1 %cmp2258 to i32
  %call2260 = call i32 @wordcount(i8* %1169, i8* %1170, i32 %conv2259)
  store i32 %call2260, i32* %len, align 4
  br label %if.end2261

if.end2261:                                       ; preds = %if.else2257, %if.then2255
  br label %if.end2262

if.end2262:                                       ; preds = %if.end2261, %if.end2251
  %arraydecay2263 = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0
  %1172 = load i32, i32* %len, align 4
  %call2264 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 %1172)
  %arraydecay2265 = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i32 0, i32 0
  %call2266 = call i8* @dupstring(i8* %arraydecay2265)
  store i8* %call2266, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  store i32 0, i32* %ms_flags, align 4
  br label %if.end2267

if.end2267:                                       ; preds = %if.end2262, %if.end2202
  %1173 = load i32, i32* %isarr, align 4
  %tobool2268 = icmp ne i32 %1173, 0
  br i1 %tobool2268, label %if.then2269, label %if.else2272

if.then2269:                                      ; preds = %if.end2267
  %1174 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list = bitcast %union.linkroot* %1174 to %struct.linklist*
  %flags2270 = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 2
  %1175 = load i32, i32* %flags2270, align 4
  %or2271 = or i32 %1175, 1
  store i32 %or2271, i32* %flags2270, align 4
  br label %if.end2276

if.else2272:                                      ; preds = %if.end2267
  %1176 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list2273 = bitcast %union.linkroot* %1176 to %struct.linklist*
  %flags2274 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2273, i32 0, i32 2
  %1177 = load i32, i32* %flags2274, align 4
  %and2275 = and i32 %1177, -2
  store i32 %and2275, i32* %flags2274, align 4
  br label %if.end2276

if.end2276:                                       ; preds = %if.else2272, %if.then2269
  %1178 = load i32, i32* %isarr, align 4
  %cmp2277 = icmp sgt i32 %1178, 0
  br i1 %cmp2277, label %land.lhs.true2279, label %if.else2288

land.lhs.true2279:                                ; preds = %if.end2276
  %1179 = load i32, i32* %plan9, align 4
  %tobool2280 = icmp ne i32 %1179, 0
  br i1 %tobool2280, label %if.else2288, label %land.lhs.true2281

land.lhs.true2281:                                ; preds = %land.lhs.true2279
  %1180 = load i8**, i8*** %aval, align 4
  %tobool2282 = icmp ne i8** %1180, null
  br i1 %tobool2282, label %lor.lhs.false2283, label %if.then2286

lor.lhs.false2283:                                ; preds = %land.lhs.true2281
  %1181 = load i8**, i8*** %aval, align 4
  %arrayidx2284 = getelementptr inbounds i8*, i8** %1181, i32 0
  %1182 = load i8*, i8** %arrayidx2284, align 4
  %tobool2285 = icmp ne i8* %1182, null
  br i1 %tobool2285, label %if.else2288, label %if.then2286

if.then2286:                                      ; preds = %lor.lhs.false2283, %land.lhs.true2281
  %call2287 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call2287, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end2301

if.else2288:                                      ; preds = %lor.lhs.false2283, %land.lhs.true2279, %if.end2276
  %1183 = load i32, i32* %isarr, align 4
  %tobool2289 = icmp ne i32 %1183, 0
  br i1 %tobool2289, label %land.lhs.true2290, label %if.end2300

land.lhs.true2290:                                ; preds = %if.else2288
  %1184 = load i8**, i8*** %aval, align 4
  %tobool2291 = icmp ne i8** %1184, null
  br i1 %tobool2291, label %land.lhs.true2292, label %if.end2300

land.lhs.true2292:                                ; preds = %land.lhs.true2290
  %1185 = load i8**, i8*** %aval, align 4
  %arrayidx2293 = getelementptr inbounds i8*, i8** %1185, i32 0
  %1186 = load i8*, i8** %arrayidx2293, align 4
  %tobool2294 = icmp ne i8* %1186, null
  br i1 %tobool2294, label %land.lhs.true2295, label %if.end2300

land.lhs.true2295:                                ; preds = %land.lhs.true2292
  %1187 = load i8**, i8*** %aval, align 4
  %arrayidx2296 = getelementptr inbounds i8*, i8** %1187, i32 1
  %1188 = load i8*, i8** %arrayidx2296, align 4
  %tobool2297 = icmp ne i8* %1188, null
  br i1 %tobool2297, label %if.end2300, label %if.then2298

if.then2298:                                      ; preds = %land.lhs.true2295
  %1189 = load i8**, i8*** %aval, align 4
  %arrayidx2299 = getelementptr inbounds i8*, i8** %1189, i32 0
  %1190 = load i8*, i8** %arrayidx2299, align 4
  store i8* %1190, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end2300

if.end2300:                                       ; preds = %if.then2298, %land.lhs.true2295, %land.lhs.true2292, %land.lhs.true2290, %if.else2288
  br label %if.end2301

if.end2301:                                       ; preds = %if.end2300, %if.then2286
  %1191 = load i32, i32* %ssub, align 4
  %tobool2302 = icmp ne i32 %1191, 0
  br i1 %tobool2302, label %if.then2309, label %lor.lhs.false2303

lor.lhs.false2303:                                ; preds = %if.end2301
  %1192 = load i32, i32* %spbreak, align 4
  %tobool2304 = icmp ne i32 %1192, 0
  br i1 %tobool2304, label %if.then2309, label %lor.lhs.false2305

lor.lhs.false2305:                                ; preds = %lor.lhs.false2303
  %1193 = load i8*, i8** %spsep, align 4
  %tobool2306 = icmp ne i8* %1193, null
  br i1 %tobool2306, label %if.then2309, label %lor.lhs.false2307

lor.lhs.false2307:                                ; preds = %lor.lhs.false2305
  %1194 = load i8*, i8** %sep, align 4
  %tobool2308 = icmp ne i8* %1194, null
  br i1 %tobool2308, label %if.then2309, label %if.end2385

if.then2309:                                      ; preds = %lor.lhs.false2307, %lor.lhs.false2305, %lor.lhs.false2303, %if.end2301
  %1195 = load i32, i32* %ssub, align 4
  %tobool2310 = icmp ne i32 %1195, 0
  br i1 %tobool2310, label %land.end2317, label %land.rhs2311

land.rhs2311:                                     ; preds = %if.then2309
  %1196 = load i32, i32* %spbreak, align 4
  %tobool2312 = icmp ne i32 %1196, 0
  br i1 %tobool2312, label %lor.end2315, label %lor.rhs2313

lor.rhs2313:                                      ; preds = %land.rhs2311
  %1197 = load i8*, i8** %spsep, align 4
  %tobool2314 = icmp ne i8* %1197, null
  br label %lor.end2315

lor.end2315:                                      ; preds = %lor.rhs2313, %land.rhs2311
  %1198 = phi i1 [ true, %land.rhs2311 ], [ %tobool2314, %lor.rhs2313 ]
  br label %land.end2317

land.end2317:                                     ; preds = %lor.end2315, %if.then2309
  %1199 = phi i1 [ false, %if.then2309 ], [ %1198, %lor.end2315 ]
  %land.ext2318 = zext i1 %1199 to i32
  store i32 %land.ext2318, i32* %force_split, align 4
  %1200 = load i32, i32* %isarr, align 4
  %tobool2319 = icmp ne i32 %1200, 0
  br i1 %tobool2319, label %if.then2320, label %if.end2352

if.then2320:                                      ; preds = %land.end2317
  %1201 = load i32, i32* %nojoin, align 4
  %cmp2321 = icmp eq i32 %1201, 0
  br i1 %cmp2321, label %if.then2325, label %lor.lhs.false2323

lor.lhs.false2323:                                ; preds = %if.then2320
  %1202 = load i8*, i8** %sep, align 4
  %tobool2324 = icmp ne i8* %1202, null
  br i1 %tobool2324, label %if.then2325, label %if.else2327

if.then2325:                                      ; preds = %lor.lhs.false2323, %if.then2320
  %1203 = load i8**, i8*** %aval, align 4
  %1204 = load i8*, i8** %sep, align 4
  %call2326 = call i8* @sepjoin(i8** %1203, i8* %1204, i32 1)
  store i8* %call2326, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end2348

if.else2327:                                      ; preds = %lor.lhs.false2323
  %1205 = load i32, i32* %force_split, align 4
  %tobool2328 = icmp ne i32 %1205, 0
  br i1 %tobool2328, label %land.lhs.true2329, label %if.end2347

land.lhs.true2329:                                ; preds = %if.else2327
  %1206 = load i8*, i8** %spsep, align 4
  %tobool2330 = icmp ne i8* %1206, null
  br i1 %tobool2330, label %if.then2339, label %lor.lhs.false2331

lor.lhs.false2331:                                ; preds = %land.lhs.true2329
  %1207 = load i32, i32* %nojoin, align 4
  %cmp2332 = icmp eq i32 %1207, 2
  br i1 %cmp2332, label %if.then2339, label %lor.lhs.false2334

lor.lhs.false2334:                                ; preds = %lor.lhs.false2331
  %1208 = load i8*, i8** @ifs, align 4
  %tobool2335 = icmp ne i8* %1208, null
  br i1 %tobool2335, label %if.end2347, label %land.lhs.true2336

land.lhs.true2336:                                ; preds = %lor.lhs.false2334
  %1209 = load i32, i32* %isarr, align 4
  %cmp2337 = icmp slt i32 %1209, 0
  br i1 %cmp2337, label %if.then2339, label %if.end2347

if.then2339:                                      ; preds = %land.lhs.true2336, %lor.lhs.false2331, %land.lhs.true2329
  %1210 = load i8**, i8*** %aval, align 4
  %1211 = load i32, i32* %nojoin, align 4
  %cmp2340 = icmp eq i32 %1211, 1
  br i1 %cmp2340, label %cond.true2342, label %cond.false2343

cond.true2342:                                    ; preds = %if.then2339
  br label %cond.end2344

cond.false2343:                                   ; preds = %if.then2339
  %1212 = load i8*, i8** %spsep, align 4
  br label %cond.end2344

cond.end2344:                                     ; preds = %cond.false2343, %cond.true2342
  %cond2345 = phi i8* [ null, %cond.true2342 ], [ %1212, %cond.false2343 ]
  %call2346 = call i8* @sepjoin(i8** %1210, i8* %cond2345, i32 1)
  store i8* %call2346, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  br label %if.end2347

if.end2347:                                       ; preds = %cond.end2344, %land.lhs.true2336, %lor.lhs.false2334, %if.else2327
  br label %if.end2348

if.end2348:                                       ; preds = %if.end2347, %if.then2325
  %1213 = load i32, i32* %isarr, align 4
  %tobool2349 = icmp ne i32 %1213, 0
  br i1 %tobool2349, label %if.end2351, label %if.then2350

if.then2350:                                      ; preds = %if.end2348
  store i32 0, i32* %ms_flags, align 4
  br label %if.end2351

if.end2351:                                       ; preds = %if.then2350, %if.end2348
  br label %if.end2352

if.end2352:                                       ; preds = %if.end2351, %land.end2317
  %1214 = load i32, i32* %force_split, align 4
  %tobool2353 = icmp ne i32 %1214, 0
  br i1 %tobool2353, label %land.lhs.true2354, label %if.end2374

land.lhs.true2354:                                ; preds = %if.end2352
  %1215 = load i32, i32* %isarr, align 4
  %tobool2355 = icmp ne i32 %1215, 0
  br i1 %tobool2355, label %if.end2374, label %if.then2356

if.then2356:                                      ; preds = %land.lhs.true2354
  %1216 = load i8*, i8** %val, align 4
  %1217 = load i8*, i8** %spsep, align 4
  %call2357 = call i8** @sepsplit(i8* %1216, i8* %1217, i32 0, i32 1)
  store i8** %call2357, i8*** %aval, align 4
  %1218 = load i8**, i8*** %aval, align 4
  %tobool2358 = icmp ne i8** %1218, null
  br i1 %tobool2358, label %lor.lhs.false2359, label %if.then2362

lor.lhs.false2359:                                ; preds = %if.then2356
  %1219 = load i8**, i8*** %aval, align 4
  %arrayidx2360 = getelementptr inbounds i8*, i8** %1219, i32 0
  %1220 = load i8*, i8** %arrayidx2360, align 4
  %tobool2361 = icmp ne i8* %1220, null
  br i1 %tobool2361, label %if.else2364, label %if.then2362

if.then2362:                                      ; preds = %lor.lhs.false2359, %if.then2356
  %call2363 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call2363, i8** %val, align 4
  br label %if.end2373

if.else2364:                                      ; preds = %lor.lhs.false2359
  %1221 = load i8**, i8*** %aval, align 4
  %arrayidx2365 = getelementptr inbounds i8*, i8** %1221, i32 1
  %1222 = load i8*, i8** %arrayidx2365, align 4
  %tobool2366 = icmp ne i8* %1222, null
  br i1 %tobool2366, label %if.else2369, label %if.then2367

if.then2367:                                      ; preds = %if.else2364
  %1223 = load i8**, i8*** %aval, align 4
  %arrayidx2368 = getelementptr inbounds i8*, i8** %1223, i32 0
  %1224 = load i8*, i8** %arrayidx2368, align 4
  store i8* %1224, i8** %val, align 4
  br label %if.end2372

if.else2369:                                      ; preds = %if.else2364
  %1225 = load i32, i32* %nojoin, align 4
  %tobool2370 = icmp ne i32 %1225, 0
  %cond2371 = select i1 %tobool2370, i32 1, i32 2
  store i32 %cond2371, i32* %isarr, align 4
  br label %if.end2372

if.end2372:                                       ; preds = %if.else2369, %if.then2367
  br label %if.end2373

if.end2373:                                       ; preds = %if.end2372, %if.then2362
  br label %if.end2374

if.end2374:                                       ; preds = %if.end2373, %land.lhs.true2354, %if.end2352
  %1226 = load i32, i32* %isarr, align 4
  %tobool2375 = icmp ne i32 %1226, 0
  br i1 %tobool2375, label %if.then2376, label %if.else2380

if.then2376:                                      ; preds = %if.end2374
  %1227 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list2377 = bitcast %union.linkroot* %1227 to %struct.linklist*
  %flags2378 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2377, i32 0, i32 2
  %1228 = load i32, i32* %flags2378, align 4
  %or2379 = or i32 %1228, 1
  store i32 %or2379, i32* %flags2378, align 4
  br label %if.end2384

if.else2380:                                      ; preds = %if.end2374
  %1229 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list2381 = bitcast %union.linkroot* %1229 to %struct.linklist*
  %flags2382 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2381, i32 0, i32 2
  %1230 = load i32, i32* %flags2382, align 4
  %and2383 = and i32 %1230, -2
  store i32 %and2383, i32* %flags2382, align 4
  br label %if.end2384

if.end2384:                                       ; preds = %if.else2380, %if.then2376
  br label %if.end2385

if.end2385:                                       ; preds = %if.end2384, %lor.lhs.false2307
  %1231 = load i32, i32* %casmod, align 4
  %cmp2386 = icmp ne i32 %1231, 0
  br i1 %cmp2386, label %if.then2388, label %if.end2407

if.then2388:                                      ; preds = %if.end2385
  store i32 1, i32* %copied, align 4
  %1232 = load i32, i32* %isarr, align 4
  %tobool2389 = icmp ne i32 %1232, 0
  br i1 %tobool2389, label %if.then2390, label %if.else2404

if.then2390:                                      ; preds = %if.then2388
  %1233 = load i8**, i8*** %aval, align 4
  store i8** %1233, i8*** %ap2391, align 4
  %1234 = load i8**, i8*** %aval, align 4
  %call2392 = call i32 @arrlen(i8** %1234)
  %add2393 = add nsw i32 %call2392, 1
  %mul2394 = mul i32 4, %add2393
  %call2395 = call i8* @zhalloc(i32 %mul2394)
  %1235 = bitcast i8* %call2395 to i8**
  store i8** %1235, i8*** %aval, align 4
  store i8** %1235, i8*** %ap2, align 4
  br label %while.cond2396

while.cond2396:                                   ; preds = %while.body2398, %if.then2390
  %1236 = load i8**, i8*** %ap2391, align 4
  %1237 = load i8*, i8** %1236, align 4
  %tobool2397 = icmp ne i8* %1237, null
  br i1 %tobool2397, label %while.body2398, label %while.end2402

while.body2398:                                   ; preds = %while.cond2396
  %1238 = load i8**, i8*** %ap2391, align 4
  %incdec.ptr2399 = getelementptr inbounds i8*, i8** %1238, i32 1
  store i8** %incdec.ptr2399, i8*** %ap2391, align 4
  %1239 = load i8*, i8** %1238, align 4
  %1240 = load i32, i32* %casmod, align 4
  %call2400 = call i8* @casemodify(i8* %1239, i32 %1240)
  %1241 = load i8**, i8*** %ap2, align 4
  %incdec.ptr2401 = getelementptr inbounds i8*, i8** %1241, i32 1
  store i8** %incdec.ptr2401, i8*** %ap2, align 4
  store i8* %call2400, i8** %1241, align 4
  br label %while.cond2396

while.end2402:                                    ; preds = %while.cond2396
  %1242 = load i8**, i8*** %ap2, align 4
  %incdec.ptr2403 = getelementptr inbounds i8*, i8** %1242, i32 1
  store i8** %incdec.ptr2403, i8*** %ap2, align 4
  store i8* null, i8** %1242, align 4
  br label %if.end2406

if.else2404:                                      ; preds = %if.then2388
  %1243 = load i8*, i8** %val, align 4
  %1244 = load i32, i32* %casmod, align 4
  %call2405 = call i8* @casemodify(i8* %1243, i32 %1244)
  store i8* %call2405, i8** %val, align 4
  br label %if.end2406

if.end2406:                                       ; preds = %if.else2404, %while.end2402
  br label %if.end2407

if.end2407:                                       ; preds = %if.end2406, %if.end2385
  %1245 = load i32, i32* %getkeys, align 4
  %cmp2408 = icmp sge i32 %1245, 0
  br i1 %cmp2408, label %if.then2410, label %if.end2434

if.then2410:                                      ; preds = %if.end2407
  store i32 1, i32* %copied, align 4
  %1246 = load i32, i32* %isarr, align 4
  %tobool2412 = icmp ne i32 %1246, 0
  br i1 %tobool2412, label %if.then2413, label %if.else2430

if.then2413:                                      ; preds = %if.then2410
  %1247 = load i8**, i8*** %aval, align 4
  store i8** %1247, i8*** %ap2414, align 4
  %1248 = load i8**, i8*** %aval, align 4
  %call2416 = call i32 @arrlen(i8** %1248)
  %add2417 = add nsw i32 %call2416, 1
  %mul2418 = mul i32 4, %add2417
  %call2419 = call i8* @zhalloc(i32 %mul2418)
  %1249 = bitcast i8* %call2419 to i8**
  store i8** %1249, i8*** %aval, align 4
  %1250 = load i8**, i8*** %aval, align 4
  store i8** %1250, i8*** %ap22415, align 4
  br label %for.cond2420

for.cond2420:                                     ; preds = %for.inc2425, %if.then2413
  %1251 = load i8**, i8*** %ap2414, align 4
  %1252 = load i8*, i8** %1251, align 4
  %tobool2421 = icmp ne i8* %1252, null
  br i1 %tobool2421, label %for.body2422, label %for.end2428

for.body2422:                                     ; preds = %for.cond2420
  %1253 = load i8**, i8*** %ap2414, align 4
  %1254 = load i8*, i8** %1253, align 4
  %1255 = load i32, i32* %getkeys, align 4
  %call2423 = call i8* @getkeystring(i8* %1254, i32* %len2411, i32 %1255, i32* null)
  %1256 = load i8**, i8*** %ap22415, align 4
  store i8* %call2423, i8** %1256, align 4
  %1257 = load i8**, i8*** %ap22415, align 4
  %1258 = load i8*, i8** %1257, align 4
  %1259 = load i32, i32* %len2411, align 4
  %call2424 = call i8* @metafy(i8* %1258, i32 %1259, i32 1)
  %1260 = load i8**, i8*** %ap22415, align 4
  store i8* %call2424, i8** %1260, align 4
  br label %for.inc2425

for.inc2425:                                      ; preds = %for.body2422
  %1261 = load i8**, i8*** %ap2414, align 4
  %incdec.ptr2426 = getelementptr inbounds i8*, i8** %1261, i32 1
  store i8** %incdec.ptr2426, i8*** %ap2414, align 4
  %1262 = load i8**, i8*** %ap22415, align 4
  %incdec.ptr2427 = getelementptr inbounds i8*, i8** %1262, i32 1
  store i8** %incdec.ptr2427, i8*** %ap22415, align 4
  br label %for.cond2420

for.end2428:                                      ; preds = %for.cond2420
  %1263 = load i8**, i8*** %ap22415, align 4
  %incdec.ptr2429 = getelementptr inbounds i8*, i8** %1263, i32 1
  store i8** %incdec.ptr2429, i8*** %ap22415, align 4
  store i8* null, i8** %1263, align 4
  br label %if.end2433

if.else2430:                                      ; preds = %if.then2410
  %1264 = load i8*, i8** %val, align 4
  %1265 = load i32, i32* %getkeys, align 4
  %call2431 = call i8* @getkeystring(i8* %1264, i32* %len2411, i32 %1265, i32* null)
  store i8* %call2431, i8** %val, align 4
  %1266 = load i8*, i8** %val, align 4
  %1267 = load i32, i32* %len2411, align 4
  %call2432 = call i8* @metafy(i8* %1266, i32 %1267, i32 1)
  store i8* %call2432, i8** %val, align 4
  br label %if.end2433

if.end2433:                                       ; preds = %if.else2430, %for.end2428
  br label %if.end2434

if.end2434:                                       ; preds = %if.end2433, %if.end2407
  %1268 = load i32, i32* %presc, align 4
  %tobool2435 = icmp ne i32 %1268, 0
  br i1 %tobool2435, label %if.then2436, label %if.end2471

if.then2436:                                      ; preds = %if.end2434
  %1269 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 145), align 1
  %conv2437 = sext i8 %1269 to i32
  store i32 %conv2437, i32* %ops, align 4
  %1270 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 141), align 1
  %conv2438 = sext i8 %1270 to i32
  store i32 %conv2438, i32* %opb, align 4
  %1271 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 143), align 1
  %conv2439 = sext i8 %1271 to i32
  store i32 %conv2439, i32* %opp, align 4
  %1272 = load i32, i32* %presc, align 4
  %cmp2440 = icmp slt i32 %1272, 2
  br i1 %cmp2440, label %if.then2442, label %if.end2443

if.then2442:                                      ; preds = %if.then2436
  store i8 1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 143), align 1
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 141), align 1
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 145), align 1
  br label %if.end2443

if.end2443:                                       ; preds = %if.then2442, %if.then2436
  %1273 = load i32, i32* %isarr, align 4
  %tobool2444 = icmp ne i32 %1273, 0
  br i1 %tobool2444, label %if.then2445, label %if.else2459

if.then2445:                                      ; preds = %if.end2443
  %1274 = load i32, i32* %copied, align 4
  %tobool2447 = icmp ne i32 %1274, 0
  br i1 %tobool2447, label %if.end2450, label %if.then2448

if.then2448:                                      ; preds = %if.then2445
  %1275 = load i8**, i8*** %aval, align 4
  %call2449 = call i8** @arrdup(i8** %1275)
  store i8** %call2449, i8*** %aval, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end2450

if.end2450:                                       ; preds = %if.then2448, %if.then2445
  %1276 = load i8**, i8*** %aval, align 4
  store i8** %1276, i8*** %ap2446, align 4
  br label %for.cond2451

for.cond2451:                                     ; preds = %for.inc2456, %if.end2450
  %1277 = load i8**, i8*** %ap2446, align 4
  %1278 = load i8*, i8** %1277, align 4
  %tobool2452 = icmp ne i8* %1278, null
  br i1 %tobool2452, label %for.body2453, label %for.end2458

for.body2453:                                     ; preds = %for.cond2451
  %1279 = load i8**, i8*** %ap2446, align 4
  %1280 = load i8*, i8** %1279, align 4
  call void @untokenize(i8* %1280)
  %1281 = load i8**, i8*** %ap2446, align 4
  %1282 = load i8*, i8** %1281, align 4
  %call2454 = call i8* @promptexpand(i8* %1282, i32 0, i8* null, i8* null, i32* null)
  store i8* %call2454, i8** %tmps, align 4
  %1283 = load i8*, i8** %tmps, align 4
  %call2455 = call i8* @dupstring(i8* %1283)
  %1284 = load i8**, i8*** %ap2446, align 4
  store i8* %call2455, i8** %1284, align 4
  %1285 = load i8*, i8** %tmps, align 4
  call void @free(i8* %1285)
  br label %for.inc2456

for.inc2456:                                      ; preds = %for.body2453
  %1286 = load i8**, i8*** %ap2446, align 4
  %incdec.ptr2457 = getelementptr inbounds i8*, i8** %1286, i32 1
  store i8** %incdec.ptr2457, i8*** %ap2446, align 4
  br label %for.cond2451

for.end2458:                                      ; preds = %for.cond2451
  br label %if.end2467

if.else2459:                                      ; preds = %if.end2443
  %1287 = load i32, i32* %copied, align 4
  %tobool2461 = icmp ne i32 %1287, 0
  br i1 %tobool2461, label %if.end2464, label %if.then2462

if.then2462:                                      ; preds = %if.else2459
  %1288 = load i8*, i8** %val, align 4
  %call2463 = call i8* @dupstring(i8* %1288)
  store i8* %call2463, i8** %val, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end2464

if.end2464:                                       ; preds = %if.then2462, %if.else2459
  %1289 = load i8*, i8** %val, align 4
  call void @untokenize(i8* %1289)
  %1290 = load i8*, i8** %val, align 4
  %call2465 = call i8* @promptexpand(i8* %1290, i32 0, i8* null, i8* null, i32* null)
  store i8* %call2465, i8** %tmps2460, align 4
  %1291 = load i8*, i8** %tmps2460, align 4
  %call2466 = call i8* @dupstring(i8* %1291)
  store i8* %call2466, i8** %val, align 4
  %1292 = load i8*, i8** %tmps2460, align 4
  call void @free(i8* %1292)
  br label %if.end2467

if.end2467:                                       ; preds = %if.end2464, %for.end2458
  %1293 = load i32, i32* %ops, align 4
  %conv2468 = trunc i32 %1293 to i8
  store i8 %conv2468, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 145), align 1
  %1294 = load i32, i32* %opb, align 4
  %conv2469 = trunc i32 %1294 to i8
  store i8 %conv2469, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 141), align 1
  %1295 = load i32, i32* %opp, align 4
  %conv2470 = trunc i32 %1295 to i8
  store i8 %conv2470, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 143), align 1
  br label %if.end2471

if.end2471:                                       ; preds = %if.end2467, %if.end2434
  %1296 = load i32, i32* %quotemod, align 4
  %tobool2472 = icmp ne i32 %1296, 0
  br i1 %tobool2472, label %if.then2473, label %if.end2659

if.then2473:                                      ; preds = %if.end2471
  store i32 0, i32* %pre, align 4
  store i32 0, i32* %post, align 4
  %1297 = load i32, i32* %quotemod, align 4
  %cmp2474 = icmp sgt i32 %1297, 0
  br i1 %cmp2474, label %if.then2476, label %if.end2481

if.then2476:                                      ; preds = %if.then2473
  %1298 = load i32, i32* %quotetype, align 4
  switch i32 %1298, label %sw.default2479 [
    i32 4, label %sw.bb2477
    i32 6, label %sw.bb2478
    i32 1, label %sw.bb2478
    i32 7, label %sw.bb2478
  ]

sw.bb2477:                                        ; preds = %if.then2476
  store i32 2, i32* %pre, align 4
  store i32 1, i32* %post, align 4
  br label %sw.epilog2480

sw.bb2478:                                        ; preds = %if.then2476, %if.then2476, %if.then2476
  br label %sw.epilog2480

sw.default2479:                                   ; preds = %if.then2476
  store i32 1, i32* %post, align 4
  store i32 1, i32* %pre, align 4
  br label %sw.epilog2480

sw.epilog2480:                                    ; preds = %sw.default2479, %sw.bb2478, %sw.bb2477
  br label %if.end2481

if.end2481:                                       ; preds = %sw.epilog2480, %if.then2473
  %1299 = load i32, i32* %isarr, align 4
  %tobool2482 = icmp ne i32 %1299, 0
  br i1 %tobool2482, label %if.then2483, label %if.else2584

if.then2483:                                      ; preds = %if.end2481
  %1300 = load i32, i32* %copied, align 4
  %tobool2485 = icmp ne i32 %1300, 0
  br i1 %tobool2485, label %if.end2488, label %if.then2486

if.then2486:                                      ; preds = %if.then2483
  %1301 = load i8**, i8*** %aval, align 4
  %call2487 = call i8** @arrdup(i8** %1301)
  store i8** %call2487, i8*** %aval, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end2488

if.end2488:                                       ; preds = %if.then2486, %if.then2483
  %1302 = load i8**, i8*** %aval, align 4
  store i8** %1302, i8*** %ap2484, align 4
  %1303 = load i32, i32* %quotemod, align 4
  %cmp2489 = icmp sgt i32 %1303, 0
  br i1 %cmp2489, label %if.then2491, label %if.else2554

if.then2491:                                      ; preds = %if.end2488
  %1304 = load i32, i32* %quotetype, align 4
  %cmp2492 = icmp eq i32 %1304, 9
  br i1 %cmp2492, label %if.then2494, label %if.else2502

if.then2494:                                      ; preds = %if.then2491
  br label %for.cond2495

for.cond2495:                                     ; preds = %for.inc2499, %if.then2494
  %1305 = load i8**, i8*** %ap2484, align 4
  %1306 = load i8*, i8** %1305, align 4
  %tobool2496 = icmp ne i8* %1306, null
  br i1 %tobool2496, label %for.body2497, label %for.end2501

for.body2497:                                     ; preds = %for.cond2495
  %1307 = load i8**, i8*** %ap2484, align 4
  %1308 = load i8*, i8** %1307, align 4
  %call2498 = call i8* @quotedzputs(i8* %1308, %struct._IO_FILE* null)
  %1309 = load i8**, i8*** %ap2484, align 4
  store i8* %call2498, i8** %1309, align 4
  br label %for.inc2499

for.inc2499:                                      ; preds = %for.body2497
  %1310 = load i8**, i8*** %ap2484, align 4
  %incdec.ptr2500 = getelementptr inbounds i8*, i8** %1310, i32 1
  store i8** %incdec.ptr2500, i8*** %ap2484, align 4
  br label %for.cond2495

for.end2501:                                      ; preds = %for.cond2495
  br label %if.end2553

if.else2502:                                      ; preds = %if.then2491
  %1311 = load i32, i32* %quotetype, align 4
  %cmp2503 = icmp sgt i32 %1311, 1
  br i1 %cmp2503, label %if.then2505, label %if.else2544

if.then2505:                                      ; preds = %if.else2502
  br label %for.cond2507

for.cond2507:                                     ; preds = %for.inc2541, %if.then2505
  %1312 = load i8**, i8*** %ap2484, align 4
  %1313 = load i8*, i8** %1312, align 4
  %tobool2508 = icmp ne i8* %1313, null
  br i1 %tobool2508, label %for.body2509, label %for.end2543

for.body2509:                                     ; preds = %for.cond2507
  %1314 = load i8**, i8*** %ap2484, align 4
  %1315 = load i8*, i8** %1314, align 4
  %1316 = load i32, i32* %quotetype, align 4
  %call2510 = call i8* @quotestring(i8* %1315, i32 %1316)
  store i8* %call2510, i8** %tmp, align 4
  %1317 = load i8*, i8** %tmp, align 4
  %call2511 = call i32 @strlen(i8* %1317)
  store i32 %call2511, i32* %sl2506, align 4
  %1318 = load i32, i32* %pre, align 4
  %1319 = load i32, i32* %sl2506, align 4
  %add2512 = add nsw i32 %1318, %1319
  %1320 = load i32, i32* %post, align 4
  %add2513 = add nsw i32 %add2512, %1320
  %add2514 = add nsw i32 %add2513, 1
  %call2515 = call i8* @zhalloc(i32 %add2514)
  %1321 = load i8**, i8*** %ap2484, align 4
  store i8* %call2515, i8** %1321, align 4
  %1322 = load i8**, i8*** %ap2484, align 4
  %1323 = load i8*, i8** %1322, align 4
  %1324 = load i32, i32* %pre, align 4
  %add.ptr2516 = getelementptr inbounds i8, i8* %1323, i32 %1324
  %1325 = load i8*, i8** %tmp, align 4
  %call2517 = call i8* @strcpy(i8* %add.ptr2516, i8* %1325)
  %1326 = load i32, i32* %pre, align 4
  %tobool2518 = icmp ne i32 %1326, 0
  br i1 %tobool2518, label %if.then2519, label %if.end2530

if.then2519:                                      ; preds = %for.body2509
  %1327 = load i32, i32* %quotetype, align 4
  %cmp2520 = icmp ne i32 %1327, 3
  %cond2522 = select i1 %cmp2520, i32 39, i32 34
  %conv2523 = trunc i32 %cond2522 to i8
  %1328 = load i8**, i8*** %ap2484, align 4
  %arrayidx2524 = getelementptr inbounds i8*, i8** %1328, i32 0
  %1329 = load i8*, i8** %arrayidx2524, align 4
  %1330 = load i32, i32* %pre, align 4
  %1331 = load i32, i32* %sl2506, align 4
  %add2525 = add nsw i32 %1330, %1331
  %arrayidx2526 = getelementptr inbounds i8, i8* %1329, i32 %add2525
  store i8 %conv2523, i8* %arrayidx2526, align 1
  %1332 = load i8**, i8*** %ap2484, align 4
  %arrayidx2527 = getelementptr inbounds i8*, i8** %1332, i32 0
  %1333 = load i8*, i8** %arrayidx2527, align 4
  %1334 = load i32, i32* %pre, align 4
  %sub2528 = sub nsw i32 %1334, 1
  %arrayidx2529 = getelementptr inbounds i8, i8* %1333, i32 %sub2528
  store i8 %conv2523, i8* %arrayidx2529, align 1
  br label %if.end2530

if.end2530:                                       ; preds = %if.then2519, %for.body2509
  %1335 = load i8**, i8*** %ap2484, align 4
  %arrayidx2531 = getelementptr inbounds i8*, i8** %1335, i32 0
  %1336 = load i8*, i8** %arrayidx2531, align 4
  %1337 = load i32, i32* %pre, align 4
  %1338 = load i32, i32* %sl2506, align 4
  %add2532 = add nsw i32 %1337, %1338
  %1339 = load i32, i32* %post, align 4
  %add2533 = add nsw i32 %add2532, %1339
  %arrayidx2534 = getelementptr inbounds i8, i8* %1336, i32 %add2533
  store i8 0, i8* %arrayidx2534, align 1
  %1340 = load i32, i32* %quotetype, align 4
  %cmp2535 = icmp eq i32 %1340, 4
  br i1 %cmp2535, label %if.then2537, label %if.end2540

if.then2537:                                      ; preds = %if.end2530
  %1341 = load i8**, i8*** %ap2484, align 4
  %arrayidx2538 = getelementptr inbounds i8*, i8** %1341, i32 0
  %1342 = load i8*, i8** %arrayidx2538, align 4
  %arrayidx2539 = getelementptr inbounds i8, i8* %1342, i32 0
  store i8 36, i8* %arrayidx2539, align 1
  br label %if.end2540

if.end2540:                                       ; preds = %if.then2537, %if.end2530
  br label %for.inc2541

for.inc2541:                                      ; preds = %if.end2540
  %1343 = load i8**, i8*** %ap2484, align 4
  %incdec.ptr2542 = getelementptr inbounds i8*, i8** %1343, i32 1
  store i8** %incdec.ptr2542, i8*** %ap2484, align 4
  br label %for.cond2507

for.end2543:                                      ; preds = %for.cond2507
  br label %if.end2552

if.else2544:                                      ; preds = %if.else2502
  br label %for.cond2545

for.cond2545:                                     ; preds = %for.inc2549, %if.else2544
  %1344 = load i8**, i8*** %ap2484, align 4
  %1345 = load i8*, i8** %1344, align 4
  %tobool2546 = icmp ne i8* %1345, null
  br i1 %tobool2546, label %for.body2547, label %for.end2551

for.body2547:                                     ; preds = %for.cond2545
  %1346 = load i8**, i8*** %ap2484, align 4
  %1347 = load i8*, i8** %1346, align 4
  %call2548 = call i8* @quotestring(i8* %1347, i32 8)
  %1348 = load i8**, i8*** %ap2484, align 4
  store i8* %call2548, i8** %1348, align 4
  br label %for.inc2549

for.inc2549:                                      ; preds = %for.body2547
  %1349 = load i8**, i8*** %ap2484, align 4
  %incdec.ptr2550 = getelementptr inbounds i8*, i8** %1349, i32 1
  store i8** %incdec.ptr2550, i8*** %ap2484, align 4
  br label %for.cond2545

for.end2551:                                      ; preds = %for.cond2545
  br label %if.end2552

if.end2552:                                       ; preds = %for.end2551, %for.end2543
  br label %if.end2553

if.end2553:                                       ; preds = %if.end2552, %for.end2501
  br label %if.end2583

if.else2554:                                      ; preds = %if.end2488
  %1350 = load i32, i32* @noerrs, align 4
  store i32 %1350, i32* %one2556, align 4
  %1351 = load i32, i32* @errflag, align 4
  store i32 %1351, i32* %oef2558, align 4
  store i32 0, i32* %haserr2560, align 4
  %1352 = load i32, i32* %quoteerr, align 4
  %tobool2561 = icmp ne i32 %1352, 0
  br i1 %tobool2561, label %if.end2563, label %if.then2562

if.then2562:                                      ; preds = %if.else2554
  store i32 1, i32* @noerrs, align 4
  br label %if.end2563

if.end2563:                                       ; preds = %if.then2562, %if.else2554
  br label %for.cond2564

for.cond2564:                                     ; preds = %for.inc2569, %if.end2563
  %1353 = load i8**, i8*** %ap2484, align 4
  %1354 = load i8*, i8** %1353, align 4
  %tobool2565 = icmp ne i8* %1354, null
  br i1 %tobool2565, label %for.body2566, label %for.end2571

for.body2566:                                     ; preds = %for.cond2564
  %1355 = load i8**, i8*** %ap2484, align 4
  %1356 = load i8*, i8** %1355, align 4
  %call2567 = call i32 @parse_subst_string(i8* %1356)
  %1357 = load i32, i32* %haserr2560, align 4
  %or2568 = or i32 %1357, %call2567
  store i32 %or2568, i32* %haserr2560, align 4
  %1358 = load i8**, i8*** %ap2484, align 4
  %1359 = load i8*, i8** %1358, align 4
  call void @remnulargs(i8* %1359)
  %1360 = load i8**, i8*** %ap2484, align 4
  %1361 = load i8*, i8** %1360, align 4
  call void @untokenize(i8* %1361)
  br label %for.inc2569

for.inc2569:                                      ; preds = %for.body2566
  %1362 = load i8**, i8*** %ap2484, align 4
  %incdec.ptr2570 = getelementptr inbounds i8*, i8** %1362, i32 1
  store i8** %incdec.ptr2570, i8*** %ap2484, align 4
  br label %for.cond2564

for.end2571:                                      ; preds = %for.cond2564
  %1363 = load i32, i32* %one2556, align 4
  store i32 %1363, i32* @noerrs, align 4
  %1364 = load i32, i32* %quoteerr, align 4
  %tobool2572 = icmp ne i32 %1364, 0
  br i1 %tobool2572, label %if.else2576, label %if.then2573

if.then2573:                                      ; preds = %for.end2571
  %1365 = load i32, i32* %oef2558, align 4
  %1366 = load i32, i32* @errflag, align 4
  %and2574 = and i32 %1366, 2
  %or2575 = or i32 %1365, %and2574
  store i32 %or2575, i32* @errflag, align 4
  br label %if.end2582

if.else2576:                                      ; preds = %for.end2571
  %1367 = load i32, i32* %haserr2560, align 4
  %tobool2577 = icmp ne i32 %1367, 0
  br i1 %tobool2577, label %if.then2580, label %lor.lhs.false2578

lor.lhs.false2578:                                ; preds = %if.else2576
  %1368 = load i32, i32* @errflag, align 4
  %tobool2579 = icmp ne i32 %1368, 0
  br i1 %tobool2579, label %if.then2580, label %if.end2581

if.then2580:                                      ; preds = %lor.lhs.false2578, %if.else2576
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2581:                                       ; preds = %lor.lhs.false2578
  br label %if.end2582

if.end2582:                                       ; preds = %if.end2581, %if.then2573
  br label %if.end2583

if.end2583:                                       ; preds = %if.end2582, %if.end2553
  br label %if.end2658

if.else2584:                                      ; preds = %if.end2481
  %1369 = load i32, i32* %copied, align 4
  %tobool2585 = icmp ne i32 %1369, 0
  br i1 %tobool2585, label %if.end2588, label %if.then2586

if.then2586:                                      ; preds = %if.else2584
  %1370 = load i8*, i8** %val, align 4
  %call2587 = call i8* @dupstring(i8* %1370)
  store i8* %call2587, i8** %val, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end2588

if.end2588:                                       ; preds = %if.then2586, %if.else2584
  %1371 = load i32, i32* %quotemod, align 4
  %cmp2589 = icmp sgt i32 %1371, 0
  br i1 %cmp2589, label %if.then2591, label %if.else2635

if.then2591:                                      ; preds = %if.end2588
  %1372 = load i32, i32* %quotetype, align 4
  %cmp2592 = icmp eq i32 %1372, 9
  br i1 %cmp2592, label %if.then2594, label %if.else2596

if.then2594:                                      ; preds = %if.then2591
  %1373 = load i8*, i8** %val, align 4
  %call2595 = call i8* @quotedzputs(i8* %1373, %struct._IO_FILE* null)
  store i8* %call2595, i8** %val, align 4
  br label %if.end2634

if.else2596:                                      ; preds = %if.then2591
  %1374 = load i32, i32* %quotetype, align 4
  %cmp2597 = icmp sgt i32 %1374, 1
  br i1 %cmp2597, label %if.then2599, label %if.else2631

if.then2599:                                      ; preds = %if.else2596
  %1375 = load i8*, i8** %val, align 4
  %1376 = load i32, i32* %quotetype, align 4
  %call2604 = call i8* @quotestring(i8* %1375, i32 %1376)
  store i8* %call2604, i8** %tmp2603, align 4
  %1377 = load i8*, i8** %tmp2603, align 4
  %call2605 = call i32 @strlen(i8* %1377)
  store i32 %call2605, i32* %sl2601, align 4
  %1378 = load i32, i32* %pre, align 4
  %1379 = load i32, i32* %sl2601, align 4
  %add2606 = add nsw i32 %1378, %1379
  %1380 = load i32, i32* %post, align 4
  %add2607 = add nsw i32 %add2606, %1380
  %add2608 = add nsw i32 %add2607, 1
  %call2609 = call i8* @zhalloc(i32 %add2608)
  store i8* %call2609, i8** %val, align 4
  %1381 = load i8*, i8** %val, align 4
  %1382 = load i32, i32* %pre, align 4
  %add.ptr2610 = getelementptr inbounds i8, i8* %1381, i32 %1382
  %1383 = load i8*, i8** %tmp2603, align 4
  %call2611 = call i8* @strcpy(i8* %add.ptr2610, i8* %1383)
  %1384 = load i32, i32* %pre, align 4
  %tobool2612 = icmp ne i32 %1384, 0
  br i1 %tobool2612, label %if.then2613, label %if.end2622

if.then2613:                                      ; preds = %if.then2599
  %1385 = load i32, i32* %quotetype, align 4
  %cmp2614 = icmp ne i32 %1385, 3
  %cond2616 = select i1 %cmp2614, i32 39, i32 34
  %conv2617 = trunc i32 %cond2616 to i8
  %1386 = load i8*, i8** %val, align 4
  %1387 = load i32, i32* %pre, align 4
  %1388 = load i32, i32* %sl2601, align 4
  %add2618 = add nsw i32 %1387, %1388
  %arrayidx2619 = getelementptr inbounds i8, i8* %1386, i32 %add2618
  store i8 %conv2617, i8* %arrayidx2619, align 1
  %1389 = load i8*, i8** %val, align 4
  %1390 = load i32, i32* %pre, align 4
  %sub2620 = sub nsw i32 %1390, 1
  %arrayidx2621 = getelementptr inbounds i8, i8* %1389, i32 %sub2620
  store i8 %conv2617, i8* %arrayidx2621, align 1
  br label %if.end2622

if.end2622:                                       ; preds = %if.then2613, %if.then2599
  %1391 = load i8*, i8** %val, align 4
  %1392 = load i32, i32* %pre, align 4
  %1393 = load i32, i32* %sl2601, align 4
  %add2623 = add nsw i32 %1392, %1393
  %1394 = load i32, i32* %post, align 4
  %add2624 = add nsw i32 %add2623, %1394
  %arrayidx2625 = getelementptr inbounds i8, i8* %1391, i32 %add2624
  store i8 0, i8* %arrayidx2625, align 1
  %1395 = load i32, i32* %quotetype, align 4
  %cmp2626 = icmp eq i32 %1395, 4
  br i1 %cmp2626, label %if.then2628, label %if.end2630

if.then2628:                                      ; preds = %if.end2622
  %1396 = load i8*, i8** %val, align 4
  %arrayidx2629 = getelementptr inbounds i8, i8* %1396, i32 0
  store i8 36, i8* %arrayidx2629, align 1
  br label %if.end2630

if.end2630:                                       ; preds = %if.then2628, %if.end2622
  br label %if.end2633

if.else2631:                                      ; preds = %if.else2596
  %1397 = load i8*, i8** %val, align 4
  %call2632 = call i8* @quotestring(i8* %1397, i32 8)
  store i8* %call2632, i8** %val, align 4
  br label %if.end2633

if.end2633:                                       ; preds = %if.else2631, %if.end2630
  br label %if.end2634

if.end2634:                                       ; preds = %if.end2633, %if.then2594
  br label %if.end2657

if.else2635:                                      ; preds = %if.end2588
  %1398 = load i32, i32* @noerrs, align 4
  store i32 %1398, i32* %one2637, align 4
  %1399 = load i32, i32* @errflag, align 4
  store i32 %1399, i32* %oef2639, align 4
  %1400 = load i32, i32* %quoteerr, align 4
  %tobool2642 = icmp ne i32 %1400, 0
  br i1 %tobool2642, label %if.end2644, label %if.then2643

if.then2643:                                      ; preds = %if.else2635
  store i32 1, i32* @noerrs, align 4
  br label %if.end2644

if.end2644:                                       ; preds = %if.then2643, %if.else2635
  %1401 = load i8*, i8** %val, align 4
  %call2645 = call i32 @parse_subst_string(i8* %1401)
  store i32 %call2645, i32* %haserr2641, align 4
  %1402 = load i32, i32* %one2637, align 4
  store i32 %1402, i32* @noerrs, align 4
  %1403 = load i32, i32* %quoteerr, align 4
  %tobool2646 = icmp ne i32 %1403, 0
  br i1 %tobool2646, label %if.else2650, label %if.then2647

if.then2647:                                      ; preds = %if.end2644
  %1404 = load i32, i32* %oef2639, align 4
  %1405 = load i32, i32* @errflag, align 4
  %and2648 = and i32 %1405, 2
  %or2649 = or i32 %1404, %and2648
  store i32 %or2649, i32* @errflag, align 4
  br label %if.end2656

if.else2650:                                      ; preds = %if.end2644
  %1406 = load i32, i32* %haserr2641, align 4
  %tobool2651 = icmp ne i32 %1406, 0
  br i1 %tobool2651, label %if.then2654, label %lor.lhs.false2652

lor.lhs.false2652:                                ; preds = %if.else2650
  %1407 = load i32, i32* @errflag, align 4
  %tobool2653 = icmp ne i32 %1407, 0
  br i1 %tobool2653, label %if.then2654, label %if.end2655

if.then2654:                                      ; preds = %lor.lhs.false2652, %if.else2650
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i32 0, i32 0))
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2655:                                       ; preds = %lor.lhs.false2652
  br label %if.end2656

if.end2656:                                       ; preds = %if.end2655, %if.then2647
  %1408 = load i8*, i8** %val, align 4
  call void @remnulargs(i8* %1408)
  %1409 = load i8*, i8** %val, align 4
  call void @untokenize(i8* %1409)
  br label %if.end2657

if.end2657:                                       ; preds = %if.end2656, %if.end2634
  br label %if.end2658

if.end2658:                                       ; preds = %if.end2657, %if.end2583
  br label %if.end2659

if.end2659:                                       ; preds = %if.end2658, %if.end2471
  %1410 = load i32, i32* %mods, align 4
  %tobool2660 = icmp ne i32 %1410, 0
  br i1 %tobool2660, label %if.then2661, label %if.end2702

if.then2661:                                      ; preds = %if.end2659
  %1411 = load i32, i32* %isarr, align 4
  %tobool2662 = icmp ne i32 %1411, 0
  br i1 %tobool2662, label %if.then2663, label %if.else2686

if.then2663:                                      ; preds = %if.then2661
  %1412 = load i32, i32* %copied, align 4
  %tobool2666 = icmp ne i32 %1412, 0
  br i1 %tobool2666, label %if.end2669, label %if.then2667

if.then2667:                                      ; preds = %if.then2663
  %1413 = load i8**, i8*** %aval, align 4
  %call2668 = call i8** @arrdup(i8** %1413)
  store i8** %call2668, i8*** %aval, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end2669

if.end2669:                                       ; preds = %if.then2667, %if.then2663
  %1414 = load i8**, i8*** %aval, align 4
  store i8** %1414, i8*** %ap2665, align 4
  br label %for.cond2670

for.cond2670:                                     ; preds = %for.inc2683, %if.end2669
  %1415 = load i8**, i8*** %ap2665, align 4
  %1416 = load i8*, i8** %1415, align 4
  %tobool2671 = icmp ne i8* %1416, null
  br i1 %tobool2671, label %for.body2672, label %for.end2685

for.body2672:                                     ; preds = %for.cond2670
  %1417 = load i32, i32* %mods, align 4
  %and2673 = and i32 %1417, 1
  %tobool2674 = icmp ne i32 %and2673, 0
  br i1 %tobool2674, label %if.then2675, label %if.end2677

if.then2675:                                      ; preds = %for.body2672
  %1418 = load i8**, i8*** %ap2665, align 4
  %1419 = load i8*, i8** %1418, align 4
  %call2676 = call i8* @substnamedir(i8* %1419)
  %1420 = load i8**, i8*** %ap2665, align 4
  store i8* %call2676, i8** %1420, align 4
  br label %if.end2677

if.end2677:                                       ; preds = %if.then2675, %for.body2672
  %1421 = load i32, i32* %mods, align 4
  %and2678 = and i32 %1421, 2
  %tobool2679 = icmp ne i32 %and2678, 0
  br i1 %tobool2679, label %if.then2680, label %if.end2682

if.then2680:                                      ; preds = %if.end2677
  %1422 = load i8**, i8*** %ap2665, align 4
  %1423 = load i8*, i8** %1422, align 4
  %call2681 = call i8* @nicedupstring(i8* %1423)
  %1424 = load i8**, i8*** %ap2665, align 4
  store i8* %call2681, i8** %1424, align 4
  br label %if.end2682

if.end2682:                                       ; preds = %if.then2680, %if.end2677
  br label %for.inc2683

for.inc2683:                                      ; preds = %if.end2682
  %1425 = load i8**, i8*** %ap2665, align 4
  %incdec.ptr2684 = getelementptr inbounds i8*, i8** %1425, i32 1
  store i8** %incdec.ptr2684, i8*** %ap2665, align 4
  br label %for.cond2670

for.end2685:                                      ; preds = %for.cond2670
  br label %if.end2701

if.else2686:                                      ; preds = %if.then2661
  %1426 = load i32, i32* %copied, align 4
  %tobool2687 = icmp ne i32 %1426, 0
  br i1 %tobool2687, label %if.end2690, label %if.then2688

if.then2688:                                      ; preds = %if.else2686
  %1427 = load i8*, i8** %val, align 4
  %call2689 = call i8* @dupstring(i8* %1427)
  store i8* %call2689, i8** %val, align 4
  store i32 1, i32* %copied, align 4
  br label %if.end2690

if.end2690:                                       ; preds = %if.then2688, %if.else2686
  %1428 = load i32, i32* %mods, align 4
  %and2691 = and i32 %1428, 1
  %tobool2692 = icmp ne i32 %and2691, 0
  br i1 %tobool2692, label %if.then2693, label %if.end2695

if.then2693:                                      ; preds = %if.end2690
  %1429 = load i8*, i8** %val, align 4
  %call2694 = call i8* @substnamedir(i8* %1429)
  store i8* %call2694, i8** %val, align 4
  br label %if.end2695

if.end2695:                                       ; preds = %if.then2693, %if.end2690
  %1430 = load i32, i32* %mods, align 4
  %and2696 = and i32 %1430, 2
  %tobool2697 = icmp ne i32 %and2696, 0
  br i1 %tobool2697, label %if.then2698, label %if.end2700

if.then2698:                                      ; preds = %if.end2695
  %1431 = load i8*, i8** %val, align 4
  %call2699 = call i8* @nicedupstring(i8* %1431)
  store i8* %call2699, i8** %val, align 4
  br label %if.end2700

if.end2700:                                       ; preds = %if.then2698, %if.end2695
  br label %if.end2701

if.end2701:                                       ; preds = %if.end2700, %for.end2685
  br label %if.end2702

if.end2702:                                       ; preds = %if.end2701, %if.end2659
  %1432 = load i32, i32* %shsplit, align 4
  %tobool2703 = icmp ne i32 %1432, 0
  br i1 %tobool2703, label %if.then2704, label %if.end2744

if.then2704:                                      ; preds = %if.end2702
  store %union.linkroot* null, %union.linkroot** %list2706, align 4
  %1433 = load i32, i32* %isarr, align 4
  %tobool2707 = icmp ne i32 %1433, 0
  br i1 %tobool2707, label %if.then2708, label %if.else2718

if.then2708:                                      ; preds = %if.then2704
  %1434 = load i8**, i8*** %aval, align 4
  store i8** %1434, i8*** %ap2710, align 4
  br label %for.cond2711

for.cond2711:                                     ; preds = %for.inc2715, %if.then2708
  %1435 = load i8**, i8*** %ap2710, align 4
  %1436 = load i8*, i8** %1435, align 4
  %tobool2712 = icmp ne i8* %1436, null
  br i1 %tobool2712, label %for.body2713, label %for.end2717

for.body2713:                                     ; preds = %for.cond2711
  %1437 = load i8**, i8*** %ap2710, align 4
  %1438 = load i8*, i8** %1437, align 4
  call void @untokenize(i8* %1438)
  %1439 = load %union.linkroot*, %union.linkroot** %list2706, align 4
  %1440 = load i8**, i8*** %ap2710, align 4
  %1441 = load i8*, i8** %1440, align 4
  %1442 = load i32, i32* %shsplit, align 4
  %call2714 = call %union.linkroot* @bufferwords(%union.linkroot* %1439, i8* %1441, i32* null, i32 %1442)
  store %union.linkroot* %call2714, %union.linkroot** %list2706, align 4
  br label %for.inc2715

for.inc2715:                                      ; preds = %for.body2713
  %1443 = load i8**, i8*** %ap2710, align 4
  %incdec.ptr2716 = getelementptr inbounds i8*, i8** %1443, i32 1
  store i8** %incdec.ptr2716, i8*** %ap2710, align 4
  br label %for.cond2711

for.end2717:                                      ; preds = %for.cond2711
  store i32 0, i32* %isarr, align 4
  br label %if.end2720

if.else2718:                                      ; preds = %if.then2704
  %1444 = load i8*, i8** %val, align 4
  call void @untokenize(i8* %1444)
  %1445 = load i8*, i8** %val, align 4
  %1446 = load i32, i32* %shsplit, align 4
  %call2719 = call %union.linkroot* @bufferwords(%union.linkroot* null, i8* %1445, i32* null, i32 %1446)
  store %union.linkroot* %call2719, %union.linkroot** %list2706, align 4
  br label %if.end2720

if.end2720:                                       ; preds = %if.else2718, %for.end2717
  %1447 = load %union.linkroot*, %union.linkroot** %list2706, align 4
  %tobool2721 = icmp ne %union.linkroot* %1447, null
  br i1 %tobool2721, label %lor.lhs.false2722, label %if.then2725

lor.lhs.false2722:                                ; preds = %if.end2720
  %1448 = load %union.linkroot*, %union.linkroot** %list2706, align 4
  %list2723 = bitcast %union.linkroot* %1448 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list2723, i32 0, i32 0
  %1449 = load %struct.linknode*, %struct.linknode** %first, align 4
  %tobool2724 = icmp ne %struct.linknode* %1449, null
  br i1 %tobool2724, label %if.else2727, label %if.then2725

if.then2725:                                      ; preds = %lor.lhs.false2722, %if.end2720
  %call2726 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call2726, i8** %val, align 4
  br label %if.end2743

if.else2727:                                      ; preds = %lor.lhs.false2722
  %1450 = load %union.linkroot*, %union.linkroot** %list2706, align 4
  %list2728 = bitcast %union.linkroot* %1450 to %struct.linklist*
  %first2729 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2728, i32 0, i32 0
  %1451 = load %struct.linknode*, %struct.linknode** %first2729, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %1451, i32 0, i32 0
  %1452 = load %struct.linknode*, %struct.linknode** %next, align 4
  %tobool2730 = icmp ne %struct.linknode* %1452, null
  br i1 %tobool2730, label %if.else2735, label %if.then2731

if.then2731:                                      ; preds = %if.else2727
  %1453 = load %union.linkroot*, %union.linkroot** %list2706, align 4
  %list2732 = bitcast %union.linkroot* %1453 to %struct.linklist*
  %first2733 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2732, i32 0, i32 0
  %1454 = load %struct.linknode*, %struct.linknode** %first2733, align 4
  %dat2734 = getelementptr inbounds %struct.linknode, %struct.linknode* %1454, i32 0, i32 2
  %1455 = load i8*, i8** %dat2734, align 4
  store i8* %1455, i8** %val, align 4
  br label %if.end2742

if.else2735:                                      ; preds = %if.else2727
  %1456 = load %union.linkroot*, %union.linkroot** %list2706, align 4
  %call2736 = call i8** @hlinklist2array(%union.linkroot* %1456, i32 0)
  store i8** %call2736, i8*** %aval, align 4
  %1457 = load i32, i32* %nojoin, align 4
  %tobool2737 = icmp ne i32 %1457, 0
  %cond2738 = select i1 %tobool2737, i32 1, i32 2
  store i32 %cond2738, i32* %isarr, align 4
  %1458 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list2739 = bitcast %union.linkroot* %1458 to %struct.linklist*
  %flags2740 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2739, i32 0, i32 2
  %1459 = load i32, i32* %flags2740, align 4
  %or2741 = or i32 %1459, 1
  store i32 %or2741, i32* %flags2740, align 4
  br label %if.end2742

if.end2742:                                       ; preds = %if.else2735, %if.then2731
  br label %if.end2743

if.end2743:                                       ; preds = %if.end2742, %if.then2725
  store i32 1, i32* %copied, align 4
  br label %if.end2744

if.end2744:                                       ; preds = %if.end2743, %if.end2702
  %1460 = load i32, i32* %isarr, align 4
  %tobool2745 = icmp ne i32 %1460, 0
  br i1 %tobool2745, label %land.lhs.true2746, label %if.end2753

land.lhs.true2746:                                ; preds = %if.end2744
  %1461 = load i32, i32* %ssub, align 4
  %tobool2747 = icmp ne i32 %1461, 0
  br i1 %tobool2747, label %if.then2748, label %if.end2753

if.then2748:                                      ; preds = %land.lhs.true2746
  %1462 = load i8**, i8*** %aval, align 4
  %call2749 = call i8* @sepjoin(i8** %1462, i8* null, i32 1)
  store i8* %call2749, i8** %val, align 4
  store i32 0, i32* %isarr, align 4
  %1463 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list2750 = bitcast %union.linkroot* %1463 to %struct.linklist*
  %flags2751 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2750, i32 0, i32 2
  %1464 = load i32, i32* %flags2751, align 4
  %and2752 = and i32 %1464, -2
  store i32 %and2752, i32* %flags2751, align 4
  br label %if.end2753

if.end2753:                                       ; preds = %if.then2748, %land.lhs.true2746, %if.end2744
  %1465 = load i32, i32* %ms_flags, align 4
  %and2754 = and i32 %1465, 1
  %tobool2755 = icmp ne i32 %and2754, 0
  br i1 %tobool2755, label %land.lhs.true2756, label %if.end2766

land.lhs.true2756:                                ; preds = %if.end2753
  %1466 = load i8*, i8** %aptr, align 4
  %1467 = load i8*, i8** %ostr, align 4
  %cmp2757 = icmp ugt i8* %1466, %1467
  br i1 %cmp2757, label %if.then2759, label %if.end2766

if.then2759:                                      ; preds = %land.lhs.true2756
  %1468 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %1469 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %1470 = load i8*, i8** %ostr, align 4
  %1471 = load i8*, i8** %aptr, align 4
  %1472 = load i8*, i8** %ostr, align 4
  %sub.ptr.lhs.cast2760 = ptrtoint i8* %1471 to i32
  %sub.ptr.rhs.cast2761 = ptrtoint i8* %1472 to i32
  %sub.ptr.sub2762 = sub i32 %sub.ptr.lhs.cast2760, %sub.ptr.rhs.cast2761
  %call2763 = call i8* @dupstrpfx(i8* %1470, i32 %sub.ptr.sub2762)
  %call2764 = call %struct.linknode* @insertlinknode(%union.linkroot* %1468, %struct.linknode* %1469, i8* %call2763)
  %1473 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %next2765 = getelementptr inbounds %struct.linknode, %struct.linknode* %1473, i32 0, i32 0
  %1474 = load %struct.linknode*, %struct.linknode** %next2765, align 4
  store %struct.linknode* %1474, %struct.linknode** %n.addr, align 4
  %1475 = load i8*, i8** %aptr, align 4
  store i8* %1475, i8** %ostr, align 4
  br label %if.end2766

if.end2766:                                       ; preds = %if.then2759, %land.lhs.true2756, %if.end2753
  %1476 = load i32, i32* %ms_flags, align 4
  %and2767 = and i32 %1476, 2
  %tobool2768 = icmp ne i32 %and2767, 0
  br i1 %tobool2768, label %land.lhs.true2769, label %if.end2775

land.lhs.true2769:                                ; preds = %if.end2766
  %1477 = load i8*, i8** %fstr, align 4
  %1478 = load i8, i8* %1477, align 1
  %conv2770 = sext i8 %1478 to i32
  %tobool2771 = icmp ne i32 %conv2770, 0
  br i1 %tobool2771, label %if.then2772, label %if.end2775

if.then2772:                                      ; preds = %land.lhs.true2769
  %1479 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %1480 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %1481 = load i8*, i8** %fstr, align 4
  %call2773 = call i8* @dupstring(i8* %1481)
  %call2774 = call %struct.linknode* @insertlinknode(%union.linkroot* %1479, %struct.linknode* %1480, i8* %call2773)
  %1482 = load i8*, i8** %fstr, align 4
  store i8 0, i8* %1482, align 1
  br label %if.end2775

if.end2775:                                       ; preds = %if.then2772, %land.lhs.true2769, %if.end2766
  %1483 = load i32, i32* %arrasg, align 4
  %tobool2776 = icmp ne i32 %1483, 0
  br i1 %tobool2776, label %land.lhs.true2777, label %if.end2784

land.lhs.true2777:                                ; preds = %if.end2775
  %1484 = load i32, i32* %isarr, align 4
  %tobool2778 = icmp ne i32 %1484, 0
  br i1 %tobool2778, label %if.end2784, label %if.then2779

if.then2779:                                      ; preds = %land.lhs.true2777
  %1485 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list2780 = bitcast %union.linkroot* %1485 to %struct.linklist*
  %flags2781 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2780, i32 0, i32 2
  %1486 = load i32, i32* %flags2781, align 4
  %or2782 = or i32 %1486, 1
  store i32 %or2782, i32* %flags2781, align 4
  %1487 = load i8*, i8** %val, align 4
  %call2783 = call i8** @hmkarray(i8* %1487)
  store i8** %call2783, i8*** %aval, align 4
  store i32 1, i32* %isarr, align 4
  br label %if.end2784

if.end2784:                                       ; preds = %if.then2779, %land.lhs.true2777, %if.end2775
  %1488 = load i32, i32* %isarr, align 4
  %tobool2785 = icmp ne i32 %1488, 0
  br i1 %tobool2785, label %if.then2786, label %if.else3116

if.then2786:                                      ; preds = %if.end2784
  %1489 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  store %struct.linknode* %1489, %struct.linknode** %on, align 4
  %1490 = load i32, i32* %unique, align 4
  %tobool2793 = icmp ne i32 %1490, 0
  br i1 %tobool2793, label %if.then2794, label %if.end2804

if.then2794:                                      ; preds = %if.then2786
  %1491 = load i32, i32* %copied, align 4
  %tobool2795 = icmp ne i32 %1491, 0
  br i1 %tobool2795, label %if.end2798, label %if.then2796

if.then2796:                                      ; preds = %if.then2794
  %1492 = load i8**, i8*** %aval, align 4
  %call2797 = call i8** @arrdup(i8** %1492)
  store i8** %call2797, i8*** %aval, align 4
  br label %if.end2798

if.end2798:                                       ; preds = %if.then2796, %if.then2794
  %1493 = load i8**, i8*** %aval, align 4
  %call2799 = call i32 @arrlen(i8** %1493)
  store i32 %call2799, i32* %i2791, align 4
  %1494 = load i32, i32* %i2791, align 4
  %cmp2800 = icmp sgt i32 %1494, 1
  br i1 %cmp2800, label %if.then2802, label %if.end2803

if.then2802:                                      ; preds = %if.end2798
  %1495 = load i8**, i8*** %aval, align 4
  call void @zhuniqarray(i8** %1495)
  br label %if.end2803

if.end2803:                                       ; preds = %if.then2802, %if.end2798
  br label %if.end2804

if.end2804:                                       ; preds = %if.end2803, %if.then2786
  %1496 = load i8**, i8*** %aval, align 4
  %arrayidx2805 = getelementptr inbounds i8*, i8** %1496, i32 0
  %1497 = load i8*, i8** %arrayidx2805, align 4
  %tobool2806 = icmp ne i8* %1497, null
  br i1 %tobool2806, label %lor.lhs.false2807, label %land.lhs.true2810

lor.lhs.false2807:                                ; preds = %if.end2804
  %1498 = load i8**, i8*** %aval, align 4
  %arrayidx2808 = getelementptr inbounds i8*, i8** %1498, i32 1
  %1499 = load i8*, i8** %arrayidx2808, align 4
  %tobool2809 = icmp ne i8* %1499, null
  br i1 %tobool2809, label %if.end2859, label %land.lhs.true2810

land.lhs.true2810:                                ; preds = %lor.lhs.false2807, %if.end2804
  %1500 = load i32, i32* %plan9, align 4
  %tobool2811 = icmp ne i32 %1500, 0
  br i1 %tobool2811, label %if.end2859, label %if.then2812

if.then2812:                                      ; preds = %land.lhs.true2810
  %1501 = load i8*, i8** %aptr, align 4
  %1502 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat2814 = getelementptr inbounds %struct.linknode, %struct.linknode* %1502, i32 0, i32 2
  %1503 = load i8*, i8** %dat2814, align 4
  %cmp2815 = icmp ugt i8* %1501, %1503
  br i1 %cmp2815, label %land.lhs.true2817, label %if.end2829

land.lhs.true2817:                                ; preds = %if.then2812
  %1504 = load i8*, i8** %aptr, align 4
  %arrayidx2818 = getelementptr inbounds i8, i8* %1504, i32 -1
  %1505 = load i8, i8* %arrayidx2818, align 1
  %conv2819 = sext i8 %1505 to i32
  %cmp2820 = icmp eq i32 %conv2819, -98
  br i1 %cmp2820, label %land.lhs.true2822, label %if.end2829

land.lhs.true2822:                                ; preds = %land.lhs.true2817
  %1506 = load i8*, i8** %fstr, align 4
  %1507 = load i8, i8* %1506, align 1
  %conv2823 = sext i8 %1507 to i32
  %cmp2824 = icmp eq i32 %conv2823, -98
  br i1 %cmp2824, label %if.then2826, label %if.end2829

if.then2826:                                      ; preds = %land.lhs.true2822
  %1508 = load i8*, i8** %aptr, align 4
  %incdec.ptr2827 = getelementptr inbounds i8, i8* %1508, i32 -1
  store i8* %incdec.ptr2827, i8** %aptr, align 4
  store i8 0, i8* %incdec.ptr2827, align 1
  %1509 = load i8*, i8** %fstr, align 4
  %incdec.ptr2828 = getelementptr inbounds i8, i8* %1509, i32 1
  store i8* %incdec.ptr2828, i8** %fstr, align 4
  br label %if.end2829

if.end2829:                                       ; preds = %if.then2826, %land.lhs.true2822, %land.lhs.true2817, %if.then2812
  %1510 = load i8**, i8*** %aval, align 4
  %arrayidx2830 = getelementptr inbounds i8*, i8** %1510, i32 0
  %1511 = load i8*, i8** %arrayidx2830, align 4
  %tobool2831 = icmp ne i8* %1511, null
  br i1 %tobool2831, label %cond.true2832, label %cond.false2835

cond.true2832:                                    ; preds = %if.end2829
  %1512 = load i8**, i8*** %aval, align 4
  %arrayidx2833 = getelementptr inbounds i8*, i8** %1512, i32 0
  %1513 = load i8*, i8** %arrayidx2833, align 4
  %call2834 = call i32 @strlen(i8* %1513)
  br label %cond.end2836

cond.false2835:                                   ; preds = %if.end2829
  br label %cond.end2836

cond.end2836:                                     ; preds = %cond.false2835, %cond.true2832
  %cond2837 = phi i32 [ %call2834, %cond.true2832 ], [ 0, %cond.false2835 ]
  store i32 %cond2837, i32* %vallen, align 4
  %1514 = load i8*, i8** %aptr, align 4
  %1515 = load i8*, i8** %ostr, align 4
  %sub.ptr.lhs.cast2838 = ptrtoint i8* %1514 to i32
  %sub.ptr.rhs.cast2839 = ptrtoint i8* %1515 to i32
  %sub.ptr.sub2840 = sub i32 %sub.ptr.lhs.cast2838, %sub.ptr.rhs.cast2839
  %1516 = load i32, i32* %vallen, align 4
  %add2841 = add nsw i32 %sub.ptr.sub2840, %1516
  %1517 = load i8*, i8** %fstr, align 4
  %call2842 = call i32 @strlen(i8* %1517)
  %add2843 = add i32 %add2841, %call2842
  %add2844 = add i32 %add2843, 1
  %call2845 = call i8* @hcalloc(i32 %add2844)
  store i8* %call2845, i8** %y, align 4
  %1518 = load i8*, i8** %y, align 4
  %1519 = load i8*, i8** %ostr, align 4
  %call2846 = call i8* @strcpy(i8* %1518, i8* %1519)
  %1520 = load i8*, i8** %y, align 4
  %1521 = load i8*, i8** %aptr, align 4
  %1522 = load i8*, i8** %ostr, align 4
  %sub.ptr.lhs.cast2847 = ptrtoint i8* %1521 to i32
  %sub.ptr.rhs.cast2848 = ptrtoint i8* %1522 to i32
  %sub.ptr.sub2849 = sub i32 %sub.ptr.lhs.cast2847, %sub.ptr.rhs.cast2848
  %add.ptr2850 = getelementptr inbounds i8, i8* %1520, i32 %sub.ptr.sub2849
  %1523 = load i8**, i8*** %str.addr, align 4
  store i8* %add.ptr2850, i8** %1523, align 4
  %1524 = load i32, i32* %vallen, align 4
  %tobool2851 = icmp ne i32 %1524, 0
  br i1 %tobool2851, label %if.then2852, label %if.end2856

if.then2852:                                      ; preds = %cond.end2836
  %1525 = load i8**, i8*** %str.addr, align 4
  %1526 = load i8*, i8** %1525, align 4
  %1527 = load i8**, i8*** %aval, align 4
  %arrayidx2853 = getelementptr inbounds i8*, i8** %1527, i32 0
  %1528 = load i8*, i8** %arrayidx2853, align 4
  %call2854 = call i8* @strcpy(i8* %1526, i8* %1528)
  %1529 = load i32, i32* %vallen, align 4
  %1530 = load i8**, i8*** %str.addr, align 4
  %1531 = load i8*, i8** %1530, align 4
  %add.ptr2855 = getelementptr inbounds i8, i8* %1531, i32 %1529
  store i8* %add.ptr2855, i8** %1530, align 4
  br label %if.end2856

if.end2856:                                       ; preds = %if.then2852, %cond.end2836
  %1532 = load i8**, i8*** %str.addr, align 4
  %1533 = load i8*, i8** %1532, align 4
  %1534 = load i8*, i8** %fstr, align 4
  %call2857 = call i8* @strcpy(i8* %1533, i8* %1534)
  %1535 = load i8*, i8** %y, align 4
  %1536 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat2858 = getelementptr inbounds %struct.linknode, %struct.linknode* %1536, i32 0, i32 2
  store i8* %1535, i8** %dat2858, align 4
  %1537 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  store %struct.linknode* %1537, %struct.linknode** %retval, align 4
  br label %return

if.end2859:                                       ; preds = %land.lhs.true2810, %lor.lhs.false2807
  %1538 = load i32, i32* %sortit, align 4
  %cmp2860 = icmp ne i32 %1538, 0
  br i1 %cmp2860, label %if.then2862, label %if.end2890

if.then2862:                                      ; preds = %if.end2859
  %1539 = load i32, i32* %copied, align 4
  %tobool2863 = icmp ne i32 %1539, 0
  br i1 %tobool2863, label %if.end2866, label %if.then2864

if.then2864:                                      ; preds = %if.then2862
  %1540 = load i8**, i8*** %aval, align 4
  %call2865 = call i8** @arrdup(i8** %1540)
  store i8** %call2865, i8*** %aval, align 4
  br label %if.end2866

if.end2866:                                       ; preds = %if.then2864, %if.then2862
  %1541 = load i32, i32* %indord, align 4
  %tobool2867 = icmp ne i32 %1541, 0
  br i1 %tobool2867, label %if.then2868, label %if.else2888

if.then2868:                                      ; preds = %if.end2866
  %1542 = load i32, i32* %sortit, align 4
  %and2869 = and i32 %1542, 4
  %tobool2870 = icmp ne i32 %and2869, 0
  br i1 %tobool2870, label %if.then2871, label %if.end2887

if.then2871:                                      ; preds = %if.then2868
  %1543 = load i8**, i8*** %aval, align 4
  %1544 = load i8**, i8*** %aval, align 4
  %call2875 = call i32 @arrlen(i8** %1544)
  %add.ptr2876 = getelementptr inbounds i8*, i8** %1543, i32 %call2875
  %add.ptr2877 = getelementptr inbounds i8*, i8** %add.ptr2876, i32 -1
  store i8** %add.ptr2877, i8*** %end2874, align 4
  %1545 = load i8**, i8*** %aval, align 4
  store i8** %1545, i8*** %start2879, align 4
  br label %while.cond2880

while.cond2880:                                   ; preds = %while.body2883, %if.then2871
  %1546 = load i8**, i8*** %start2879, align 4
  %1547 = load i8**, i8*** %end2874, align 4
  %cmp2881 = icmp ult i8** %1546, %1547
  br i1 %cmp2881, label %while.body2883, label %while.end2886

while.body2883:                                   ; preds = %while.cond2880
  %1548 = load i8**, i8*** %end2874, align 4
  %1549 = load i8*, i8** %1548, align 4
  store i8* %1549, i8** %copy, align 4
  %1550 = load i8**, i8*** %start2879, align 4
  %1551 = load i8*, i8** %1550, align 4
  %1552 = load i8**, i8*** %end2874, align 4
  %incdec.ptr2884 = getelementptr inbounds i8*, i8** %1552, i32 -1
  store i8** %incdec.ptr2884, i8*** %end2874, align 4
  store i8* %1551, i8** %1552, align 4
  %1553 = load i8*, i8** %copy, align 4
  %1554 = load i8**, i8*** %start2879, align 4
  %incdec.ptr2885 = getelementptr inbounds i8*, i8** %1554, i32 1
  store i8** %incdec.ptr2885, i8*** %start2879, align 4
  store i8* %1553, i8** %1554, align 4
  br label %while.cond2880

while.end2886:                                    ; preds = %while.cond2880
  br label %if.end2887

if.end2887:                                       ; preds = %while.end2886, %if.then2868
  br label %if.end2889

if.else2888:                                      ; preds = %if.end2866
  %1555 = load i8**, i8*** %aval, align 4
  %1556 = load i32, i32* %sortit, align 4
  call void @strmetasort(i8** %1555, i32 %1556, i32* null)
  br label %if.end2889

if.end2889:                                       ; preds = %if.else2888, %if.end2887
  br label %if.end2890

if.end2890:                                       ; preds = %if.end2889, %if.end2859
  %1557 = load i32, i32* %plan9, align 4
  %tobool2891 = icmp ne i32 %1557, 0
  br i1 %tobool2891, label %if.then2892, label %if.else3005

if.then2892:                                      ; preds = %if.end2890
  %1558 = load i8*, i8** %fstr, align 4
  %incdec.ptr2896 = getelementptr inbounds i8, i8* %1558, i32 -1
  store i8* %incdec.ptr2896, i8** %fstr, align 4
  store i8 -94, i8* %incdec.ptr2896, align 1
  br label %do.body

do.body:                                          ; preds = %if.then2892
  %list2897 = bitcast %union.linkroot* %tl to %struct.linklist*
  %first2898 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2897, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first2898, align 4
  %list2899 = bitcast %union.linkroot* %tl to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list2899, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4
  %list2900 = bitcast %union.linkroot* %tl to %struct.linklist*
  %flags2901 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2900, i32 0, i32 2
  store i32 0, i32* %flags2901, align 4
  %next2902 = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next2902, align 4
  %node2903 = bitcast %union.linkroot* %tl to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node2903, %struct.linknode** %prev, align 4
  %1559 = load i8*, i8** %fstr, align 4
  %dat2904 = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 2
  store i8* %1559, i8** %dat2904, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %1560 = load i32, i32* %eval, align 4
  %tobool2905 = icmp ne i32 %1560, 0
  br i1 %tobool2905, label %if.end2912, label %land.lhs.true2906

land.lhs.true2906:                                ; preds = %do.end
  %list2907 = bitcast %union.linkroot* %tl to %struct.linklist*
  %first2908 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2907, i32 0, i32 0
  %1561 = load %struct.linknode*, %struct.linknode** %first2908, align 4
  %1562 = load i32, i32* %ssub, align 4
  %1563 = load i32*, i32** %ret_flags.addr, align 4
  %call2909 = call %struct.linknode* @stringsubst(%union.linkroot* %tl, %struct.linknode* %1561, i32 %1562, i32* %1563, i32 0)
  %tobool2910 = icmp ne %struct.linknode* %call2909, null
  br i1 %tobool2910, label %if.end2912, label %if.then2911

if.then2911:                                      ; preds = %land.lhs.true2906
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2912:                                       ; preds = %land.lhs.true2906, %do.end
  %1564 = load i8*, i8** %aptr, align 4
  %1565 = load i8**, i8*** %str.addr, align 4
  store i8* %1564, i8** %1565, align 4
  %list2913 = bitcast %union.linkroot* %tl to %struct.linklist*
  %first2914 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2913, i32 0, i32 0
  %1566 = load %struct.linknode*, %struct.linknode** %first2914, align 4
  store %struct.linknode* %1566, %struct.linknode** %tn, align 4
  br label %while.cond2915

while.cond2915:                                   ; preds = %for.end2971, %if.end2912
  %1567 = load i8**, i8*** %aval, align 4
  %incdec.ptr2916 = getelementptr inbounds i8*, i8** %1567, i32 1
  store i8** %incdec.ptr2916, i8*** %aval, align 4
  %1568 = load i8*, i8** %1567, align 4
  store i8* %1568, i8** %x, align 4
  %tobool2917 = icmp ne i8* %1568, null
  br i1 %tobool2917, label %while.body2918, label %while.end2972

while.body2918:                                   ; preds = %while.cond2915
  %1569 = load i32, i32* %prenum, align 4
  %tobool2919 = icmp ne i32 %1569, 0
  br i1 %tobool2919, label %if.then2922, label %lor.lhs.false2920

lor.lhs.false2920:                                ; preds = %while.body2918
  %1570 = load i32, i32* %postnum, align 4
  %tobool2921 = icmp ne i32 %1570, 0
  br i1 %tobool2921, label %if.then2922, label %if.end2924

if.then2922:                                      ; preds = %lor.lhs.false2920, %while.body2918
  %1571 = load i8*, i8** %x, align 4
  %1572 = load i32, i32* %prenum, align 4
  %1573 = load i32, i32* %postnum, align 4
  %1574 = load i8*, i8** %preone, align 4
  %1575 = load i8*, i8** %postone, align 4
  %1576 = load i8*, i8** %premul, align 4
  %1577 = load i8*, i8** %postmul, align 4
  %1578 = load i32, i32* %multi_width, align 4
  %call2923 = call i8* @dopadding(i8* %1571, i32 %1572, i32 %1573, i8* %1574, i8* %1575, i8* %1576, i8* %1577, i32 %1578)
  store i8* %call2923, i8** %x, align 4
  br label %if.end2924

if.end2924:                                       ; preds = %if.then2922, %lor.lhs.false2920
  %1579 = load i32, i32* %eval, align 4
  %tobool2925 = icmp ne i32 %1579, 0
  br i1 %tobool2925, label %land.lhs.true2926, label %if.end2937

land.lhs.true2926:                                ; preds = %if.end2924
  %1580 = load i32, i32* %qt.addr, align 4
  %tobool2927 = icmp ne i32 %1580, 0
  br i1 %tobool2927, label %land.rhs2928, label %land.end2932

land.rhs2928:                                     ; preds = %land.lhs.true2926
  %1581 = load i32, i32* %nojoin, align 4
  %tobool2929 = icmp ne i32 %1581, 0
  %lnot2930 = xor i1 %tobool2929, true
  br label %land.end2932

land.end2932:                                     ; preds = %land.rhs2928, %land.lhs.true2926
  %1582 = phi i1 [ false, %land.lhs.true2926 ], [ %lnot2930, %land.rhs2928 ]
  %land.ext2933 = zext i1 %1582 to i32
  %1583 = load i32, i32* %quoteerr, align 4
  %call2934 = call i32 @subst_parse_str(i8** %x, i32 %land.ext2933, i32 %1583)
  %tobool2935 = icmp ne i32 %call2934, 0
  br i1 %tobool2935, label %if.then2936, label %if.end2937

if.then2936:                                      ; preds = %land.end2932
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end2937:                                       ; preds = %land.end2932, %if.end2924
  %1584 = load i8*, i8** %x, align 4
  %call2938 = call i32 @strlen(i8* %1584)
  store i32 %call2938, i32* %xlen, align 4
  %list2939 = bitcast %union.linkroot* %tl to %struct.linklist*
  %first2940 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2939, i32 0, i32 0
  %1585 = load %struct.linknode*, %struct.linknode** %first2940, align 4
  store %struct.linknode* %1585, %struct.linknode** %tn, align 4
  br label %for.cond2941

for.cond2941:                                     ; preds = %for.inc2969, %if.end2937
  %1586 = load %struct.linknode*, %struct.linknode** %tn, align 4
  %tobool2942 = icmp ne %struct.linknode* %1586, null
  br i1 %tobool2942, label %land.rhs2943, label %land.end2948

land.rhs2943:                                     ; preds = %for.cond2941
  %1587 = load %struct.linknode*, %struct.linknode** %tn, align 4
  %dat2944 = getelementptr inbounds %struct.linknode, %struct.linknode* %1587, i32 0, i32 2
  %1588 = load i8*, i8** %dat2944, align 4
  store i8* %1588, i8** %y, align 4
  %1589 = load i8, i8* %1588, align 1
  %conv2945 = sext i8 %1589 to i32
  %cmp2946 = icmp eq i32 %conv2945, -94
  br label %land.end2948

land.end2948:                                     ; preds = %land.rhs2943, %for.cond2941
  %1590 = phi i1 [ false, %for.cond2941 ], [ %cmp2946, %land.rhs2943 ]
  br i1 %1590, label %for.body2950, label %for.end2971

for.body2950:                                     ; preds = %land.end2948
  %1591 = load i8*, i8** %ostr, align 4
  %1592 = load i8*, i8** %aptr, align 4
  %1593 = load i8*, i8** %x, align 4
  %1594 = load i32, i32* %xlen, align 4
  %1595 = load i8*, i8** %y, align 4
  %add.ptr2951 = getelementptr inbounds i8, i8* %1595, i32 1
  %1596 = load i32, i32* %globsubst, align 4
  %1597 = load i32, i32* %copied, align 4
  %call2952 = call i8* @strcatsub(i8** %y, i8* %1591, i8* %1592, i8* %1593, i32 %1594, i8* %add.ptr2951, i32 %1596, i32 %1597)
  %1598 = load i32, i32* %qt.addr, align 4
  %tobool2953 = icmp ne i32 %1598, 0
  br i1 %tobool2953, label %land.lhs.true2954, label %if.end2961

land.lhs.true2954:                                ; preds = %for.body2950
  %1599 = load i8*, i8** %y, align 4
  %1600 = load i8, i8* %1599, align 1
  %tobool2955 = icmp ne i8 %1600, 0
  br i1 %tobool2955, label %if.end2961, label %land.lhs.true2956

land.lhs.true2956:                                ; preds = %land.lhs.true2954
  %1601 = load i32, i32* %isarr, align 4
  %cmp2957 = icmp ne i32 %1601, 2
  br i1 %cmp2957, label %if.then2959, label %if.end2961

if.then2959:                                      ; preds = %land.lhs.true2956
  %call2960 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0))
  store i8* %call2960, i8** %y, align 4
  br label %if.end2961

if.end2961:                                       ; preds = %if.then2959, %land.lhs.true2956, %land.lhs.true2954, %for.body2950
  %1602 = load i32, i32* %plan9, align 4
  %tobool2962 = icmp ne i32 %1602, 0
  br i1 %tobool2962, label %if.then2963, label %if.else2965

if.then2963:                                      ; preds = %if.end2961
  %1603 = load i8*, i8** %y, align 4
  %1604 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat2964 = getelementptr inbounds %struct.linknode, %struct.linknode* %1604, i32 0, i32 2
  store i8* %1603, i8** %dat2964, align 4
  store i32 0, i32* %plan9, align 4
  br label %if.end2968

if.else2965:                                      ; preds = %if.end2961
  %1605 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %1606 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %1607 = load i8*, i8** %y, align 4
  %call2966 = call %struct.linknode* @insertlinknode(%union.linkroot* %1605, %struct.linknode* %1606, i8* %1607)
  %1608 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %next2967 = getelementptr inbounds %struct.linknode, %struct.linknode* %1608, i32 0, i32 0
  %1609 = load %struct.linknode*, %struct.linknode** %next2967, align 4
  store %struct.linknode* %1609, %struct.linknode** %n.addr, align 4
  br label %if.end2968

if.end2968:                                       ; preds = %if.else2965, %if.then2963
  br label %for.inc2969

for.inc2969:                                      ; preds = %if.end2968
  %1610 = load %struct.linknode*, %struct.linknode** %tn, align 4
  %next2970 = getelementptr inbounds %struct.linknode, %struct.linknode* %1610, i32 0, i32 0
  %1611 = load %struct.linknode*, %struct.linknode** %next2970, align 4
  store %struct.linknode* %1611, %struct.linknode** %tn, align 4
  br label %for.cond2941

for.end2971:                                      ; preds = %land.end2948
  br label %while.cond2915

while.end2972:                                    ; preds = %while.cond2915
  br label %for.cond2973

for.cond2973:                                     ; preds = %for.inc2998, %while.end2972
  %1612 = load %struct.linknode*, %struct.linknode** %tn, align 4
  %tobool2974 = icmp ne %struct.linknode* %1612, null
  br i1 %tobool2974, label %for.body2975, label %for.end3000

for.body2975:                                     ; preds = %for.cond2973
  %1613 = load %struct.linknode*, %struct.linknode** %tn, align 4
  %dat2976 = getelementptr inbounds %struct.linknode, %struct.linknode* %1613, i32 0, i32 2
  %1614 = load i8*, i8** %dat2976, align 4
  store i8* %1614, i8** %y, align 4
  %1615 = load i8*, i8** %y, align 4
  %1616 = load i8, i8* %1615, align 1
  %conv2977 = sext i8 %1616 to i32
  %cmp2978 = icmp eq i32 %conv2977, -94
  br i1 %cmp2978, label %if.then2980, label %if.end2981

if.then2980:                                      ; preds = %for.body2975
  br label %for.inc2998

if.end2981:                                       ; preds = %for.body2975
  %1617 = load i32, i32* %qt.addr, align 4
  %tobool2982 = icmp ne i32 %1617, 0
  br i1 %tobool2982, label %land.lhs.true2983, label %if.end2990

land.lhs.true2983:                                ; preds = %if.end2981
  %1618 = load i8*, i8** %y, align 4
  %1619 = load i8, i8* %1618, align 1
  %tobool2984 = icmp ne i8 %1619, 0
  br i1 %tobool2984, label %if.end2990, label %land.lhs.true2985

land.lhs.true2985:                                ; preds = %land.lhs.true2983
  %1620 = load i32, i32* %isarr, align 4
  %cmp2986 = icmp ne i32 %1620, 2
  br i1 %cmp2986, label %if.then2988, label %if.end2990

if.then2988:                                      ; preds = %land.lhs.true2985
  %call2989 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0))
  store i8* %call2989, i8** %y, align 4
  br label %if.end2990

if.end2990:                                       ; preds = %if.then2988, %land.lhs.true2985, %land.lhs.true2983, %if.end2981
  %1621 = load i32, i32* %plan9, align 4
  %tobool2991 = icmp ne i32 %1621, 0
  br i1 %tobool2991, label %if.then2992, label %if.else2994

if.then2992:                                      ; preds = %if.end2990
  %1622 = load i8*, i8** %y, align 4
  %1623 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat2993 = getelementptr inbounds %struct.linknode, %struct.linknode* %1623, i32 0, i32 2
  store i8* %1622, i8** %dat2993, align 4
  store i32 0, i32* %plan9, align 4
  br label %if.end2997

if.else2994:                                      ; preds = %if.end2990
  %1624 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %1625 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %1626 = load i8*, i8** %y, align 4
  %call2995 = call %struct.linknode* @insertlinknode(%union.linkroot* %1624, %struct.linknode* %1625, i8* %1626)
  %1627 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %next2996 = getelementptr inbounds %struct.linknode, %struct.linknode* %1627, i32 0, i32 0
  %1628 = load %struct.linknode*, %struct.linknode** %next2996, align 4
  store %struct.linknode* %1628, %struct.linknode** %n.addr, align 4
  br label %if.end2997

if.end2997:                                       ; preds = %if.else2994, %if.then2992
  br label %for.inc2998

for.inc2998:                                      ; preds = %if.end2997, %if.then2980
  %1629 = load %struct.linknode*, %struct.linknode** %tn, align 4
  %next2999 = getelementptr inbounds %struct.linknode, %struct.linknode* %1629, i32 0, i32 0
  %1630 = load %struct.linknode*, %struct.linknode** %next2999, align 4
  store %struct.linknode* %1630, %struct.linknode** %tn, align 4
  br label %for.cond2973

for.end3000:                                      ; preds = %for.cond2973
  %1631 = load i32, i32* %plan9, align 4
  %tobool3001 = icmp ne i32 %1631, 0
  br i1 %tobool3001, label %if.then3002, label %if.end3004

if.then3002:                                      ; preds = %for.end3000
  %1632 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %1633 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %call3003 = call i8* @uremnode(%union.linkroot* %1632, %struct.linknode* %1633)
  %1634 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  store %struct.linknode* %1634, %struct.linknode** %retval, align 4
  br label %return

if.end3004:                                       ; preds = %for.end3000
  br label %if.end3114

if.else3005:                                      ; preds = %if.end2890
  %1635 = load i8**, i8*** %aval, align 4
  %arrayidx3006 = getelementptr inbounds i8*, i8** %1635, i32 0
  %1636 = load i8*, i8** %arrayidx3006, align 4
  store i8* %1636, i8** %x, align 4
  %1637 = load i32, i32* %prenum, align 4
  %tobool3007 = icmp ne i32 %1637, 0
  br i1 %tobool3007, label %if.then3010, label %lor.lhs.false3008

lor.lhs.false3008:                                ; preds = %if.else3005
  %1638 = load i32, i32* %postnum, align 4
  %tobool3009 = icmp ne i32 %1638, 0
  br i1 %tobool3009, label %if.then3010, label %if.end3012

if.then3010:                                      ; preds = %lor.lhs.false3008, %if.else3005
  %1639 = load i8*, i8** %x, align 4
  %1640 = load i32, i32* %prenum, align 4
  %1641 = load i32, i32* %postnum, align 4
  %1642 = load i8*, i8** %preone, align 4
  %1643 = load i8*, i8** %postone, align 4
  %1644 = load i8*, i8** %premul, align 4
  %1645 = load i8*, i8** %postmul, align 4
  %1646 = load i32, i32* %multi_width, align 4
  %call3011 = call i8* @dopadding(i8* %1639, i32 %1640, i32 %1641, i8* %1642, i8* %1643, i8* %1644, i8* %1645, i32 %1646)
  store i8* %call3011, i8** %x, align 4
  br label %if.end3012

if.end3012:                                       ; preds = %if.then3010, %lor.lhs.false3008
  %1647 = load i32, i32* %eval, align 4
  %tobool3013 = icmp ne i32 %1647, 0
  br i1 %tobool3013, label %land.lhs.true3014, label %if.end3025

land.lhs.true3014:                                ; preds = %if.end3012
  %1648 = load i32, i32* %qt.addr, align 4
  %tobool3015 = icmp ne i32 %1648, 0
  br i1 %tobool3015, label %land.rhs3016, label %land.end3020

land.rhs3016:                                     ; preds = %land.lhs.true3014
  %1649 = load i32, i32* %nojoin, align 4
  %tobool3017 = icmp ne i32 %1649, 0
  %lnot3018 = xor i1 %tobool3017, true
  br label %land.end3020

land.end3020:                                     ; preds = %land.rhs3016, %land.lhs.true3014
  %1650 = phi i1 [ false, %land.lhs.true3014 ], [ %lnot3018, %land.rhs3016 ]
  %land.ext3021 = zext i1 %1650 to i32
  %1651 = load i32, i32* %quoteerr, align 4
  %call3022 = call i32 @subst_parse_str(i8** %x, i32 %land.ext3021, i32 %1651)
  %tobool3023 = icmp ne i32 %call3022, 0
  br i1 %tobool3023, label %if.then3024, label %if.end3025

if.then3024:                                      ; preds = %land.end3020
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end3025:                                       ; preds = %land.end3020, %if.end3012
  %1652 = load i8*, i8** %x, align 4
  %call3026 = call i32 @strlen(i8* %1652)
  store i32 %call3026, i32* %xlen, align 4
  %1653 = load i8*, i8** %ostr, align 4
  %1654 = load i8*, i8** %aptr, align 4
  %1655 = load i8*, i8** %x, align 4
  %1656 = load i32, i32* %xlen, align 4
  %1657 = load i32, i32* %globsubst, align 4
  %1658 = load i32, i32* %copied, align 4
  %call3027 = call i8* @strcatsub(i8** %y, i8* %1653, i8* %1654, i8* %1655, i32 %1656, i8* null, i32 %1657, i32 %1658)
  %1659 = load i32, i32* %qt.addr, align 4
  %tobool3028 = icmp ne i32 %1659, 0
  br i1 %tobool3028, label %land.lhs.true3029, label %if.end3036

land.lhs.true3029:                                ; preds = %if.end3025
  %1660 = load i8*, i8** %y, align 4
  %1661 = load i8, i8* %1660, align 1
  %tobool3030 = icmp ne i8 %1661, 0
  br i1 %tobool3030, label %if.end3036, label %land.lhs.true3031

land.lhs.true3031:                                ; preds = %land.lhs.true3029
  %1662 = load i32, i32* %isarr, align 4
  %cmp3032 = icmp ne i32 %1662, 2
  br i1 %cmp3032, label %if.then3034, label %if.end3036

if.then3034:                                      ; preds = %land.lhs.true3031
  %call3035 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0))
  store i8* %call3035, i8** %y, align 4
  br label %if.end3036

if.end3036:                                       ; preds = %if.then3034, %land.lhs.true3031, %land.lhs.true3029, %if.end3025
  %1663 = load i8*, i8** %y, align 4
  %1664 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat3037 = getelementptr inbounds %struct.linknode, %struct.linknode* %1664, i32 0, i32 2
  store i8* %1663, i8** %dat3037, align 4
  store i32 1, i32* %i2791, align 4
  br label %while.cond3038

while.cond3038:                                   ; preds = %if.end3077, %if.end3036
  %1665 = load i8**, i8*** %aval, align 4
  %1666 = load i32, i32* %i2791, align 4
  %add3039 = add nsw i32 %1666, 1
  %arrayidx3040 = getelementptr inbounds i8*, i8** %1665, i32 %add3039
  %1667 = load i8*, i8** %arrayidx3040, align 4
  %tobool3041 = icmp ne i8* %1667, null
  br i1 %tobool3041, label %while.body3042, label %while.end3080

while.body3042:                                   ; preds = %while.cond3038
  %1668 = load i8**, i8*** %aval, align 4
  %1669 = load i32, i32* %i2791, align 4
  %inc3043 = add nsw i32 %1669, 1
  store i32 %inc3043, i32* %i2791, align 4
  %arrayidx3044 = getelementptr inbounds i8*, i8** %1668, i32 %1669
  %1670 = load i8*, i8** %arrayidx3044, align 4
  store i8* %1670, i8** %x, align 4
  %1671 = load i32, i32* %prenum, align 4
  %tobool3045 = icmp ne i32 %1671, 0
  br i1 %tobool3045, label %if.then3048, label %lor.lhs.false3046

lor.lhs.false3046:                                ; preds = %while.body3042
  %1672 = load i32, i32* %postnum, align 4
  %tobool3047 = icmp ne i32 %1672, 0
  br i1 %tobool3047, label %if.then3048, label %if.end3050

if.then3048:                                      ; preds = %lor.lhs.false3046, %while.body3042
  %1673 = load i8*, i8** %x, align 4
  %1674 = load i32, i32* %prenum, align 4
  %1675 = load i32, i32* %postnum, align 4
  %1676 = load i8*, i8** %preone, align 4
  %1677 = load i8*, i8** %postone, align 4
  %1678 = load i8*, i8** %premul, align 4
  %1679 = load i8*, i8** %postmul, align 4
  %1680 = load i32, i32* %multi_width, align 4
  %call3049 = call i8* @dopadding(i8* %1673, i32 %1674, i32 %1675, i8* %1676, i8* %1677, i8* %1678, i8* %1679, i32 %1680)
  store i8* %call3049, i8** %x, align 4
  br label %if.end3050

if.end3050:                                       ; preds = %if.then3048, %lor.lhs.false3046
  %1681 = load i32, i32* %eval, align 4
  %tobool3051 = icmp ne i32 %1681, 0
  br i1 %tobool3051, label %land.lhs.true3052, label %if.end3063

land.lhs.true3052:                                ; preds = %if.end3050
  %1682 = load i32, i32* %qt.addr, align 4
  %tobool3053 = icmp ne i32 %1682, 0
  br i1 %tobool3053, label %land.rhs3054, label %land.end3058

land.rhs3054:                                     ; preds = %land.lhs.true3052
  %1683 = load i32, i32* %nojoin, align 4
  %tobool3055 = icmp ne i32 %1683, 0
  %lnot3056 = xor i1 %tobool3055, true
  br label %land.end3058

land.end3058:                                     ; preds = %land.rhs3054, %land.lhs.true3052
  %1684 = phi i1 [ false, %land.lhs.true3052 ], [ %lnot3056, %land.rhs3054 ]
  %land.ext3059 = zext i1 %1684 to i32
  %1685 = load i32, i32* %quoteerr, align 4
  %call3060 = call i32 @subst_parse_str(i8** %x, i32 %land.ext3059, i32 %1685)
  %tobool3061 = icmp ne i32 %call3060, 0
  br i1 %tobool3061, label %if.then3062, label %if.end3063

if.then3062:                                      ; preds = %land.end3058
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end3063:                                       ; preds = %land.end3058, %if.end3050
  %1686 = load i32, i32* %qt.addr, align 4
  %tobool3064 = icmp ne i32 %1686, 0
  br i1 %tobool3064, label %land.lhs.true3065, label %if.else3072

land.lhs.true3065:                                ; preds = %if.end3063
  %1687 = load i8*, i8** %x, align 4
  %1688 = load i8, i8* %1687, align 1
  %tobool3066 = icmp ne i8 %1688, 0
  br i1 %tobool3066, label %if.else3072, label %land.lhs.true3067

land.lhs.true3067:                                ; preds = %land.lhs.true3065
  %1689 = load i32, i32* %isarr, align 4
  %cmp3068 = icmp ne i32 %1689, 2
  br i1 %cmp3068, label %if.then3070, label %if.else3072

if.then3070:                                      ; preds = %land.lhs.true3067
  %call3071 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0))
  store i8* %call3071, i8** %y, align 4
  br label %if.end3077

if.else3072:                                      ; preds = %land.lhs.true3067, %land.lhs.true3065, %if.end3063
  %1690 = load i8*, i8** %x, align 4
  %call3073 = call i8* @dupstring(i8* %1690)
  store i8* %call3073, i8** %y, align 4
  %1691 = load i32, i32* %globsubst, align 4
  %tobool3074 = icmp ne i32 %1691, 0
  br i1 %tobool3074, label %if.then3075, label %if.end3076

if.then3075:                                      ; preds = %if.else3072
  %1692 = load i8*, i8** %y, align 4
  call void @shtokenize(i8* %1692)
  br label %if.end3076

if.end3076:                                       ; preds = %if.then3075, %if.else3072
  br label %if.end3077

if.end3077:                                       ; preds = %if.end3076, %if.then3070
  %1693 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %1694 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %1695 = load i8*, i8** %y, align 4
  %call3078 = call %struct.linknode* @insertlinknode(%union.linkroot* %1693, %struct.linknode* %1694, i8* %1695)
  %1696 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %next3079 = getelementptr inbounds %struct.linknode, %struct.linknode* %1696, i32 0, i32 0
  %1697 = load %struct.linknode*, %struct.linknode** %next3079, align 4
  store %struct.linknode* %1697, %struct.linknode** %n.addr, align 4
  br label %while.cond3038

while.end3080:                                    ; preds = %while.cond3038
  %1698 = load i8**, i8*** %aval, align 4
  %1699 = load i32, i32* %i2791, align 4
  %arrayidx3081 = getelementptr inbounds i8*, i8** %1698, i32 %1699
  %1700 = load i8*, i8** %arrayidx3081, align 4
  store i8* %1700, i8** %x, align 4
  %1701 = load i32, i32* %prenum, align 4
  %tobool3082 = icmp ne i32 %1701, 0
  br i1 %tobool3082, label %if.then3085, label %lor.lhs.false3083

lor.lhs.false3083:                                ; preds = %while.end3080
  %1702 = load i32, i32* %postnum, align 4
  %tobool3084 = icmp ne i32 %1702, 0
  br i1 %tobool3084, label %if.then3085, label %if.end3087

if.then3085:                                      ; preds = %lor.lhs.false3083, %while.end3080
  %1703 = load i8*, i8** %x, align 4
  %1704 = load i32, i32* %prenum, align 4
  %1705 = load i32, i32* %postnum, align 4
  %1706 = load i8*, i8** %preone, align 4
  %1707 = load i8*, i8** %postone, align 4
  %1708 = load i8*, i8** %premul, align 4
  %1709 = load i8*, i8** %postmul, align 4
  %1710 = load i32, i32* %multi_width, align 4
  %call3086 = call i8* @dopadding(i8* %1703, i32 %1704, i32 %1705, i8* %1706, i8* %1707, i8* %1708, i8* %1709, i32 %1710)
  store i8* %call3086, i8** %x, align 4
  br label %if.end3087

if.end3087:                                       ; preds = %if.then3085, %lor.lhs.false3083
  %1711 = load i32, i32* %eval, align 4
  %tobool3088 = icmp ne i32 %1711, 0
  br i1 %tobool3088, label %land.lhs.true3089, label %if.end3100

land.lhs.true3089:                                ; preds = %if.end3087
  %1712 = load i32, i32* %qt.addr, align 4
  %tobool3090 = icmp ne i32 %1712, 0
  br i1 %tobool3090, label %land.rhs3091, label %land.end3095

land.rhs3091:                                     ; preds = %land.lhs.true3089
  %1713 = load i32, i32* %nojoin, align 4
  %tobool3092 = icmp ne i32 %1713, 0
  %lnot3093 = xor i1 %tobool3092, true
  br label %land.end3095

land.end3095:                                     ; preds = %land.rhs3091, %land.lhs.true3089
  %1714 = phi i1 [ false, %land.lhs.true3089 ], [ %lnot3093, %land.rhs3091 ]
  %land.ext3096 = zext i1 %1714 to i32
  %1715 = load i32, i32* %quoteerr, align 4
  %call3097 = call i32 @subst_parse_str(i8** %x, i32 %land.ext3096, i32 %1715)
  %tobool3098 = icmp ne i32 %call3097, 0
  br i1 %tobool3098, label %if.then3099, label %if.end3100

if.then3099:                                      ; preds = %land.end3095
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end3100:                                       ; preds = %land.end3095, %if.end3087
  %1716 = load i8*, i8** %x, align 4
  %call3101 = call i32 @strlen(i8* %1716)
  store i32 %call3101, i32* %xlen, align 4
  %1717 = load i8*, i8** %aptr, align 4
  %1718 = load i8*, i8** %aptr, align 4
  %1719 = load i8*, i8** %x, align 4
  %1720 = load i32, i32* %xlen, align 4
  %1721 = load i8*, i8** %fstr, align 4
  %1722 = load i32, i32* %globsubst, align 4
  %1723 = load i32, i32* %copied, align 4
  %call3102 = call i8* @strcatsub(i8** %y, i8* %1717, i8* %1718, i8* %1719, i32 %1720, i8* %1721, i32 %1722, i32 %1723)
  %1724 = load i8**, i8*** %str.addr, align 4
  store i8* %call3102, i8** %1724, align 4
  %1725 = load i32, i32* %qt.addr, align 4
  %tobool3103 = icmp ne i32 %1725, 0
  br i1 %tobool3103, label %land.lhs.true3104, label %if.end3111

land.lhs.true3104:                                ; preds = %if.end3100
  %1726 = load i8*, i8** %y, align 4
  %1727 = load i8, i8* %1726, align 1
  %tobool3105 = icmp ne i8 %1727, 0
  br i1 %tobool3105, label %if.end3111, label %land.lhs.true3106

land.lhs.true3106:                                ; preds = %land.lhs.true3104
  %1728 = load i32, i32* %isarr, align 4
  %cmp3107 = icmp ne i32 %1728, 2
  br i1 %cmp3107, label %if.then3109, label %if.end3111

if.then3109:                                      ; preds = %land.lhs.true3106
  %call3110 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0))
  store i8* %call3110, i8** %y, align 4
  br label %if.end3111

if.end3111:                                       ; preds = %if.then3109, %land.lhs.true3106, %land.lhs.true3104, %if.end3100
  %1729 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %1730 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %1731 = load i8*, i8** %y, align 4
  %call3112 = call %struct.linknode* @insertlinknode(%union.linkroot* %1729, %struct.linknode* %1730, i8* %1731)
  %1732 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %next3113 = getelementptr inbounds %struct.linknode, %struct.linknode* %1732, i32 0, i32 0
  %1733 = load %struct.linknode*, %struct.linknode** %next3113, align 4
  store %struct.linknode* %1733, %struct.linknode** %n.addr, align 4
  br label %if.end3114

if.end3114:                                       ; preds = %if.end3111, %if.end3004
  %1734 = load %struct.linknode*, %struct.linknode** %on, align 4
  store %struct.linknode* %1734, %struct.linknode** %n.addr, align 4
  %dat3115 = getelementptr inbounds %struct.linknode, %struct.linknode* %1734, i32 0, i32 2
  %1735 = load i8*, i8** %dat3115, align 4
  %1736 = load i8**, i8*** %str.addr, align 4
  store i8* %1735, i8** %1736, align 4
  br label %if.end3154

if.else3116:                                      ; preds = %if.end2784
  %1737 = load i8*, i8** %val, align 4
  store i8* %1737, i8** %x3120, align 4
  %1738 = load i8*, i8** %x3120, align 4
  %tobool3123 = icmp ne i8* %1738, null
  br i1 %tobool3123, label %if.end3125, label %if.then3124

if.then3124:                                      ; preds = %if.else3116
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end3125:                                       ; preds = %if.else3116
  %1739 = load i32, i32* %prenum, align 4
  %tobool3126 = icmp ne i32 %1739, 0
  br i1 %tobool3126, label %if.then3129, label %lor.lhs.false3127

lor.lhs.false3127:                                ; preds = %if.end3125
  %1740 = load i32, i32* %postnum, align 4
  %tobool3128 = icmp ne i32 %1740, 0
  br i1 %tobool3128, label %if.then3129, label %if.end3131

if.then3129:                                      ; preds = %lor.lhs.false3127, %if.end3125
  %1741 = load i8*, i8** %x3120, align 4
  %1742 = load i32, i32* %prenum, align 4
  %1743 = load i32, i32* %postnum, align 4
  %1744 = load i8*, i8** %preone, align 4
  %1745 = load i8*, i8** %postone, align 4
  %1746 = load i8*, i8** %premul, align 4
  %1747 = load i8*, i8** %postmul, align 4
  %1748 = load i32, i32* %multi_width, align 4
  %call3130 = call i8* @dopadding(i8* %1741, i32 %1742, i32 %1743, i8* %1744, i8* %1745, i8* %1746, i8* %1747, i32 %1748)
  store i8* %call3130, i8** %x3120, align 4
  br label %if.end3131

if.end3131:                                       ; preds = %if.then3129, %lor.lhs.false3127
  %1749 = load i32, i32* %eval, align 4
  %tobool3132 = icmp ne i32 %1749, 0
  br i1 %tobool3132, label %land.lhs.true3133, label %if.end3144

land.lhs.true3133:                                ; preds = %if.end3131
  %1750 = load i32, i32* %qt.addr, align 4
  %tobool3134 = icmp ne i32 %1750, 0
  br i1 %tobool3134, label %land.rhs3135, label %land.end3139

land.rhs3135:                                     ; preds = %land.lhs.true3133
  %1751 = load i32, i32* %nojoin, align 4
  %tobool3136 = icmp ne i32 %1751, 0
  %lnot3137 = xor i1 %tobool3136, true
  br label %land.end3139

land.end3139:                                     ; preds = %land.rhs3135, %land.lhs.true3133
  %1752 = phi i1 [ false, %land.lhs.true3133 ], [ %lnot3137, %land.rhs3135 ]
  %land.ext3140 = zext i1 %1752 to i32
  %1753 = load i32, i32* %quoteerr, align 4
  %call3141 = call i32 @subst_parse_str(i8** %x3120, i32 %land.ext3140, i32 %1753)
  %tobool3142 = icmp ne i32 %call3141, 0
  br i1 %tobool3142, label %if.then3143, label %if.end3144

if.then3143:                                      ; preds = %land.end3139
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end3144:                                       ; preds = %land.end3139, %if.end3131
  %1754 = load i8*, i8** %x3120, align 4
  %call3145 = call i32 @strlen(i8* %1754)
  store i32 %call3145, i32* %xlen3118, align 4
  %1755 = load i8*, i8** %ostr, align 4
  %1756 = load i8*, i8** %aptr, align 4
  %1757 = load i8*, i8** %x3120, align 4
  %1758 = load i32, i32* %xlen3118, align 4
  %1759 = load i8*, i8** %fstr, align 4
  %1760 = load i32, i32* %globsubst, align 4
  %1761 = load i32, i32* %copied, align 4
  %call3146 = call i8* @strcatsub(i8** %y3122, i8* %1755, i8* %1756, i8* %1757, i32 %1758, i8* %1759, i32 %1760, i32 %1761)
  %1762 = load i8**, i8*** %str.addr, align 4
  store i8* %call3146, i8** %1762, align 4
  %1763 = load i32, i32* %qt.addr, align 4
  %tobool3147 = icmp ne i32 %1763, 0
  br i1 %tobool3147, label %land.lhs.true3148, label %if.end3152

land.lhs.true3148:                                ; preds = %if.end3144
  %1764 = load i8*, i8** %y3122, align 4
  %1765 = load i8, i8* %1764, align 1
  %tobool3149 = icmp ne i8 %1765, 0
  br i1 %tobool3149, label %if.end3152, label %if.then3150

if.then3150:                                      ; preds = %land.lhs.true3148
  %call3151 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @nulstring, i32 0, i32 0))
  store i8* %call3151, i8** %y3122, align 4
  br label %if.end3152

if.end3152:                                       ; preds = %if.then3150, %land.lhs.true3148, %if.end3144
  %1766 = load i8*, i8** %y3122, align 4
  %1767 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat3153 = getelementptr inbounds %struct.linknode, %struct.linknode* %1767, i32 0, i32 2
  store i8* %1766, i8** %dat3153, align 4
  br label %if.end3154

if.end3154:                                       ; preds = %if.end3152, %if.end3114
  %1768 = load i32, i32* %eval, align 4
  %tobool3155 = icmp ne i32 %1768, 0
  br i1 %tobool3155, label %if.then3156, label %if.end3158

if.then3156:                                      ; preds = %if.end3154
  %1769 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  %dat3157 = getelementptr inbounds %struct.linknode, %struct.linknode* %1769, i32 0, i32 2
  %1770 = load i8*, i8** %dat3157, align 4
  %1771 = load i8**, i8*** %str.addr, align 4
  store i8* %1770, i8** %1771, align 4
  br label %if.end3158

if.end3158:                                       ; preds = %if.then3156, %if.end3154
  %1772 = load %struct.linknode*, %struct.linknode** %n.addr, align 4
  store %struct.linknode* %1772, %struct.linknode** %retval, align 4
  br label %return

return:                                           ; preds = %if.end3158, %if.then3143, %if.then3124, %if.then3099, %if.then3062, %if.then3024, %if.then3002, %if.then2936, %if.then2911, %if.end2856, %if.then2654, %if.then2580, %if.then2200, %if.then2159, %if.end2148, %if.then2072, %if.then1988, %if.then1944, %if.then1938, %if.then1926, %if.then1918, %if.then1903, %if.then1886, %if.then1849, %if.then1797, %if.then1759, %if.then1685, %if.then1677, %if.then1641, %if.then1615, %if.end1597, %noclosebrace, %if.then1141, %if.then740, %sw.default699, %if.else632, %if.then630, %flagerr, %if.then
  %1773 = load %struct.linknode*, %struct.linknode** %retval, align 4
  ret %struct.linknode* %1773
}

declare i8* @strncpy(i8*, i8*, i32) #1

declare %union.linkroot* @getoutput(i8*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

declare void @shtokenize(i8*) #1

declare i8* @strcpy(i8*, i8*) #1

declare void @insertlinklist(%union.linkroot*, %struct.linknode*, %union.linkroot*) #1

declare void @matheval(%struct.mnumber* sret, i8*) #1

declare i8* @convfloat_underscore(double, i32) #1

declare i8* @convbase_underscore(i8*, i32, i32, i32) #1

declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i8* @untok_and_escape(i8* %s, i32 %escapes, i32 %tok_arg) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %escapes.addr = alloca i32, align 4
  %tok_arg.addr = alloca i32, align 4
  %klen = alloca i32, align 4
  %dst = alloca i8*, align 4
  %pstart = alloca i8*, align 4
  %pend = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %escapes, i32* %escapes.addr, align 4
  store i32 %tok_arg, i32* %tok_arg.addr, align 4
  store i8* null, i8** %dst, align 4
  %0 = load i32, i32* %escapes.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, -123
  br i1 %cmp, label %land.lhs.true5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i8*, i8** %s.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, -116
  br i1 %cmp3, label %land.lhs.true5, label %if.end17

land.lhs.true5:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %6 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %if.then, label %if.end17

if.then:                                          ; preds = %land.lhs.true5
  %7 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %add.ptr, i8** %pstart, align 4
  %8 = load i8*, i8** %pstart, align 4
  store i8* %8, i8** %pend, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i8*, i8** %pend, align 4
  %10 = load i8, i8* %9, align 1
  %tobool8 = icmp ne i8 %10, 0
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %pend, align 4
  %12 = load i8, i8* %11, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx9 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %13 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %13 to i32
  %and = and i32 %conv10, 128
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i8*, i8** %pend, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %pend, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then12, %for.cond
  %15 = load i8*, i8** %pend, align 4
  %16 = load i8, i8* %15, align 1
  %tobool13 = icmp ne i8 %16, 0
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %for.end
  %17 = load i8*, i8** %pstart, align 4
  %call = call i8* @getsparam(i8* %17)
  %call15 = call i8* @dupstring(i8* %call)
  store i8* %call15, i8** %dst, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true5, %lor.lhs.false, %entry
  %18 = load i8*, i8** %dst, align 4
  %cmp18 = icmp eq i8* %18, null
  br i1 %cmp18, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end17
  %19 = load i8*, i8** %s.addr, align 4
  %call21 = call i8* @dupstring(i8* %19)
  store i8* %call21, i8** %dst, align 4
  call void @untokenize(i8* %call21)
  %20 = load i32, i32* %escapes.addr, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.then20
  %21 = load i8*, i8** %dst, align 4
  %call24 = call i8* @getkeystring(i8* %21, i32* %klen, i32 3, i32* null)
  store i8* %call24, i8** %dst, align 4
  %22 = load i8*, i8** %dst, align 4
  %23 = load i32, i32* %klen, align 4
  %call25 = call i8* @metafy(i8* %22, i32 %23, i32 7)
  store i8* %call25, i8** %dst, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end17
  %24 = load i32, i32* %tok_arg.addr, align 4
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  %25 = load i8*, i8** %dst, align 4
  call void @shtokenize(i8* %25)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  %26 = load i8*, i8** %dst, align 4
  ret i8* %26
}

declare i32 @memcmp(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @multsub(i8** %s, i32 %pf_flags, i8*** %a, i32* %isarr, i8* %sep, i32* %ms_flags) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8**, align 4
  %pf_flags.addr = alloca i32, align 4
  %a.addr = alloca i8***, align 4
  %isarr.addr = alloca i32*, align 4
  %sep.addr = alloca i8*, align 4
  %ms_flags.addr = alloca i32*, align 4
  %l = alloca i32, align 4
  %r = alloca i8**, align 4
  %p = alloca i8**, align 4
  %x = alloca i8*, align 4
  %foo = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  %c = alloca i8, align 1
  %n = alloca %struct.linknode*, align 4
  %inq = alloca i32, align 4
  %inp = alloca i32, align 4
  %rawc = alloca i32, align 4
  %c22 = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 %pf_flags, i32* %pf_flags.addr, align 4
  store i8*** %a, i8**** %a.addr, align 4
  store i32* %isarr, i32** %isarr.addr, align 4
  store i8* %sep, i8** %sep.addr, align 4
  store i32* %ms_flags, i32** %ms_flags.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %x, align 4
  %2 = load i32, i32* %pf_flags.addr, align 4
  %and = and i32 %2, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i8*, i8** %x, align 4
  %4 = load i8, i8* %3, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %x, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, -125
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %l, align 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i8*, i8** %x, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %8 to i32
  %xor = xor i32 %conv3, 32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i8*, i8** %x, align 4
  %10 = load i8, i8* %9, align 1
  %conv4 = sext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  store i8 %conv5, i8* %c, align 1
  %11 = load i32, i32* %l, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %l, align 4
  %12 = load i8, i8* %c, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx6 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %13 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %13 to i32
  %and8 = and i32 %conv7, 8192
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.end, label %if.then10

if.then10:                                        ; preds = %cond.end
  br label %for.end

if.end:                                           ; preds = %cond.end
  %14 = load i32*, i32** %ms_flags.addr, align 4
  %15 = load i32, i32* %14, align 4
  %or = or i32 %15, 1
  store i32 %or, i32* %14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %l, align 4
  %17 = load i8*, i8** %x, align 4
  %add.ptr = getelementptr inbounds i8, i8* %17, i32 %16
  store i8* %add.ptr, i8** %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then10, %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end11
  %list = bitcast %union.linkroot* %foo to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first, align 4
  %list12 = bitcast %union.linkroot* %foo to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list12, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4
  %list13 = bitcast %union.linkroot* %foo to %struct.linklist*
  %flags = getelementptr inbounds %struct.linklist, %struct.linklist* %list13, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next, align 4
  %node = bitcast %union.linkroot* %foo to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev, align 4
  %18 = load i8*, i8** %x, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 2
  store i8* %18, i8** %dat, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %19 = load i32, i32* %pf_flags.addr, align 4
  %and14 = and i32 %19, 8
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end79

if.then16:                                        ; preds = %do.end
  %list17 = bitcast %union.linkroot* %foo to %struct.linklist*
  %first18 = getelementptr inbounds %struct.linklist, %struct.linklist* %list17, i32 0, i32 0
  %20 = load %struct.linknode*, %struct.linknode** %first18, align 4
  store %struct.linknode* %20, %struct.linknode** %n, align 4
  store i32 0, i32* %inq, align 4
  store i32 0, i32* %inp, align 4
  call void @mb_charinit()
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc76, %if.then16
  %21 = load i8*, i8** %x, align 4
  %22 = load i8, i8* %21, align 1
  %tobool20 = icmp ne i8 %22, 0
  br i1 %tobool20, label %for.body21, label %for.end78

for.body21:                                       ; preds = %for.cond19
  store i32 -1, i32* %rawc, align 4
  %23 = load i8*, i8** %x, align 4
  %24 = load i8, i8* %23, align 1
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, -101
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body21
  %25 = load i8*, i8** %x, align 4
  store i8 45, i8* %25, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.body21
  %26 = load i8*, i8** %x, align 4
  %27 = load i8, i8* %26, align 1
  %idxprom28 = zext i8 %27 to i32
  %arrayidx29 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom28
  %28 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %28 to i32
  %and31 = and i32 %conv30, 16
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end27
  %29 = load i8*, i8** %x, align 4
  %30 = load i8, i8* %29, align 1
  %conv34 = sext i8 %30 to i32
  store i32 %conv34, i32* %rawc, align 4
  store i32 1, i32* %l, align 4
  br label %if.end68

if.else:                                          ; preds = %if.end27
  %31 = load i8*, i8** %x, align 4
  %call = call i32 @mb_metacharlenconv(i8* %31, i32* %c22)
  store i32 %call, i32* %l, align 4
  %32 = load i32, i32* %inq, align 4
  %tobool35 = icmp ne i32 %32, 0
  br i1 %tobool35, label %if.end67, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %33 = load i32, i32* %inp, align 4
  %tobool36 = icmp ne i32 %33, 0
  br i1 %tobool36, label %if.end67, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true
  %34 = load i32, i32* %c22, align 4
  %call38 = call i32 @wcsitype(i32 %34, i32 32)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end67

if.then40:                                        ; preds = %land.lhs.true37
  %35 = load i8*, i8** %x, align 4
  store i8 0, i8* %35, align 1
  %36 = load i32, i32* %l, align 4
  %37 = load i8*, i8** %x, align 4
  %add.ptr41 = getelementptr inbounds i8, i8* %37, i32 %36
  store i8* %add.ptr41, i8** %x, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc58, %if.then40
  %38 = load i8*, i8** %x, align 4
  %39 = load i8, i8* %38, align 1
  %tobool43 = icmp ne i8 %39, 0
  br i1 %tobool43, label %for.body44, label %for.end60

for.body44:                                       ; preds = %for.cond42
  %40 = load i8*, i8** %x, align 4
  %41 = load i8, i8* %40, align 1
  %idxprom45 = zext i8 %41 to i32
  %arrayidx46 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom45
  %42 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %42 to i32
  %and48 = and i32 %conv47, 16
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.body44
  %43 = load i8*, i8** %x, align 4
  %44 = load i8, i8* %43, align 1
  %conv51 = sext i8 %44 to i32
  store i32 %conv51, i32* %rawc, align 4
  store i32 1, i32* %l, align 4
  br label %for.end60

if.end52:                                         ; preds = %for.body44
  %45 = load i8*, i8** %x, align 4
  %call53 = call i32 @mb_metacharlenconv(i8* %45, i32* %c22)
  store i32 %call53, i32* %l, align 4
  %46 = load i32, i32* %c22, align 4
  %call54 = call i32 @wcsitype(i32 %46, i32 32)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end52
  br label %for.end60

if.end57:                                         ; preds = %if.end52
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %47 = load i32, i32* %l, align 4
  %48 = load i8*, i8** %x, align 4
  %add.ptr59 = getelementptr inbounds i8, i8* %48, i32 %47
  store i8* %add.ptr59, i8** %x, align 4
  br label %for.cond42

for.end60:                                        ; preds = %if.then56, %if.then50, %for.cond42
  %49 = load i8*, i8** %x, align 4
  %50 = load i8, i8* %49, align 1
  %tobool61 = icmp ne i8 %50, 0
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %for.end60
  %51 = load i32*, i32** %ms_flags.addr, align 4
  %52 = load i32, i32* %51, align 4
  %or63 = or i32 %52, 2
  store i32 %or63, i32* %51, align 4
  br label %for.end78

if.end64:                                         ; preds = %for.end60
  %53 = load %struct.linknode*, %struct.linknode** %n, align 4
  %54 = load i8*, i8** %x, align 4
  %call65 = call %struct.linknode* @insertlinknode(%union.linkroot* %foo, %struct.linknode* %53, i8* %54)
  %55 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next66 = getelementptr inbounds %struct.linknode, %struct.linknode* %55, i32 0, i32 0
  %56 = load %struct.linknode*, %struct.linknode** %next66, align 4
  store %struct.linknode* %56, %struct.linknode** %n, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %land.lhs.true37, %land.lhs.true, %if.else
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then33
  %57 = load i32, i32* %rawc, align 4
  switch i32 %57, label %sw.epilog [
    i32 -98, label %sw.bb
    i32 -99, label %sw.bb
    i32 -109, label %sw.bb
    i32 -120, label %sw.bb70
    i32 -118, label %sw.bb72
    i32 -97, label %sw.bb73
    i32 -96, label %sw.bb73
  ]

sw.bb:                                            ; preds = %if.end68, %if.end68, %if.end68
  %58 = load i32, i32* %inq, align 4
  %tobool69 = icmp ne i32 %58, 0
  %lnot = xor i1 %tobool69, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %inq, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end68
  %59 = load i32, i32* %inp, align 4
  %inc71 = add nsw i32 %59, 1
  store i32 %inc71, i32* %inp, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end68
  %60 = load i32, i32* %inp, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %inp, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end68, %if.end68
  %61 = load i32, i32* %l, align 4
  %62 = load i8*, i8** %x, align 4
  %add.ptr74 = getelementptr inbounds i8, i8* %62, i32 %61
  store i8* %add.ptr74, i8** %x, align 4
  %63 = load i8*, i8** %x, align 4
  %call75 = call i32 @mb_metacharlenconv(i8* %63, i32* null)
  store i32 %call75, i32* %l, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end68, %sw.bb73, %sw.bb72, %sw.bb70, %sw.bb
  br label %for.inc76

for.inc76:                                        ; preds = %sw.epilog
  %64 = load i32, i32* %l, align 4
  %65 = load i8*, i8** %x, align 4
  %add.ptr77 = getelementptr inbounds i8, i8* %65, i32 %64
  store i8* %add.ptr77, i8** %x, align 4
  br label %for.cond19

for.end78:                                        ; preds = %if.then62, %for.cond19
  br label %if.end79

if.end79:                                         ; preds = %for.end78, %do.end
  %66 = load i32, i32* %pf_flags.addr, align 4
  %67 = load i32*, i32** %ms_flags.addr, align 4
  call void @prefork(%union.linkroot* %foo, i32 %66, i32* %67)
  %68 = load i32, i32* @errflag, align 4
  %tobool80 = icmp ne i32 %68, 0
  br i1 %tobool80, label %if.then81, label %if.end85

if.then81:                                        ; preds = %if.end79
  %69 = load i32*, i32** %isarr.addr, align 4
  %tobool82 = icmp ne i32* %69, null
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then81
  %70 = load i32*, i32** %isarr.addr, align 4
  store i32 0, i32* %70, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.then81
  store i32 0, i32* %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end79
  %call86 = call i32 @countlinknodes(%union.linkroot* %foo)
  store i32 %call86, i32* %l, align 4
  %cmp87 = icmp sgt i32 %call86, 1
  br i1 %cmp87, label %if.then95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end85
  %list89 = bitcast %union.linkroot* %foo to %struct.linklist*
  %flags90 = getelementptr inbounds %struct.linklist, %struct.linklist* %list89, i32 0, i32 2
  %71 = load i32, i32* %flags90, align 4
  %and91 = and i32 %71, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %land.lhs.true93, label %if.end117

land.lhs.true93:                                  ; preds = %lor.lhs.false
  %72 = load i8***, i8**** %a.addr, align 4
  %tobool94 = icmp ne i8*** %72, null
  br i1 %tobool94, label %if.then95, label %if.end117

if.then95:                                        ; preds = %land.lhs.true93, %if.end85
  %73 = load i32, i32* %l, align 4
  %add = add nsw i32 %73, 1
  %mul = mul i32 %add, 4
  %call96 = call i8* @hcalloc(i32 %mul)
  %74 = bitcast i8* %call96 to i8**
  store i8** %74, i8*** %r, align 4
  store i8** %74, i8*** %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then95
  %list97 = bitcast %union.linkroot* %foo to %struct.linklist*
  %first98 = getelementptr inbounds %struct.linklist, %struct.linklist* %list97, i32 0, i32 0
  %75 = load %struct.linknode*, %struct.linknode** %first98, align 4
  %cmp99 = icmp ne %struct.linknode* %75, null
  br i1 %cmp99, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call101 = call i8* @ugetnode(%union.linkroot* %foo)
  %76 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  store i8* %call101, i8** %76, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load i8**, i8*** %p, align 4
  store i8* null, i8** %77, align 4
  %78 = load i8***, i8**** %a.addr, align 4
  %tobool102 = icmp ne i8*** %78, null
  br i1 %tobool102, label %land.lhs.true103, label %if.end112

land.lhs.true103:                                 ; preds = %while.end
  %79 = load i32, i32* %l, align 4
  %cmp104 = icmp sgt i32 %79, 1
  br i1 %cmp104, label %if.then111, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %land.lhs.true103
  %list107 = bitcast %union.linkroot* %foo to %struct.linklist*
  %flags108 = getelementptr inbounds %struct.linklist, %struct.linklist* %list107, i32 0, i32 2
  %80 = load i32, i32* %flags108, align 4
  %and109 = and i32 %80, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %lor.lhs.false106, %land.lhs.true103
  %81 = load i8**, i8*** %r, align 4
  %82 = load i8***, i8**** %a.addr, align 4
  store i8** %81, i8*** %82, align 4
  %83 = load i32*, i32** %isarr.addr, align 4
  store i32 32, i32* %83, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end112:                                        ; preds = %lor.lhs.false106, %while.end
  %84 = load i8**, i8*** %r, align 4
  %85 = load i8*, i8** %sep.addr, align 4
  %call113 = call i8* @sepjoin(i8** %84, i8* %85, i32 1)
  %86 = load i8**, i8*** %s.addr, align 4
  store i8* %call113, i8** %86, align 4
  %87 = load i32*, i32** %isarr.addr, align 4
  %tobool114 = icmp ne i32* %87, null
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end112
  %88 = load i32*, i32** %isarr.addr, align 4
  store i32 0, i32* %88, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end112
  store i32 0, i32* %retval, align 4
  br label %return

if.end117:                                        ; preds = %land.lhs.true93, %lor.lhs.false
  %89 = load i32, i32* %l, align 4
  %tobool118 = icmp ne i32 %89, 0
  br i1 %tobool118, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.end117
  %call120 = call i8* @ugetnode(%union.linkroot* %foo)
  %90 = load i8**, i8*** %s.addr, align 4
  store i8* %call120, i8** %90, align 4
  br label %if.end123

if.else121:                                       ; preds = %if.end117
  %call122 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %91 = load i8**, i8*** %s.addr, align 4
  store i8* %call122, i8** %91, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.then119
  %92 = load i32*, i32** %isarr.addr, align 4
  %tobool124 = icmp ne i32* %92, null
  br i1 %tobool124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end123
  %93 = load i32*, i32** %isarr.addr, align 4
  store i32 0, i32* %93, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end123
  %94 = load i32, i32* %l, align 4
  %tobool127 = icmp ne i32 %94, 0
  %lnot128 = xor i1 %tobool127, true
  %lnot.ext129 = zext i1 %lnot128 to i32
  store i32 %lnot.ext129, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end126, %if.end116, %if.then111, %if.end84
  %95 = load i32, i32* %retval, align 4
  ret i32 %95
}

declare %struct.value* @fetchvalue(%struct.value*, i8**, i32, i32) #1

declare i8* @getstrvalue(%struct.value*) #1

declare %struct.param* @createparam(i8*, i32) #1

declare i32 @getindex(i8**, %struct.value*, i32) #1

declare i8** @getarrvalue(%struct.value*) #1

declare i32 @arrlen(i8**) #1

declare signext i8 @arrlen_le(i8**, i32) #1

declare i8* @sepjoin(i8**, i8*, i32) #1

declare i8** @sepsplit(i8*, i8*, i32, i32) #1

declare i8* @zalloc(i32) #1

declare %struct.param* @sethparam(i8*, i8**) #1

declare i8** @paramvalarr(%struct.hashtable*, i32) #1

declare %struct.param* @setaparam(i8*, i8**) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i32 @getpid() #1

declare void @zexit(i32, i32) #1

; Function Attrs: noreturn
declare void @_exit(i32) #3

declare i8** @arrdup(i8**) #1

declare void @getmatcharr(i8***, i8*, i32, i32, i8*) #1

declare i32 @getmatch(i8**, i8*, i32, i32, i8*) #1

declare i8** @getaparam(i8*) #1

declare i8* @getsparam(i8*) #1

declare i8** @hmkarray(i8*) #1

declare i8** @mkarray(i8*) #1

declare %struct.hashtable* @newuniqtable(i32) #1

declare %struct.hashnode* @addhashnode2(%struct.hashtable*, i8*, i8*) #1

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*) #1

declare void @deletehashtable(%struct.hashtable*) #1

; Function Attrs: noinline nounwind
define internal i8* @check_colon_subscript(i8* %str, i8** %endp) #0 {
entry:
  %retval = alloca i8*, align 4
  %str.addr = alloca i8*, align 4
  %endp.addr = alloca i8**, align 4
  %sav = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i8** %endp, i8*** %endp.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 4
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, 64
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load i8*, i8** %str.addr, align 4
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 38
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load i8*, i8** %str.addr, align 4
  %call = call i8* @parse_subscript(i8* %7, i32 0, i32 58)
  %8 = load i8**, i8*** %endp.addr, align 4
  store i8* %call, i8** %8, align 4
  %9 = load i8**, i8*** %endp.addr, align 4
  %10 = load i8*, i8** %9, align 4
  %tobool5 = icmp ne i8* %10, null
  br i1 %tobool5, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %11 = load i8*, i8** %str.addr, align 4
  %call7 = call i8* @parse_subscript(i8* %11, i32 0, i32 0)
  %12 = load i8**, i8*** %endp.addr, align 4
  store i8* %call7, i8** %12, align 4
  %13 = load i8**, i8*** %endp.addr, align 4
  %14 = load i8*, i8** %13, align 4
  %tobool8 = icmp ne i8* %14, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  store i8* null, i8** %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %15 = load i8**, i8*** %endp.addr, align 4
  %16 = load i8*, i8** %15, align 4
  %17 = load i8, i8* %16, align 1
  %conv12 = sext i8 %17 to i32
  store i32 %conv12, i32* %sav, align 4
  %18 = load i8**, i8*** %endp.addr, align 4
  %19 = load i8*, i8** %18, align 4
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %str.addr, align 4
  %call13 = call i8* @dupstring(i8* %20)
  store i8* %call13, i8** %str.addr, align 4
  %call14 = call i32 @parsestr(i8** %str.addr)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  store i8* null, i8** %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end11
  call void @singsub(i8** %str.addr)
  %21 = load i8*, i8** %str.addr, align 4
  call void @remnulargs(i8* %21)
  %22 = load i8*, i8** %str.addr, align 4
  call void @untokenize(i8* %22)
  %23 = load i32, i32* %sav, align 4
  %conv18 = trunc i32 %23 to i8
  %24 = load i8**, i8*** %endp.addr, align 4
  %25 = load i8*, i8** %24, align 4
  store i8 %conv18, i8* %25, align 1
  %26 = load i8*, i8** %str.addr, align 4
  store i8* %26, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then9, %if.then
  %27 = load i8*, i8** %retval, align 4
  ret i8* %27
}

declare i32 @mathevali(i8*) #1

; Function Attrs: noinline nounwind
define internal i8* @substevalchar(i8* %ptr) #0 {
entry:
  %retval = alloca i8*, align 4
  %ptr.addr = alloca i8*, align 4
  %ires = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca [11 x i8], align 1
  store i8* %ptr, i8** %ptr.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 4
  %call = call i32 @mathevali(i8* %0)
  store i32 %call, i32* %ires, align 4
  store i32 0, i32* %len, align 4
  %1 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %ires, align 4
  %cmp = icmp sgt i32 %3, 127
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %buf, i32 0, i32 0
  %4 = load i32, i32* %ires, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %4)
  %arraydecay5 = getelementptr inbounds [11 x i8], [11 x i8]* %buf, i32 0, i32 0
  %call6 = call i8* @getkeystring(i8* %arraydecay5, i32* %len, i32 7, i32* null)
  store i8* %call6, i8** %ptr.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %5 = load i32, i32* %len, align 4
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  %call11 = call i8* @zhalloc(i32 2)
  store i8* %call11, i8** %ptr.addr, align 4
  store i32 1, i32* %len, align 4
  %6 = load i8*, i8** %ptr.addr, align 4
  %7 = load i32, i32* %ires, align 4
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i32 %7)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %8 = load i8*, i8** %ptr.addr, align 4
  %9 = load i32, i32* %len, align 4
  %call14 = call i8* @metafy(i8* %8, i32 %9, i32 1)
  store i8* %call14, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %10 = load i8*, i8** %retval, align 4
  ret i8* %10
}

declare i32 @mb_metastrlenend(i8*, i32, i8*) #1

declare i32 @wordcount(i8*, i8*, i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @getkeystring(i8*, i32*, i32, i32*) #1

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*) #1

declare void @free(i8*) #1

declare i8* @quotedzputs(i8*, %struct._IO_FILE*) #1

declare i8* @substnamedir(i8*) #1

declare i8* @nicedupstring(i8*) #1

declare %union.linkroot* @bufferwords(%union.linkroot*, i8*, i32*, i32) #1

declare i8** @hlinklist2array(%union.linkroot*, i32) #1

declare void @zhuniqarray(i8**) #1

declare void @strmetasort(i8**, i32, i32*) #1

; Function Attrs: noinline nounwind
define internal i8* @dopadding(i8* %str, i32 %prenum, i32 %postnum, i8* %preone, i8* %postone, i8* %premul, i8* %postmul, i32 %multi_width) #0 {
entry:
  %retval = alloca i8*, align 4
  %str.addr = alloca i8*, align 4
  %prenum.addr = alloca i32, align 4
  %postnum.addr = alloca i32, align 4
  %preone.addr = alloca i8*, align 4
  %postone.addr = alloca i8*, align 4
  %premul.addr = alloca i8*, align 4
  %postmul.addr = alloca i8*, align 4
  %multi_width.addr = alloca i32, align 4
  %def = alloca i8*, align 4
  %ret = alloca i8*, align 4
  %t = alloca i8*, align 4
  %r = alloca i8*, align 4
  %ls = alloca i32, align 4
  %ls2 = alloca i32, align 4
  %lpreone = alloca i32, align 4
  %lpostone = alloca i32, align 4
  %lpremul = alloca i32, align 4
  %lpostmul = alloca i32, align 4
  %lr = alloca i32, align 4
  %f = alloca i32, align 4
  %m = alloca i32, align 4
  %c = alloca i32, align 4
  %cc = alloca i32, align 4
  %cl = alloca i32, align 4
  %cchar = alloca i32, align 4
  %tmpifs = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %prenum, i32* %prenum.addr, align 4
  store i32 %postnum, i32* %postnum.addr, align 4
  store i8* %preone, i8** %preone.addr, align 4
  store i8* %postone, i8** %postone.addr, align 4
  store i8* %premul, i8** %premul.addr, align 4
  store i8* %postmul, i8** %postmul.addr, align 4
  store i32 %multi_width, i32* %multi_width.addr, align 4
  call void @mb_charinit()
  %0 = load i8*, i8** @ifs, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @ifs, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** @ifs, align 4
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i8*, i8** @ifs, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %tmpifs, align 4
  %5 = load i8*, i8** %tmpifs, align 4
  %6 = load i8*, i8** %tmpifs, align 4
  %call = call i32 @mb_metacharlenconv(i8* %6, i32* null)
  %call3 = call i8* @dupstrpfx(i8* %5, i32 %call)
  store i8* %call3, i8** %def, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %def, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %7 = load i8*, i8** %preone.addr, align 4
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %preone.addr, align 4
  %9 = load i8, i8* %8, align 1
  %tobool5 = icmp ne i8 %9, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %10 = load i8*, i8** %def, align 4
  store i8* %10, i8** %preone.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %11 = load i8*, i8** %postone.addr, align 4
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %land.lhs.true9, label %if.end12

land.lhs.true9:                                   ; preds = %if.end7
  %12 = load i8*, i8** %postone.addr, align 4
  %13 = load i8, i8* %12, align 1
  %tobool10 = icmp ne i8 %13, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  %14 = load i8*, i8** %def, align 4
  store i8* %14, i8** %postone.addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true9, %if.end7
  %15 = load i8*, i8** %premul.addr, align 4
  %tobool13 = icmp ne i8* %15, null
  br i1 %tobool13, label %lor.lhs.false14, label %if.then16

lor.lhs.false14:                                  ; preds = %if.end12
  %16 = load i8*, i8** %premul.addr, align 4
  %17 = load i8, i8* %16, align 1
  %tobool15 = icmp ne i8 %17, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false14, %if.end12
  %18 = load i8*, i8** %def, align 4
  store i8* %18, i8** %premul.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false14
  %19 = load i8*, i8** %postmul.addr, align 4
  %tobool18 = icmp ne i8* %19, null
  br i1 %tobool18, label %lor.lhs.false19, label %if.then21

lor.lhs.false19:                                  ; preds = %if.end17
  %20 = load i8*, i8** %postmul.addr, align 4
  %21 = load i8, i8* %20, align 1
  %tobool20 = icmp ne i8 %21, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false19, %if.end17
  %22 = load i8*, i8** %def, align 4
  store i8* %22, i8** %postmul.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false19
  %23 = load i8*, i8** %str.addr, align 4
  %24 = load i32, i32* %multi_width.addr, align 4
  %call23 = call i32 @mb_metastrlenend(i8* %23, i32 %24, i8* null)
  store i32 %call23, i32* %ls, align 4
  %25 = load i8*, i8** %preone.addr, align 4
  %tobool24 = icmp ne i8* %25, null
  br i1 %tobool24, label %cond.true25, label %cond.false27

cond.true25:                                      ; preds = %if.end22
  %26 = load i8*, i8** %preone.addr, align 4
  %27 = load i32, i32* %multi_width.addr, align 4
  %call26 = call i32 @mb_metastrlenend(i8* %26, i32 %27, i8* null)
  br label %cond.end28

cond.false27:                                     ; preds = %if.end22
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.true25
  %cond29 = phi i32 [ %call26, %cond.true25 ], [ 0, %cond.false27 ]
  store i32 %cond29, i32* %lpreone, align 4
  %28 = load i8*, i8** %postone.addr, align 4
  %tobool30 = icmp ne i8* %28, null
  br i1 %tobool30, label %cond.true31, label %cond.false33

cond.true31:                                      ; preds = %cond.end28
  %29 = load i8*, i8** %postone.addr, align 4
  %30 = load i32, i32* %multi_width.addr, align 4
  %call32 = call i32 @mb_metastrlenend(i8* %29, i32 %30, i8* null)
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end28
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.true31
  %cond35 = phi i32 [ %call32, %cond.true31 ], [ 0, %cond.false33 ]
  store i32 %cond35, i32* %lpostone, align 4
  %31 = load i8*, i8** %premul.addr, align 4
  %32 = load i32, i32* %multi_width.addr, align 4
  %call36 = call i32 @mb_metastrlenend(i8* %31, i32 %32, i8* null)
  store i32 %call36, i32* %lpremul, align 4
  %33 = load i8*, i8** %postmul.addr, align 4
  %34 = load i32, i32* %multi_width.addr, align 4
  %call37 = call i32 @mb_metastrlenend(i8* %33, i32 %34, i8* null)
  store i32 %call37, i32* %lpostmul, align 4
  %35 = load i32, i32* %prenum.addr, align 4
  %36 = load i32, i32* %postnum.addr, align 4
  %add = add nsw i32 %35, %36
  %37 = load i32, i32* %ls, align 4
  %cmp = icmp eq i32 %add, %37
  br i1 %cmp, label %if.then39, label %if.end40

if.then39:                                        ; preds = %cond.end34
  %38 = load i8*, i8** %str.addr, align 4
  store i8* %38, i8** %retval, align 4
  br label %return

if.end40:                                         ; preds = %cond.end34
  %39 = load i8*, i8** %str.addr, align 4
  %call41 = call i32 @strlen(i8* %39)
  %40 = load i8*, i8** %premul.addr, align 4
  %call42 = call i32 @strlen(i8* %40)
  %41 = load i32, i32* %prenum.addr, align 4
  %mul = mul i32 %call42, %41
  %add43 = add i32 %call41, %mul
  %42 = load i8*, i8** %postmul.addr, align 4
  %call44 = call i32 @strlen(i8* %42)
  %43 = load i32, i32* %postnum.addr, align 4
  %mul45 = mul i32 %call44, %43
  %add46 = add i32 %add43, %mul45
  store i32 %add46, i32* %lr, align 4
  %44 = load i8*, i8** %preone.addr, align 4
  %tobool47 = icmp ne i8* %44, null
  br i1 %tobool47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end40
  %45 = load i8*, i8** %preone.addr, align 4
  %call49 = call i32 @strlen(i8* %45)
  %46 = load i32, i32* %lr, align 4
  %add50 = add i32 %46, %call49
  store i32 %add50, i32* %lr, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end40
  %47 = load i8*, i8** %postone.addr, align 4
  %tobool52 = icmp ne i8* %47, null
  br i1 %tobool52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end51
  %48 = load i8*, i8** %postone.addr, align 4
  %call54 = call i32 @strlen(i8* %48)
  %49 = load i32, i32* %lr, align 4
  %add55 = add i32 %49, %call54
  store i32 %add55, i32* %lr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51
  %50 = load i32, i32* %lr, align 4
  %add57 = add nsw i32 %50, 1
  %call58 = call i8* @zhalloc(i32 %add57)
  store i8* %call58, i8** %ret, align 4
  store i8* %call58, i8** %r, align 4
  %51 = load i32, i32* %prenum.addr, align 4
  %tobool59 = icmp ne i32 %51, 0
  br i1 %tobool59, label %if.then60, label %if.else442

if.then60:                                        ; preds = %if.end56
  %52 = load i32, i32* %postnum.addr, align 4
  %tobool61 = icmp ne i32 %52, 0
  br i1 %tobool61, label %if.then62, label %if.else298

if.then62:                                        ; preds = %if.then60
  %53 = load i32, i32* %ls, align 4
  %div = sdiv i32 %53, 2
  store i32 %div, i32* %ls2, align 4
  %54 = load i32, i32* %prenum.addr, align 4
  %55 = load i32, i32* %ls2, align 4
  %sub = sub nsw i32 %54, %55
  store i32 %sub, i32* %f, align 4
  %56 = load i32, i32* %f, align 4
  %cmp63 = icmp sle i32 %56, 0
  br i1 %cmp63, label %if.then65, label %if.else88

if.then65:                                        ; preds = %if.then62
  %57 = load i32, i32* %f, align 4
  %sub66 = sub nsw i32 0, %57
  store i32 %sub66, i32* %f, align 4
  call void @mb_charinit()
  br label %while.cond

while.cond:                                       ; preds = %if.end72, %if.then65
  %58 = load i32, i32* %f, align 4
  %cmp67 = icmp sgt i32 %58, 0
  br i1 %cmp67, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %59 = load i8*, i8** %str.addr, align 4
  %call69 = call i32 @mb_metacharlenconv(i8* %59, i32* %cchar)
  store i32 %call69, i32* %cl, align 4
  %60 = load i32, i32* %cl, align 4
  %tobool70 = icmp ne i32 %60, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %while.body
  br label %while.end

if.end72:                                         ; preds = %while.body
  %61 = load i32, i32* %cl, align 4
  %62 = load i8*, i8** %str.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %62, i32 %61
  store i8* %add.ptr, i8** %str.addr, align 4
  %63 = load i32, i32* %cchar, align 4
  %64 = load i32, i32* %multi_width.addr, align 4
  %call73 = call i32 @wcpadwidth(i32 %63, i32 %64)
  %65 = load i32, i32* %f, align 4
  %sub74 = sub nsw i32 %65, %call73
  store i32 %sub74, i32* %f, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then71, %while.cond
  %66 = load i32, i32* %prenum.addr, align 4
  store i32 %66, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end85, %while.end
  %67 = load i32, i32* %c, align 4
  %cmp75 = icmp sgt i32 %67, 0
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i8*, i8** %str.addr, align 4
  %call77 = call i32 @mb_metacharlenconv(i8* %68, i32* %cchar)
  store i32 %call77, i32* %cl, align 4
  %69 = load i32, i32* %cl, align 4
  %tobool78 = icmp ne i32 %69, 0
  br i1 %tobool78, label %if.end80, label %if.then79

if.then79:                                        ; preds = %for.body
  br label %for.end

if.end80:                                         ; preds = %for.body
  br label %while.cond81

while.cond81:                                     ; preds = %while.body83, %if.end80
  %70 = load i32, i32* %cl, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %cl, align 4
  %tobool82 = icmp ne i32 %70, 0
  br i1 %tobool82, label %while.body83, label %while.end85

while.body83:                                     ; preds = %while.cond81
  %71 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %r, align 4
  %incdec.ptr84 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr84, i8** %r, align 4
  store i8 %72, i8* %73, align 1
  br label %while.cond81

while.end85:                                      ; preds = %while.cond81
  %74 = load i32, i32* %cchar, align 4
  %75 = load i32, i32* %multi_width.addr, align 4
  %call86 = call i32 @wcpadwidth(i32 %74, i32 %75)
  %76 = load i32, i32* %c, align 4
  %sub87 = sub nsw i32 %76, %call86
  store i32 %sub87, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then79, %for.cond
  br label %if.end193

if.else88:                                        ; preds = %if.then62
  %77 = load i32, i32* %f, align 4
  %78 = load i32, i32* %lpreone, align 4
  %cmp89 = icmp sle i32 %77, %78
  br i1 %cmp89, label %if.then91, label %if.else114

if.then91:                                        ; preds = %if.else88
  %79 = load i8*, i8** %preone.addr, align 4
  %tobool92 = icmp ne i8* %79, null
  br i1 %tobool92, label %if.then93, label %if.end113

if.then93:                                        ; preds = %if.then91
  call void @mb_charinit()
  %80 = load i32, i32* %lpreone, align 4
  %81 = load i32, i32* %f, align 4
  %sub94 = sub nsw i32 %80, %81
  store i32 %sub94, i32* %f, align 4
  %82 = load i8*, i8** %preone.addr, align 4
  store i8* %82, i8** %t, align 4
  br label %for.cond95

for.cond95:                                       ; preds = %if.end102, %if.then93
  %83 = load i32, i32* %f, align 4
  %cmp96 = icmp sgt i32 %83, 0
  br i1 %cmp96, label %for.body98, label %for.end106

for.body98:                                       ; preds = %for.cond95
  %84 = load i8*, i8** %t, align 4
  %call99 = call i32 @mb_metacharlenconv(i8* %84, i32* %cchar)
  store i32 %call99, i32* %cl, align 4
  %85 = load i32, i32* %cl, align 4
  %tobool100 = icmp ne i32 %85, 0
  br i1 %tobool100, label %if.end102, label %if.then101

if.then101:                                       ; preds = %for.body98
  br label %for.end106

if.end102:                                        ; preds = %for.body98
  %86 = load i32, i32* %cl, align 4
  %87 = load i8*, i8** %t, align 4
  %add.ptr103 = getelementptr inbounds i8, i8* %87, i32 %86
  store i8* %add.ptr103, i8** %t, align 4
  %88 = load i32, i32* %cchar, align 4
  %89 = load i32, i32* %multi_width.addr, align 4
  %call104 = call i32 @wcpadwidth(i32 %88, i32 %89)
  %90 = load i32, i32* %f, align 4
  %sub105 = sub nsw i32 %90, %call104
  store i32 %sub105, i32* %f, align 4
  br label %for.cond95

for.end106:                                       ; preds = %if.then101, %for.cond95
  br label %while.cond107

while.cond107:                                    ; preds = %while.body109, %for.end106
  %91 = load i8*, i8** %t, align 4
  %92 = load i8, i8* %91, align 1
  %tobool108 = icmp ne i8 %92, 0
  br i1 %tobool108, label %while.body109, label %while.end112

while.body109:                                    ; preds = %while.cond107
  %93 = load i8*, i8** %t, align 4
  %incdec.ptr110 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr110, i8** %t, align 4
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %r, align 4
  %incdec.ptr111 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr111, i8** %r, align 4
  store i8 %94, i8* %95, align 1
  br label %while.cond107

while.end112:                                     ; preds = %while.cond107
  br label %if.end113

if.end113:                                        ; preds = %while.end112, %if.then91
  br label %if.end174

if.else114:                                       ; preds = %if.else88
  %96 = load i32, i32* %lpreone, align 4
  %97 = load i32, i32* %f, align 4
  %sub115 = sub nsw i32 %97, %96
  store i32 %sub115, i32* %f, align 4
  %98 = load i32, i32* %lpremul, align 4
  %tobool116 = icmp ne i32 %98, 0
  br i1 %tobool116, label %if.then117, label %if.end164

if.then117:                                       ; preds = %if.else114
  %99 = load i32, i32* %f, align 4
  %100 = load i32, i32* %lpremul, align 4
  %rem = srem i32 %99, %100
  store i32 %rem, i32* %m, align 4
  %tobool118 = icmp ne i32 %rem, 0
  br i1 %tobool118, label %if.then119, label %if.end139

if.then119:                                       ; preds = %if.then117
  call void @mb_charinit()
  %101 = load i32, i32* %lpremul, align 4
  %102 = load i32, i32* %m, align 4
  %sub120 = sub nsw i32 %101, %102
  store i32 %sub120, i32* %m, align 4
  %103 = load i8*, i8** %premul.addr, align 4
  store i8* %103, i8** %t, align 4
  br label %for.cond121

for.cond121:                                      ; preds = %if.end128, %if.then119
  %104 = load i32, i32* %m, align 4
  %cmp122 = icmp sgt i32 %104, 0
  br i1 %cmp122, label %for.body124, label %for.end132

for.body124:                                      ; preds = %for.cond121
  %105 = load i8*, i8** %t, align 4
  %call125 = call i32 @mb_metacharlenconv(i8* %105, i32* %cchar)
  store i32 %call125, i32* %cl, align 4
  %106 = load i32, i32* %cl, align 4
  %tobool126 = icmp ne i32 %106, 0
  br i1 %tobool126, label %if.end128, label %if.then127

if.then127:                                       ; preds = %for.body124
  br label %for.end132

if.end128:                                        ; preds = %for.body124
  %107 = load i32, i32* %cl, align 4
  %108 = load i8*, i8** %t, align 4
  %add.ptr129 = getelementptr inbounds i8, i8* %108, i32 %107
  store i8* %add.ptr129, i8** %t, align 4
  %109 = load i32, i32* %cchar, align 4
  %110 = load i32, i32* %multi_width.addr, align 4
  %call130 = call i32 @wcpadwidth(i32 %109, i32 %110)
  %111 = load i32, i32* %m, align 4
  %sub131 = sub nsw i32 %111, %call130
  store i32 %sub131, i32* %m, align 4
  br label %for.cond121

for.end132:                                       ; preds = %if.then127, %for.cond121
  br label %while.cond133

while.cond133:                                    ; preds = %while.body135, %for.end132
  %112 = load i8*, i8** %t, align 4
  %113 = load i8, i8* %112, align 1
  %tobool134 = icmp ne i8 %113, 0
  br i1 %tobool134, label %while.body135, label %while.end138

while.body135:                                    ; preds = %while.cond133
  %114 = load i8*, i8** %t, align 4
  %incdec.ptr136 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr136, i8** %t, align 4
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %r, align 4
  %incdec.ptr137 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr137, i8** %r, align 4
  store i8 %115, i8* %116, align 1
  br label %while.cond133

while.end138:                                     ; preds = %while.cond133
  br label %if.end139

if.end139:                                        ; preds = %while.end138, %if.then117
  %117 = load i32, i32* %f, align 4
  %118 = load i32, i32* %lpremul, align 4
  %div140 = sdiv i32 %117, %118
  store i32 %div140, i32* %cc, align 4
  br label %for.cond141

for.cond141:                                      ; preds = %for.end162, %if.end139
  %119 = load i32, i32* %cc, align 4
  %dec142 = add nsw i32 %119, -1
  store i32 %dec142, i32* %cc, align 4
  %tobool143 = icmp ne i32 %119, 0
  br i1 %tobool143, label %for.body144, label %for.end163

for.body144:                                      ; preds = %for.cond141
  call void @mb_charinit()
  %120 = load i32, i32* %lpremul, align 4
  store i32 %120, i32* %c, align 4
  %121 = load i8*, i8** %premul.addr, align 4
  store i8* %121, i8** %t, align 4
  br label %for.cond145

for.cond145:                                      ; preds = %while.end159, %for.body144
  %122 = load i32, i32* %c, align 4
  %cmp146 = icmp sgt i32 %122, 0
  br i1 %cmp146, label %for.body148, label %for.end162

for.body148:                                      ; preds = %for.cond145
  %123 = load i8*, i8** %t, align 4
  %call149 = call i32 @mb_metacharlenconv(i8* %123, i32* %cchar)
  store i32 %call149, i32* %cl, align 4
  %124 = load i32, i32* %cl, align 4
  %tobool150 = icmp ne i32 %124, 0
  br i1 %tobool150, label %if.end152, label %if.then151

if.then151:                                       ; preds = %for.body148
  br label %for.end162

if.end152:                                        ; preds = %for.body148
  br label %while.cond153

while.cond153:                                    ; preds = %while.body156, %if.end152
  %125 = load i32, i32* %cl, align 4
  %dec154 = add nsw i32 %125, -1
  store i32 %dec154, i32* %cl, align 4
  %tobool155 = icmp ne i32 %125, 0
  br i1 %tobool155, label %while.body156, label %while.end159

while.body156:                                    ; preds = %while.cond153
  %126 = load i8*, i8** %t, align 4
  %incdec.ptr157 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr157, i8** %t, align 4
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %r, align 4
  %incdec.ptr158 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr158, i8** %r, align 4
  store i8 %127, i8* %128, align 1
  br label %while.cond153

while.end159:                                     ; preds = %while.cond153
  %129 = load i32, i32* %cchar, align 4
  %130 = load i32, i32* %multi_width.addr, align 4
  %call160 = call i32 @wcpadwidth(i32 %129, i32 %130)
  %131 = load i32, i32* %c, align 4
  %sub161 = sub nsw i32 %131, %call160
  store i32 %sub161, i32* %c, align 4
  br label %for.cond145

for.end162:                                       ; preds = %if.then151, %for.cond145
  br label %for.cond141

for.end163:                                       ; preds = %for.cond141
  br label %if.end164

if.end164:                                        ; preds = %for.end163, %if.else114
  %132 = load i8*, i8** %preone.addr, align 4
  %tobool165 = icmp ne i8* %132, null
  br i1 %tobool165, label %if.then166, label %if.end173

if.then166:                                       ; preds = %if.end164
  br label %while.cond167

while.cond167:                                    ; preds = %while.body169, %if.then166
  %133 = load i8*, i8** %preone.addr, align 4
  %134 = load i8, i8* %133, align 1
  %tobool168 = icmp ne i8 %134, 0
  br i1 %tobool168, label %while.body169, label %while.end172

while.body169:                                    ; preds = %while.cond167
  %135 = load i8*, i8** %preone.addr, align 4
  %incdec.ptr170 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr170, i8** %preone.addr, align 4
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %r, align 4
  %incdec.ptr171 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr171, i8** %r, align 4
  store i8 %136, i8* %137, align 1
  br label %while.cond167

while.end172:                                     ; preds = %while.cond167
  br label %if.end173

if.end173:                                        ; preds = %while.end172, %if.end164
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.end113
  %138 = load i32, i32* %ls2, align 4
  store i32 %138, i32* %c, align 4
  br label %for.cond175

for.cond175:                                      ; preds = %while.end191, %if.end174
  %139 = load i32, i32* %c, align 4
  %cmp176 = icmp sgt i32 %139, 0
  br i1 %cmp176, label %for.body178, label %for.end192

for.body178:                                      ; preds = %for.cond175
  %140 = load i8*, i8** %str.addr, align 4
  %call179 = call i32 @mb_metacharlenconv(i8* %140, i32* %cchar)
  store i32 %call179, i32* %cl, align 4
  %141 = load i32, i32* %cl, align 4
  %tobool180 = icmp ne i32 %141, 0
  br i1 %tobool180, label %if.end182, label %if.then181

if.then181:                                       ; preds = %for.body178
  br label %for.end192

if.end182:                                        ; preds = %for.body178
  %142 = load i32, i32* %cchar, align 4
  %143 = load i32, i32* %multi_width.addr, align 4
  %call183 = call i32 @wcpadwidth(i32 %142, i32 %143)
  %144 = load i32, i32* %c, align 4
  %sub184 = sub nsw i32 %144, %call183
  store i32 %sub184, i32* %c, align 4
  br label %while.cond185

while.cond185:                                    ; preds = %while.body188, %if.end182
  %145 = load i32, i32* %cl, align 4
  %dec186 = add nsw i32 %145, -1
  store i32 %dec186, i32* %cl, align 4
  %tobool187 = icmp ne i32 %145, 0
  br i1 %tobool187, label %while.body188, label %while.end191

while.body188:                                    ; preds = %while.cond185
  %146 = load i8*, i8** %str.addr, align 4
  %incdec.ptr189 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr189, i8** %str.addr, align 4
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %r, align 4
  %incdec.ptr190 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr190, i8** %r, align 4
  store i8 %147, i8* %148, align 1
  br label %while.cond185

while.end191:                                     ; preds = %while.cond185
  br label %for.cond175

for.end192:                                       ; preds = %if.then181, %for.cond175
  br label %if.end193

if.end193:                                        ; preds = %for.end192, %for.end
  %149 = load i32, i32* %ls, align 4
  %150 = load i32, i32* %ls2, align 4
  %sub194 = sub nsw i32 %149, %150
  store i32 %sub194, i32* %ls2, align 4
  %151 = load i32, i32* %postnum.addr, align 4
  %152 = load i32, i32* %ls2, align 4
  %sub195 = sub nsw i32 %151, %152
  store i32 %sub195, i32* %f, align 4
  %153 = load i32, i32* %f, align 4
  %cmp196 = icmp sle i32 %153, 0
  br i1 %cmp196, label %if.then198, label %if.else217

if.then198:                                       ; preds = %if.end193
  call void @mb_charinit()
  %154 = load i32, i32* %postnum.addr, align 4
  store i32 %154, i32* %c, align 4
  br label %for.cond199

for.cond199:                                      ; preds = %while.end215, %if.then198
  %155 = load i32, i32* %c, align 4
  %cmp200 = icmp sgt i32 %155, 0
  br i1 %cmp200, label %for.body202, label %for.end216

for.body202:                                      ; preds = %for.cond199
  %156 = load i8*, i8** %str.addr, align 4
  %call203 = call i32 @mb_metacharlenconv(i8* %156, i32* %cchar)
  store i32 %call203, i32* %cl, align 4
  %157 = load i32, i32* %cl, align 4
  %tobool204 = icmp ne i32 %157, 0
  br i1 %tobool204, label %if.end206, label %if.then205

if.then205:                                       ; preds = %for.body202
  br label %for.end216

if.end206:                                        ; preds = %for.body202
  %158 = load i32, i32* %cchar, align 4
  %159 = load i32, i32* %multi_width.addr, align 4
  %call207 = call i32 @wcpadwidth(i32 %158, i32 %159)
  %160 = load i32, i32* %c, align 4
  %sub208 = sub nsw i32 %160, %call207
  store i32 %sub208, i32* %c, align 4
  br label %while.cond209

while.cond209:                                    ; preds = %while.body212, %if.end206
  %161 = load i32, i32* %cl, align 4
  %dec210 = add nsw i32 %161, -1
  store i32 %dec210, i32* %cl, align 4
  %tobool211 = icmp ne i32 %161, 0
  br i1 %tobool211, label %while.body212, label %while.end215

while.body212:                                    ; preds = %while.cond209
  %162 = load i8*, i8** %str.addr, align 4
  %incdec.ptr213 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr213, i8** %str.addr, align 4
  %163 = load i8, i8* %162, align 1
  %164 = load i8*, i8** %r, align 4
  %incdec.ptr214 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr214, i8** %r, align 4
  store i8 %163, i8* %164, align 1
  br label %while.cond209

while.end215:                                     ; preds = %while.cond209
  br label %for.cond199

for.end216:                                       ; preds = %if.then205, %for.cond199
  br label %if.end297

if.else217:                                       ; preds = %if.end193
  br label %while.cond218

while.cond218:                                    ; preds = %while.body220, %if.else217
  %165 = load i8*, i8** %str.addr, align 4
  %166 = load i8, i8* %165, align 1
  %tobool219 = icmp ne i8 %166, 0
  br i1 %tobool219, label %while.body220, label %while.end223

while.body220:                                    ; preds = %while.cond218
  %167 = load i8*, i8** %str.addr, align 4
  %incdec.ptr221 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr221, i8** %str.addr, align 4
  %168 = load i8, i8* %167, align 1
  %169 = load i8*, i8** %r, align 4
  %incdec.ptr222 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr222, i8** %r, align 4
  store i8 %168, i8* %169, align 1
  br label %while.cond218

while.end223:                                     ; preds = %while.cond218
  %170 = load i32, i32* %f, align 4
  %171 = load i32, i32* %lpostone, align 4
  %cmp224 = icmp sle i32 %170, %171
  br i1 %cmp224, label %if.then226, label %if.else248

if.then226:                                       ; preds = %while.end223
  %172 = load i8*, i8** %postone.addr, align 4
  %tobool227 = icmp ne i8* %172, null
  br i1 %tobool227, label %if.then228, label %if.end247

if.then228:                                       ; preds = %if.then226
  %173 = load i32, i32* %f, align 4
  store i32 %173, i32* %c, align 4
  br label %for.cond229

for.cond229:                                      ; preds = %while.end245, %if.then228
  %174 = load i32, i32* %c, align 4
  %cmp230 = icmp sgt i32 %174, 0
  br i1 %cmp230, label %for.body232, label %for.end246

for.body232:                                      ; preds = %for.cond229
  %175 = load i8*, i8** %postone.addr, align 4
  %call233 = call i32 @mb_metacharlenconv(i8* %175, i32* %cchar)
  store i32 %call233, i32* %cl, align 4
  %176 = load i32, i32* %cl, align 4
  %tobool234 = icmp ne i32 %176, 0
  br i1 %tobool234, label %if.end236, label %if.then235

if.then235:                                       ; preds = %for.body232
  br label %for.end246

if.end236:                                        ; preds = %for.body232
  %177 = load i32, i32* %cchar, align 4
  %178 = load i32, i32* %multi_width.addr, align 4
  %call237 = call i32 @wcpadwidth(i32 %177, i32 %178)
  %179 = load i32, i32* %c, align 4
  %sub238 = sub nsw i32 %179, %call237
  store i32 %sub238, i32* %c, align 4
  br label %while.cond239

while.cond239:                                    ; preds = %while.body242, %if.end236
  %180 = load i32, i32* %cl, align 4
  %dec240 = add nsw i32 %180, -1
  store i32 %dec240, i32* %cl, align 4
  %tobool241 = icmp ne i32 %180, 0
  br i1 %tobool241, label %while.body242, label %while.end245

while.body242:                                    ; preds = %while.cond239
  %181 = load i8*, i8** %postone.addr, align 4
  %incdec.ptr243 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr243, i8** %postone.addr, align 4
  %182 = load i8, i8* %181, align 1
  %183 = load i8*, i8** %r, align 4
  %incdec.ptr244 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr244, i8** %r, align 4
  store i8 %182, i8* %183, align 1
  br label %while.cond239

while.end245:                                     ; preds = %while.cond239
  br label %for.cond229

for.end246:                                       ; preds = %if.then235, %for.cond229
  br label %if.end247

if.end247:                                        ; preds = %for.end246, %if.then226
  br label %if.end296

if.else248:                                       ; preds = %while.end223
  %184 = load i8*, i8** %postone.addr, align 4
  %tobool249 = icmp ne i8* %184, null
  br i1 %tobool249, label %if.then250, label %if.end258

if.then250:                                       ; preds = %if.else248
  %185 = load i32, i32* %lpostone, align 4
  %186 = load i32, i32* %f, align 4
  %sub251 = sub nsw i32 %186, %185
  store i32 %sub251, i32* %f, align 4
  br label %while.cond252

while.cond252:                                    ; preds = %while.body254, %if.then250
  %187 = load i8*, i8** %postone.addr, align 4
  %188 = load i8, i8* %187, align 1
  %tobool253 = icmp ne i8 %188, 0
  br i1 %tobool253, label %while.body254, label %while.end257

while.body254:                                    ; preds = %while.cond252
  %189 = load i8*, i8** %postone.addr, align 4
  %incdec.ptr255 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr255, i8** %postone.addr, align 4
  %190 = load i8, i8* %189, align 1
  %191 = load i8*, i8** %r, align 4
  %incdec.ptr256 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr256, i8** %r, align 4
  store i8 %190, i8* %191, align 1
  br label %while.cond252

while.end257:                                     ; preds = %while.cond252
  br label %if.end258

if.end258:                                        ; preds = %while.end257, %if.else248
  %192 = load i32, i32* %lpostmul, align 4
  %tobool259 = icmp ne i32 %192, 0
  br i1 %tobool259, label %if.then260, label %if.end295

if.then260:                                       ; preds = %if.end258
  %193 = load i32, i32* %f, align 4
  %194 = load i32, i32* %lpostmul, align 4
  %div261 = sdiv i32 %193, %194
  store i32 %div261, i32* %cc, align 4
  br label %for.cond262

for.cond262:                                      ; preds = %for.end271, %if.then260
  %195 = load i32, i32* %cc, align 4
  %dec263 = add nsw i32 %195, -1
  store i32 %dec263, i32* %cc, align 4
  %tobool264 = icmp ne i32 %195, 0
  br i1 %tobool264, label %for.body265, label %for.end272

for.body265:                                      ; preds = %for.cond262
  %196 = load i8*, i8** %postmul.addr, align 4
  store i8* %196, i8** %t, align 4
  br label %for.cond266

for.cond266:                                      ; preds = %for.body268, %for.body265
  %197 = load i8*, i8** %t, align 4
  %198 = load i8, i8* %197, align 1
  %tobool267 = icmp ne i8 %198, 0
  br i1 %tobool267, label %for.body268, label %for.end271

for.body268:                                      ; preds = %for.cond266
  %199 = load i8*, i8** %t, align 4
  %incdec.ptr269 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr269, i8** %t, align 4
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %r, align 4
  %incdec.ptr270 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr270, i8** %r, align 4
  store i8 %200, i8* %201, align 1
  br label %for.cond266

for.end271:                                       ; preds = %for.cond266
  br label %for.cond262

for.end272:                                       ; preds = %for.cond262
  %202 = load i32, i32* %f, align 4
  %203 = load i32, i32* %lpostmul, align 4
  %rem273 = srem i32 %202, %203
  store i32 %rem273, i32* %m, align 4
  %tobool274 = icmp ne i32 %rem273, 0
  br i1 %tobool274, label %if.then275, label %if.end294

if.then275:                                       ; preds = %for.end272
  call void @mb_charinit()
  br label %while.cond276

while.cond276:                                    ; preds = %while.end292, %if.then275
  %204 = load i32, i32* %m, align 4
  %cmp277 = icmp sgt i32 %204, 0
  br i1 %cmp277, label %while.body279, label %while.end293

while.body279:                                    ; preds = %while.cond276
  %205 = load i8*, i8** %postmul.addr, align 4
  %call280 = call i32 @mb_metacharlenconv(i8* %205, i32* %cchar)
  store i32 %call280, i32* %cl, align 4
  %206 = load i32, i32* %cl, align 4
  %tobool281 = icmp ne i32 %206, 0
  br i1 %tobool281, label %if.end283, label %if.then282

if.then282:                                       ; preds = %while.body279
  br label %while.end293

if.end283:                                        ; preds = %while.body279
  %207 = load i32, i32* %cchar, align 4
  %208 = load i32, i32* %multi_width.addr, align 4
  %call284 = call i32 @wcpadwidth(i32 %207, i32 %208)
  %209 = load i32, i32* %m, align 4
  %sub285 = sub nsw i32 %209, %call284
  store i32 %sub285, i32* %m, align 4
  br label %while.cond286

while.cond286:                                    ; preds = %while.body289, %if.end283
  %210 = load i32, i32* %cl, align 4
  %dec287 = add nsw i32 %210, -1
  store i32 %dec287, i32* %cl, align 4
  %tobool288 = icmp ne i32 %210, 0
  br i1 %tobool288, label %while.body289, label %while.end292

while.body289:                                    ; preds = %while.cond286
  %211 = load i8*, i8** %postmul.addr, align 4
  %incdec.ptr290 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr290, i8** %postmul.addr, align 4
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %r, align 4
  %incdec.ptr291 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr291, i8** %r, align 4
  store i8 %212, i8* %213, align 1
  br label %while.cond286

while.end292:                                     ; preds = %while.cond286
  br label %while.cond276

while.end293:                                     ; preds = %if.then282, %while.cond276
  br label %if.end294

if.end294:                                        ; preds = %while.end293, %for.end272
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.end258
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.end247
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %for.end216
  br label %if.end441

if.else298:                                       ; preds = %if.then60
  %214 = load i32, i32* %prenum.addr, align 4
  %215 = load i32, i32* %ls, align 4
  %sub299 = sub nsw i32 %214, %215
  store i32 %sub299, i32* %f, align 4
  %216 = load i32, i32* %f, align 4
  %cmp300 = icmp sle i32 %216, 0
  br i1 %cmp300, label %if.then302, label %if.else334

if.then302:                                       ; preds = %if.else298
  %217 = load i32, i32* %f, align 4
  %sub303 = sub nsw i32 0, %217
  store i32 %sub303, i32* %f, align 4
  call void @mb_charinit()
  br label %while.cond304

while.cond304:                                    ; preds = %if.end311, %if.then302
  %218 = load i32, i32* %f, align 4
  %cmp305 = icmp sgt i32 %218, 0
  br i1 %cmp305, label %while.body307, label %while.end315

while.body307:                                    ; preds = %while.cond304
  %219 = load i8*, i8** %str.addr, align 4
  %call308 = call i32 @mb_metacharlenconv(i8* %219, i32* %cchar)
  store i32 %call308, i32* %cl, align 4
  %220 = load i32, i32* %cl, align 4
  %tobool309 = icmp ne i32 %220, 0
  br i1 %tobool309, label %if.end311, label %if.then310

if.then310:                                       ; preds = %while.body307
  br label %while.end315

if.end311:                                        ; preds = %while.body307
  %221 = load i32, i32* %cl, align 4
  %222 = load i8*, i8** %str.addr, align 4
  %add.ptr312 = getelementptr inbounds i8, i8* %222, i32 %221
  store i8* %add.ptr312, i8** %str.addr, align 4
  %223 = load i32, i32* %cchar, align 4
  %224 = load i32, i32* %multi_width.addr, align 4
  %call313 = call i32 @wcpadwidth(i32 %223, i32 %224)
  %225 = load i32, i32* %f, align 4
  %sub314 = sub nsw i32 %225, %call313
  store i32 %sub314, i32* %f, align 4
  br label %while.cond304

while.end315:                                     ; preds = %if.then310, %while.cond304
  %226 = load i32, i32* %prenum.addr, align 4
  store i32 %226, i32* %c, align 4
  br label %for.cond316

for.cond316:                                      ; preds = %while.end330, %while.end315
  %227 = load i32, i32* %c, align 4
  %cmp317 = icmp sgt i32 %227, 0
  br i1 %cmp317, label %for.body319, label %for.end333

for.body319:                                      ; preds = %for.cond316
  %228 = load i8*, i8** %str.addr, align 4
  %call320 = call i32 @mb_metacharlenconv(i8* %228, i32* %cchar)
  store i32 %call320, i32* %cl, align 4
  %229 = load i32, i32* %cl, align 4
  %tobool321 = icmp ne i32 %229, 0
  br i1 %tobool321, label %if.end323, label %if.then322

if.then322:                                       ; preds = %for.body319
  br label %for.end333

if.end323:                                        ; preds = %for.body319
  br label %while.cond324

while.cond324:                                    ; preds = %while.body327, %if.end323
  %230 = load i32, i32* %cl, align 4
  %dec325 = add nsw i32 %230, -1
  store i32 %dec325, i32* %cl, align 4
  %tobool326 = icmp ne i32 %230, 0
  br i1 %tobool326, label %while.body327, label %while.end330

while.body327:                                    ; preds = %while.cond324
  %231 = load i8*, i8** %str.addr, align 4
  %incdec.ptr328 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %incdec.ptr328, i8** %str.addr, align 4
  %232 = load i8, i8* %231, align 1
  %233 = load i8*, i8** %r, align 4
  %incdec.ptr329 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr329, i8** %r, align 4
  store i8 %232, i8* %233, align 1
  br label %while.cond324

while.end330:                                     ; preds = %while.cond324
  %234 = load i32, i32* %cchar, align 4
  %235 = load i32, i32* %multi_width.addr, align 4
  %call331 = call i32 @wcpadwidth(i32 %234, i32 %235)
  %236 = load i32, i32* %c, align 4
  %sub332 = sub nsw i32 %236, %call331
  store i32 %sub332, i32* %c, align 4
  br label %for.cond316

for.end333:                                       ; preds = %if.then322, %for.cond316
  br label %if.end440

if.else334:                                       ; preds = %if.else298
  %237 = load i32, i32* %f, align 4
  %238 = load i32, i32* %lpreone, align 4
  %cmp335 = icmp sle i32 %237, %238
  br i1 %cmp335, label %if.then337, label %if.else360

if.then337:                                       ; preds = %if.else334
  %239 = load i8*, i8** %preone.addr, align 4
  %tobool338 = icmp ne i8* %239, null
  br i1 %tobool338, label %if.then339, label %if.end359

if.then339:                                       ; preds = %if.then337
  %240 = load i32, i32* %f, align 4
  store i32 %240, i32* %c, align 4
  %241 = load i32, i32* %lpreone, align 4
  %242 = load i32, i32* %f, align 4
  %sub340 = sub nsw i32 %241, %242
  store i32 %sub340, i32* %f, align 4
  call void @mb_charinit()
  %243 = load i8*, i8** %preone.addr, align 4
  store i8* %243, i8** %t, align 4
  br label %for.cond341

for.cond341:                                      ; preds = %if.end348, %if.then339
  %244 = load i32, i32* %f, align 4
  %cmp342 = icmp sgt i32 %244, 0
  br i1 %cmp342, label %for.body344, label %for.end352

for.body344:                                      ; preds = %for.cond341
  %245 = load i8*, i8** %t, align 4
  %call345 = call i32 @mb_metacharlenconv(i8* %245, i32* %cchar)
  store i32 %call345, i32* %cl, align 4
  %246 = load i32, i32* %cl, align 4
  %tobool346 = icmp ne i32 %246, 0
  br i1 %tobool346, label %if.end348, label %if.then347

if.then347:                                       ; preds = %for.body344
  br label %for.end352

if.end348:                                        ; preds = %for.body344
  %247 = load i32, i32* %cl, align 4
  %248 = load i8*, i8** %t, align 4
  %add.ptr349 = getelementptr inbounds i8, i8* %248, i32 %247
  store i8* %add.ptr349, i8** %t, align 4
  %249 = load i32, i32* %cchar, align 4
  %250 = load i32, i32* %multi_width.addr, align 4
  %call350 = call i32 @wcpadwidth(i32 %249, i32 %250)
  %251 = load i32, i32* %f, align 4
  %sub351 = sub nsw i32 %251, %call350
  store i32 %sub351, i32* %f, align 4
  br label %for.cond341

for.end352:                                       ; preds = %if.then347, %for.cond341
  br label %while.cond353

while.cond353:                                    ; preds = %while.body355, %for.end352
  %252 = load i8*, i8** %t, align 4
  %253 = load i8, i8* %252, align 1
  %tobool354 = icmp ne i8 %253, 0
  br i1 %tobool354, label %while.body355, label %while.end358

while.body355:                                    ; preds = %while.cond353
  %254 = load i8*, i8** %t, align 4
  %incdec.ptr356 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr356, i8** %t, align 4
  %255 = load i8, i8* %254, align 1
  %256 = load i8*, i8** %r, align 4
  %incdec.ptr357 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %incdec.ptr357, i8** %r, align 4
  store i8 %255, i8* %256, align 1
  br label %while.cond353

while.end358:                                     ; preds = %while.cond353
  br label %if.end359

if.end359:                                        ; preds = %while.end358, %if.then337
  br label %if.end433

if.else360:                                       ; preds = %if.else334
  %257 = load i32, i32* %lpreone, align 4
  %258 = load i32, i32* %f, align 4
  %sub361 = sub nsw i32 %258, %257
  store i32 %sub361, i32* %f, align 4
  %259 = load i32, i32* %lpremul, align 4
  %tobool362 = icmp ne i32 %259, 0
  br i1 %tobool362, label %if.then363, label %if.end423

if.then363:                                       ; preds = %if.else360
  %260 = load i32, i32* %f, align 4
  %261 = load i32, i32* %lpremul, align 4
  %rem364 = srem i32 %260, %261
  store i32 %rem364, i32* %m, align 4
  %tobool365 = icmp ne i32 %rem364, 0
  br i1 %tobool365, label %if.then366, label %if.end398

if.then366:                                       ; preds = %if.then363
  %262 = load i32, i32* %m, align 4
  store i32 %262, i32* %c, align 4
  %263 = load i32, i32* %lpremul, align 4
  %264 = load i32, i32* %m, align 4
  %sub367 = sub nsw i32 %263, %264
  store i32 %sub367, i32* %m, align 4
  call void @mb_charinit()
  %265 = load i8*, i8** %premul.addr, align 4
  store i8* %265, i8** %t, align 4
  br label %for.cond368

for.cond368:                                      ; preds = %if.end375, %if.then366
  %266 = load i32, i32* %m, align 4
  %cmp369 = icmp sgt i32 %266, 0
  br i1 %cmp369, label %for.body371, label %for.end379

for.body371:                                      ; preds = %for.cond368
  %267 = load i8*, i8** %t, align 4
  %call372 = call i32 @mb_metacharlenconv(i8* %267, i32* %cchar)
  store i32 %call372, i32* %cl, align 4
  %268 = load i32, i32* %cl, align 4
  %tobool373 = icmp ne i32 %268, 0
  br i1 %tobool373, label %if.end375, label %if.then374

if.then374:                                       ; preds = %for.body371
  br label %for.end379

if.end375:                                        ; preds = %for.body371
  %269 = load i32, i32* %cl, align 4
  %270 = load i8*, i8** %t, align 4
  %add.ptr376 = getelementptr inbounds i8, i8* %270, i32 %269
  store i8* %add.ptr376, i8** %t, align 4
  %271 = load i32, i32* %cchar, align 4
  %272 = load i32, i32* %multi_width.addr, align 4
  %call377 = call i32 @wcpadwidth(i32 %271, i32 %272)
  %273 = load i32, i32* %m, align 4
  %sub378 = sub nsw i32 %273, %call377
  store i32 %sub378, i32* %m, align 4
  br label %for.cond368

for.end379:                                       ; preds = %if.then374, %for.cond368
  br label %while.cond380

while.cond380:                                    ; preds = %while.end394, %for.end379
  %274 = load i32, i32* %c, align 4
  %cmp381 = icmp sgt i32 %274, 0
  br i1 %cmp381, label %while.body383, label %while.end397

while.body383:                                    ; preds = %while.cond380
  %275 = load i8*, i8** %t, align 4
  %call384 = call i32 @mb_metacharlenconv(i8* %275, i32* %cchar)
  store i32 %call384, i32* %cl, align 4
  %276 = load i32, i32* %cl, align 4
  %tobool385 = icmp ne i32 %276, 0
  br i1 %tobool385, label %if.end387, label %if.then386

if.then386:                                       ; preds = %while.body383
  br label %while.end397

if.end387:                                        ; preds = %while.body383
  br label %while.cond388

while.cond388:                                    ; preds = %while.body391, %if.end387
  %277 = load i32, i32* %cl, align 4
  %dec389 = add nsw i32 %277, -1
  store i32 %dec389, i32* %cl, align 4
  %tobool390 = icmp ne i32 %277, 0
  br i1 %tobool390, label %while.body391, label %while.end394

while.body391:                                    ; preds = %while.cond388
  %278 = load i8*, i8** %t, align 4
  %incdec.ptr392 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr392, i8** %t, align 4
  %279 = load i8, i8* %278, align 1
  %280 = load i8*, i8** %r, align 4
  %incdec.ptr393 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %incdec.ptr393, i8** %r, align 4
  store i8 %279, i8* %280, align 1
  br label %while.cond388

while.end394:                                     ; preds = %while.cond388
  %281 = load i32, i32* %cchar, align 4
  %282 = load i32, i32* %multi_width.addr, align 4
  %call395 = call i32 @wcpadwidth(i32 %281, i32 %282)
  %283 = load i32, i32* %c, align 4
  %sub396 = sub nsw i32 %283, %call395
  store i32 %sub396, i32* %c, align 4
  br label %while.cond380

while.end397:                                     ; preds = %if.then386, %while.cond380
  br label %if.end398

if.end398:                                        ; preds = %while.end397, %if.then363
  %284 = load i32, i32* %f, align 4
  %285 = load i32, i32* %lpremul, align 4
  %div399 = sdiv i32 %284, %285
  store i32 %div399, i32* %cc, align 4
  br label %for.cond400

for.cond400:                                      ; preds = %for.end421, %if.end398
  %286 = load i32, i32* %cc, align 4
  %dec401 = add nsw i32 %286, -1
  store i32 %dec401, i32* %cc, align 4
  %tobool402 = icmp ne i32 %286, 0
  br i1 %tobool402, label %for.body403, label %for.end422

for.body403:                                      ; preds = %for.cond400
  call void @mb_charinit()
  %287 = load i32, i32* %lpremul, align 4
  store i32 %287, i32* %c, align 4
  %288 = load i8*, i8** %premul.addr, align 4
  store i8* %288, i8** %t, align 4
  br label %for.cond404

for.cond404:                                      ; preds = %while.end418, %for.body403
  %289 = load i32, i32* %c, align 4
  %cmp405 = icmp sgt i32 %289, 0
  br i1 %cmp405, label %for.body407, label %for.end421

for.body407:                                      ; preds = %for.cond404
  %290 = load i8*, i8** %t, align 4
  %call408 = call i32 @mb_metacharlenconv(i8* %290, i32* %cchar)
  store i32 %call408, i32* %cl, align 4
  %291 = load i32, i32* %cl, align 4
  %tobool409 = icmp ne i32 %291, 0
  br i1 %tobool409, label %if.end411, label %if.then410

if.then410:                                       ; preds = %for.body407
  br label %for.end421

if.end411:                                        ; preds = %for.body407
  br label %while.cond412

while.cond412:                                    ; preds = %while.body415, %if.end411
  %292 = load i32, i32* %cl, align 4
  %dec413 = add nsw i32 %292, -1
  store i32 %dec413, i32* %cl, align 4
  %tobool414 = icmp ne i32 %292, 0
  br i1 %tobool414, label %while.body415, label %while.end418

while.body415:                                    ; preds = %while.cond412
  %293 = load i8*, i8** %t, align 4
  %incdec.ptr416 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %incdec.ptr416, i8** %t, align 4
  %294 = load i8, i8* %293, align 1
  %295 = load i8*, i8** %r, align 4
  %incdec.ptr417 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr417, i8** %r, align 4
  store i8 %294, i8* %295, align 1
  br label %while.cond412

while.end418:                                     ; preds = %while.cond412
  %296 = load i32, i32* %cchar, align 4
  %297 = load i32, i32* %multi_width.addr, align 4
  %call419 = call i32 @wcpadwidth(i32 %296, i32 %297)
  %298 = load i32, i32* %c, align 4
  %sub420 = sub nsw i32 %298, %call419
  store i32 %sub420, i32* %c, align 4
  br label %for.cond404

for.end421:                                       ; preds = %if.then410, %for.cond404
  br label %for.cond400

for.end422:                                       ; preds = %for.cond400
  br label %if.end423

if.end423:                                        ; preds = %for.end422, %if.else360
  %299 = load i8*, i8** %preone.addr, align 4
  %tobool424 = icmp ne i8* %299, null
  br i1 %tobool424, label %if.then425, label %if.end432

if.then425:                                       ; preds = %if.end423
  br label %while.cond426

while.cond426:                                    ; preds = %while.body428, %if.then425
  %300 = load i8*, i8** %preone.addr, align 4
  %301 = load i8, i8* %300, align 1
  %tobool427 = icmp ne i8 %301, 0
  br i1 %tobool427, label %while.body428, label %while.end431

while.body428:                                    ; preds = %while.cond426
  %302 = load i8*, i8** %preone.addr, align 4
  %incdec.ptr429 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %incdec.ptr429, i8** %preone.addr, align 4
  %303 = load i8, i8* %302, align 1
  %304 = load i8*, i8** %r, align 4
  %incdec.ptr430 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %incdec.ptr430, i8** %r, align 4
  store i8 %303, i8* %304, align 1
  br label %while.cond426

while.end431:                                     ; preds = %while.cond426
  br label %if.end432

if.end432:                                        ; preds = %while.end431, %if.end423
  br label %if.end433

if.end433:                                        ; preds = %if.end432, %if.end359
  br label %while.cond434

while.cond434:                                    ; preds = %while.body436, %if.end433
  %305 = load i8*, i8** %str.addr, align 4
  %306 = load i8, i8* %305, align 1
  %tobool435 = icmp ne i8 %306, 0
  br i1 %tobool435, label %while.body436, label %while.end439

while.body436:                                    ; preds = %while.cond434
  %307 = load i8*, i8** %str.addr, align 4
  %incdec.ptr437 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr437, i8** %str.addr, align 4
  %308 = load i8, i8* %307, align 1
  %309 = load i8*, i8** %r, align 4
  %incdec.ptr438 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %incdec.ptr438, i8** %r, align 4
  store i8 %308, i8* %309, align 1
  br label %while.cond434

while.end439:                                     ; preds = %while.cond434
  br label %if.end440

if.end440:                                        ; preds = %while.end439, %for.end333
  br label %if.end441

if.end441:                                        ; preds = %if.end440, %if.end297
  br label %if.end582

if.else442:                                       ; preds = %if.end56
  %310 = load i32, i32* %postnum.addr, align 4
  %tobool443 = icmp ne i32 %310, 0
  br i1 %tobool443, label %if.then444, label %if.end581

if.then444:                                       ; preds = %if.else442
  %311 = load i32, i32* %postnum.addr, align 4
  %312 = load i32, i32* %ls, align 4
  %sub445 = sub nsw i32 %311, %312
  store i32 %sub445, i32* %f, align 4
  call void @mb_charinit()
  %313 = load i32, i32* %f, align 4
  %cmp446 = icmp sle i32 %313, 0
  br i1 %cmp446, label %if.then448, label %if.else467

if.then448:                                       ; preds = %if.then444
  %314 = load i32, i32* %postnum.addr, align 4
  store i32 %314, i32* %c, align 4
  br label %for.cond449

for.cond449:                                      ; preds = %while.end463, %if.then448
  %315 = load i32, i32* %c, align 4
  %cmp450 = icmp sgt i32 %315, 0
  br i1 %cmp450, label %for.body452, label %for.end466

for.body452:                                      ; preds = %for.cond449
  %316 = load i8*, i8** %str.addr, align 4
  %call453 = call i32 @mb_metacharlenconv(i8* %316, i32* %cchar)
  store i32 %call453, i32* %cl, align 4
  %317 = load i32, i32* %cl, align 4
  %tobool454 = icmp ne i32 %317, 0
  br i1 %tobool454, label %if.end456, label %if.then455

if.then455:                                       ; preds = %for.body452
  br label %for.end466

if.end456:                                        ; preds = %for.body452
  br label %while.cond457

while.cond457:                                    ; preds = %while.body460, %if.end456
  %318 = load i32, i32* %cl, align 4
  %dec458 = add nsw i32 %318, -1
  store i32 %dec458, i32* %cl, align 4
  %tobool459 = icmp ne i32 %318, 0
  br i1 %tobool459, label %while.body460, label %while.end463

while.body460:                                    ; preds = %while.cond457
  %319 = load i8*, i8** %str.addr, align 4
  %incdec.ptr461 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %incdec.ptr461, i8** %str.addr, align 4
  %320 = load i8, i8* %319, align 1
  %321 = load i8*, i8** %r, align 4
  %incdec.ptr462 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %incdec.ptr462, i8** %r, align 4
  store i8 %320, i8* %321, align 1
  br label %while.cond457

while.end463:                                     ; preds = %while.cond457
  %322 = load i32, i32* %cchar, align 4
  %323 = load i32, i32* %multi_width.addr, align 4
  %call464 = call i32 @wcpadwidth(i32 %322, i32 %323)
  %324 = load i32, i32* %c, align 4
  %sub465 = sub nsw i32 %324, %call464
  store i32 %sub465, i32* %c, align 4
  br label %for.cond449

for.end466:                                       ; preds = %if.then455, %for.cond449
  br label %if.end580

if.else467:                                       ; preds = %if.then444
  %325 = load i32, i32* %ls, align 4
  store i32 %325, i32* %c, align 4
  br label %for.cond468

for.cond468:                                      ; preds = %while.end481, %if.else467
  %326 = load i8*, i8** %str.addr, align 4
  %327 = load i8, i8* %326, align 1
  %tobool469 = icmp ne i8 %327, 0
  br i1 %tobool469, label %for.body470, label %for.end484

for.body470:                                      ; preds = %for.cond468
  %328 = load i8*, i8** %str.addr, align 4
  %call471 = call i32 @mb_metacharlenconv(i8* %328, i32* %cchar)
  store i32 %call471, i32* %cl, align 4
  %329 = load i32, i32* %cl, align 4
  %tobool472 = icmp ne i32 %329, 0
  br i1 %tobool472, label %if.end474, label %if.then473

if.then473:                                       ; preds = %for.body470
  br label %for.end484

if.end474:                                        ; preds = %for.body470
  br label %while.cond475

while.cond475:                                    ; preds = %while.body478, %if.end474
  %330 = load i32, i32* %cl, align 4
  %dec476 = add nsw i32 %330, -1
  store i32 %dec476, i32* %cl, align 4
  %tobool477 = icmp ne i32 %330, 0
  br i1 %tobool477, label %while.body478, label %while.end481

while.body478:                                    ; preds = %while.cond475
  %331 = load i8*, i8** %str.addr, align 4
  %incdec.ptr479 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %incdec.ptr479, i8** %str.addr, align 4
  %332 = load i8, i8* %331, align 1
  %333 = load i8*, i8** %r, align 4
  %incdec.ptr480 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %incdec.ptr480, i8** %r, align 4
  store i8 %332, i8* %333, align 1
  br label %while.cond475

while.end481:                                     ; preds = %while.cond475
  %334 = load i32, i32* %cchar, align 4
  %335 = load i32, i32* %multi_width.addr, align 4
  %call482 = call i32 @wcpadwidth(i32 %334, i32 %335)
  %336 = load i32, i32* %c, align 4
  %sub483 = sub nsw i32 %336, %call482
  store i32 %sub483, i32* %c, align 4
  br label %for.cond468

for.end484:                                       ; preds = %if.then473, %for.cond468
  call void @mb_charinit()
  %337 = load i32, i32* %f, align 4
  %338 = load i32, i32* %lpostone, align 4
  %cmp485 = icmp sle i32 %337, %338
  br i1 %cmp485, label %if.then487, label %if.else509

if.then487:                                       ; preds = %for.end484
  %339 = load i8*, i8** %postone.addr, align 4
  %tobool488 = icmp ne i8* %339, null
  br i1 %tobool488, label %if.then489, label %if.end508

if.then489:                                       ; preds = %if.then487
  %340 = load i32, i32* %f, align 4
  store i32 %340, i32* %c, align 4
  br label %for.cond490

for.cond490:                                      ; preds = %while.end504, %if.then489
  %341 = load i32, i32* %c, align 4
  %cmp491 = icmp sgt i32 %341, 0
  br i1 %cmp491, label %for.body493, label %for.end507

for.body493:                                      ; preds = %for.cond490
  %342 = load i8*, i8** %postone.addr, align 4
  %call494 = call i32 @mb_metacharlenconv(i8* %342, i32* %cchar)
  store i32 %call494, i32* %cl, align 4
  %343 = load i32, i32* %cl, align 4
  %tobool495 = icmp ne i32 %343, 0
  br i1 %tobool495, label %if.end497, label %if.then496

if.then496:                                       ; preds = %for.body493
  br label %for.end507

if.end497:                                        ; preds = %for.body493
  br label %while.cond498

while.cond498:                                    ; preds = %while.body501, %if.end497
  %344 = load i32, i32* %cl, align 4
  %dec499 = add nsw i32 %344, -1
  store i32 %dec499, i32* %cl, align 4
  %tobool500 = icmp ne i32 %344, 0
  br i1 %tobool500, label %while.body501, label %while.end504

while.body501:                                    ; preds = %while.cond498
  %345 = load i8*, i8** %postone.addr, align 4
  %incdec.ptr502 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %incdec.ptr502, i8** %postone.addr, align 4
  %346 = load i8, i8* %345, align 1
  %347 = load i8*, i8** %r, align 4
  %incdec.ptr503 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %incdec.ptr503, i8** %r, align 4
  store i8 %346, i8* %347, align 1
  br label %while.cond498

while.end504:                                     ; preds = %while.cond498
  %348 = load i32, i32* %cchar, align 4
  %349 = load i32, i32* %multi_width.addr, align 4
  %call505 = call i32 @wcpadwidth(i32 %348, i32 %349)
  %350 = load i32, i32* %c, align 4
  %sub506 = sub nsw i32 %350, %call505
  store i32 %sub506, i32* %c, align 4
  br label %for.cond490

for.end507:                                       ; preds = %if.then496, %for.cond490
  br label %if.end508

if.end508:                                        ; preds = %for.end507, %if.then487
  br label %if.end579

if.else509:                                       ; preds = %for.end484
  %351 = load i8*, i8** %postone.addr, align 4
  %tobool510 = icmp ne i8* %351, null
  br i1 %tobool510, label %if.then511, label %if.end530

if.then511:                                       ; preds = %if.else509
  %352 = load i32, i32* %lpostone, align 4
  %353 = load i32, i32* %f, align 4
  %sub512 = sub nsw i32 %353, %352
  store i32 %sub512, i32* %f, align 4
  %354 = load i32, i32* %lpostone, align 4
  store i32 %354, i32* %c, align 4
  br label %for.cond513

for.cond513:                                      ; preds = %while.end526, %if.then511
  %355 = load i8*, i8** %postone.addr, align 4
  %356 = load i8, i8* %355, align 1
  %tobool514 = icmp ne i8 %356, 0
  br i1 %tobool514, label %for.body515, label %for.end529

for.body515:                                      ; preds = %for.cond513
  %357 = load i8*, i8** %postone.addr, align 4
  %call516 = call i32 @mb_metacharlenconv(i8* %357, i32* %cchar)
  store i32 %call516, i32* %cl, align 4
  %358 = load i32, i32* %cl, align 4
  %tobool517 = icmp ne i32 %358, 0
  br i1 %tobool517, label %if.end519, label %if.then518

if.then518:                                       ; preds = %for.body515
  br label %for.end529

if.end519:                                        ; preds = %for.body515
  br label %while.cond520

while.cond520:                                    ; preds = %while.body523, %if.end519
  %359 = load i32, i32* %cl, align 4
  %dec521 = add nsw i32 %359, -1
  store i32 %dec521, i32* %cl, align 4
  %tobool522 = icmp ne i32 %359, 0
  br i1 %tobool522, label %while.body523, label %while.end526

while.body523:                                    ; preds = %while.cond520
  %360 = load i8*, i8** %postone.addr, align 4
  %incdec.ptr524 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %incdec.ptr524, i8** %postone.addr, align 4
  %361 = load i8, i8* %360, align 1
  %362 = load i8*, i8** %r, align 4
  %incdec.ptr525 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %incdec.ptr525, i8** %r, align 4
  store i8 %361, i8* %362, align 1
  br label %while.cond520

while.end526:                                     ; preds = %while.cond520
  %363 = load i32, i32* %cchar, align 4
  %364 = load i32, i32* %multi_width.addr, align 4
  %call527 = call i32 @wcpadwidth(i32 %363, i32 %364)
  %365 = load i32, i32* %c, align 4
  %sub528 = sub nsw i32 %365, %call527
  store i32 %sub528, i32* %c, align 4
  br label %for.cond513

for.end529:                                       ; preds = %if.then518, %for.cond513
  br label %if.end530

if.end530:                                        ; preds = %for.end529, %if.else509
  %366 = load i32, i32* %lpostmul, align 4
  %tobool531 = icmp ne i32 %366, 0
  br i1 %tobool531, label %if.then532, label %if.end578

if.then532:                                       ; preds = %if.end530
  %367 = load i32, i32* %f, align 4
  %368 = load i32, i32* %lpostmul, align 4
  %div533 = sdiv i32 %367, %368
  store i32 %div533, i32* %cc, align 4
  br label %for.cond534

for.cond534:                                      ; preds = %for.end554, %if.then532
  %369 = load i32, i32* %cc, align 4
  %dec535 = add nsw i32 %369, -1
  store i32 %dec535, i32* %cc, align 4
  %tobool536 = icmp ne i32 %369, 0
  br i1 %tobool536, label %for.body537, label %for.end555

for.body537:                                      ; preds = %for.cond534
  call void @mb_charinit()
  %370 = load i32, i32* %lpostmul, align 4
  store i32 %370, i32* %c, align 4
  %371 = load i8*, i8** %postmul.addr, align 4
  store i8* %371, i8** %t, align 4
  br label %for.cond538

for.cond538:                                      ; preds = %while.end551, %for.body537
  %372 = load i8*, i8** %t, align 4
  %373 = load i8, i8* %372, align 1
  %tobool539 = icmp ne i8 %373, 0
  br i1 %tobool539, label %for.body540, label %for.end554

for.body540:                                      ; preds = %for.cond538
  %374 = load i8*, i8** %t, align 4
  %call541 = call i32 @mb_metacharlenconv(i8* %374, i32* %cchar)
  store i32 %call541, i32* %cl, align 4
  %375 = load i32, i32* %cl, align 4
  %tobool542 = icmp ne i32 %375, 0
  br i1 %tobool542, label %if.end544, label %if.then543

if.then543:                                       ; preds = %for.body540
  br label %for.end554

if.end544:                                        ; preds = %for.body540
  br label %while.cond545

while.cond545:                                    ; preds = %while.body548, %if.end544
  %376 = load i32, i32* %cl, align 4
  %dec546 = add nsw i32 %376, -1
  store i32 %dec546, i32* %cl, align 4
  %tobool547 = icmp ne i32 %376, 0
  br i1 %tobool547, label %while.body548, label %while.end551

while.body548:                                    ; preds = %while.cond545
  %377 = load i8*, i8** %t, align 4
  %incdec.ptr549 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %incdec.ptr549, i8** %t, align 4
  %378 = load i8, i8* %377, align 1
  %379 = load i8*, i8** %r, align 4
  %incdec.ptr550 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %incdec.ptr550, i8** %r, align 4
  store i8 %378, i8* %379, align 1
  br label %while.cond545

while.end551:                                     ; preds = %while.cond545
  %380 = load i32, i32* %cchar, align 4
  %381 = load i32, i32* %multi_width.addr, align 4
  %call552 = call i32 @wcpadwidth(i32 %380, i32 %381)
  %382 = load i32, i32* %c, align 4
  %sub553 = sub nsw i32 %382, %call552
  store i32 %sub553, i32* %c, align 4
  br label %for.cond538

for.end554:                                       ; preds = %if.then543, %for.cond538
  br label %for.cond534

for.end555:                                       ; preds = %for.cond534
  %383 = load i32, i32* %f, align 4
  %384 = load i32, i32* %lpostmul, align 4
  %rem556 = srem i32 %383, %384
  store i32 %rem556, i32* %m, align 4
  %tobool557 = icmp ne i32 %rem556, 0
  br i1 %tobool557, label %if.then558, label %if.end577

if.then558:                                       ; preds = %for.end555
  call void @mb_charinit()
  br label %while.cond559

while.cond559:                                    ; preds = %while.end573, %if.then558
  %385 = load i32, i32* %m, align 4
  %cmp560 = icmp sgt i32 %385, 0
  br i1 %cmp560, label %while.body562, label %while.end576

while.body562:                                    ; preds = %while.cond559
  %386 = load i8*, i8** %postmul.addr, align 4
  %call563 = call i32 @mb_metacharlenconv(i8* %386, i32* %cchar)
  store i32 %call563, i32* %cl, align 4
  %387 = load i32, i32* %cl, align 4
  %tobool564 = icmp ne i32 %387, 0
  br i1 %tobool564, label %if.end566, label %if.then565

if.then565:                                       ; preds = %while.body562
  br label %while.end576

if.end566:                                        ; preds = %while.body562
  br label %while.cond567

while.cond567:                                    ; preds = %while.body570, %if.end566
  %388 = load i32, i32* %cl, align 4
  %dec568 = add nsw i32 %388, -1
  store i32 %dec568, i32* %cl, align 4
  %tobool569 = icmp ne i32 %388, 0
  br i1 %tobool569, label %while.body570, label %while.end573

while.body570:                                    ; preds = %while.cond567
  %389 = load i8*, i8** %postmul.addr, align 4
  %incdec.ptr571 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %incdec.ptr571, i8** %postmul.addr, align 4
  %390 = load i8, i8* %389, align 1
  %391 = load i8*, i8** %r, align 4
  %incdec.ptr572 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %incdec.ptr572, i8** %r, align 4
  store i8 %390, i8* %391, align 1
  br label %while.cond567

while.end573:                                     ; preds = %while.cond567
  %392 = load i32, i32* %cchar, align 4
  %393 = load i32, i32* %multi_width.addr, align 4
  %call574 = call i32 @wcpadwidth(i32 %392, i32 %393)
  %394 = load i32, i32* %m, align 4
  %sub575 = sub nsw i32 %394, %call574
  store i32 %sub575, i32* %m, align 4
  br label %while.cond559

while.end576:                                     ; preds = %if.then565, %while.cond559
  br label %if.end577

if.end577:                                        ; preds = %while.end576, %for.end555
  br label %if.end578

if.end578:                                        ; preds = %if.end577, %if.end530
  br label %if.end579

if.end579:                                        ; preds = %if.end578, %if.end508
  br label %if.end580

if.end580:                                        ; preds = %if.end579, %for.end466
  br label %if.end581

if.end581:                                        ; preds = %if.end580, %if.else442
  br label %if.end582

if.end582:                                        ; preds = %if.end581, %if.end441
  %395 = load i8*, i8** %r, align 4
  store i8 0, i8* %395, align 1
  %396 = load i8*, i8** %ret, align 4
  store i8* %396, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end582, %if.then39
  %397 = load i8*, i8** %retval, align 4
  ret i8* %397
}

; Function Attrs: noinline nounwind
define internal i32 @subst_parse_str(i8** %sp, i32 %single, i32 %err) #0 {
entry:
  %retval = alloca i32, align 4
  %sp.addr = alloca i8**, align 4
  %single.addr = alloca i32, align 4
  %err.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  %qt = alloca i32, align 4
  store i8** %sp, i8*** %sp.addr, align 4
  store i32 %single, i32* %single.addr, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load i8**, i8*** %sp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @dupstring(i8* %1)
  store i8* %call, i8** %s, align 4
  %2 = load i8**, i8*** %sp.addr, align 4
  store i8* %call, i8** %2, align 4
  %3 = load i32, i32* %err.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i32 @parsestr(i8** %s)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end25, label %if.then

cond.false:                                       ; preds = %entry
  %call3 = call i32 @parsestrnoerr(i8** %s)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end25, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %4 = load i8*, i8** %s, align 4
  %5 = load i8**, i8*** %sp.addr, align 4
  store i8* %4, i8** %5, align 4
  %6 = load i32, i32* %single.addr, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.end24, label %if.then6

if.then6:                                         ; preds = %if.then
  store i32 0, i32* %qt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %7 = load i8*, i8** %s, align 4
  %8 = load i8, i8* %7, align 1
  %tobool7 = icmp ne i8 %8, 0
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %qt, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %for.body
  %10 = load i8*, i8** %s, align 4
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv, -116
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then9
  %12 = load i8*, i8** %s, align 4
  store i8 -123, i8* %12, align 1
  br label %if.end16

if.else:                                          ; preds = %if.then9
  %13 = load i8*, i8** %s, align 4
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, -103
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %15 = load i8*, i8** %s, align 4
  store i8 -109, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body
  %16 = load i8*, i8** %s, align 4
  %17 = load i8, i8* %16, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, -98
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  %18 = load i32, i32* %qt, align 4
  %tobool22 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool22, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %qt, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %19 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.end24
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind
define internal i8* @strcatsub(i8** %d, i8* %pb, i8* %pe, i8* %src, i32 %l, i8* %s, i32 %glbsub, i32 %copied) #0 {
entry:
  %d.addr = alloca i8**, align 4
  %pb.addr = alloca i8*, align 4
  %pe.addr = alloca i8*, align 4
  %src.addr = alloca i8*, align 4
  %l.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %glbsub.addr = alloca i32, align 4
  %copied.addr = alloca i32, align 4
  %dest = alloca i8*, align 4
  %pl = alloca i32, align 4
  store i8** %d, i8*** %d.addr, align 4
  store i8* %pb, i8** %pb.addr, align 4
  store i8* %pe, i8** %pe.addr, align 4
  store i8* %src, i8** %src.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %glbsub, i32* %glbsub.addr, align 4
  store i32 %copied, i32* %copied.addr, align 4
  %0 = load i8*, i8** %pe.addr, align 4
  %1 = load i8*, i8** %pb.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %pl, align 4
  %2 = load i32, i32* %pl, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 4
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i8*, i8** %s.addr, align 4
  %5 = load i8, i8* %4, align 1
  %tobool2 = icmp ne i8 %5, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i32, i32* %copied.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i8*, i8** %src.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load i8*, i8** %src.addr, align 4
  %call = call i8* @dupstring(i8* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %dest, align 4
  %9 = load i8**, i8*** %d.addr, align 4
  store i8* %cond, i8** %9, align 4
  %10 = load i32, i32* %glbsub.addr, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %cond.end
  %11 = load i8*, i8** %dest, align 4
  call void @shtokenize(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then5, %cond.end
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false, %entry
  %12 = load i32, i32* %pl, align 4
  %13 = load i32, i32* %l.addr, align 4
  %add = add nsw i32 %12, %13
  %14 = load i8*, i8** %s.addr, align 4
  %tobool6 = icmp ne i8* %14, null
  br i1 %tobool6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %if.else
  %15 = load i8*, i8** %s.addr, align 4
  %call8 = call i32 @strlen(i8* %15)
  br label %cond.end10

cond.false9:                                      ; preds = %if.else
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %call8, %cond.true7 ], [ 0, %cond.false9 ]
  %add12 = add i32 %add, %cond11
  %add13 = add i32 %add12, 1
  %call14 = call i8* @hcalloc(i32 %add13)
  store i8* %call14, i8** %dest, align 4
  %16 = load i8**, i8*** %d.addr, align 4
  store i8* %call14, i8** %16, align 4
  %17 = load i8*, i8** %dest, align 4
  %18 = load i8*, i8** %pb.addr, align 4
  %19 = load i32, i32* %pl, align 4
  %call15 = call i8* @strncpy(i8* %17, i8* %18, i32 %19)
  %20 = load i32, i32* %pl, align 4
  %21 = load i8*, i8** %dest, align 4
  %add.ptr = getelementptr inbounds i8, i8* %21, i32 %20
  store i8* %add.ptr, i8** %dest, align 4
  %22 = load i8*, i8** %dest, align 4
  %23 = load i8*, i8** %src.addr, align 4
  %call16 = call i8* @strcpy(i8* %22, i8* %23)
  %24 = load i32, i32* %glbsub.addr, align 4
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %cond.end10
  %25 = load i8*, i8** %dest, align 4
  call void @shtokenize(i8* %25)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %cond.end10
  %26 = load i32, i32* %l.addr, align 4
  %27 = load i8*, i8** %dest, align 4
  %add.ptr20 = getelementptr inbounds i8, i8* %27, i32 %26
  store i8* %add.ptr20, i8** %dest, align 4
  %28 = load i8*, i8** %s.addr, align 4
  %tobool21 = icmp ne i8* %28, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %29 = load i8*, i8** %dest, align 4
  %30 = load i8*, i8** %s.addr, align 4
  %call23 = call i8* @strcpy(i8* %29, i8* %30)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  %31 = load i8*, i8** %dest, align 4
  ret i8* %31
}

declare i32 @wcsitype(i32, i32) #1

declare i32 @countlinknodes(%union.linkroot*) #1

declare i8* @parse_subscript(i8*, i32, i32) #1

declare i32 @parsestr(i8**) #1

; Function Attrs: noinline nounwind
define internal i32 @wcpadwidth(i32 %wc, i32 %multi_width) #0 {
entry:
  %retval = alloca i32, align 4
  %wc.addr = alloca i32, align 4
  %multi_width.addr = alloca i32, align 4
  %width = alloca i32, align 4
  store i32 %wc, i32* %wc.addr, align 4
  store i32 %multi_width, i32* %multi_width.addr, align 4
  %0 = load i32, i32* %multi_width.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, i32* %wc.addr, align 4
  %call = call i32 @wcwidth(i32 %1)
  store i32 %call, i32* %width, align 4
  %2 = load i32, i32* %width, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %3 = load i32, i32* %width, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb1
  store i32 0, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %wc.addr, align 4
  %call2 = call i32 @wcwidth(i32 %4)
  %cmp3 = icmp sgt i32 %call2, 0
  %cond = select i1 %cmp3, i32 1, i32 0
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end, %if.then, %sw.bb
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare i32 @wcwidth(i32) #1

declare i32 @parsestrnoerr(i8**) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
