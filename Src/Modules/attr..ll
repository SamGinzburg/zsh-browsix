; ModuleID = 'attr.c'
source_filename = "attr.c"
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

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([4 x %struct.builtin], [4 x %struct.builtin]* @bintab, i32 0, i32 0), i32 4, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@bintab = internal global [4 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_getattr, i32 2, i32 3, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_setattr, i32 3, i32 3, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_delattr, i32 2, i32 -1, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_listattr, i32 1, i32 2, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null }], align 4
@.str = private unnamed_addr constant [9 x i8] c"zgetattr\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"zsetattr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"zdelattr\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"zlistattr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s: %e\00", align 1

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
define internal i32 @bin_getattr(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %val_len = alloca i32, align 4
  %attr_len = alloca i32, align 4
  %slen = alloca i32, align 4
  %value = alloca i8*, align 4
  %file = alloca i8*, align 4
  %attr = alloca i8*, align 4
  %param = alloca i8*, align 4
  %symlink = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %val_len, align 4
  store i32 0, i32* %attr_len, align 4
  %0 = load i8**, i8*** %argv.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %0, i32 0
  %1 = load i8*, i8** %arrayidx, align 4
  store i8* %1, i8** %file, align 4
  %2 = load i8**, i8*** %argv.addr, align 4
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i32 1
  %3 = load i8*, i8** %arrayidx1, align 4
  store i8* %3, i8** %attr, align 4
  %4 = load i8**, i8*** %argv.addr, align 4
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i32 2
  %5 = load i8*, i8** %arrayidx2, align 4
  store i8* %5, i8** %param, align 4
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 104
  %7 = load i8, i8* %arrayidx3, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv4 = zext i1 %cmp to i32
  store i32 %conv4, i32* %symlink, align 4
  %8 = load i8*, i8** %file, align 4
  %call = call i8* @unmetafy(i8* %8, i32* %slen)
  %9 = load i8*, i8** %attr, align 4
  %call5 = call i8* @unmetafy(i8* %9, i32* null)
  %10 = load i8*, i8** %file, align 4
  %11 = load i8*, i8** %attr, align 4
  %12 = load i32, i32* %symlink, align 4
  %call6 = call i32 @xgetxattr(i8* %10, i8* %11, i8* null, i32 0, i32 %12)
  store i32 %call6, i32* %val_len, align 4
  %13 = load i32, i32* %val_len, align 4
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %14 = load i8*, i8** %param, align 4
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %15 = load i8*, i8** %param, align 4
  call void @unsetparam(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %entry
  %16 = load i32, i32* %val_len, align 4
  %cmp11 = icmp sgt i32 %16, 0
  br i1 %cmp11, label %if.then13, label %if.end30

if.then13:                                        ; preds = %if.end10
  %17 = load i32, i32* %val_len, align 4
  %add = add nsw i32 %17, 1
  %call14 = call i8* @zalloc(i32 %add)
  store i8* %call14, i8** %value, align 4
  %18 = load i8*, i8** %file, align 4
  %19 = load i8*, i8** %attr, align 4
  %20 = load i8*, i8** %value, align 4
  %21 = load i32, i32* %val_len, align 4
  %22 = load i32, i32* %symlink, align 4
  %call15 = call i32 @xgetxattr(i8* %18, i8* %19, i8* %20, i32 %21, i32 %22)
  store i32 %call15, i32* %attr_len, align 4
  %23 = load i32, i32* %attr_len, align 4
  %cmp16 = icmp sgt i32 %23, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.then13
  %24 = load i32, i32* %attr_len, align 4
  %25 = load i32, i32* %val_len, align 4
  %cmp18 = icmp sle i32 %24, %25
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %land.lhs.true
  %26 = load i8*, i8** %value, align 4
  %27 = load i32, i32* %attr_len, align 4
  %arrayidx21 = getelementptr inbounds i8, i8* %26, i32 %27
  store i8 0, i8* %arrayidx21, align 1
  %28 = load i8*, i8** %param, align 4
  %tobool22 = icmp ne i8* %28, null
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  %29 = load i8*, i8** %param, align 4
  %30 = load i8*, i8** %value, align 4
  %31 = load i32, i32* %attr_len, align 4
  %call24 = call i8* @metafy(i8* %30, i32 %31, i32 3)
  %call25 = call %struct.param* @setsparam(i8* %29, i8* %call24)
  br label %if.end27

if.else:                                          ; preds = %if.then20
  %32 = load i8*, i8** %value, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %32)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %if.then13
  %33 = load i8*, i8** %value, align 4
  %34 = load i32, i32* %val_len, align 4
  %add29 = add nsw i32 %34, 1
  call void @zfree(i8* %33, i32 %add29)
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end10
  %35 = load i32, i32* %val_len, align 4
  %cmp31 = icmp slt i32 %35, 0
  br i1 %cmp31, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %36 = load i32, i32* %attr_len, align 4
  %cmp33 = icmp slt i32 %36, 0
  br i1 %cmp33, label %if.then38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %37 = load i32, i32* %attr_len, align 4
  %38 = load i32, i32* %val_len, align 4
  %cmp36 = icmp sgt i32 %37, %38
  br i1 %cmp36, label %if.then38, label %if.end49

if.then38:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %if.end30
  %39 = load i8*, i8** %nam.addr, align 4
  %40 = load i8*, i8** %file, align 4
  %41 = load i32, i32* %slen, align 4
  %call39 = call i8* @metafy(i8* %40, i32 %41, i32 5)
  %call40 = call i32* @__errno_location()
  %42 = load i32, i32* %call40, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call39, i32 %42)
  %43 = load i32, i32* %val_len, align 4
  %cmp41 = icmp sgt i32 %43, 0
  br i1 %cmp41, label %land.lhs.true43, label %lor.rhs

land.lhs.true43:                                  ; preds = %if.then38
  %44 = load i32, i32* %attr_len, align 4
  %45 = load i32, i32* %val_len, align 4
  %cmp44 = icmp sgt i32 %44, %45
  br i1 %cmp44, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true43, %if.then38
  %46 = load i32, i32* %attr_len, align 4
  %cmp46 = icmp slt i32 %46, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true43
  %47 = phi i1 [ true, %land.lhs.true43 ], [ %cmp46, %lor.rhs ]
  %lor.ext = zext i1 %47 to i32
  %add48 = add nsw i32 1, %lor.ext
  store i32 %add48, i32* %ret, align 4
  br label %if.end49

if.end49:                                         ; preds = %lor.end, %lor.lhs.false35
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.end
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind
define internal i32 @bin_setattr(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %slen = alloca i32, align 4
  %vlen = alloca i32, align 4
  %symlink = alloca i32, align 4
  %file = alloca i8*, align 4
  %attr = alloca i8*, align 4
  %value = alloca i8*, align 4
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
  store i32 %conv1, i32* %symlink, align 4
  %2 = load i8**, i8*** %argv.addr, align 4
  %arrayidx2 = getelementptr inbounds i8*, i8** %2, i32 0
  %3 = load i8*, i8** %arrayidx2, align 4
  store i8* %3, i8** %file, align 4
  %4 = load i8**, i8*** %argv.addr, align 4
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i32 1
  %5 = load i8*, i8** %arrayidx3, align 4
  store i8* %5, i8** %attr, align 4
  %6 = load i8**, i8*** %argv.addr, align 4
  %arrayidx4 = getelementptr inbounds i8*, i8** %6, i32 2
  %7 = load i8*, i8** %arrayidx4, align 4
  store i8* %7, i8** %value, align 4
  %8 = load i8*, i8** %file, align 4
  %call = call i8* @unmetafy(i8* %8, i32* %slen)
  %9 = load i8*, i8** %attr, align 4
  %call5 = call i8* @unmetafy(i8* %9, i32* null)
  %10 = load i8*, i8** %value, align 4
  %call6 = call i8* @unmetafy(i8* %10, i32* %vlen)
  %11 = load i8*, i8** %file, align 4
  %12 = load i8*, i8** %attr, align 4
  %13 = load i8*, i8** %value, align 4
  %14 = load i32, i32* %vlen, align 4
  %15 = load i32, i32* %symlink, align 4
  %call7 = call i32 @xsetxattr(i8* %11, i8* %12, i8* %13, i32 %14, i32 0, i32 %15)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i8*, i8** %nam.addr, align 4
  %17 = load i8*, i8** %file, align 4
  %18 = load i32, i32* %slen, align 4
  %call8 = call i8* @metafy(i8* %17, i32 %18, i32 5)
  %call9 = call i32* @__errno_location()
  %19 = load i32, i32* %call9, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call8, i32 %19)
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, i32* %ret, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind
define internal i32 @bin_delattr(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %slen = alloca i32, align 4
  %symlink = alloca i32, align 4
  %file = alloca i8*, align 4
  %attr = alloca i8**, align 4
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
  store i32 %conv1, i32* %symlink, align 4
  %2 = load i8**, i8*** %argv.addr, align 4
  %arrayidx2 = getelementptr inbounds i8*, i8** %2, i32 0
  %3 = load i8*, i8** %arrayidx2, align 4
  store i8* %3, i8** %file, align 4
  %4 = load i8**, i8*** %argv.addr, align 4
  store i8** %4, i8*** %attr, align 4
  %5 = load i8*, i8** %file, align 4
  %call = call i8* @unmetafy(i8* %5, i32* %slen)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i8**, i8*** %attr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %attr, align 4
  %7 = load i8*, i8** %incdec.ptr, align 4
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8**, i8*** %attr, align 4
  %9 = load i8*, i8** %8, align 4
  %call3 = call i8* @unmetafy(i8* %9, i32* null)
  %10 = load i8*, i8** %file, align 4
  %11 = load i8**, i8*** %attr, align 4
  %12 = load i8*, i8** %11, align 4
  %13 = load i32, i32* %symlink, align 4
  %call4 = call i32 @xremovexattr(i8* %10, i8* %12, i32 %13)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load i8*, i8** %nam.addr, align 4
  %15 = load i8*, i8** %file, align 4
  %16 = load i32, i32* %slen, align 4
  %call6 = call i8* @metafy(i8* %15, i32 %16, i32 5)
  %call7 = call i32* @__errno_location()
  %17 = load i32, i32* %call7, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call6, i32 %17)
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %18 = load i32, i32* %ret, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal i32 @bin_listattr(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %val_len = alloca i32, align 4
  %list_len = alloca i32, align 4
  %slen = alloca i32, align 4
  %value = alloca i8*, align 4
  %file = alloca i8*, align 4
  %param = alloca i8*, align 4
  %symlink = alloca i32, align 4
  %p = alloca i8*, align 4
  %arrlen = alloca i32, align 4
  %array = alloca i8**, align 4
  %arrptr = alloca i8**, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %list_len, align 4
  %0 = load i8**, i8*** %argv.addr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %0, i32 0
  %1 = load i8*, i8** %arrayidx, align 4
  store i8* %1, i8** %file, align 4
  %2 = load i8**, i8*** %argv.addr, align 4
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i32 1
  %3 = load i8*, i8** %arrayidx1, align 4
  store i8* %3, i8** %param, align 4
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 104
  %5 = load i8, i8* %arrayidx2, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %symlink, align 4
  %6 = load i8*, i8** %file, align 4
  %call = call i8* @unmetafy(i8* %6, i32* %slen)
  %7 = load i8*, i8** %file, align 4
  %8 = load i32, i32* %symlink, align 4
  %call4 = call i32 @xlistxattr(i8* %7, i8* null, i32 0, i32 %8)
  store i32 %call4, i32* %val_len, align 4
  %9 = load i32, i32* %val_len, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %param, align 4
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %11 = load i8*, i8** %param, align 4
  call void @unsetparam(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  %12 = load i32, i32* %val_len, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end52

if.then11:                                        ; preds = %if.end8
  %13 = load i32, i32* %val_len, align 4
  %add = add nsw i32 %13, 1
  %call12 = call i8* @zalloc(i32 %add)
  store i8* %call12, i8** %value, align 4
  %14 = load i8*, i8** %file, align 4
  %15 = load i8*, i8** %value, align 4
  %16 = load i32, i32* %val_len, align 4
  %17 = load i32, i32* %symlink, align 4
  %call13 = call i32 @xlistxattr(i8* %14, i8* %15, i32 %16, i32 %17)
  store i32 %call13, i32* %list_len, align 4
  %18 = load i32, i32* %list_len, align 4
  %cmp14 = icmp sgt i32 %18, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %if.then11
  %19 = load i32, i32* %list_len, align 4
  %20 = load i32, i32* %val_len, align 4
  %cmp16 = icmp sle i32 %19, %20
  br i1 %cmp16, label %if.then18, label %if.end50

if.then18:                                        ; preds = %land.lhs.true
  %21 = load i8*, i8** %value, align 4
  store i8* %21, i8** %p, align 4
  %22 = load i8*, i8** %param, align 4
  %tobool19 = icmp ne i8* %22, null
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  store i32 0, i32* %arrlen, align 4
  store i8** null, i8*** %array, align 4
  store i8** null, i8*** %arrptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then20
  %23 = load i8*, i8** %p, align 4
  %24 = load i8*, i8** %value, align 4
  %25 = load i32, i32* %list_len, align 4
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i32 %25
  %cmp22 = icmp ult i8* %23, %arrayidx21
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %arrlen, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %arrlen, align 4
  %27 = load i8*, i8** %p, align 4
  %call24 = call i32 @strlen(i8* %27)
  %add25 = add i32 %call24, 1
  %28 = load i8*, i8** %p, align 4
  %add.ptr = getelementptr inbounds i8, i8* %28, i32 %add25
  store i8* %add.ptr, i8** %p, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %arrlen, align 4
  %add26 = add nsw i32 %29, 1
  %mul = mul i32 %add26, 4
  %call27 = call i8* @zshcalloc(i32 %mul)
  %30 = bitcast i8* %call27 to i8**
  store i8** %30, i8*** %array, align 4
  store i8** %30, i8*** %arrptr, align 4
  %31 = load i8*, i8** %value, align 4
  store i8* %31, i8** %p, align 4
  br label %while.cond28

while.cond28:                                     ; preds = %while.body32, %while.end
  %32 = load i8*, i8** %p, align 4
  %33 = load i8*, i8** %value, align 4
  %34 = load i32, i32* %list_len, align 4
  %arrayidx29 = getelementptr inbounds i8, i8* %33, i32 %34
  %cmp30 = icmp ult i8* %32, %arrayidx29
  br i1 %cmp30, label %while.body32, label %while.end37

while.body32:                                     ; preds = %while.cond28
  %35 = load i8*, i8** %p, align 4
  %call33 = call i8* @metafy(i8* %35, i32 -1, i32 3)
  %36 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %incdec.ptr, i8*** %arrptr, align 4
  store i8* %call33, i8** %36, align 4
  %37 = load i8*, i8** %p, align 4
  %call34 = call i32 @strlen(i8* %37)
  %add35 = add i32 %call34, 1
  %38 = load i8*, i8** %p, align 4
  %add.ptr36 = getelementptr inbounds i8, i8* %38, i32 %add35
  store i8* %add.ptr36, i8** %p, align 4
  br label %while.cond28

while.end37:                                      ; preds = %while.cond28
  %39 = load i8*, i8** %param, align 4
  %40 = load i8**, i8*** %array, align 4
  %call38 = call %struct.param* @setaparam(i8* %39, i8** %40)
  br label %if.end49

if.else:                                          ; preds = %if.then18
  br label %while.cond39

while.cond39:                                     ; preds = %while.body43, %if.else
  %41 = load i8*, i8** %p, align 4
  %42 = load i8*, i8** %value, align 4
  %43 = load i32, i32* %list_len, align 4
  %arrayidx40 = getelementptr inbounds i8, i8* %42, i32 %43
  %cmp41 = icmp ult i8* %41, %arrayidx40
  br i1 %cmp41, label %while.body43, label %while.end48

while.body43:                                     ; preds = %while.cond39
  %44 = load i8*, i8** %p, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %44)
  %45 = load i8*, i8** %p, align 4
  %call45 = call i32 @strlen(i8* %45)
  %add46 = add i32 %call45, 1
  %46 = load i8*, i8** %p, align 4
  %add.ptr47 = getelementptr inbounds i8, i8* %46, i32 %add46
  store i8* %add.ptr47, i8** %p, align 4
  br label %while.cond39

while.end48:                                      ; preds = %while.cond39
  br label %if.end49

if.end49:                                         ; preds = %while.end48, %while.end37
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %land.lhs.true, %if.then11
  %47 = load i8*, i8** %value, align 4
  %48 = load i32, i32* %val_len, align 4
  %add51 = add nsw i32 %48, 1
  call void @zfree(i8* %47, i32 %add51)
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %if.end8
  %49 = load i32, i32* %val_len, align 4
  %cmp53 = icmp slt i32 %49, 0
  br i1 %cmp53, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end52
  %50 = load i32, i32* %list_len, align 4
  %cmp55 = icmp slt i32 %50, 0
  br i1 %cmp55, label %if.then60, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %51 = load i32, i32* %list_len, align 4
  %52 = load i32, i32* %val_len, align 4
  %cmp58 = icmp sgt i32 %51, %52
  br i1 %cmp58, label %if.then60, label %if.end68

if.then60:                                        ; preds = %lor.lhs.false57, %lor.lhs.false, %if.end52
  %53 = load i8*, i8** %nam.addr, align 4
  %54 = load i8*, i8** %file, align 4
  %55 = load i32, i32* %slen, align 4
  %call61 = call i8* @metafy(i8* %54, i32 %55, i32 5)
  %call62 = call i32* @__errno_location()
  %56 = load i32, i32* %call62, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call61, i32 %56)
  %57 = load i32, i32* %list_len, align 4
  %58 = load i32, i32* %val_len, align 4
  %cmp63 = icmp sgt i32 %57, %58
  br i1 %cmp63, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then60
  %59 = load i32, i32* %list_len, align 4
  %cmp65 = icmp slt i32 %59, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then60
  %60 = phi i1 [ true, %if.then60 ], [ %cmp65, %lor.rhs ]
  %lor.ext = zext i1 %60 to i32
  %add67 = add nsw i32 1, %lor.ext
  store i32 %add67, i32* %ret, align 4
  br label %if.end68

if.end68:                                         ; preds = %lor.end, %lor.lhs.false57
  %61 = load i32, i32* %ret, align 4
  store i32 %61, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end68, %if.end
  %62 = load i32, i32* %retval, align 4
  ret i32 %62
}

declare i8* @unmetafy(i8*, i32*) #1

; Function Attrs: noinline nounwind
define internal i32 @xgetxattr(i8* %path, i8* %name, i8* %value, i32 %size, i32 %symlink) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  %symlink.addr = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %symlink, i32* %symlink.addr, align 4
  %0 = load i32, i32* %symlink.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = load i8*, i8** %value.addr, align 4
  %4 = load i32, i32* %size.addr, align 4
  %call = call i32 @getxattr(i8* %1, i8* %2, i8* %3, i32 %4)
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load i8*, i8** %path.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = load i8*, i8** %value.addr, align 4
  %8 = load i32, i32* %size.addr, align 4
  %call1 = call i32 @lgetxattr(i8* %5, i8* %6, i8* %7, i32 %8)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare void @unsetparam(i8*) #1

declare i8* @zalloc(i32) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i8* @metafy(i8*, i32, i32) #1

declare i32 @printf(i8*, ...) #1

declare void @zfree(i8*, i32) #1

declare void @zwarnnam(i8*, i8*, ...) #1

declare i32* @__errno_location() #1

declare i32 @getxattr(i8*, i8*, i8*, i32) #1

declare i32 @lgetxattr(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @xsetxattr(i8* %path, i8* %name, i8* %value, i32 %size, i32 %flags, i32 %symlink) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %symlink.addr = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %symlink, i32* %symlink.addr, align 4
  %0 = load i32, i32* %symlink.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = load i8*, i8** %value.addr, align 4
  %4 = load i32, i32* %size.addr, align 4
  %5 = load i32, i32* %flags.addr, align 4
  %call = call i32 @setxattr(i8* %1, i8* %2, i8* %3, i32 %4, i32 %5)
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %6 = load i8*, i8** %path.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %8 = load i8*, i8** %value.addr, align 4
  %9 = load i32, i32* %size.addr, align 4
  %10 = load i32, i32* %flags.addr, align 4
  %call1 = call i32 @lsetxattr(i8* %6, i8* %7, i8* %8, i32 %9, i32 %10)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare i32 @setxattr(i8*, i8*, i8*, i32, i32) #1

declare i32 @lsetxattr(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @xremovexattr(i8* %path, i8* %name, i32 %symlink) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 4
  %name.addr = alloca i8*, align 4
  %symlink.addr = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %symlink, i32* %symlink.addr, align 4
  %0 = load i32, i32* %symlink.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call i32 @removexattr(i8* %1, i8* %2)
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 4
  %4 = load i8*, i8** %name.addr, align 4
  %call1 = call i32 @lremovexattr(i8* %3, i8* %4)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare i32 @removexattr(i8*, i8*) #1

declare i32 @lremovexattr(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @xlistxattr(i8* %path, i8* %list, i32 %size, i32 %symlink) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 4
  %list.addr = alloca i8*, align 4
  %size.addr = alloca i32, align 4
  %symlink.addr = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 4
  store i8* %list, i8** %list.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %symlink, i32* %symlink.addr, align 4
  %0 = load i32, i32* %symlink.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 4
  %2 = load i8*, i8** %list.addr, align 4
  %3 = load i32, i32* %size.addr, align 4
  %call = call i32 @listxattr(i8* %1, i8* %2, i32 %3)
  store i32 %call, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i8*, i8** %path.addr, align 4
  %5 = load i8*, i8** %list.addr, align 4
  %6 = load i32, i32* %size.addr, align 4
  %call1 = call i32 @llistxattr(i8* %4, i8* %5, i32 %6)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare i32 @strlen(i8*) #1

declare i8* @zshcalloc(i32) #1

declare %struct.param* @setaparam(i8*, i8**) #1

declare i32 @listxattr(i8*, i8*, i32) #1

declare i32 @llistxattr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
