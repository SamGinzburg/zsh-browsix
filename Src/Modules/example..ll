; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct._IO_FILE = type opaque
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
%struct.funcwrap = type { %struct.funcwrap*, i32, i32 (%struct.eprog*, %struct.funcwrap*, i8*)*, %struct.module* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }

@.str = private unnamed_addr constant [41 x i8] c"The example module has now been set up.\0A\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0), i32 1, %struct.conddef* getelementptr inbounds ([2 x %struct.conddef], [2 x %struct.conddef]* @cotab, i32 0, i32 0), i32 2, %struct.mathfunc* getelementptr inbounds ([2 x %struct.mathfunc], [2 x %struct.mathfunc]* @mftab, i32 0, i32 0), i32 2, %struct.paramdef* getelementptr inbounds ([3 x %struct.paramdef], [3 x %struct.paramdef]* @patab, i32 0, i32 0), i32 3, i32 0 }, align 4
@intparam = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"example\00", align 1
@strparam = internal global i8* null, align 4
@arrparam = internal global i8** null, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@wrapper = internal global [1 x %struct.funcwrap] [%struct.funcwrap { %struct.funcwrap* null, i32 0, i32 (%struct.eprog*, %struct.funcwrap*, i8*)* @ex_wrapper, %struct.module* null }], align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Thank you for using the example module.  Have a nice day.\0A\00", align 1
@bintab = internal global [1 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_example, i32 0, i32 -1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* null }], align 4
@cotab = internal global [2 x %struct.conddef] [%struct.conddef { %struct.conddef* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 (i8**, i32)* @cond_i_ex, i32 0, i32 0, i32 0, i8* null }, %struct.conddef { %struct.conddef* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 (i8**, i32)* @cond_p_len, i32 1, i32 2, i32 0, i8* null }], align 4
@mftab = internal global [2 x %struct.mathfunc] [%struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 1, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* null, void (%struct.mnumber*, i8*, i8*, i32)* @math_length, i8* null, i32 0, i32 0, i32 0 }, %struct.mathfunc { %struct.mathfunc* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 0, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)* @math_sum, void (%struct.mnumber*, i8*, i8*, i32)* null, i8* null, i32 1, i32 -1, i32 0 }], align 4
@patab = internal global [3 x %struct.paramdef] [%struct.paramdef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* bitcast (i8*** @arrparam to i8*), i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 2, i8* bitcast (i32* @intparam to i8*), i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* bitcast (i8** @strparam to i8*), i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }], align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Options: \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\0AArguments:\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\0AName: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\0AInteger Parameter: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"String Parameter: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Array Parameter:\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"exarr\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"exint\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"exstr\00", align 1
@opts = external global [181 x i8], align 1

; Function Attrs: noinline nounwind
define i32 @setup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call1 = call i32 @fflush(%struct._IO_FILE* %0)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

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
  store i32 42, i32* @intparam, align 4
  %call = call i8* @ztrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call, i8** @strparam, align 4
  %call1 = call i8* @zalloc(i32 12)
  %0 = bitcast i8* %call1 to i8**
  store i8** %0, i8*** @arrparam, align 4
  %call2 = call i8* @ztrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %1 = load i8**, i8*** @arrparam, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %1, i32 0
  store i8* %call2, i8** %arrayidx, align 4
  %call3 = call i8* @ztrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %2 = load i8**, i8*** @arrparam, align 4
  %arrayidx4 = getelementptr inbounds i8*, i8** %2, i32 1
  store i8* %call3, i8** %arrayidx4, align 4
  %3 = load i8**, i8*** @arrparam, align 4
  %arrayidx5 = getelementptr inbounds i8*, i8** %3, i32 2
  store i8* null, i8** %arrayidx5, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %call6 = call i32 @addwrapper(%struct.module* %4, %struct.funcwrap* getelementptr inbounds ([1 x %struct.funcwrap], [1 x %struct.funcwrap]* @wrapper, i32 0, i32 0))
  ret i32 %call6
}

declare i8* @ztrdup(i8*) #1

declare i8* @zalloc(i32) #1

declare i32 @addwrapper(%struct.module*, %struct.funcwrap*) #1

; Function Attrs: noinline nounwind
define i32 @cleanup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 @deletewrapper(%struct.module* %0, %struct.funcwrap* getelementptr inbounds ([1 x %struct.funcwrap], [1 x %struct.funcwrap]* @wrapper, i32 0, i32 0))
  %1 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 @setfeatureenables(%struct.module* %1, %struct.features* @module_features, i32* null)
  ret i32 %call1
}

declare i32 @deletewrapper(%struct.module*, %struct.funcwrap*) #1

declare i32 @setfeatureenables(%struct.module*, %struct.features*, i32*) #1

; Function Attrs: noinline nounwind
define i32 @finish_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i32 0, i32 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call1 = call i32 @fflush(%struct._IO_FILE* %0)
  ret i32 0
}

; Function Attrs: noinline nounwind
define internal i32 @bin_example(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %oargs = alloca i8**, align 4
  %p = alloca i8**, align 4
  %i = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  store i8** %0, i8*** %oargs, align 4
  %1 = load i8**, i8*** @arrparam, align 4
  store i8** %1, i8*** %p, align 4
  store i32 0, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store i8 32, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i8, i8* %c, align 1
  %inc = add i8 %2, 1
  store i8 %inc, i8* %c, align 1
  %conv = zext i8 %inc to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %3, i32 0, i32 0
  %4 = load i8, i8* %c, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8, i8* %c, align 1
  %conv5 = zext i8 %6 to i32
  %call6 = call i32 @putchar(i32 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.end
  %7 = load i8**, i8*** %args.addr, align 4
  %8 = load i8*, i8** %7, align 4
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond8
  %call10 = call i32 @putchar(i32 32)
  %9 = load i8**, i8*** %args.addr, align 4
  %10 = load i8*, i8** %9, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call11 = call i32 @fputs(i8* %10, %struct._IO_FILE* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  %13 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %for.cond8

for.end13:                                        ; preds = %for.cond8
  %14 = load i8*, i8** %nam.addr, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %14)
  %15 = load i32, i32* @intparam, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %15)
  %16 = load i8*, i8** @strparam, align 4
  %tobool16 = icmp ne i8* %16, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end13
  %17 = load i8*, i8** @strparam, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %cond.false ]
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* %cond)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  %18 = load i8**, i8*** %p, align 4
  %tobool19 = icmp ne i8** %18, null
  br i1 %tobool19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then20
  %19 = load i8**, i8*** %p, align 4
  %20 = load i8*, i8** %19, align 4
  %tobool21 = icmp ne i8* %20, null
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8**, i8*** %p, align 4
  %incdec.ptr22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %incdec.ptr22, i8*** %p, align 4
  %22 = load i8*, i8** %21, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %22)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end24

if.end24:                                         ; preds = %while.end, %cond.end
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* @intparam, align 4
  %24 = load i8*, i8** @strparam, align 4
  call void @zsfree(i8* %24)
  %25 = load i8**, i8*** %oargs, align 4
  %26 = load i8*, i8** %25, align 4
  %tobool26 = icmp ne i8* %26, null
  br i1 %tobool26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %if.end24
  %27 = load i8**, i8*** %oargs, align 4
  %28 = load i8*, i8** %27, align 4
  br label %cond.end29

cond.false28:                                     ; preds = %if.end24
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi i8* [ %28, %cond.true27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %cond.false28 ]
  %call31 = call i8* @ztrdup(i8* %cond30)
  store i8* %call31, i8** @strparam, align 4
  %29 = load i8**, i8*** @arrparam, align 4
  %tobool32 = icmp ne i8** %29, null
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %cond.end29
  %30 = load i8**, i8*** @arrparam, align 4
  call void @freearray(i8** %30)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %cond.end29
  %31 = load i8**, i8*** %oargs, align 4
  %call35 = call i8** @zarrdup(i8** %31)
  store i8** %call35, i8*** @arrparam, align 4
  ret i32 0
}

declare i32 @putchar(i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @zsfree(i8*) #1

declare void @freearray(i8**) #1

declare i8** @zarrdup(i8**) #1

; Function Attrs: noinline nounwind
define internal i32 @cond_i_ex(i8** %a, i32 %id) #0 {
entry:
  %a.addr = alloca i8**, align 4
  %id.addr = alloca i32, align 4
  %s1 = alloca i8*, align 4
  %s2 = alloca i8*, align 4
  store i8** %a, i8*** %a.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load i8**, i8*** %a.addr, align 4
  %call = call i8* @cond_str(i8** %0, i32 0, i32 0)
  store i8* %call, i8** %s1, align 4
  %1 = load i8**, i8*** %a.addr, align 4
  %call1 = call i8* @cond_str(i8** %1, i32 1, i32 0)
  store i8* %call1, i8** %s2, align 4
  %2 = load i8*, i8** %s1, align 4
  %3 = load i8*, i8** %s2, align 4
  %call2 = call i8* @dyncat(i8* %2, i8* %3)
  %call3 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %call2)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind
define internal i32 @cond_p_len(i8** %a, i32 %id) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8**, align 4
  %id.addr = alloca i32, align 4
  %s1 = alloca i8*, align 4
  %v = alloca i32, align 4
  store i8** %a, i8*** %a.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load i8**, i8*** %a.addr, align 4
  %call = call i8* @cond_str(i8** %0, i32 0, i32 0)
  store i8* %call, i8** %s1, align 4
  %1 = load i8**, i8*** %a.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %1, i32 1
  %2 = load i8*, i8** %arrayidx, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %a.addr, align 4
  %call1 = call i32 @cond_val(i8** %3, i32 1)
  store i32 %call1, i32* %v, align 4
  %4 = load i8*, i8** %s1, align 4
  %call2 = call i32 @strlen(i8* %4)
  %5 = load i32, i32* %v, align 4
  %cmp = icmp eq i32 %call2, %5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %s1, align 4
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i32 0
  %7 = load i8, i8* %arrayidx3, align 1
  %tobool4 = icmp ne i8 %7, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare i8* @cond_str(i8**, i32, i32) #1

declare i32 @strcmp(i8*, i8*) #1

declare i8* @dyncat(i8*, i8*) #1

declare i32 @cond_val(i8**, i32) #1

declare i32 @strlen(i8*) #1

; Function Attrs: noinline nounwind
define internal void @math_length(%struct.mnumber* noalias sret %agg.result, i8* %name, i8* %arg, i32 %id) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %arg.addr = alloca i8*, align 4
  %id.addr = alloca i32, align 4
  %ret = alloca %struct.mnumber, align 8
  store i8* %name, i8** %name.addr, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %0 = load i8*, i8** %arg.addr, align 4
  %call = call i32 @strlen(i8* %0)
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l = bitcast %union.anon.0* %u to i32*
  store i32 %call, i32* %l, align 8
  %1 = bitcast %struct.mnumber* %agg.result to i8*
  %2 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %2, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @math_sum(%struct.mnumber* noalias sret %agg.result, i8* %name, i32 %argc, %struct.mnumber* %argv, i32 %id) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca %struct.mnumber*, align 4
  %id.addr = alloca i32, align 4
  %ret = alloca %struct.mnumber, align 8
  %f = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store %struct.mnumber* %argv, %struct.mnumber** %argv.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  store i32 0, i32* %f, align 4
  %u = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l = bitcast %union.anon.0* %u to i32*
  store i32 0, i32* %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %type = getelementptr inbounds %struct.mnumber, %struct.mnumber* %1, i32 0, i32 1
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %f, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u3 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %4, i32 0, i32 0
  %l4 = bitcast %union.anon.0* %u3 to i32*
  %5 = load i32, i32* %l4, align 8
  %conv = sitofp i32 %5 to double
  %u5 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %d = bitcast %union.anon.0* %u5 to double*
  %6 = load double, double* %d, align 8
  %add = fadd double %6, %conv
  store double %add, double* %d, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u6 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %7, i32 0, i32 0
  %l7 = bitcast %union.anon.0* %u6 to i32*
  %8 = load i32, i32* %l7, align 8
  %u8 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l9 = bitcast %union.anon.0* %u8 to i32*
  %9 = load i32, i32* %l9, align 8
  %add10 = add nsw i32 %9, %8
  store i32 %add10, i32* %l9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end29

if.else11:                                        ; preds = %while.body
  %10 = load i32, i32* %f, align 4
  %tobool12 = icmp ne i32 %10, 0
  br i1 %tobool12, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.else11
  %11 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u14 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %11, i32 0, i32 0
  %d15 = bitcast %union.anon.0* %u14 to double*
  %12 = load double, double* %d15, align 8
  %u16 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %d17 = bitcast %union.anon.0* %u16 to double*
  %13 = load double, double* %d17, align 8
  %add18 = fadd double %13, %12
  store double %add18, double* %d17, align 8
  br label %if.end28

if.else19:                                        ; preds = %if.else11
  %u20 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %l21 = bitcast %union.anon.0* %u20 to i32*
  %14 = load i32, i32* %l21, align 8
  %conv22 = sitofp i32 %14 to double
  %15 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %u23 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %15, i32 0, i32 0
  %d24 = bitcast %union.anon.0* %u23 to double*
  %16 = load double, double* %d24, align 8
  %add25 = fadd double %conv22, %16
  %u26 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 0
  %d27 = bitcast %union.anon.0* %u26 to double*
  store double %add25, double* %d27, align 8
  store i32 1, i32* %f, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else19, %if.then13
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end
  %17 = load %struct.mnumber*, %struct.mnumber** %argv.addr, align 4
  %incdec.ptr = getelementptr inbounds %struct.mnumber, %struct.mnumber* %17, i32 1
  store %struct.mnumber* %incdec.ptr, %struct.mnumber** %argv.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %f, align 4
  %tobool30 = icmp ne i32 %18, 0
  %cond = select i1 %tobool30, i32 2, i32 1
  %type31 = getelementptr inbounds %struct.mnumber, %struct.mnumber* %ret, i32 0, i32 1
  store i32 %cond, i32* %type31, align 8
  %19 = bitcast %struct.mnumber* %agg.result to i8*
  %20 = bitcast %struct.mnumber* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal i32 @ex_wrapper(%struct.eprog* %prog, %struct.funcwrap* %w, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca %struct.eprog*, align 4
  %w.addr = alloca %struct.funcwrap*, align 4
  %name.addr = alloca i8*, align 4
  %ogd = alloca i32, align 4
  store %struct.eprog* %prog, %struct.eprog** %prog.addr, align 4
  store %struct.funcwrap* %w, %struct.funcwrap** %w.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 65), align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %ogd, align 4
  store i8 1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 65), align 1
  %2 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %3 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %4 = load i8*, i8** %name.addr, align 4
  call void @runshfunc(%struct.eprog* %2, %struct.funcwrap* %3, i8* %4)
  %5 = load i32, i32* %ogd, align 4
  %conv1 = trunc i32 %5 to i8
  store i8 %conv1, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 65), align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare i32 @strncmp(i8*, i8*, i32) #1

declare void @runshfunc(%struct.eprog*, %struct.funcwrap*, i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
