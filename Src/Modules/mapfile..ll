; ModuleID = 'mapfile.c'
source_filename = "mapfile.c"
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
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.__dirstream = type opaque
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }

@module_features = internal global %struct.features { %struct.builtin* null, i32 0, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* getelementptr inbounds ([1 x %struct.paramdef], [1 x %struct.paramdef]* @partab, i32 0, i32 0), i32 1, i32 0 }, align 4
@partab = internal global [1 x %struct.paramdef] [%struct.paramdef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @mapfiles_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmmapfile, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmmapfile, %struct.param* null }], align 4
@.str = private unnamed_addr constant [8 x i8] c"mapfile\00", align 1
@mapfiles_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmmapfiles, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ftruncate failed: %e\00", align 1
@mapfile_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmmapfile, void (%struct.param*, i32)* @unsetpmmapfile }, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1

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
define internal %struct.hashnode* @getpmmapfile(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %contents = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 0, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @mapfile_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load %struct.param*, %struct.param** getelementptr inbounds ([1 x %struct.paramdef], [1 x %struct.paramdef]* @partab, i32 0, i32 0, i32 6), align 4
  %node3 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  %6 = load i32, i32* %flags4, align 8
  %and = and i32 %6, 1024
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %8 = load i32, i32* %flags6, align 8
  %or = or i32 %8, %and
  store i32 %or, i32* %flags6, align 8
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  %10 = load i8*, i8** %nam8, align 4
  %call9 = call i8* @get_contents(i8* %10)
  store i8* %call9, i8** %contents, align 4
  %tobool = icmp ne i8* %call9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** %contents, align 4
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %11, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %u10 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 1
  %str11 = bitcast %union.anon.1* %u10 to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %str11, align 8
  %14 = load %struct.param*, %struct.param** %pm, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %15 = load i32, i32* %flags13, align 8
  %or14 = or i32 %15, 33554432
  store i32 %or14, i32* %flags13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.param*, %struct.param** %pm, align 4
  %node15 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 0
  ret %struct.hashnode* %node15
}

; Function Attrs: noinline nounwind
define internal void @scanpmmapfile(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %dir = alloca %struct.__dirstream*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct.__dirstream* %call, %struct.__dirstream** %dir, align 4
  %tobool = icmp ne %struct.__dirstream* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @mapfile_gsu, %struct.gsu_scalar** %s, align 8
  %1 = load %struct.param*, %struct.param** getelementptr inbounds ([1 x %struct.paramdef], [1 x %struct.paramdef]* @partab, i32 0, i32 0, i32 6), align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  %2 = load i32, i32* %flags3, align 8
  %and = and i32 %2, 1024
  %node4 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 2
  %3 = load i32, i32* %flags5, align 8
  %or = or i32 %3, %and
  store i32 %or, i32* %flags5, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 4
  %call6 = call i8* @zreaddir(%struct.__dirstream* %4, i32 1)
  %node7 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  store i8* %call6, i8** %nam, align 4
  %tobool8 = icmp ne i8* %call6, null
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %node9 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 1
  %5 = load i8*, i8** %nam10, align 4
  %call11 = call i8* @dupstring(i8* %5)
  %node12 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 1
  store i8* %call11, i8** %nam13, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %str, align 8
  %6 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %7 = load i32, i32* %flags.addr, align 4
  call void %6(%struct.hashnode* %node14, i32 %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 4
  %call15 = call i32 @closedir(%struct.__dirstream* %8)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare %struct.hashtable* @hashgetfn(%struct.param*) #1

; Function Attrs: noinline nounwind
define internal void @setpmmapfiles(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %v = alloca %struct.value, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end15

if.end:                                           ; preds = %entry
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %1, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 1024
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end12, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then2
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 0
  %5 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %6 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 2
  %7 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %7, i32 %8
  %9 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %9, %struct.hashnode** %hn, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %10 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool4 = icmp ne %struct.hashnode* %10, null
  br i1 %tobool4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %flags6 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags6, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 0, i32* %isarr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %arr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 5
  store i8** null, i8*** %arr, align 4
  %11 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %12 = bitcast %struct.hashnode* %11 to %struct.param*
  %pm7 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* %12, %struct.param** %pm7, align 4
  %pm8 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  %13 = load %struct.param*, %struct.param** %pm8, align 4
  %call = call i8* @getstrvalue(%struct.value* %v)
  %call9 = call i8* @ztrdup(i8* %call)
  call void @setpmmapfile(%struct.param* %13, i8* %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %14 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %14, i32 0, i32 0
  %15 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %15, %struct.hashnode** %hn, align 4
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  br label %if.end12

if.end12:                                         ; preds = %for.end11, %if.end
  %17 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 1
  %hash = bitcast %union.anon.1* %u to %struct.hashtable**
  %19 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  %cmp13 = icmp ne %struct.hashtable* %17, %19
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  %20 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @deleteparamtable(%struct.hashtable* %20)
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then14, %if.end12
  ret void
}

declare void @stdunsetfn(%struct.param*, i32) #1

; Function Attrs: noinline nounwind
define internal void @setpmmapfile(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  %fd = alloca i32, align 4
  %len = alloca i32, align 4
  %name = alloca i8*, align 4
  %mmptr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  store i32 -1, i32* %fd, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %call = call i8* @ztrdup(i8* %1)
  store i8* %call, i8** %name, align 4
  %2 = load i8*, i8** %name, align 4
  %call1 = call i8* @unmetafy(i8* %2, i32* %len)
  %3 = load i8*, i8** %value.addr, align 4
  %call2 = call i8* @unmetafy(i8* %3, i32* %len)
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node3 = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load i8*, i8** %name, align 4
  %call4 = call i32 (i8*, i32, ...) @open(i8* %6, i32 322, i32 438)
  store i32 %call4, i32* %fd, align 4
  %cmp = icmp sge i32 %call4, 0
  br i1 %cmp, label %land.lhs.true5, label %if.end19

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load i32, i32* %len, align 4
  %8 = load i32, i32* %fd, align 4
  %call6 = call i8* @mmap(i8* null, i32 %7, i32 3, i32 16385, i32 %8, i32 0)
  store i8* %call6, i8** %mmptr, align 4
  %cmp7 = icmp ne i8* %call6, inttoptr (i32 -1 to i8*)
  br i1 %cmp7, label %if.then, label %if.end19

if.then:                                          ; preds = %land.lhs.true5
  %9 = load i32, i32* %fd, align 4
  %10 = load i32, i32* %len, align 4
  %call8 = call i32 @ftruncate(i32 %9, i32 %10)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %call11 = call i32* @__errno_location()
  %11 = load i32, i32* %call11, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %12 = load i8*, i8** %mmptr, align 4
  %13 = load i8*, i8** %value.addr, align 4
  %14 = load i32, i32* %len, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 %14, i32 1, i1 false)
  %15 = load i8*, i8** %mmptr, align 4
  %16 = load i32, i32* %len, align 4
  %call12 = call i32 @msync(i8* %15, i32 %16, i32 4)
  %17 = load i32, i32* %fd, align 4
  %18 = load i32, i32* %len, align 4
  %call13 = call i32 @ftruncate(i32 %17, i32 %18)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %call16 = call i32* @__errno_location()
  %19 = load i32, i32* %call16, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %19)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  %20 = load i8*, i8** %mmptr, align 4
  %21 = load i32, i32* %len, align 4
  %call18 = call i32 @munmap(i8* %20, i32 %21)
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %land.lhs.true5, %land.lhs.true, %entry
  %22 = load i32, i32* %fd, align 4
  %cmp20 = icmp sge i32 %22, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %23 = load i32, i32* %fd, align 4
  %call22 = call i32 @close(i32 %23)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %24 = load i8*, i8** %name, align 4
  call void @free(i8* %24)
  %25 = load i8*, i8** %value.addr, align 4
  call void @free(i8* %25)
  ret void
}

declare i8* @ztrdup(i8*) #1

declare i8* @getstrvalue(%struct.value*) #1

declare void @deleteparamtable(%struct.hashtable*) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i32 @open(i8*, i32, ...) #1

declare i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare i32 @ftruncate(i32, i32) #1

declare void @zwarn(i8*, ...) #1

declare i32* @__errno_location() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare i32 @msync(i8*, i32, i32) #1

declare i32 @munmap(i8*, i32) #1

declare i32 @close(i32) #1

declare void @free(i8*) #1

declare i8* @hcalloc(i32) #1

declare i8* @dupstring(i8*) #1

; Function Attrs: noinline nounwind
define internal i8* @get_contents(i8* %fname) #0 {
entry:
  %retval = alloca i8*, align 4
  %fname.addr = alloca i8*, align 4
  %fd = alloca i32, align 4
  %mmptr = alloca i8*, align 4
  %sbuf = alloca %struct.stat, align 8
  %val = alloca i8*, align 4
  store i8* %fname, i8** %fname.addr, align 4
  %0 = load i8*, i8** %fname.addr, align 4
  %call = call i8* @ztrdup(i8* %0)
  store i8* %call, i8** %fname.addr, align 4
  %call1 = call i8* @unmetafy(i8* %call, i32* %fd)
  %1 = load i8*, i8** %fname.addr, align 4
  %call2 = call i32 (i8*, i32, ...) @open(i8* %1, i32 256)
  store i32 %call2, i32* %fd, align 4
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %call3 = call i32 @fstat(i32 %2, %struct.stat* %sbuf)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 12
  %3 = load i32, i32* %st_size, align 8
  %4 = load i32, i32* %fd, align 4
  %call5 = call i8* @mmap(i8* null, i32 %3, i32 1, i32 16385, i32 %4, i32 0)
  store i8* %call5, i8** %mmptr, align 4
  %cmp6 = icmp eq i8* %call5, inttoptr (i32 -1 to i8*)
  br i1 %cmp6, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %5 = load i32, i32* %fd, align 4
  %cmp7 = icmp sge i32 %5, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %6 = load i32, i32* %fd, align 4
  %call9 = call i32 @close(i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %7 = load i8*, i8** %fname.addr, align 4
  call void @free(i8* %7)
  store i8* null, i8** %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false4
  %8 = load i8*, i8** %mmptr, align 4
  %st_size11 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 12
  %9 = load i32, i32* %st_size11, align 8
  %call12 = call i8* @metafy(i8* %8, i32 %9, i32 6)
  store i8* %call12, i8** %val, align 4
  %10 = load i8*, i8** %mmptr, align 4
  %st_size13 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 12
  %11 = load i32, i32* %st_size13, align 8
  %call14 = call i32 @munmap(i8* %10, i32 %11)
  %12 = load i32, i32* %fd, align 4
  %call15 = call i32 @close(i32 %12)
  %13 = load i8*, i8** %fname.addr, align 4
  call void @free(i8* %13)
  %14 = load i8*, i8** %val, align 4
  store i8* %14, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.end
  %15 = load i8*, i8** %retval, align 4
  ret i8* %15
}

declare i8* @strgetfn(%struct.param*) #1

; Function Attrs: noinline nounwind
define internal void @unsetpmmapfile(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  %fname = alloca i8*, align 4
  %dummy = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %call = call i8* @ztrdup(i8* %1)
  store i8* %call, i8** %fname, align 4
  %2 = load i8*, i8** %fname, align 4
  %call1 = call i8* @unmetafy(i8* %2, i32* %dummy)
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  %4 = load i32, i32* %flags, align 8
  %and = and i32 %4, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %fname, align 4
  %call3 = call i32 @unlink(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %fname, align 4
  call void @free(i8* %6)
  ret void
}

declare i32 @unlink(i8*) #1

declare i32 @fstat(i32, %struct.stat*) #1

declare i8* @metafy(i8*, i32, i32) #1

declare %struct.__dirstream* @opendir(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i8* @zreaddir(%struct.__dirstream*, i32) #1

declare i32 @closedir(%struct.__dirstream*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
