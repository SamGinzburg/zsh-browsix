; ModuleID = 'files.c'
source_filename = "files.c"
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
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.chownmagic = type { i8*, i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.rmmagic = type { i8*, i32, i32, i32 }
%struct.dirsav = type { i32, i32, i8*, i32, i32 }
%struct.recursivecmd = type { i8*, i32, i32, i32, i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)*, i8* }
%struct.__dirstream = type opaque

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([16 x %struct.builtin], [16 x %struct.builtin]* @bintab, i32 0, i32 0), i32 16, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@bintab = internal global [16 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_chown, i32 2, i32 -1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_chown, i32 2, i32 -1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_ln, i32 1, i32 -1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_mkdir, i32 1, i32 -1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_ln, i32 2, i32 -1, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_rm, i32 1, i32 -1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_rmdir, i32 1, i32 -1, i32 0, i8* null, i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_sync, i32 0, i32 0, i32 0, i8* null, i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_chown, i32 2, i32 -1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_chown, i32 2, i32 -1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_ln, i32 1, i32 -1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_mkdir, i32 1, i32 -1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_ln, i32 2, i32 -1, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_rm, i32 1, i32 -1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_rmdir, i32 1, i32 -1, i32 0, i8* null, i8* null }, %struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_sync, i32 0, i32 0, i32 0, i8* null, i8* null }], align 4
@.str = private unnamed_addr constant [6 x i8] c"chgrp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hRs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dfhins\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pm:\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"dfirs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"zf_chgrp\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"zf_chown\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"zf_ln\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"zf_mkdir\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"zf_mv\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"zf_rm\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"zf_rmdir\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"zf_sync\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"%s: no such group\00", align 1
@typtab = external global [256 x i16], align 2
@.str.23 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@errflag = external global i32, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%s: %e\00", align 1
@pwd = external global i8*, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c"failed to chdir(%s): %e\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"failed to return to previous directory: %e\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"last of many arguments must be a directory\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"%s: cannot overwrite directory\00", align 1
@stderr = external constant %struct._IO_FILE*, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c": replace `\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"'? \00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"', overriding mode %04o? \00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"invalid mode `%s'\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"cannot make directory `%s': %e\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c": remove `\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"cannot remove directory `%s': %e\00", align 1

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
define internal i32 @bin_chown(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %chm = alloca %struct.chownmagic, align 4
  %uspec = alloca i8*, align 4
  %p = alloca i8*, align 4
  %end = alloca i8*, align 4
  %pwd = alloca %struct.passwd*, align 4
  %err = alloca i32, align 4
  %grp = alloca %struct.group*, align 4
  %err47 = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @ztrdup(i8* %1)
  store i8* %call, i8** %uspec, align 4
  %2 = load i8*, i8** %uspec, align 4
  store i8* %2, i8** %p, align 4
  %3 = load i8*, i8** %nam.addr, align 4
  %nam1 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 0
  store i8* %3, i8** %nam1, align 4
  %4 = load i32, i32* %func.addr, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %uid = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 1
  store i32 -1, i32* %uid, align 4
  br label %dogroup

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %uspec, align 4
  %call2 = call i8* @strchr(i8* %5, i32 58)
  store i8* %call2, i8** %end, align 4
  %6 = load i8*, i8** %end, align 4
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %7 = load i8*, i8** %uspec, align 4
  %call4 = call i8* @strchr(i8* %7, i32 46)
  store i8* %call4, i8** %end, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load i8*, i8** %end, align 4
  %9 = load i8*, i8** %uspec, align 4
  %cmp6 = icmp eq i8* %8, %9
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %uid8 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 1
  store i32 -1, i32* %uid8, align 4
  %10 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  br label %dogroup

if.else:                                          ; preds = %if.end5
  %11 = load i8*, i8** %end, align 4
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  %12 = load i8*, i8** %end, align 4
  store i8 0, i8* %12, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else
  %13 = load i8*, i8** %p, align 4
  %call12 = call %struct.passwd* @getpwnam(i8* %13)
  store %struct.passwd* %call12, %struct.passwd** %pwd, align 4
  %14 = load %struct.passwd*, %struct.passwd** %pwd, align 4
  %tobool13 = icmp ne %struct.passwd* %14, null
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end11
  %15 = load %struct.passwd*, %struct.passwd** %pwd, align 4
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 2
  %16 = load i32, i32* %pw_uid, align 4
  %uid15 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 1
  store i32 %16, i32* %uid15, align 4
  br label %if.end22

if.else16:                                        ; preds = %if.end11
  %17 = load i8*, i8** %p, align 4
  %call17 = call i32 @getnumeric(i8* %17, i32* %err)
  %uid18 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 1
  store i32 %call17, i32* %uid18, align 4
  %18 = load i32, i32* %err, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else16
  %19 = load i8*, i8** %nam.addr, align 4
  %20 = load i8*, i8** %p, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* %20)
  %21 = load i8*, i8** %uspec, align 4
  call void @free(i8* %21)
  store i32 1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.else16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14
  %22 = load i8*, i8** %end, align 4
  %tobool23 = icmp ne i8* %22, null
  br i1 %tobool23, label %if.then24, label %if.else56

if.then24:                                        ; preds = %if.end22
  %23 = load i8*, i8** %end, align 4
  %add.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %add.ptr, i8** %p, align 4
  %24 = load i8*, i8** %p, align 4
  %25 = load i8, i8* %24, align 1
  %tobool25 = icmp ne i8 %25, 0
  br i1 %tobool25, label %if.else33, label %if.then26

if.then26:                                        ; preds = %if.then24
  %26 = load %struct.passwd*, %struct.passwd** %pwd, align 4
  %tobool27 = icmp ne %struct.passwd* %26, null
  br i1 %tobool27, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26
  %uid28 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 1
  %27 = load i32, i32* %uid28, align 4
  %call29 = call %struct.passwd* @getpwuid(i32 %27)
  store %struct.passwd* %call29, %struct.passwd** %pwd, align 4
  %tobool30 = icmp ne %struct.passwd* %call29, null
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  %28 = load i8*, i8** %nam.addr, align 4
  %29 = load i8*, i8** %uspec, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* %29)
  %30 = load i8*, i8** %uspec, align 4
  call void @free(i8* %30)
  store i32 1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true, %if.then26
  %31 = load %struct.passwd*, %struct.passwd** %pwd, align 4
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 3
  %32 = load i32, i32* %pw_gid, align 4
  %gid = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 2
  store i32 %32, i32* %gid, align 4
  br label %if.end55

if.else33:                                        ; preds = %if.then24
  %33 = load i8*, i8** %p, align 4
  %arrayidx = getelementptr inbounds i8, i8* %33, i32 0
  %34 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %34 to i32
  %cmp34 = icmp eq i32 %conv, 58
  br i1 %cmp34, label %land.lhs.true36, label %if.else41

land.lhs.true36:                                  ; preds = %if.else33
  %35 = load i8*, i8** %p, align 4
  %arrayidx37 = getelementptr inbounds i8, i8* %35, i32 1
  %36 = load i8, i8* %arrayidx37, align 1
  %tobool38 = icmp ne i8 %36, 0
  br i1 %tobool38, label %if.else41, label %if.then39

if.then39:                                        ; preds = %land.lhs.true36
  %gid40 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 2
  store i32 -1, i32* %gid40, align 4
  br label %if.end54

if.else41:                                        ; preds = %land.lhs.true36, %if.else33
  br label %dogroup

dogroup:                                          ; preds = %if.else41, %if.then7, %if.then
  %37 = load i8*, i8** %p, align 4
  %call42 = call %struct.group* @getgrnam(i8* %37)
  store %struct.group* %call42, %struct.group** %grp, align 4
  %38 = load %struct.group*, %struct.group** %grp, align 4
  %tobool43 = icmp ne %struct.group* %38, null
  br i1 %tobool43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %dogroup
  %39 = load %struct.group*, %struct.group** %grp, align 4
  %gr_gid = getelementptr inbounds %struct.group, %struct.group* %39, i32 0, i32 2
  %40 = load i32, i32* %gr_gid, align 4
  %gid45 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 2
  store i32 %40, i32* %gid45, align 4
  br label %if.end53

if.else46:                                        ; preds = %dogroup
  %41 = load i8*, i8** %p, align 4
  %call48 = call i32 @getnumeric(i8* %41, i32* %err47)
  %gid49 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 2
  store i32 %call48, i32* %gid49, align 4
  %42 = load i32, i32* %err47, align 4
  %tobool50 = icmp ne i32 %42, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else46
  %43 = load i8*, i8** %nam.addr, align 4
  %44 = load i8*, i8** %p, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* %44)
  %45 = load i8*, i8** %uspec, align 4
  call void @free(i8* %45)
  store i32 1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.else46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then44
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then39
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end32
  br label %if.end58

if.else56:                                        ; preds = %if.end22
  %gid57 = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %chm, i32 0, i32 2
  store i32 -1, i32* %gid57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.end55
  br label %if.end59

if.end59:                                         ; preds = %if.end58
  %46 = load i8*, i8** %uspec, align 4
  call void @free(i8* %46)
  %47 = load i8*, i8** %nam.addr, align 4
  %48 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 82
  %49 = load i8, i8* %arrayidx60, align 2
  %conv61 = zext i8 %49 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  %conv63 = zext i1 %cmp62 to i32
  %50 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind64 = getelementptr inbounds %struct.options, %struct.options* %50, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [128 x i8], [128 x i8]* %ind64, i32 0, i32 115
  %51 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %51 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  %conv68 = zext i1 %cmp67 to i32
  %52 = load i8**, i8*** %args.addr, align 4
  %add.ptr69 = getelementptr inbounds i8*, i8** %52, i32 1
  %53 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind70 = getelementptr inbounds %struct.options, %struct.options* %53, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [128 x i8], [128 x i8]* %ind70, i32 0, i32 104
  %54 = load i8, i8* %arrayidx71, align 4
  %conv72 = zext i8 %54 to i32
  %cmp73 = icmp ne i32 %conv72, 0
  %cond = select i1 %cmp73, i32 (i8*, i8*, %struct.stat*, i8*)* @chown_dolchown, i32 (i8*, i8*, %struct.stat*, i8*)* @chown_dochown
  %55 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind75 = getelementptr inbounds %struct.options, %struct.options* %55, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [128 x i8], [128 x i8]* %ind75, i32 0, i32 104
  %56 = load i8, i8* %arrayidx76, align 4
  %conv77 = zext i8 %56 to i32
  %cmp78 = icmp ne i32 %conv77, 0
  %cond80 = select i1 %cmp78, i32 (i8*, i8*, %struct.stat*, i8*)* @chown_dolchown, i32 (i8*, i8*, %struct.stat*, i8*)* @chown_dochown
  %57 = bitcast %struct.chownmagic* %chm to i8*
  %call81 = call i32 @recursivecmd(i8* %47, i32 0, i32 %conv63, i32 %conv68, i8** %add.ptr69, i32 (i8*, i8*, %struct.stat*, i8*)* %cond, i32 (i8*, i8*, %struct.stat*, i8*)* @recurse_donothing, i32 (i8*, i8*, %struct.stat*, i8*)* %cond80, i8* %57)
  store i32 %call81, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then51, %if.then31, %if.then20
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind
define internal i32 @bin_ln(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %movefn = alloca i32 (i8*, i8*)*, align 4
  %flags = alloca i32, align 4
  %have_dir = alloca i32, align 4
  %err = alloca i32, align 4
  %a = alloca i8**, align 4
  %ptr = alloca i8*, align 4
  %rp = alloca i8*, align 4
  %buf = alloca i8*, align 4
  %st = alloca %struct.stat, align 8
  %blen = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %err, align 4
  %0 = load i32, i32* %func.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 (i8*, i8*)* @rename, i32 (i8*, i8*)** %movefn, align 4
  %1 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 102
  %2 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  %cond = select i1 %cmp1, i32 0, i32 8
  store i32 %cond, i32* %flags, align 4
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 16
  store i32 %or, i32* %flags, align 4
  br label %if.end37

if.else:                                          ; preds = %entry
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 102
  %5 = load i8, i8* %arrayidx4, align 2
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  %cond8 = select i1 %cmp6, i32 2, i32 0
  store i32 %cond8, i32* %flags, align 4
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind9 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* %ind9, i32 0, i32 104
  %7 = load i8, i8* %arrayidx10, align 4
  %conv11 = zext i8 %7 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %8 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind14 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [128 x i8], [128 x i8]* %ind14, i32 0, i32 110
  %9 = load i8, i8* %arrayidx15, align 2
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %lor.lhs.false, %if.else
  %10 = load i32, i32* %flags, align 4
  %or20 = or i32 %10, 32
  store i32 %or20, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then19, %lor.lhs.false
  %11 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind21 = getelementptr inbounds %struct.options, %struct.options* %11, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [128 x i8], [128 x i8]* %ind21, i32 0, i32 115
  %12 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %12 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end
  store i32 (i8*, i8*)* @symlink, i32 (i8*, i8*)** %movefn, align 4
  br label %if.end36

if.else27:                                        ; preds = %if.end
  store i32 (i8*, i8*)* @link, i32 (i8*, i8*)** %movefn, align 4
  %13 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind28 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [128 x i8], [128 x i8]* %ind28, i32 0, i32 100
  %14 = load i8, i8* %arrayidx29, align 4
  %conv30 = zext i8 %14 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.else27
  %15 = load i32, i32* %flags, align 4
  %or34 = or i32 %15, 1
  store i32 %or34, i32* %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.else27
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then26
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then
  %16 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind38 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [128 x i8], [128 x i8]* %ind38, i32 0, i32 105
  %17 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %17 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %if.end37
  %18 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind43 = getelementptr inbounds %struct.options, %struct.options* %18, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [128 x i8], [128 x i8]* %ind43, i32 0, i32 102
  %19 = load i8, i8* %arrayidx44, align 2
  %conv45 = zext i8 %19 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %if.end50, label %if.then48

if.then48:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %flags, align 4
  %or49 = or i32 %20, 4
  store i32 %or49, i32* %flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %land.lhs.true, %if.end37
  %21 = load i8**, i8*** %args.addr, align 4
  store i8** %21, i8*** %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end50
  %22 = load i8**, i8*** %a, align 4
  %arrayidx51 = getelementptr inbounds i8*, i8** %22, i32 1
  %23 = load i8*, i8** %arrayidx51, align 4
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i8**, i8*** %a, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %incdec.ptr, i8*** %a, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8**, i8*** %a, align 4
  %26 = load i8**, i8*** %args.addr, align 4
  %cmp52 = icmp ne i8** %25, %26
  br i1 %cmp52, label %if.then54, label %if.end93

if.then54:                                        ; preds = %for.end
  %27 = load i8**, i8*** %a, align 4
  %28 = load i8*, i8** %27, align 4
  %call = call i8* @unmeta(i8* %28)
  store i8* %call, i8** %rp, align 4
  %29 = load i8*, i8** %rp, align 4
  %tobool55 = icmp ne i8* %29, null
  br i1 %tobool55, label %land.lhs.true56, label %if.end92

land.lhs.true56:                                  ; preds = %if.then54
  %30 = load i8*, i8** %rp, align 4
  %call57 = call i32 @stat(i8* %30, %struct.stat* %st)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end92, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %31 = load i32, i32* %st_mode, align 8
  %and = and i32 %31, 61440
  %cmp60 = icmp eq i32 %and, 16384
  br i1 %cmp60, label %if.then62, label %if.end92

if.then62:                                        ; preds = %land.lhs.true59
  store i32 1, i32* %have_dir, align 4
  %32 = load i32, i32* %flags, align 4
  %and63 = and i32 %32, 32
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %land.lhs.true65, label %if.end88

land.lhs.true65:                                  ; preds = %if.then62
  %33 = load i8*, i8** %rp, align 4
  %call66 = call i32 @lstat(i8* %33, %struct.stat* %st)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end88, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %st_mode69 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %34 = load i32, i32* %st_mode69, align 8
  %and70 = and i32 %34, 61440
  %cmp71 = icmp eq i32 %and70, 40960
  br i1 %cmp71, label %if.then73, label %if.end88

if.then73:                                        ; preds = %land.lhs.true68
  %35 = load i8**, i8*** %a, align 4
  %36 = load i8**, i8*** %args.addr, align 4
  %add.ptr = getelementptr inbounds i8*, i8** %36, i32 1
  %cmp74 = icmp ugt i8** %35, %add.ptr
  br i1 %cmp74, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.then73
  %call77 = call i32* @__errno_location()
  store i32 20, i32* %call77, align 4
  %37 = load i8*, i8** %nam.addr, align 4
  %38 = load i8**, i8*** %a, align 4
  %39 = load i8*, i8** %38, align 4
  %call78 = call i32* @__errno_location()
  %40 = load i32, i32* %call78, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %39, i32 %40)
  store i32 1, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.then73
  %41 = load i32, i32* %flags, align 4
  %and80 = and i32 %41, 2
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then82, label %if.else84

if.then82:                                        ; preds = %if.end79
  %42 = load i8*, i8** %rp, align 4
  %call83 = call i32 @unlink(i8* %42)
  store i32 0, i32* %have_dir, align 4
  br label %if.end87

if.else84:                                        ; preds = %if.end79
  %call85 = call i32* @__errno_location()
  store i32 17, i32* %call85, align 4
  %43 = load i8*, i8** %nam.addr, align 4
  %44 = load i8**, i8*** %a, align 4
  %45 = load i8*, i8** %44, align 4
  %call86 = call i32* @__errno_location()
  %46 = load i32, i32* %call86, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %45, i32 %46)
  store i32 1, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.then82
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %land.lhs.true68, %land.lhs.true65, %if.then62
  %47 = load i32, i32* %have_dir, align 4
  %tobool89 = icmp ne i32 %47, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end88
  br label %havedir

if.end91:                                         ; preds = %if.end88
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %land.lhs.true59, %land.lhs.true56, %if.then54
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %for.end
  %48 = load i8**, i8*** %a, align 4
  %49 = load i8**, i8*** %args.addr, align 4
  %add.ptr94 = getelementptr inbounds i8*, i8** %49, i32 1
  %cmp95 = icmp ugt i8** %48, %add.ptr94
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end93
  %50 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end98:                                         ; preds = %if.end93
  %51 = load i8**, i8*** %args.addr, align 4
  %arrayidx99 = getelementptr inbounds i8*, i8** %51, i32 1
  %52 = load i8*, i8** %arrayidx99, align 4
  %tobool100 = icmp ne i8* %52, null
  br i1 %tobool100, label %if.end112, label %if.then101

if.then101:                                       ; preds = %if.end98
  %53 = load i8**, i8*** %args.addr, align 4
  %arrayidx102 = getelementptr inbounds i8*, i8** %53, i32 0
  %54 = load i8*, i8** %arrayidx102, align 4
  %call103 = call i8* @strrchr(i8* %54, i32 47)
  store i8* %call103, i8** %ptr, align 4
  %55 = load i8*, i8** %ptr, align 4
  %tobool104 = icmp ne i8* %55, null
  br i1 %tobool104, label %if.then105, label %if.else108

if.then105:                                       ; preds = %if.then101
  %56 = load i8*, i8** %ptr, align 4
  %add.ptr106 = getelementptr inbounds i8, i8* %56, i32 1
  %57 = load i8**, i8*** %args.addr, align 4
  %arrayidx107 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8* %add.ptr106, i8** %arrayidx107, align 4
  br label %if.end111

if.else108:                                       ; preds = %if.then101
  %58 = load i8**, i8*** %args.addr, align 4
  %arrayidx109 = getelementptr inbounds i8*, i8** %58, i32 0
  %59 = load i8*, i8** %arrayidx109, align 4
  %60 = load i8**, i8*** %args.addr, align 4
  %arrayidx110 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8* %59, i8** %arrayidx110, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else108, %if.then105
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end98
  %61 = load i8*, i8** %nam.addr, align 4
  %62 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %movefn, align 4
  %63 = load i8**, i8*** %args.addr, align 4
  %arrayidx113 = getelementptr inbounds i8*, i8** %63, i32 0
  %64 = load i8*, i8** %arrayidx113, align 4
  %65 = load i8**, i8*** %args.addr, align 4
  %arrayidx114 = getelementptr inbounds i8*, i8** %65, i32 1
  %66 = load i8*, i8** %arrayidx114, align 4
  %67 = load i32, i32* %flags, align 4
  %call115 = call i32 @domove(i8* %61, i32 (i8*, i8*)* %62, i8* %64, i8* %66, i32 %67)
  store i32 %call115, i32* %retval, align 4
  br label %return

havedir:                                          ; preds = %if.then90
  %68 = load i8**, i8*** %a, align 4
  %69 = load i8*, i8** %68, align 4
  %call116 = call i8* @ztrdup(i8* %69)
  store i8* %call116, i8** %buf, align 4
  %70 = load i8**, i8*** %a, align 4
  store i8* null, i8** %70, align 4
  %71 = load i8*, i8** %buf, align 4
  %call117 = call i8* @appstr(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  store i8* %call117, i8** %buf, align 4
  %72 = load i8*, i8** %buf, align 4
  %call118 = call i32 @strlen(i8* %72)
  store i32 %call118, i32* %blen, align 4
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc132, %havedir
  %73 = load i8**, i8*** %args.addr, align 4
  %74 = load i8*, i8** %73, align 4
  %tobool120 = icmp ne i8* %74, null
  br i1 %tobool120, label %for.body121, label %for.end134

for.body121:                                      ; preds = %for.cond119
  %75 = load i8**, i8*** %args.addr, align 4
  %76 = load i8*, i8** %75, align 4
  %call122 = call i8* @strrchr(i8* %76, i32 47)
  store i8* %call122, i8** %ptr, align 4
  %77 = load i8*, i8** %ptr, align 4
  %tobool123 = icmp ne i8* %77, null
  br i1 %tobool123, label %if.then124, label %if.else126

if.then124:                                       ; preds = %for.body121
  %78 = load i8*, i8** %ptr, align 4
  %incdec.ptr125 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr125, i8** %ptr, align 4
  br label %if.end127

if.else126:                                       ; preds = %for.body121
  %79 = load i8**, i8*** %args.addr, align 4
  %80 = load i8*, i8** %79, align 4
  store i8* %80, i8** %ptr, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.then124
  %81 = load i8*, i8** %buf, align 4
  %82 = load i32, i32* %blen, align 4
  %arrayidx128 = getelementptr inbounds i8, i8* %81, i32 %82
  store i8 0, i8* %arrayidx128, align 1
  %83 = load i8*, i8** %buf, align 4
  %84 = load i8*, i8** %ptr, align 4
  %call129 = call i8* @appstr(i8* %83, i8* %84)
  store i8* %call129, i8** %buf, align 4
  %85 = load i8*, i8** %nam.addr, align 4
  %86 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %movefn, align 4
  %87 = load i8**, i8*** %args.addr, align 4
  %88 = load i8*, i8** %87, align 4
  %89 = load i8*, i8** %buf, align 4
  %90 = load i32, i32* %flags, align 4
  %call130 = call i32 @domove(i8* %85, i32 (i8*, i8*)* %86, i8* %88, i8* %89, i32 %90)
  %91 = load i32, i32* %err, align 4
  %or131 = or i32 %91, %call130
  store i32 %or131, i32* %err, align 4
  br label %for.inc132

for.inc132:                                       ; preds = %if.end127
  %92 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr133 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %incdec.ptr133, i8*** %args.addr, align 4
  br label %for.cond119

for.end134:                                       ; preds = %for.cond119
  %93 = load i8*, i8** %buf, align 4
  call void @zsfree(i8* %93)
  %94 = load i32, i32* %err, align 4
  store i32 %94, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end134, %if.end112, %if.then97, %if.else84, %if.then76
  %95 = load i32, i32* %retval, align 4
  ret i32 %95
}

; Function Attrs: noinline nounwind
define internal i32 @bin_mkdir(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %oumask = alloca i32, align 4
  %mode = alloca i32, align 4
  %err = alloca i32, align 4
  %str = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %ptr14 = alloca i8*, align 4
  %ptr30 = alloca i8*, align 4
  %e = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %call = call i32 @umask(i32 0)
  store i32 %call, i32* %oumask, align 4
  %0 = load i32, i32* %oumask, align 4
  %neg = xor i32 %0, -1
  %and = and i32 511, %neg
  store i32 %and, i32* %mode, align 4
  store i32 0, i32* %err, align 4
  %1 = load i32, i32* %oumask, align 4
  %call1 = call i32 @umask(i32 %1)
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 109
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args3 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 1
  %5 = load i8**, i8*** %args3, align 4
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind4 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [128 x i8], [128 x i8]* %ind4, i32 0, i32 109
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %shr = ashr i32 %conv6, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx7 = getelementptr inbounds i8*, i8** %5, i32 %sub
  %8 = load i8*, i8** %arrayidx7, align 4
  store i8* %8, i8** %str, align 4
  %9 = load i8*, i8** %str, align 4
  %call8 = call i32 @zstrtol(i8* %9, i8** %ptr, i32 8)
  store i32 %call8, i32* %mode, align 4
  %10 = load i8*, i8** %str, align 4
  %11 = load i8, i8* %10, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.then
  %12 = load i8*, i8** %ptr, align 4
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %lor.lhs.false, %if.then
  %14 = load i8*, i8** %nam.addr, align 4
  %15 = load i8*, i8** %str, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* %15)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %16 = load i8**, i8*** %args.addr, align 4
  %17 = load i8*, i8** %16, align 4
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %18 = load i8**, i8*** %args.addr, align 4
  %19 = load i8*, i8** %18, align 4
  %call15 = call i8* @strchr(i8* %19, i32 0)
  store i8* %call15, i8** %ptr14, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %20 = load i8*, i8** %ptr14, align 4
  %21 = load i8**, i8*** %args.addr, align 4
  %22 = load i8*, i8** %21, align 4
  %23 = load i8**, i8*** %args.addr, align 4
  %24 = load i8*, i8** %23, align 4
  %25 = load i8, i8* %24, align 1
  %conv16 = sext i8 %25 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  %conv18 = zext i1 %cmp17 to i32
  %add.ptr = getelementptr inbounds i8, i8* %22, i32 %conv18
  %cmp19 = icmp ugt i8* %20, %add.ptr
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load i8*, i8** %ptr14, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr, i8** %ptr14, align 4
  %27 = load i8, i8* %incdec.ptr, align 1
  %conv21 = sext i8 %27 to i32
  %cmp22 = icmp eq i32 %conv21, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i8*, i8** %ptr14, align 4
  store i8 0, i8* %29, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind24 = getelementptr inbounds %struct.options, %struct.options* %30, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [128 x i8], [128 x i8]* %ind24, i32 0, i32 112
  %31 = load i8, i8* %arrayidx25, align 4
  %conv26 = zext i8 %31 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %if.then29, label %if.else59

if.then29:                                        ; preds = %while.end
  %32 = load i8**, i8*** %args.addr, align 4
  %33 = load i8*, i8** %32, align 4
  store i8* %33, i8** %ptr30, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %if.end58, %if.then29
  br label %while.cond32

while.cond32:                                     ; preds = %while.body36, %for.cond31
  %34 = load i8*, i8** %ptr30, align 4
  %35 = load i8, i8* %34, align 1
  %conv33 = sext i8 %35 to i32
  %cmp34 = icmp eq i32 %conv33, 47
  br i1 %cmp34, label %while.body36, label %while.end38

while.body36:                                     ; preds = %while.cond32
  %36 = load i8*, i8** %ptr30, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr37, i8** %ptr30, align 4
  br label %while.cond32

while.end38:                                      ; preds = %while.cond32
  br label %while.cond39

while.cond39:                                     ; preds = %while.body47, %while.end38
  %37 = load i8*, i8** %ptr30, align 4
  %38 = load i8, i8* %37, align 1
  %conv40 = sext i8 %38 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %land.rhs42, label %land.end46

land.rhs42:                                       ; preds = %while.cond39
  %39 = load i8*, i8** %ptr30, align 4
  %40 = load i8, i8* %39, align 1
  %conv43 = sext i8 %40 to i32
  %cmp44 = icmp ne i32 %conv43, 47
  br label %land.end46

land.end46:                                       ; preds = %land.rhs42, %while.cond39
  %41 = phi i1 [ false, %while.cond39 ], [ %cmp44, %land.rhs42 ]
  br i1 %41, label %while.body47, label %while.end49

while.body47:                                     ; preds = %land.end46
  %42 = load i8*, i8** %ptr30, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr48, i8** %ptr30, align 4
  br label %while.cond39

while.end49:                                      ; preds = %land.end46
  %43 = load i8*, i8** %ptr30, align 4
  %44 = load i8, i8* %43, align 1
  %tobool50 = icmp ne i8 %44, 0
  br i1 %tobool50, label %if.else, label %if.then51

if.then51:                                        ; preds = %while.end49
  %45 = load i8*, i8** %nam.addr, align 4
  %46 = load i8**, i8*** %args.addr, align 4
  %47 = load i8*, i8** %46, align 4
  %48 = load i32, i32* %mode, align 4
  %call52 = call i32 @domkdir(i8* %45, i8* %47, i32 %48, i32 1)
  %49 = load i32, i32* %err, align 4
  %or = or i32 %49, %call52
  store i32 %or, i32* %err, align 4
  br label %for.end

if.else:                                          ; preds = %while.end49
  %50 = load i8*, i8** %ptr30, align 4
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %nam.addr, align 4
  %52 = load i8**, i8*** %args.addr, align 4
  %53 = load i8*, i8** %52, align 4
  %54 = load i32, i32* %mode, align 4
  %or53 = or i32 %54, 192
  %call54 = call i32 @domkdir(i8* %51, i8* %53, i32 %or53, i32 1)
  store i32 %call54, i32* %e, align 4
  %55 = load i32, i32* %e, align 4
  %tobool55 = icmp ne i32 %55, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.else
  store i32 1, i32* %err, align 4
  br label %for.end

if.end57:                                         ; preds = %if.else
  %56 = load i8*, i8** %ptr30, align 4
  store i8 47, i8* %56, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.end57
  br label %for.cond31

for.end:                                          ; preds = %if.then56, %if.then51
  br label %if.end62

if.else59:                                        ; preds = %while.end
  %57 = load i8*, i8** %nam.addr, align 4
  %58 = load i8**, i8*** %args.addr, align 4
  %59 = load i8*, i8** %58, align 4
  %60 = load i32, i32* %mode, align 4
  %call60 = call i32 @domkdir(i8* %57, i8* %59, i32 %60, i32 0)
  %61 = load i32, i32* %err, align 4
  %or61 = or i32 %61, %call60
  store i32 %or61, i32* %err, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %for.end
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %62 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %incdec.ptr63, i8*** %args.addr, align 4
  br label %for.cond

for.end64:                                        ; preds = %for.cond
  %63 = load i32, i32* %err, align 4
  store i32 %63, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end64, %if.then11
  %64 = load i32, i32* %retval, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind
define internal i32 @bin_rm(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %rmm = alloca %struct.rmmagic, align 4
  %err = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8*, i8** %nam.addr, align 4
  %nam1 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %rmm, i32 0, i32 0
  store i8* %0, i8** %nam1, align 4
  %1 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 102
  %2 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp to i32
  %opt_force = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %rmm, i32 0, i32 1
  store i32 %conv2, i32* %opt_force, align 4
  %3 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %3, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 105
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind8 = getelementptr inbounds %struct.options, %struct.options* %5, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [128 x i8], [128 x i8]* %ind8, i32 0, i32 102
  %6 = load i8, i8* %arrayidx9, align 2
  %conv10 = zext i8 %6 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  %lnot = xor i1 %cmp11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  %opt_interact = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %rmm, i32 0, i32 2
  store i32 %land.ext, i32* %opt_interact, align 4
  %8 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind13 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [128 x i8], [128 x i8]* %ind13, i32 0, i32 100
  %9 = load i8, i8* %arrayidx14, align 4
  %conv15 = zext i8 %9 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  %conv17 = zext i1 %cmp16 to i32
  %opt_unlinkdir = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %rmm, i32 0, i32 3
  store i32 %conv17, i32* %opt_unlinkdir, align 4
  %10 = load i8*, i8** %nam.addr, align 4
  %11 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind18 = getelementptr inbounds %struct.options, %struct.options* %11, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [128 x i8], [128 x i8]* %ind18, i32 0, i32 102
  %12 = load i8, i8* %arrayidx19, align 2
  %conv20 = zext i8 %12 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  %conv22 = zext i1 %cmp21 to i32
  %13 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind23 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [128 x i8], [128 x i8]* %ind23, i32 0, i32 114
  %14 = load i8, i8* %arrayidx24, align 2
  %conv25 = zext i8 %14 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %land.rhs28, label %land.end35

land.rhs28:                                       ; preds = %land.end
  %15 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind29 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [128 x i8], [128 x i8]* %ind29, i32 0, i32 100
  %16 = load i8, i8* %arrayidx30, align 4
  %conv31 = zext i8 %16 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  %lnot34 = xor i1 %cmp32, true
  br label %land.end35

land.end35:                                       ; preds = %land.rhs28, %land.end
  %17 = phi i1 [ false, %land.end ], [ %lnot34, %land.rhs28 ]
  %land.ext36 = zext i1 %17 to i32
  %18 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind37 = getelementptr inbounds %struct.options, %struct.options* %18, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [128 x i8], [128 x i8]* %ind37, i32 0, i32 115
  %19 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %19 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  %conv41 = zext i1 %cmp40 to i32
  %20 = load i8**, i8*** %args.addr, align 4
  %21 = bitcast %struct.rmmagic* %rmm to i8*
  %call = call i32 @recursivecmd(i8* %10, i32 %conv22, i32 %land.ext36, i32 %conv41, i8** %20, i32 (i8*, i8*, %struct.stat*, i8*)* @recurse_donothing, i32 (i8*, i8*, %struct.stat*, i8*)* @rm_dirpost, i32 (i8*, i8*, %struct.stat*, i8*)* @rm_leaf, i8* %21)
  store i32 %call, i32* %err, align 4
  %22 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind42 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [128 x i8], [128 x i8]* %ind42, i32 0, i32 102
  %23 = load i8, i8* %arrayidx43, align 2
  %conv44 = zext i8 %23 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end35
  br label %cond.end

cond.false:                                       ; preds = %land.end35
  %24 = load i32, i32* %err, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %24, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal i32 @bin_rmdir(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %rpath = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %err, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %args.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %call = call i8* @unmeta(i8* %3)
  store i8* %call, i8** %rpath, align 4
  %4 = load i8*, i8** %rpath, align 4
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %nam.addr, align 4
  %6 = load i8**, i8*** %args.addr, align 4
  %7 = load i8*, i8** %6, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %7, i32 36)
  store i32 1, i32* %err, align 4
  br label %if.end6

if.else:                                          ; preds = %for.body
  %8 = load i8*, i8** %rpath, align 4
  %call2 = call i32 @rmdir(i8* %8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %9 = load i8*, i8** %nam.addr, align 4
  %10 = load i8**, i8*** %args.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %call5 = call i32* @__errno_location()
  %12 = load i32, i32* %call5, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0), i8* %11, i32 %12)
  store i32 1, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %13 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %err, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind
define internal i32 @bin_sync(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  call void @sync()
  ret i32 0
}

declare i8* @ztrdup(i8*) #1

declare i8* @strchr(i8*, i32) #1

declare %struct.passwd* @getpwnam(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @getnumeric(i8* %p, i32* %errp) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 4
  %errp.addr = alloca i32*, align 4
  %ret = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 4
  store i32* %errp, i32** %errp.addr, align 4
  %0 = load i8*, i8** %p.addr, align 4
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %errp.addr, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %p.addr, align 4
  %call = call i32 @strtoul(i8* %4, i8** %p.addr, i32 10)
  store i32 %call, i32* %ret, align 4
  %5 = load i8*, i8** %p.addr, align 4
  %6 = load i8, i8* %5, align 1
  %tobool1 = icmp ne i8 %6, 0
  %lnot = xor i1 %tobool1, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %7 = load i32*, i32** %errp.addr, align 4
  store i32 %lnot.ext, i32* %7, align 4
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare void @zwarnnam(i8*, i8*, ...) #1

declare void @free(i8*) #1

declare %struct.passwd* @getpwuid(i32) #1

declare %struct.group* @getgrnam(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @recursivecmd(i8* %nam, i32 %opt_noerr, i32 %opt_recurse, i32 %opt_safe, i8** %args, i32 (i8*, i8*, %struct.stat*, i8*)* %dirpre_func, i32 (i8*, i8*, %struct.stat*, i8*)* %dirpost_func, i32 (i8*, i8*, %struct.stat*, i8*)* %leaf_func, i8* %magic) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %opt_noerr.addr = alloca i32, align 4
  %opt_recurse.addr = alloca i32, align 4
  %opt_safe.addr = alloca i32, align 4
  %args.addr = alloca i8**, align 4
  %dirpre_func.addr = alloca i32 (i8*, i8*, %struct.stat*, i8*)*, align 4
  %dirpost_func.addr = alloca i32 (i8*, i8*, %struct.stat*, i8*)*, align 4
  %leaf_func.addr = alloca i32 (i8*, i8*, %struct.stat*, i8*)*, align 4
  %magic.addr = alloca i8*, align 4
  %err = alloca i32, align 4
  %len = alloca i32, align 4
  %rp = alloca i8*, align 4
  %s = alloca i8*, align 4
  %ds = alloca %struct.dirsav, align 4
  %reccmd = alloca %struct.recursivecmd, align 4
  %e = alloca i32, align 4
  %d = alloca %struct.dirsav, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %opt_noerr, i32* %opt_noerr.addr, align 4
  store i32 %opt_recurse, i32* %opt_recurse.addr, align 4
  store i32 %opt_safe, i32* %opt_safe.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store i32 (i8*, i8*, %struct.stat*, i8*)* %dirpre_func, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpre_func.addr, align 4
  store i32 (i8*, i8*, %struct.stat*, i8*)* %dirpost_func, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpost_func.addr, align 4
  store i32 (i8*, i8*, %struct.stat*, i8*)* %leaf_func, i32 (i8*, i8*, %struct.stat*, i8*)** %leaf_func.addr, align 4
  store i8* %magic, i8** %magic.addr, align 4
  store i32 0, i32* %err, align 4
  %0 = load i8*, i8** %nam.addr, align 4
  %nam1 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 0
  store i8* %0, i8** %nam1, align 4
  %1 = load i32, i32* %opt_noerr.addr, align 4
  %opt_noerr2 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 1
  store i32 %1, i32* %opt_noerr2, align 4
  %2 = load i32, i32* %opt_recurse.addr, align 4
  %opt_recurse3 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 2
  store i32 %2, i32* %opt_recurse3, align 4
  %3 = load i32, i32* %opt_safe.addr, align 4
  %opt_safe4 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 3
  store i32 %3, i32* %opt_safe4, align 4
  %4 = load i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpre_func.addr, align 4
  %dirpre_func5 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 4
  store i32 (i8*, i8*, %struct.stat*, i8*)* %4, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpre_func5, align 4
  %5 = load i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpost_func.addr, align 4
  %dirpost_func6 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 5
  store i32 (i8*, i8*, %struct.stat*, i8*)* %5, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpost_func6, align 4
  %6 = load i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)** %leaf_func.addr, align 4
  %leaf_func7 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 6
  store i32 (i8*, i8*, %struct.stat*, i8*)* %6, i32 (i8*, i8*, %struct.stat*, i8*)** %leaf_func7, align 4
  %7 = load i8*, i8** %magic.addr, align 4
  %magic8 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %reccmd, i32 0, i32 7
  store i8* %7, i8** %magic8, align 4
  call void @init_dirsav(%struct.dirsav* %ds)
  %8 = load i32, i32* %opt_recurse.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %opt_safe.addr, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then, label %if.end18

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i32 256)
  %dirfd = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 0
  store i32 %call, i32* %dirfd, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call10 = call i8* @zgetdir(%struct.dirsav* %ds)
  %tobool11 = icmp ne i8* %call10, null
  br i1 %tobool11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %dirname = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 2
  %10 = load i8*, i8** %dirname, align 4
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp13 = icmp ne i32 %conv, 47
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %land.lhs.true12
  %call16 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 256)
  %dirfd17 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 0
  store i32 %call16, i32* %dirfd17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.lhs.true12, %land.lhs.true, %if.then
  br label %if.end18

if.end18:                                         ; preds = %if.end, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %12 = load i32, i32* @errflag, align 4
  %tobool19 = icmp ne i32 %12, 0
  br i1 %tobool19, label %land.end, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %for.cond
  %13 = load i32, i32* %err, align 4
  %and = and i32 %13, 2
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true20
  %14 = load i8**, i8*** %args.addr, align 4
  %15 = load i8*, i8** %14, align 4
  %tobool22 = icmp ne i8* %15, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true20, %for.cond
  %16 = phi i1 [ false, %land.lhs.true20 ], [ false, %for.cond ], [ %tobool22, %land.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %17 = load i8**, i8*** %args.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %call23 = call i8* @ztrdup(i8* %18)
  store i8* %call23, i8** %rp, align 4
  %19 = load i8*, i8** %rp, align 4
  %call24 = call i8* @unmetafy(i8* %19, i32* %len)
  %20 = load i32, i32* %opt_safe.addr, align 4
  %tobool25 = icmp ne i32 %20, 0
  br i1 %tobool25, label %if.then26, label %if.else81

if.then26:                                        ; preds = %for.body
  %21 = load i8*, i8** %rp, align 4
  %call27 = call i8* @strrchr(i8* %21, i32 47)
  store i8* %call27, i8** %s, align 4
  %22 = load i8*, i8** %s, align 4
  %tobool28 = icmp ne i8* %22, null
  br i1 %tobool28, label %land.lhs.true29, label %if.end50

land.lhs.true29:                                  ; preds = %if.then26
  %23 = load i8*, i8** %s, align 4
  %arrayidx = getelementptr inbounds i8, i8* %23, i32 1
  %24 = load i8, i8* %arrayidx, align 1
  %tobool30 = icmp ne i8 %24, 0
  br i1 %tobool30, label %if.end50, label %if.then31

if.then31:                                        ; preds = %land.lhs.true29
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then31
  %25 = load i8*, i8** %s, align 4
  %26 = load i8, i8* %25, align 1
  %conv32 = sext i8 %26 to i32
  %cmp33 = icmp eq i32 %conv32, 47
  br i1 %cmp33, label %land.rhs35, label %land.end38

land.rhs35:                                       ; preds = %while.cond
  %27 = load i8*, i8** %s, align 4
  %28 = load i8*, i8** %rp, align 4
  %cmp36 = icmp ugt i8* %27, %28
  br label %land.end38

land.end38:                                       ; preds = %land.rhs35, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp36, %land.rhs35 ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end38
  %30 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr, i8** %s, align 4
  store i8 0, i8* %30, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end38
  br label %while.cond39

while.cond39:                                     ; preds = %while.body47, %while.end
  %31 = load i8*, i8** %s, align 4
  %32 = load i8, i8* %31, align 1
  %conv40 = sext i8 %32 to i32
  %cmp41 = icmp ne i32 %conv40, 47
  br i1 %cmp41, label %land.rhs43, label %land.end46

land.rhs43:                                       ; preds = %while.cond39
  %33 = load i8*, i8** %s, align 4
  %34 = load i8*, i8** %rp, align 4
  %cmp44 = icmp ugt i8* %33, %34
  br label %land.end46

land.end46:                                       ; preds = %land.rhs43, %while.cond39
  %35 = phi i1 [ false, %while.cond39 ], [ %cmp44, %land.rhs43 ]
  br i1 %35, label %while.body47, label %while.end49

while.body47:                                     ; preds = %land.end46
  %36 = load i8*, i8** %s, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %incdec.ptr48, i8** %s, align 4
  br label %while.cond39

while.end49:                                      ; preds = %land.end46
  br label %if.end50

if.end50:                                         ; preds = %while.end49, %land.lhs.true29, %if.then26
  %37 = load i8*, i8** %s, align 4
  %tobool51 = icmp ne i8* %37, null
  br i1 %tobool51, label %land.lhs.true52, label %if.else77

land.lhs.true52:                                  ; preds = %if.end50
  %38 = load i8*, i8** %s, align 4
  %arrayidx53 = getelementptr inbounds i8, i8* %38, i32 1
  %39 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %39 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br i1 %tobool55, label %if.then56, label %if.else77

if.then56:                                        ; preds = %land.lhs.true52
  %40 = load i8*, i8** %s, align 4
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %s, align 4
  %42 = load i8*, i8** %rp, align 4
  %cmp57 = icmp ugt i8* %41, %42
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then56
  %43 = load i8*, i8** %rp, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %43, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %cond.false ]
  %call59 = call i32 @lchdir(i8* %cond, %struct.dirsav* %ds, i32 1)
  store i32 %call59, i32* %e, align 4
  %44 = load i32, i32* %e, align 4
  %sub = sub nsw i32 0, %44
  %45 = load i32, i32* %err, align 4
  %or = or i32 %45, %sub
  store i32 %or, i32* %err, align 4
  %46 = load i32, i32* %e, align 4
  %tobool60 = icmp ne i32 %46, 0
  br i1 %tobool60, label %if.else, label %if.then61

if.then61:                                        ; preds = %cond.end
  %dev = getelementptr inbounds %struct.dirsav, %struct.dirsav* %d, i32 0, i32 3
  store i32 0, i32* %dev, align 4
  %ino = getelementptr inbounds %struct.dirsav, %struct.dirsav* %d, i32 0, i32 4
  store i32 0, i32* %ino, align 4
  %dirname62 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %d, i32 0, i32 2
  store i8* null, i8** %dirname62, align 4
  %level = getelementptr inbounds %struct.dirsav, %struct.dirsav* %d, i32 0, i32 1
  store i32 -1, i32* %level, align 4
  %dirfd63 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %d, i32 0, i32 0
  store i32 -1, i32* %dirfd63, align 4
  %47 = load i8**, i8*** %args.addr, align 4
  %48 = load i8*, i8** %47, align 4
  %49 = load i8*, i8** %s, align 4
  %add.ptr = getelementptr inbounds i8, i8* %49, i32 1
  %call64 = call i32 @recursivecmd_doone(%struct.recursivecmd* %reccmd, i8* %48, i8* %add.ptr, %struct.dirsav* %d, i32 0)
  %50 = load i32, i32* %err, align 4
  %or65 = or i32 %50, %call64
  store i32 %or65, i32* %err, align 4
  %dirname66 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %d, i32 0, i32 2
  %51 = load i8*, i8** %dirname66, align 4
  call void @zsfree(i8* %51)
  %call67 = call i32 @restoredir(%struct.dirsav* %ds)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.then61
  %52 = load i32, i32* %err, align 4
  %or70 = or i32 %52, 2
  store i32 %or70, i32* %err, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then61
  br label %if.end76

if.else:                                          ; preds = %cond.end
  %53 = load i32, i32* %opt_noerr.addr, align 4
  %tobool72 = icmp ne i32 %53, 0
  br i1 %tobool72, label %if.end75, label %if.then73

if.then73:                                        ; preds = %if.else
  %54 = load i8*, i8** %nam.addr, align 4
  %55 = load i8**, i8*** %args.addr, align 4
  %56 = load i8*, i8** %55, align 4
  %call74 = call i32* @__errno_location()
  %57 = load i32, i32* %call74, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %56, i32 %57)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.else
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end71
  br label %if.end80

if.else77:                                        ; preds = %land.lhs.true52, %if.end50
  %58 = load i8**, i8*** %args.addr, align 4
  %59 = load i8*, i8** %58, align 4
  %60 = load i8*, i8** %rp, align 4
  %call78 = call i32 @recursivecmd_doone(%struct.recursivecmd* %reccmd, i8* %59, i8* %60, %struct.dirsav* %ds, i32 0)
  %61 = load i32, i32* %err, align 4
  %or79 = or i32 %61, %call78
  store i32 %or79, i32* %err, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %if.end76
  br label %if.end84

if.else81:                                        ; preds = %for.body
  %62 = load i8**, i8*** %args.addr, align 4
  %63 = load i8*, i8** %62, align 4
  %64 = load i8*, i8** %rp, align 4
  %call82 = call i32 @recursivecmd_doone(%struct.recursivecmd* %reccmd, i8* %63, i8* %64, %struct.dirsav* %ds, i32 1)
  %65 = load i32, i32* %err, align 4
  %or83 = or i32 %65, %call82
  store i32 %or83, i32* %err, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.end80
  %66 = load i8*, i8** %rp, align 4
  %67 = load i32, i32* %len, align 4
  %add = add nsw i32 %67, 1
  call void @zfree(i8* %66, i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %68 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr85 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %incdec.ptr85, i8*** %args.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %69 = load i32, i32* %err, align 4
  %and86 = and i32 %69, 2
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %land.lhs.true88, label %if.end106

land.lhs.true88:                                  ; preds = %for.end
  %dirfd89 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 0
  %70 = load i32, i32* %dirfd89, align 4
  %cmp90 = icmp sge i32 %70, 0
  br i1 %cmp90, label %land.lhs.true92, label %if.end106

land.lhs.true92:                                  ; preds = %land.lhs.true88
  %call93 = call i32 @restoredir(%struct.dirsav* %ds)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %land.lhs.true95, label %if.end106

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %71 = load i8*, i8** @pwd, align 4
  %call96 = call i32 @zchdir(i8* %71)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then98, label %if.end106

if.then98:                                        ; preds = %land.lhs.true95
  %72 = load i8*, i8** @pwd, align 4
  call void @zsfree(i8* %72)
  %call99 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  store i8* %call99, i8** @pwd, align 4
  %73 = load i8*, i8** @pwd, align 4
  %call100 = call i32 @chdir(i8* %73)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.then98
  %74 = load i8*, i8** @pwd, align 4
  %call104 = call i32* @__errno_location()
  %75 = load i32, i32* %call104, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* %74, i32 %75)
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.then98
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %land.lhs.true95, %land.lhs.true92, %land.lhs.true88, %for.end
  %dirfd107 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 0
  %76 = load i32, i32* %dirfd107, align 4
  %cmp108 = icmp sge i32 %76, 0
  br i1 %cmp108, label %if.then110, label %if.end113

if.then110:                                       ; preds = %if.end106
  %dirfd111 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 0
  %77 = load i32, i32* %dirfd111, align 4
  %call112 = call i32 @close(i32 %77)
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end106
  %dirname114 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 2
  %78 = load i8*, i8** %dirname114, align 4
  call void @zsfree(i8* %78)
  %79 = load i32, i32* %err, align 4
  %tobool115 = icmp ne i32 %79, 0
  %lnot = xor i1 %tobool115, true
  %lnot116 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot116 to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind
define internal i32 @chown_dolchown(i8* %arg, i8* %rp, %struct.stat* %sp, i8* %magic) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 4
  %rp.addr = alloca i8*, align 4
  %sp.addr = alloca %struct.stat*, align 4
  %magic.addr = alloca i8*, align 4
  %chm = alloca %struct.chownmagic*, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i8* %rp, i8** %rp.addr, align 4
  store %struct.stat* %sp, %struct.stat** %sp.addr, align 4
  store i8* %magic, i8** %magic.addr, align 4
  %0 = load i8*, i8** %magic.addr, align 4
  %1 = bitcast i8* %0 to %struct.chownmagic*
  store %struct.chownmagic* %1, %struct.chownmagic** %chm, align 4
  %2 = load i8*, i8** %rp.addr, align 4
  %3 = load %struct.chownmagic*, %struct.chownmagic** %chm, align 4
  %uid = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %3, i32 0, i32 1
  %4 = load i32, i32* %uid, align 4
  %5 = load %struct.chownmagic*, %struct.chownmagic** %chm, align 4
  %gid = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %5, i32 0, i32 2
  %6 = load i32, i32* %gid, align 4
  %call = call i32 @lchown(i8* %2, i32 %4, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.chownmagic*, %struct.chownmagic** %chm, align 4
  %nam = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %7, i32 0, i32 0
  %8 = load i8*, i8** %nam, align 4
  %9 = load i8*, i8** %arg.addr, align 4
  %call1 = call i32* @__errno_location()
  %10 = load i32, i32* %call1, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %9, i32 %10)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind
define internal i32 @chown_dochown(i8* %arg, i8* %rp, %struct.stat* %sp, i8* %magic) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 4
  %rp.addr = alloca i8*, align 4
  %sp.addr = alloca %struct.stat*, align 4
  %magic.addr = alloca i8*, align 4
  %chm = alloca %struct.chownmagic*, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i8* %rp, i8** %rp.addr, align 4
  store %struct.stat* %sp, %struct.stat** %sp.addr, align 4
  store i8* %magic, i8** %magic.addr, align 4
  %0 = load i8*, i8** %magic.addr, align 4
  %1 = bitcast i8* %0 to %struct.chownmagic*
  store %struct.chownmagic* %1, %struct.chownmagic** %chm, align 4
  %2 = load i8*, i8** %rp.addr, align 4
  %3 = load %struct.chownmagic*, %struct.chownmagic** %chm, align 4
  %uid = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %3, i32 0, i32 1
  %4 = load i32, i32* %uid, align 4
  %5 = load %struct.chownmagic*, %struct.chownmagic** %chm, align 4
  %gid = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %5, i32 0, i32 2
  %6 = load i32, i32* %gid, align 4
  %call = call i32 @chown(i8* %2, i32 %4, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.chownmagic*, %struct.chownmagic** %chm, align 4
  %nam = getelementptr inbounds %struct.chownmagic, %struct.chownmagic* %7, i32 0, i32 0
  %8 = load i8*, i8** %nam, align 4
  %9 = load i8*, i8** %arg.addr, align 4
  %call1 = call i32* @__errno_location()
  %10 = load i32, i32* %call1, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %9, i32 %10)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind
define internal i32 @recurse_donothing(i8* %arg, i8* %rp, %struct.stat* %sp, i8* %magic) #0 {
entry:
  %arg.addr = alloca i8*, align 4
  %rp.addr = alloca i8*, align 4
  %sp.addr = alloca %struct.stat*, align 4
  %magic.addr = alloca i8*, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i8* %rp, i8** %rp.addr, align 4
  store %struct.stat* %sp, %struct.stat** %sp.addr, align 4
  store i8* %magic, i8** %magic.addr, align 4
  ret i32 0
}

declare i32 @strtoul(i8*, i8**, i32) #1

declare void @init_dirsav(%struct.dirsav*) #1

declare i32 @open(i8*, i32, ...) #1

declare i8* @zgetdir(%struct.dirsav*) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i8* @strrchr(i8*, i32) #1

declare i32 @lchdir(i8*, %struct.dirsav*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @recursivecmd_doone(%struct.recursivecmd* %reccmd, i8* %arg, i8* %rp, %struct.dirsav* %ds, i32 %first) #0 {
entry:
  %retval = alloca i32, align 4
  %reccmd.addr = alloca %struct.recursivecmd*, align 4
  %arg.addr = alloca i8*, align 4
  %rp.addr = alloca i8*, align 4
  %ds.addr = alloca %struct.dirsav*, align 4
  %first.addr = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %sp = alloca %struct.stat*, align 4
  store %struct.recursivecmd* %reccmd, %struct.recursivecmd** %reccmd.addr, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i8* %rp, i8** %rp.addr, align 4
  store %struct.dirsav* %ds, %struct.dirsav** %ds.addr, align 4
  store i32 %first, i32* %first.addr, align 4
  store %struct.stat* null, %struct.stat** %sp, align 4
  %0 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %opt_recurse = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %0, i32 0, i32 2
  %1 = load i32, i32* %opt_recurse, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %rp.addr, align 4
  %call = call i32 @lstat(i8* %2, %struct.stat* %st)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end4, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %3 = load i32, i32* %st_mode, align 8
  %and = and i32 %3, 61440
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %5 = load i8*, i8** %arg.addr, align 4
  %6 = load i8*, i8** %rp.addr, align 4
  %7 = load %struct.dirsav*, %struct.dirsav** %ds.addr, align 4
  %8 = load i32, i32* %first.addr, align 4
  %call3 = call i32 @recursivecmd_dorec(%struct.recursivecmd* %4, i8* %5, i8* %6, %struct.stat* %st, %struct.dirsav* %7, i32 %8)
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store %struct.stat* %st, %struct.stat** %sp, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %land.lhs.true, %entry
  %9 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %leaf_func = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %9, i32 0, i32 6
  %10 = load i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)** %leaf_func, align 4
  %11 = load i8*, i8** %arg.addr, align 4
  %12 = load i8*, i8** %rp.addr, align 4
  %13 = load %struct.stat*, %struct.stat** %sp, align 4
  %14 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %magic = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %14, i32 0, i32 7
  %15 = load i8*, i8** %magic, align 4
  %call5 = call i32 %10(i8* %11, i8* %12, %struct.stat* %13, i8* %15)
  store i32 %call5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare void @zsfree(i8*) #1

declare i32 @restoredir(%struct.dirsav*) #1

declare i32* @__errno_location() #1

declare void @zfree(i8*, i32) #1

declare i32 @zchdir(i8*) #1

declare i32 @chdir(i8*) #1

declare void @zwarn(i8*, ...) #1

declare i32 @close(i32) #1

declare i32 @lstat(i8*, %struct.stat*) #1

; Function Attrs: noinline nounwind
define internal i32 @recursivecmd_dorec(%struct.recursivecmd* %reccmd, i8* %arg, i8* %rp, %struct.stat* %sp, %struct.dirsav* %ds, i32 %first) #0 {
entry:
  %retval = alloca i32, align 4
  %reccmd.addr = alloca %struct.recursivecmd*, align 4
  %arg.addr = alloca i8*, align 4
  %rp.addr = alloca i8*, align 4
  %sp.addr = alloca %struct.stat*, align 4
  %ds.addr = alloca %struct.dirsav*, align 4
  %first.addr = alloca i32, align 4
  %fn = alloca i8*, align 4
  %d = alloca %struct.__dirstream*, align 4
  %err = alloca i32, align 4
  %err1 = alloca i32, align 4
  %dsav = alloca %struct.dirsav, align 4
  %files = alloca i8*, align 4
  %fileslen = alloca i32, align 4
  %arglen = alloca i32, align 4
  %l = alloca i32, align 4
  %l36 = alloca i32, align 4
  %narg = alloca i8*, align 4
  store %struct.recursivecmd* %reccmd, %struct.recursivecmd** %reccmd.addr, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i8* %rp, i8** %rp.addr, align 4
  store %struct.stat* %sp, %struct.stat** %sp.addr, align 4
  store %struct.dirsav* %ds, %struct.dirsav** %ds.addr, align 4
  store i32 %first, i32* %first.addr, align 4
  store i8* null, i8** %files, align 4
  store i32 0, i32* %fileslen, align 4
  %0 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %dirpre_func = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %0, i32 0, i32 4
  %1 = load i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpre_func, align 4
  %2 = load i8*, i8** %arg.addr, align 4
  %3 = load i8*, i8** %rp.addr, align 4
  %4 = load %struct.stat*, %struct.stat** %sp.addr, align 4
  %5 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %magic = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %5, i32 0, i32 7
  %6 = load i8*, i8** %magic, align 4
  %call = call i32 %1(i8* %2, i8* %3, %struct.stat* %4, i8* %6)
  store i32 %call, i32* %err1, align 4
  %7 = load i32, i32* %err1, align 4
  %and = and i32 %7, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %rp.addr, align 4
  %9 = load %struct.dirsav*, %struct.dirsav** %ds.addr, align 4
  %10 = load i32, i32* %first.addr, align 4
  %tobool1 = icmp ne i32 %10, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  %call2 = call i32 @lchdir(i8* %8, %struct.dirsav* %9, i32 %lnot.ext)
  %sub = sub nsw i32 0, %call2
  store i32 %sub, i32* %err, align 4
  %11 = load i32, i32* %err, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %12 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %opt_noerr = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %12, i32 0, i32 1
  %13 = load i32, i32* %opt_noerr, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then4
  %14 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %nam = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %14, i32 0, i32 0
  %15 = load i8*, i8** %nam, align 4
  %16 = load i8*, i8** %arg.addr, align 4
  %call7 = call i32* @__errno_location()
  %17 = load i32, i32* %call7, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %16, i32 %17)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  %18 = load i32, i32* %err, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %19 = load i32, i32* %err1, align 4
  store i32 %19, i32* %err, align 4
  call void @init_dirsav(%struct.dirsav* %dsav)
  %call10 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  store %struct.__dirstream* %call10, %struct.__dirstream** %d, align 4
  %20 = load %struct.__dirstream*, %struct.__dirstream** %d, align 4
  %tobool11 = icmp ne %struct.__dirstream* %20, null
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %21 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %opt_noerr13 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %21, i32 0, i32 1
  %22 = load i32, i32* %opt_noerr13, align 4
  %tobool14 = icmp ne i32 %22, 0
  br i1 %tobool14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.then12
  %23 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %nam16 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %23, i32 0, i32 0
  %24 = load i8*, i8** %nam16, align 4
  %25 = load i8*, i8** %arg.addr, align 4
  %call17 = call i32* @__errno_location()
  %26 = load i32, i32* %call17, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %25, i32 %26)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then12
  store i32 1, i32* %err, align 4
  br label %if.end49

if.else:                                          ; preds = %if.end9
  %27 = load i8*, i8** %arg.addr, align 4
  %call19 = call i32 @strlen(i8* %27)
  %add = add i32 %call19, 1
  store i32 %add, i32* %arglen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %28 = load i32, i32* @errflag, align 4
  %tobool20 = icmp ne i32 %28, 0
  br i1 %tobool20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %29 = load %struct.__dirstream*, %struct.__dirstream** %d, align 4
  %call21 = call i8* @zreaddir(%struct.__dirstream* %29, i32 1)
  store i8* %call21, i8** %fn, align 4
  %tobool22 = icmp ne i8* %call21, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %tobool22, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load i8*, i8** %fn, align 4
  %call23 = call i32 @strlen(i8* %31)
  %add24 = add i32 %call23, 1
  store i32 %add24, i32* %l, align 4
  %32 = load i8*, i8** %files, align 4
  %33 = load i32, i32* %fileslen, align 4
  %34 = load i32, i32* %fileslen, align 4
  %35 = load i32, i32* %l, align 4
  %add25 = add nsw i32 %34, %35
  %call26 = call i8* @hrealloc(i8* %32, i32 %33, i32 %add25)
  store i8* %call26, i8** %files, align 4
  %36 = load i8*, i8** %files, align 4
  %37 = load i32, i32* %fileslen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %36, i32 %37
  %38 = load i8*, i8** %fn, align 4
  %call27 = call i8* @strcpy(i8* %add.ptr, i8* %38)
  %39 = load i32, i32* %l, align 4
  %40 = load i32, i32* %fileslen, align 4
  %add28 = add nsw i32 %40, %39
  store i32 %add28, i32* %fileslen, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %41 = load %struct.__dirstream*, %struct.__dirstream** %d, align 4
  %call29 = call i32 @closedir(%struct.__dirstream* %41)
  %42 = load i8*, i8** %files, align 4
  store i8* %42, i8** %fn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.end
  %43 = load i32, i32* @errflag, align 4
  %tobool30 = icmp ne i32 %43, 0
  br i1 %tobool30, label %land.end35, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %44 = load i32, i32* %err, align 4
  %and31 = and i32 %44, 2
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.end35, label %land.rhs33

land.rhs33:                                       ; preds = %land.lhs.true
  %45 = load i8*, i8** %fn, align 4
  %46 = load i8*, i8** %files, align 4
  %47 = load i32, i32* %fileslen, align 4
  %add.ptr34 = getelementptr inbounds i8, i8* %46, i32 %47
  %cmp = icmp ult i8* %45, %add.ptr34
  br label %land.end35

land.end35:                                       ; preds = %land.rhs33, %land.lhs.true, %for.cond
  %48 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp, %land.rhs33 ]
  br i1 %48, label %for.body, label %for.end

for.body:                                         ; preds = %land.end35
  %49 = load i8*, i8** %fn, align 4
  %call37 = call i32 @strlen(i8* %49)
  %add38 = add i32 %call37, 1
  store i32 %add38, i32* %l36, align 4
  %50 = load i32, i32* %arglen, align 4
  %51 = load i32, i32* %l36, align 4
  %add39 = add nsw i32 %50, %51
  %mul = mul i32 1, %add39
  %call40 = call i8* @zhalloc(i32 %mul)
  store i8* %call40, i8** %narg, align 4
  %52 = load i8*, i8** %narg, align 4
  %53 = load i8*, i8** %arg.addr, align 4
  %call41 = call i8* @strcpy(i8* %52, i8* %53)
  %54 = load i8*, i8** %narg, align 4
  %55 = load i32, i32* %arglen, align 4
  %sub42 = sub nsw i32 %55, 1
  %arrayidx = getelementptr inbounds i8, i8* %54, i32 %sub42
  store i8 47, i8* %arrayidx, align 1
  %56 = load i8*, i8** %narg, align 4
  %57 = load i32, i32* %arglen, align 4
  %add.ptr43 = getelementptr inbounds i8, i8* %56, i32 %57
  %58 = load i8*, i8** %fn, align 4
  %call44 = call i8* @strcpy(i8* %add.ptr43, i8* %58)
  %59 = load i8*, i8** %fn, align 4
  %call45 = call i8* @unmetafy(i8* %59, i32* null)
  %60 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %61 = load i8*, i8** %narg, align 4
  %62 = load i8*, i8** %fn, align 4
  %call46 = call i32 @recursivecmd_doone(%struct.recursivecmd* %60, i8* %61, i8* %62, %struct.dirsav* %dsav, i32 0)
  %63 = load i32, i32* %err, align 4
  %or = or i32 %63, %call46
  store i32 %or, i32* %err, align 4
  %64 = load i32, i32* %l36, align 4
  %65 = load i8*, i8** %fn, align 4
  %add.ptr47 = getelementptr inbounds i8, i8* %65, i32 %64
  store i8* %add.ptr47, i8** %fn, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end35
  %66 = load i8*, i8** %files, align 4
  %67 = load i32, i32* %fileslen, align 4
  %call48 = call i8* @hrealloc(i8* %66, i32 %67, i32 0)
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.end18
  %dirname = getelementptr inbounds %struct.dirsav, %struct.dirsav* %dsav, i32 0, i32 2
  %68 = load i8*, i8** %dirname, align 4
  call void @zsfree(i8* %68)
  %69 = load i32, i32* %err, align 4
  %and50 = and i32 %69, 2
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  store i32 2, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end49
  %70 = load %struct.dirsav*, %struct.dirsav** %ds.addr, align 4
  %call54 = call i32 @restoredir(%struct.dirsav* %70)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.end53
  %71 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %opt_noerr57 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %71, i32 0, i32 1
  %72 = load i32, i32* %opt_noerr57, align 4
  %tobool58 = icmp ne i32 %72, 0
  br i1 %tobool58, label %if.end62, label %if.then59

if.then59:                                        ; preds = %if.then56
  %73 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %nam60 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %73, i32 0, i32 0
  %74 = load i8*, i8** %nam60, align 4
  %call61 = call i32* @__errno_location()
  %75 = load i32, i32* %call61, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i32 0, i32 0), i32 %75)
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.then56
  store i32 2, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end53
  %76 = load i32, i32* %err, align 4
  %77 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %dirpost_func = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %77, i32 0, i32 5
  %78 = load i32 (i8*, i8*, %struct.stat*, i8*)*, i32 (i8*, i8*, %struct.stat*, i8*)** %dirpost_func, align 4
  %79 = load i8*, i8** %arg.addr, align 4
  %80 = load i8*, i8** %rp.addr, align 4
  %81 = load %struct.stat*, %struct.stat** %sp.addr, align 4
  %82 = load %struct.recursivecmd*, %struct.recursivecmd** %reccmd.addr, align 4
  %magic64 = getelementptr inbounds %struct.recursivecmd, %struct.recursivecmd* %82, i32 0, i32 7
  %83 = load i8*, i8** %magic64, align 4
  %call65 = call i32 %78(i8* %79, i8* %80, %struct.stat* %81, i8* %83)
  %or66 = or i32 %76, %call65
  store i32 %or66, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end63, %if.end62, %if.then52, %if.end8, %if.then
  %84 = load i32, i32* %retval, align 4
  ret i32 %84
}

declare %struct.__dirstream* @opendir(i8*) #1

declare i32 @strlen(i8*) #1

declare i8* @zreaddir(%struct.__dirstream*, i32) #1

declare i8* @hrealloc(i8*, i32, i32) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @closedir(%struct.__dirstream*) #1

declare i8* @zhalloc(i32) #1

declare i32 @lchown(i8*, i32, i32) #1

declare i32 @chown(i8*, i32, i32) #1

declare i32 @rename(i8*, i8*) #1

declare i32 @symlink(i8*, i8*) #1

declare i32 @link(i8*, i8*) #1

declare i8* @unmeta(i8*) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare i32 @unlink(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @domove(i8* %nam, i32 (i8*, i8*)* %movefn, i8* %p, i8* %q, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %movefn.addr = alloca i32 (i8*, i8*)*, align 4
  %p.addr = alloca i8*, align 4
  %q.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %pbuf = alloca i8*, align 4
  %qbuf = alloca i8*, align 4
  %doit = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i32 (i8*, i8*)* %movefn, i32 (i8*, i8*)** %movefn.addr, align 4
  store i8* %p, i8** %p.addr, align 4
  store i8* %q, i8** %q.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %p.addr, align 4
  %call = call i8* @unmeta(i8* %0)
  %call1 = call i8* @ztrdup(i8* %call)
  store i8* %call1, i8** %pbuf, align 4
  %1 = load i8*, i8** %q.addr, align 4
  %call2 = call i8* @unmeta(i8* %1)
  store i8* %call2, i8** %qbuf, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call3 = call i32* @__errno_location()
  store i32 21, i32* %call3, align 4
  %3 = load i8*, i8** %pbuf, align 4
  %call4 = call i32 @lstat(i8* %3, %struct.stat* %st)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %4 = load i32, i32* %st_mode, align 8
  %and6 = and i32 %4, 61440
  %cmp = icmp eq i32 %and6, 16384
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %5 = load i8*, i8** %nam.addr, align 4
  %6 = load i8*, i8** %p.addr, align 4
  %call8 = call i32* @__errno_location()
  %7 = load i32, i32* %call8, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %6, i32 %7)
  %8 = load i8*, i8** %pbuf, align 4
  call void @zsfree(i8* %8)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %9 = load i8*, i8** %qbuf, align 4
  %call10 = call i32 @lstat(i8* %9, %struct.stat* %st)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end61, label %if.then12

if.then12:                                        ; preds = %if.end9
  %10 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %10, 2
  store i32 %and13, i32* %doit, align 4
  %st_mode14 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %11 = load i32, i32* %st_mode14, align 8
  %and15 = and i32 %11, 61440
  %cmp16 = icmp eq i32 %and15, 16384
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then12
  %12 = load i8*, i8** %nam.addr, align 4
  %13 = load i8*, i8** %q.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %pbuf, align 4
  call void @zsfree(i8* %14)
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then12
  %15 = load i32, i32* %flags.addr, align 4
  %and18 = and i32 %15, 4
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.else30

if.then20:                                        ; preds = %if.else
  %16 = load i8*, i8** %nam.addr, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call21 = call i32 @mb_niceformat(i8* %16, %struct._IO_FILE* %17, i8** null, i32 0)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load i8*, i8** %q.addr, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call23 = call i32 @mb_niceformat(i8* %19, %struct._IO_FILE* %20, i8** null, i32 0)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call25 = call i32 @fflush(%struct._IO_FILE* %22)
  %call26 = call i32 @ask()
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then20
  %23 = load i8*, i8** %pbuf, align 4
  call void @zsfree(i8* %23)
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then20
  store i32 1, i32* %doit, align 4
  br label %if.end52

if.else30:                                        ; preds = %if.else
  %24 = load i32, i32* %flags.addr, align 4
  %and31 = and i32 %24, 8
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.else30
  %st_mode33 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %25 = load i32, i32* %st_mode33, align 8
  %and34 = and i32 %25, 61440
  %cmp35 = icmp eq i32 %and34, 40960
  br i1 %cmp35, label %if.end51, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true
  %26 = load i8*, i8** %qbuf, align 4
  %call37 = call i32 @access(i8* %26, i32 2)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end51

if.then39:                                        ; preds = %land.lhs.true36
  %27 = load i8*, i8** %nam.addr, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call40 = call i32 @mb_niceformat(i8* %27, %struct._IO_FILE* %28, i8** null, i32 0)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %29)
  %30 = load i8*, i8** %q.addr, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call42 = call i32 @mb_niceformat(i8* %30, %struct._IO_FILE* %31, i8** null, i32 0)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %st_mode43 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %33 = load i32, i32* %st_mode43, align 8
  %call44 = call i32 @mode_to_octal(i32 %33)
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i32 %call44)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call46 = call i32 @fflush(%struct._IO_FILE* %34)
  %call47 = call i32 @ask()
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.then39
  %35 = load i8*, i8** %pbuf, align 4
  call void @zsfree(i8* %35)
  store i32 0, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then39
  store i32 1, i32* %doit, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true36, %land.lhs.true, %if.else30
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end29
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  %36 = load i32, i32* %doit, align 4
  %tobool54 = icmp ne i32 %36, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.end60

land.lhs.true55:                                  ; preds = %if.end53
  %37 = load i32, i32* %flags.addr, align 4
  %and56 = and i32 %37, 16
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.end60, label %if.then58

if.then58:                                        ; preds = %land.lhs.true55
  %38 = load i8*, i8** %qbuf, align 4
  %call59 = call i32 @unlink(i8* %38)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %land.lhs.true55, %if.end53
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end9
  %39 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %movefn.addr, align 4
  %40 = load i8*, i8** %pbuf, align 4
  %41 = load i8*, i8** %qbuf, align 4
  %call62 = call i32 %39(i8* %40, i8* %41)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end61
  %42 = load i8*, i8** %nam.addr, align 4
  %43 = load i8*, i8** %p.addr, align 4
  %call65 = call i32* @__errno_location()
  %44 = load i32, i32* %call65, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %43, i32 %44)
  %45 = load i8*, i8** %pbuf, align 4
  call void @zsfree(i8* %45)
  store i32 1, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.end61
  %46 = load i8*, i8** %pbuf, align 4
  call void @zsfree(i8* %46)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.then64, %if.then49, %if.then28, %if.then17, %if.then7
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

declare i8* @appstr(i8*, i8*) #1

declare i32 @mb_niceformat(i8*, %struct._IO_FILE*, i8**, i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define internal i32 @ask() #0 {
entry:
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %call = call i32 @getchar()
  store i32 %call, i32* %a, align 4
  %0 = load i32, i32* %a, align 4
  store i32 %0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %2, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call2 = call i32 @getchar()
  store i32 %call2, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %4 = load i32, i32* %a, align 4
  %cmp3 = icmp eq i32 %4, 121
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  %5 = load i32, i32* %a, align 4
  %cmp4 = icmp eq i32 %5, 89
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end
  %6 = phi i1 [ true, %for.end ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  ret i32 %lor.ext
}

declare i32 @access(i8*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @mode_to_octal(i32) #1

declare i32 @getchar() #1

declare i32 @umask(i32) #1

declare i32 @zstrtol(i8*, i8**, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @domkdir(i8* %nam, i8* %path, i32 %mode, i32 %p) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %path.addr = alloca i8*, align 4
  %mode.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %oumask = alloca i32, align 4
  %rpath = alloca i8*, align 4
  %st = alloca %struct.stat, align 8
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %path, i8** %path.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %call = call i8* @unmeta(i8* %0)
  store i8* %call, i8** %rpath, align 4
  %1 = load i32, i32* %p.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %rpath, align 4
  %call1 = call i32 @stat(i8* %2, %struct.stat* %st)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %3 = load i32, i32* %st_mode, align 8
  %and = and i32 %3, 61440
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %call5 = call i32 @umask(i32 0)
  store i32 %call5, i32* %oumask, align 4
  %4 = load i8*, i8** %rpath, align 4
  %5 = load i32, i32* %mode.addr, align 4
  %call6 = call i32 @mkdir(i8* %4, i32 %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  %call8 = call i32* @__errno_location()
  %6 = load i32, i32* %call8, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %err, align 4
  %7 = load i32, i32* %oumask, align 4
  %call9 = call i32 @umask(i32 %7)
  %8 = load i32, i32* %err, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %cond.end
  %9 = load i8*, i8** %nam.addr, align 4
  %10 = load i8*, i8** %path.addr, align 4
  %11 = load i32, i32* %err, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* %10, i32 %11)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then3
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare i32 @mkdir(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @rm_dirpost(i8* %arg, i8* %rp, %struct.stat* %sp, i8* %magic) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 4
  %rp.addr = alloca i8*, align 4
  %sp.addr = alloca %struct.stat*, align 4
  %magic.addr = alloca i8*, align 4
  %rmm = alloca %struct.rmmagic*, align 4
  store i8* %arg, i8** %arg.addr, align 4
  store i8* %rp, i8** %rp.addr, align 4
  store %struct.stat* %sp, %struct.stat** %sp.addr, align 4
  store i8* %magic, i8** %magic.addr, align 4
  %0 = load i8*, i8** %magic.addr, align 4
  %1 = bitcast i8* %0 to %struct.rmmagic*
  store %struct.rmmagic* %1, %struct.rmmagic** %rmm, align 4
  %2 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_interact = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %2, i32 0, i32 2
  %3 = load i32, i32* %opt_interact, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %4 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %nam = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %4, i32 0, i32 0
  %5 = load i8*, i8** %nam, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 @mb_niceformat(i8* %5, %struct._IO_FILE* %6, i8** null, i32 0)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load i8*, i8** %arg.addr, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call2 = call i32 @mb_niceformat(i8* %8, %struct._IO_FILE* %9, i8** null, i32 0)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call4 = call i32 @fflush(%struct._IO_FILE* %11)
  %call5 = call i32 @ask()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %12 = load i8*, i8** %rp.addr, align 4
  %call9 = call i32 @rmdir(i8* %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %13 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_force = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %13, i32 0, i32 1
  %14 = load i32, i32* %opt_force, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end15, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %15 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %nam13 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %15, i32 0, i32 0
  %16 = load i8*, i8** %nam13, align 4
  %17 = load i8*, i8** %arg.addr, align 4
  %call14 = call i32* @__errno_location()
  %18 = load i32, i32* %call14, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %17, i32 %18)
  store i32 1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then12, %if.then7
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind
define internal i32 @rm_leaf(i8* %arg, i8* %rp, %struct.stat* %sp, i8* %magic) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 4
  %rp.addr = alloca i8*, align 4
  %sp.addr = alloca %struct.stat*, align 4
  %magic.addr = alloca i8*, align 4
  %rmm = alloca %struct.rmmagic*, align 4
  %st = alloca %struct.stat, align 8
  store i8* %arg, i8** %arg.addr, align 4
  store i8* %rp, i8** %rp.addr, align 4
  store %struct.stat* %sp, %struct.stat** %sp.addr, align 4
  store i8* %magic, i8** %magic.addr, align 4
  %0 = load i8*, i8** %magic.addr, align 4
  %1 = bitcast i8* %0 to %struct.rmmagic*
  store %struct.rmmagic* %1, %struct.rmmagic** %rmm, align 4
  %2 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_unlinkdir = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %2, i32 0, i32 3
  %3 = load i32, i32* %opt_unlinkdir, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_force = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %4, i32 0, i32 1
  %5 = load i32, i32* %opt_force, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end54, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.stat*, %struct.stat** %sp.addr, align 4
  %tobool2 = icmp ne %struct.stat* %6, null
  br i1 %tobool2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.then
  %7 = load i8*, i8** %rp.addr, align 4
  %call = call i32 @lstat(i8* %7, %struct.stat* %st)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  store %struct.stat* %st, %struct.stat** %sp.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %8 = load %struct.stat*, %struct.stat** %sp.addr, align 4
  %tobool7 = icmp ne %struct.stat* %8, null
  br i1 %tobool7, label %if.then8, label %if.end53

if.then8:                                         ; preds = %if.end6
  %9 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_unlinkdir9 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %9, i32 0, i32 3
  %10 = load i32, i32* %opt_unlinkdir9, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then8
  %11 = load %struct.stat*, %struct.stat** %sp.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 6
  %12 = load i32, i32* %st_mode, align 8
  %and = and i32 %12, 61440
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %if.then11, label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  %13 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_force12 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %13, i32 0, i32 1
  %14 = load i32, i32* %opt_force12, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  store i32 0, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then11
  %15 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %nam = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %15, i32 0, i32 0
  %16 = load i8*, i8** %nam, align 4
  %17 = load i8*, i8** %arg.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %17, i32 21)
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true, %if.then8
  %18 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_interact = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %18, i32 0, i32 2
  %19 = load i32, i32* %opt_interact, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %20 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %nam19 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %20, i32 0, i32 0
  %21 = load i8*, i8** %nam19, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call20 = call i32 @mb_niceformat(i8* %21, %struct._IO_FILE* %22, i8** null, i32 0)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %23)
  %24 = load i8*, i8** %arg.addr, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call22 = call i32 @mb_niceformat(i8* %24, %struct._IO_FILE* %25, i8** null, i32 0)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call24 = call i32 @fflush(%struct._IO_FILE* %27)
  %call25 = call i32 @ask()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then18
  store i32 0, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then18
  br label %if.end52

if.else:                                          ; preds = %if.end16
  %28 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_force29 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %28, i32 0, i32 1
  %29 = load i32, i32* %opt_force29, align 4
  %tobool30 = icmp ne i32 %29, 0
  br i1 %tobool30, label %if.end51, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.else
  %30 = load %struct.stat*, %struct.stat** %sp.addr, align 4
  %st_mode32 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 6
  %31 = load i32, i32* %st_mode32, align 8
  %and33 = and i32 %31, 61440
  %cmp34 = icmp eq i32 %and33, 40960
  br i1 %cmp34, label %if.end51, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %32 = load i8*, i8** %rp.addr, align 4
  %call36 = call i32 @access(i8* %32, i32 2)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then38, label %if.end51

if.then38:                                        ; preds = %land.lhs.true35
  %33 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %nam39 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %33, i32 0, i32 0
  %34 = load i8*, i8** %nam39, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call40 = call i32 @mb_niceformat(i8* %34, %struct._IO_FILE* %35, i8** null, i32 0)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load i8*, i8** %arg.addr, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call42 = call i32 @mb_niceformat(i8* %37, %struct._IO_FILE* %38, i8** null, i32 0)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %40 = load %struct.stat*, %struct.stat** %sp.addr, align 4
  %st_mode43 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 6
  %41 = load i32, i32* %st_mode43, align 8
  %call44 = call i32 @mode_to_octal(i32 %41)
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i32 %call44)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call46 = call i32 @fflush(%struct._IO_FILE* %42)
  %call47 = call i32 @ask()
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.then38
  store i32 0, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then38
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true35, %land.lhs.true31, %if.else
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end28
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end6
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %lor.lhs.false
  %43 = load i8*, i8** %rp.addr, align 4
  %call55 = call i32 @unlink(i8* %43)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %land.lhs.true57, label %if.end63

land.lhs.true57:                                  ; preds = %if.end54
  %44 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %opt_force58 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %44, i32 0, i32 1
  %45 = load i32, i32* %opt_force58, align 4
  %tobool59 = icmp ne i32 %45, 0
  br i1 %tobool59, label %if.end63, label %if.then60

if.then60:                                        ; preds = %land.lhs.true57
  %46 = load %struct.rmmagic*, %struct.rmmagic** %rmm, align 4
  %nam61 = getelementptr inbounds %struct.rmmagic, %struct.rmmagic* %46, i32 0, i32 0
  %47 = load i8*, i8** %nam61, align 4
  %48 = load i8*, i8** %arg.addr, align 4
  %call62 = call i32* @__errno_location()
  %49 = load i32, i32* %call62, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %48, i32 %49)
  store i32 1, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %land.lhs.true57, %if.end54
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end63, %if.then60, %if.then49, %if.then27, %if.end15, %if.then14
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

declare i32 @rmdir(i8*) #1

declare void @sync() #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
