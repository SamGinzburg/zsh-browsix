; ModuleID = 'sched.c'
source_filename = "sched.c"
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
%struct.schedcmd = type { %struct.schedcmd*, i8*, i32, i32 }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0), i32 1, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* getelementptr inbounds ([1 x %struct.paramdef], [1 x %struct.paramdef]* @partab, i32 0, i32 0), i32 1, i32 0 }, align 4
@schedcmds = internal global %struct.schedcmd* null, align 4
@bintab = internal global [1 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_sched, i32 0, i32 -1, i32 0, i8* null, i8* null }], align 4
@partab = internal global [1 x %struct.paramdef] [%struct.paramdef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @sched_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }], align 4
@.str = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@typtab = external global [256 x i16], align 2
@.str.1 = private unnamed_addr constant [34 x i8] c"usage for delete: sched -<item#>.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"not that many entries\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bad option: -%c\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"option expected\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%a %b %e %k:%M:%S\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-o \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%3d %s %s%s%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"not enough arguments\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"bad time specifier\00", align 1
@schedcmdtimed = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"zsh_scheduled_events\00", align 1
@sched_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @schedgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@zleactive = external global i32, align 4

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
  call void @addprepromptfn(void ()* @checksched)
  ret i32 0
}

declare void @addprepromptfn(void ()*) #1

; Function Attrs: noinline nounwind
define internal void @checksched() #0 {
entry:
  %t = alloca i32, align 4
  %sch = alloca %struct.schedcmd*, align 4
  %0 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %tobool = icmp ne %struct.schedcmd* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %call = call i32 @time(i32* null)
  store i32 %call, i32* %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %if.end
  %1 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %tobool1 = icmp ne %struct.schedcmd* %1, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %time = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %2, i32 0, i32 2
  %3 = load i32, i32* %time, align 4
  %4 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  store %struct.schedcmd* %6, %struct.schedcmd** %sch, align 4
  %7 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %7, i32 0, i32 0
  %8 = load %struct.schedcmd*, %struct.schedcmd** %next, align 4
  store %struct.schedcmd* %8, %struct.schedcmd** @schedcmds, align 4
  call void @scheddeltimed()
  %9 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %flags = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %9, i32 0, i32 3
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, i32* @zleactive, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call i8* (i32, ...) @zleentry(i32 3)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %while.body
  %12 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %12, i32 0, i32 1
  %13 = load i8*, i8** %cmd, align 4
  call void @execstring(i8* %13, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %14 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd7 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %14, i32 0, i32 1
  %15 = load i8*, i8** %cmd7, align 4
  call void @zsfree(i8* %15)
  %16 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %17 = bitcast %struct.schedcmd* %16 to i8*
  call void @zfree(i8* %17, i32 16)
  %18 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %tobool8 = icmp ne %struct.schedcmd* %18, null
  br i1 %tobool8, label %land.lhs.true9, label %if.end12

land.lhs.true9:                                   ; preds = %if.end6
  %19 = load i32, i32* @schedcmdtimed, align 4
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  call void @schedaddtimed()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true9, %if.end6
  br label %while.cond

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: noinline nounwind
define i32 @cleanup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %sch = alloca %struct.schedcmd*, align 4
  %schn = alloca %struct.schedcmd*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %tobool = icmp ne %struct.schedcmd* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @scheddeltimed()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  store %struct.schedcmd* %1, %struct.schedcmd** %sch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %tobool1 = icmp ne %struct.schedcmd* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %3, i32 0, i32 0
  %4 = load %struct.schedcmd*, %struct.schedcmd** %next, align 4
  store %struct.schedcmd* %4, %struct.schedcmd** %schn, align 4
  %5 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %5, i32 0, i32 1
  %6 = load i8*, i8** %cmd, align 4
  call void @zsfree(i8* %6)
  %7 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %8 = bitcast %struct.schedcmd* %7 to i8*
  call void @zfree(i8* %8, i32 16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.schedcmd*, %struct.schedcmd** %schn, align 4
  store %struct.schedcmd* %9, %struct.schedcmd** %sch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @delprepromptfn(void ()* @checksched)
  %10 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 @setfeatureenables(%struct.module* %10, %struct.features* @module_features, i32* null)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define internal void @scheddeltimed() #0 {
entry:
  %0 = load i32, i32* @schedcmdtimed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @deltimedfn(void ()* @checksched)
  store i32 0, i32* @schedcmdtimed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @zsfree(i8*) #1

declare void @zfree(i8*, i32) #1

declare void @delprepromptfn(void ()*) #1

declare i32 @setfeatureenables(%struct.module*, %struct.features*, i32*) #1

; Function Attrs: noinline nounwind
define i32 @finish_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define internal i32 @bin_sched(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  %argptr = alloca i8**, align 4
  %t = alloca i32, align 4
  %h = alloca i32, align 4
  %m = alloca i32, align 4
  %sec = alloca i32, align 4
  %tm = alloca %struct.tm*, align 4
  %sch = alloca %struct.schedcmd*, align 4
  %sch2 = alloca %struct.schedcmd*, align 4
  %schl = alloca %struct.schedcmd*, align 4
  %sn = alloca i32, align 4
  %flags = alloca i32, align 4
  %arg = alloca i8*, align 4
  %tbuf = alloca [60 x i8], align 1
  %flagstr = alloca i8*, align 4
  %endstr = alloca i8*, align 4
  %t51 = alloca i32, align 4
  %tmp = alloca %struct.tm*, align 4
  %zl = alloca i32, align 4
  %zl119 = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %flags, align 4
  %0 = load i8**, i8*** %argv.addr, align 4
  store i8** %0, i8*** %argptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %entry
  %1 = load i8**, i8*** %argptr, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argptr, align 4
  %4 = load i8*, i8** %3, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end45

for.body:                                         ; preds = %land.end
  %7 = load i8**, i8*** %argptr, align 4
  %8 = load i8*, i8** %7, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %add.ptr, i8** %arg, align 4
  %9 = load i8*, i8** %arg, align 4
  %10 = load i8, i8* %9, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv2 = sext i16 %11 to i32
  %and = and i32 %conv2, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.else25

if.then:                                          ; preds = %for.body
  %12 = load i8*, i8** %arg, align 4
  %call = call i32 @atoi(i8* %12)
  store i32 %call, i32* %sn, align 4
  %13 = load i32, i32* %sn, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store %struct.schedcmd* null, %struct.schedcmd** %schl, align 4
  %14 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  store %struct.schedcmd* %14, %struct.schedcmd** %sch, align 4
  %15 = load i32, i32* %sn, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %sn, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end
  %16 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %tobool7 = icmp ne %struct.schedcmd* %16, null
  br i1 %tobool7, label %land.rhs8, label %land.end10

land.rhs8:                                        ; preds = %for.cond6
  %17 = load i32, i32* %sn, align 4
  %tobool9 = icmp ne i32 %17, 0
  br label %land.end10

land.end10:                                       ; preds = %land.rhs8, %for.cond6
  %18 = phi i1 [ false, %for.cond6 ], [ %tobool9, %land.rhs8 ]
  br i1 %18, label %for.body11, label %for.end

for.body11:                                       ; preds = %land.end10
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %19 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  store %struct.schedcmd* %19, %struct.schedcmd** %schl, align 4
  %next = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %19, i32 0, i32 0
  %20 = load %struct.schedcmd*, %struct.schedcmd** %next, align 4
  store %struct.schedcmd* %20, %struct.schedcmd** %sch, align 4
  %21 = load i32, i32* %sn, align 4
  %dec12 = add nsw i32 %21, -1
  store i32 %dec12, i32* %sn, align 4
  br label %for.cond6

for.end:                                          ; preds = %land.end10
  %22 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %tobool13 = icmp ne %struct.schedcmd* %22, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.end
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.end
  %23 = load %struct.schedcmd*, %struct.schedcmd** %schl, align 4
  %tobool16 = icmp ne %struct.schedcmd* %23, null
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %24 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next18 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %24, i32 0, i32 0
  %25 = load %struct.schedcmd*, %struct.schedcmd** %next18, align 4
  %26 = load %struct.schedcmd*, %struct.schedcmd** %schl, align 4
  %next19 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %26, i32 0, i32 0
  store %struct.schedcmd* %25, %struct.schedcmd** %next19, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end15
  call void @scheddeltimed()
  %27 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next20 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %27, i32 0, i32 0
  %28 = load %struct.schedcmd*, %struct.schedcmd** %next20, align 4
  store %struct.schedcmd* %28, %struct.schedcmd** @schedcmds, align 4
  %29 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %tobool21 = icmp ne %struct.schedcmd* %29, null
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  call void @schedaddtimed()
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then17
  %30 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %30, i32 0, i32 1
  %31 = load i8*, i8** %cmd, align 4
  call void @zsfree(i8* %31)
  %32 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %33 = bitcast %struct.schedcmd* %32 to i8*
  call void @zfree(i8* %33, i32 16)
  store i32 0, i32* %retval, align 4
  br label %return

if.else25:                                        ; preds = %for.body
  %34 = load i8*, i8** %arg, align 4
  %35 = load i8, i8* %34, align 1
  %conv26 = sext i8 %35 to i32
  %cmp27 = icmp eq i32 %conv26, 45
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else25
  %36 = load i8**, i8*** %argptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %incdec.ptr, i8*** %argptr, align 4
  br label %for.end45

if.else30:                                        ; preds = %if.else25
  %37 = load i8*, i8** %arg, align 4
  %call31 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.else30
  %38 = load i32, i32* %flags, align 4
  %or = or i32 %38, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end40

if.else34:                                        ; preds = %if.else30
  %39 = load i8*, i8** %arg, align 4
  %40 = load i8, i8* %39, align 1
  %tobool35 = icmp ne i8 %40, 0
  br i1 %tobool35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else34
  %41 = load i8*, i8** %nam.addr, align 4
  %42 = load i8*, i8** %arg, align 4
  %43 = load i8, i8* %42, align 1
  %conv37 = sext i8 %43 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 %conv37)
  br label %if.end39

if.else38:                                        ; preds = %if.else34
  %44 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then36
  store i32 1, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then33
  br label %if.end41

if.end41:                                         ; preds = %if.end40
  br label %if.end42

if.end42:                                         ; preds = %if.end41
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %45 = load i8**, i8*** %argptr, align 4
  %incdec.ptr44 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr44, i8*** %argptr, align 4
  br label %for.cond

for.end45:                                        ; preds = %if.then29, %land.end
  %46 = load i8**, i8*** %argptr, align 4
  %47 = load i8*, i8** %46, align 4
  %tobool46 = icmp ne i8* %47, null
  br i1 %tobool46, label %if.else74, label %if.then47

if.then47:                                        ; preds = %for.end45
  store i32 1, i32* %sn, align 4
  %48 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  store %struct.schedcmd* %48, %struct.schedcmd** %sch, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc71, %if.then47
  %49 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %tobool49 = icmp ne %struct.schedcmd* %49, null
  br i1 %tobool49, label %for.body50, label %for.end73

for.body50:                                       ; preds = %for.cond48
  %50 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %time = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %50, i32 0, i32 2
  %51 = load i32, i32* %time, align 4
  store i32 %51, i32* %t51, align 4
  %call52 = call %struct.tm* @localtime(i32* %t51)
  store %struct.tm* %call52, %struct.tm** %tmp, align 4
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %tbuf, i32 0, i32 0
  %52 = load %struct.tm*, %struct.tm** %tmp, align 4
  %call53 = call i32 @ztrftime(i8* %arraydecay, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), %struct.tm* %52, i32 0)
  %53 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %flags54 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %53, i32 0, i32 3
  %54 = load i32, i32* %flags54, align 4
  %and55 = and i32 %54, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %for.body50
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %flagstr, align 4
  br label %if.end59

if.else58:                                        ; preds = %for.body50
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %flagstr, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  %55 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd60 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %55, i32 0, i32 1
  %56 = load i8*, i8** %cmd60, align 4
  %57 = load i8, i8* %56, align 1
  %conv61 = sext i8 %57 to i32
  %cmp62 = icmp eq i32 %conv61, 45
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.end59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8** %endstr, align 4
  br label %if.end66

if.else65:                                        ; preds = %if.end59
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %endstr, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  %58 = load i32, i32* %sn, align 4
  %arraydecay67 = getelementptr inbounds [60 x i8], [60 x i8]* %tbuf, i32 0, i32 0
  %59 = load i8*, i8** %flagstr, align 4
  %60 = load i8*, i8** %endstr, align 4
  %61 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd68 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %61, i32 0, i32 1
  %62 = load i8*, i8** %cmd68, align 4
  %call69 = call i8* @unmeta(i8* %62)
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %58, i8* %arraydecay67, i8* %59, i8* %60, i8* %call69)
  br label %for.inc71

for.inc71:                                        ; preds = %if.end66
  %63 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next72 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %63, i32 0, i32 0
  %64 = load %struct.schedcmd*, %struct.schedcmd** %next72, align 4
  store %struct.schedcmd* %64, %struct.schedcmd** %sch, align 4
  %65 = load i32, i32* %sn, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %sn, align 4
  br label %for.cond48

for.end73:                                        ; preds = %for.cond48
  store i32 0, i32* %retval, align 4
  br label %return

if.else74:                                        ; preds = %for.end45
  %66 = load i8**, i8*** %argptr, align 4
  %arrayidx75 = getelementptr inbounds i8*, i8** %66, i32 1
  %67 = load i8*, i8** %arrayidx75, align 4
  %tobool76 = icmp ne i8* %67, null
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.else74
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.else74
  br label %if.end79

if.end79:                                         ; preds = %if.end78
  %68 = load i8**, i8*** %argptr, align 4
  %incdec.ptr80 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %incdec.ptr80, i8*** %argptr, align 4
  %69 = load i8*, i8** %68, align 4
  store i8* %69, i8** %s, align 4
  %70 = load i8*, i8** %s, align 4
  %71 = load i8, i8* %70, align 1
  %conv81 = sext i8 %71 to i32
  %cmp82 = icmp eq i32 %conv81, 43
  br i1 %cmp82, label %if.then84, label %if.else117

if.then84:                                        ; preds = %if.end79
  %72 = load i8*, i8** %s, align 4
  %add.ptr86 = getelementptr inbounds i8, i8* %72, i32 1
  %call87 = call i32 @zstrtol(i8* %add.ptr86, i8** %s, i32 10)
  store i32 %call87, i32* %zl, align 4
  %73 = load i8*, i8** %s, align 4
  %74 = load i8, i8* %73, align 1
  %conv88 = sext i8 %74 to i32
  %cmp89 = icmp eq i32 %conv88, 58
  br i1 %cmp89, label %if.then91, label %if.else109

if.then91:                                        ; preds = %if.then84
  %75 = load i8*, i8** %s, align 4
  %add.ptr92 = getelementptr inbounds i8, i8* %75, i32 1
  %call93 = call i32 @zstrtol(i8* %add.ptr92, i8** %s, i32 10)
  store i32 %call93, i32* %m, align 4
  %76 = load i8*, i8** %s, align 4
  %77 = load i8, i8* %76, align 1
  %conv94 = sext i8 %77 to i32
  %cmp95 = icmp eq i32 %conv94, 58
  br i1 %cmp95, label %if.then97, label %if.else100

if.then97:                                        ; preds = %if.then91
  %78 = load i8*, i8** %s, align 4
  %add.ptr98 = getelementptr inbounds i8, i8* %78, i32 1
  %call99 = call i32 @zstrtol(i8* %add.ptr98, i8** %s, i32 10)
  store i32 %call99, i32* %sec, align 4
  br label %if.end101

if.else100:                                       ; preds = %if.then91
  store i32 0, i32* %sec, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then97
  %79 = load i8*, i8** %s, align 4
  %80 = load i8, i8* %79, align 1
  %tobool102 = icmp ne i8 %80, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end101
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end101
  %call105 = call i32 @time(i32* null)
  %81 = load i32, i32* %zl, align 4
  %mul = mul nsw i32 %81, 3600
  %add = add nsw i32 %call105, %mul
  %82 = load i32, i32* %m, align 4
  %mul106 = mul nsw i32 %82, 60
  %add107 = add nsw i32 %add, %mul106
  %83 = load i32, i32* %sec, align 4
  %add108 = add nsw i32 %add107, %83
  store i32 %add108, i32* %t, align 4
  br label %if.end116

if.else109:                                       ; preds = %if.then84
  %84 = load i8*, i8** %s, align 4
  %85 = load i8, i8* %84, align 1
  %tobool110 = icmp ne i8 %85, 0
  br i1 %tobool110, label %if.else114, label %if.then111

if.then111:                                       ; preds = %if.else109
  %call112 = call i32 @time(i32* null)
  %86 = load i32, i32* %zl, align 4
  %add113 = add nsw i32 %call112, %86
  store i32 %add113, i32* %t, align 4
  br label %if.end115

if.else114:                                       ; preds = %if.else109
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.then111
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end104
  br label %if.end186

if.else117:                                       ; preds = %if.end79
  %87 = load i8*, i8** %s, align 4
  %call120 = call i32 @zstrtol(i8* %87, i8** %s, i32 10)
  store i32 %call120, i32* %zl119, align 4
  %88 = load i8*, i8** %s, align 4
  %89 = load i8, i8* %88, align 1
  %conv121 = sext i8 %89 to i32
  %cmp122 = icmp eq i32 %conv121, 58
  br i1 %cmp122, label %if.then124, label %if.else180

if.then124:                                       ; preds = %if.else117
  %90 = load i32, i32* %zl119, align 4
  store i32 %90, i32* %h, align 4
  %91 = load i8*, i8** %s, align 4
  %add.ptr125 = getelementptr inbounds i8, i8* %91, i32 1
  %call126 = call i32 @zstrtol(i8* %add.ptr125, i8** %s, i32 10)
  store i32 %call126, i32* %m, align 4
  %92 = load i8*, i8** %s, align 4
  %93 = load i8, i8* %92, align 1
  %conv127 = sext i8 %93 to i32
  %cmp128 = icmp eq i32 %conv127, 58
  br i1 %cmp128, label %if.then130, label %if.else133

if.then130:                                       ; preds = %if.then124
  %94 = load i8*, i8** %s, align 4
  %add.ptr131 = getelementptr inbounds i8, i8* %94, i32 1
  %call132 = call i32 @zstrtol(i8* %add.ptr131, i8** %s, i32 10)
  store i32 %call132, i32* %sec, align 4
  br label %if.end134

if.else133:                                       ; preds = %if.then124
  store i32 0, i32* %sec, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.else133, %if.then130
  %95 = load i8*, i8** %s, align 4
  %96 = load i8, i8* %95, align 1
  %conv135 = sext i8 %96 to i32
  %tobool136 = icmp ne i32 %conv135, 0
  br i1 %tobool136, label %land.lhs.true, label %if.end153

land.lhs.true:                                    ; preds = %if.end134
  %97 = load i8*, i8** %s, align 4
  %98 = load i8, i8* %97, align 1
  %conv137 = sext i8 %98 to i32
  %cmp138 = icmp ne i32 %conv137, 97
  br i1 %cmp138, label %land.lhs.true140, label %if.end153

land.lhs.true140:                                 ; preds = %land.lhs.true
  %99 = load i8*, i8** %s, align 4
  %100 = load i8, i8* %99, align 1
  %conv141 = sext i8 %100 to i32
  %cmp142 = icmp ne i32 %conv141, 65
  br i1 %cmp142, label %land.lhs.true144, label %if.end153

land.lhs.true144:                                 ; preds = %land.lhs.true140
  %101 = load i8*, i8** %s, align 4
  %102 = load i8, i8* %101, align 1
  %conv145 = sext i8 %102 to i32
  %cmp146 = icmp ne i32 %conv145, 112
  br i1 %cmp146, label %land.lhs.true148, label %if.end153

land.lhs.true148:                                 ; preds = %land.lhs.true144
  %103 = load i8*, i8** %s, align 4
  %104 = load i8, i8* %103, align 1
  %conv149 = sext i8 %104 to i32
  %cmp150 = icmp ne i32 %conv149, 80
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %land.lhs.true148
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end153:                                        ; preds = %land.lhs.true148, %land.lhs.true144, %land.lhs.true140, %land.lhs.true, %if.end134
  %call154 = call i32 @time(i32* null)
  store i32 %call154, i32* %t, align 4
  %call155 = call %struct.tm* @localtime(i32* %t)
  store %struct.tm* %call155, %struct.tm** %tm, align 4
  %105 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %105, i32 0, i32 0
  %106 = load i32, i32* %tm_sec, align 4
  %107 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 1
  %108 = load i32, i32* %tm_min, align 4
  %mul156 = mul nsw i32 %108, 60
  %add157 = add nsw i32 %106, %mul156
  %109 = load %struct.tm*, %struct.tm** %tm, align 4
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 2
  %110 = load i32, i32* %tm_hour, align 4
  %mul158 = mul nsw i32 %110, 3600
  %add159 = add nsw i32 %add157, %mul158
  %111 = load i32, i32* %t, align 4
  %sub = sub nsw i32 %111, %add159
  store i32 %sub, i32* %t, align 4
  %112 = load i8*, i8** %s, align 4
  %113 = load i8, i8* %112, align 1
  %conv160 = sext i8 %113 to i32
  %cmp161 = icmp eq i32 %conv160, 112
  br i1 %cmp161, label %if.then166, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end153
  %114 = load i8*, i8** %s, align 4
  %115 = load i8, i8* %114, align 1
  %conv163 = sext i8 %115 to i32
  %cmp164 = icmp eq i32 %conv163, 80
  br i1 %cmp164, label %if.then166, label %if.end168

if.then166:                                       ; preds = %lor.lhs.false, %if.end153
  %116 = load i32, i32* %h, align 4
  %add167 = add nsw i32 %116, 12
  store i32 %add167, i32* %h, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %lor.lhs.false
  %117 = load i32, i32* %h, align 4
  %mul169 = mul nsw i32 %117, 3600
  %118 = load i32, i32* %m, align 4
  %mul170 = mul nsw i32 %118, 60
  %add171 = add nsw i32 %mul169, %mul170
  %119 = load i32, i32* %sec, align 4
  %add172 = add nsw i32 %add171, %119
  %120 = load i32, i32* %t, align 4
  %add173 = add nsw i32 %120, %add172
  store i32 %add173, i32* %t, align 4
  %121 = load i32, i32* %t, align 4
  %call174 = call i32 @time(i32* null)
  %cmp175 = icmp slt i32 %121, %call174
  br i1 %cmp175, label %if.then177, label %if.end179

if.then177:                                       ; preds = %if.end168
  %122 = load i32, i32* %t, align 4
  %add178 = add nsw i32 %122, 86400
  store i32 %add178, i32* %t, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %if.end168
  br label %if.end185

if.else180:                                       ; preds = %if.else117
  %123 = load i8*, i8** %s, align 4
  %124 = load i8, i8* %123, align 1
  %tobool181 = icmp ne i8 %124, 0
  br i1 %tobool181, label %if.else183, label %if.then182

if.then182:                                       ; preds = %if.else180
  %125 = load i32, i32* %zl119, align 4
  store i32 %125, i32* %t, align 4
  br label %if.end184

if.else183:                                       ; preds = %if.else180
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end184:                                        ; preds = %if.then182
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end179
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end116
  %call187 = call i8* @zalloc(i32 16)
  %126 = bitcast i8* %call187 to %struct.schedcmd*
  store %struct.schedcmd* %126, %struct.schedcmd** %sch, align 4
  %127 = load i32, i32* %t, align 4
  %128 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %time188 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %128, i32 0, i32 2
  store i32 %127, i32* %time188, align 4
  %129 = load i8**, i8*** %argptr, align 4
  %call189 = call i8* @zjoin(i8** %129, i32 32, i32 0)
  %130 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd190 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %130, i32 0, i32 1
  store i8* %call189, i8** %cmd190, align 4
  %131 = load i32, i32* %flags, align 4
  %132 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %flags191 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %132, i32 0, i32 3
  store i32 %131, i32* %flags191, align 4
  %133 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %tobool192 = icmp ne %struct.schedcmd* %133, null
  br i1 %tobool192, label %if.then193, label %if.else219

if.then193:                                       ; preds = %if.end186
  %134 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %time194 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %134, i32 0, i32 2
  %135 = load i32, i32* %time194, align 4
  %136 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %time195 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %136, i32 0, i32 2
  %137 = load i32, i32* %time195, align 4
  %cmp196 = icmp slt i32 %135, %137
  br i1 %cmp196, label %if.then198, label %if.else200

if.then198:                                       ; preds = %if.then193
  call void @scheddeltimed()
  %138 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %139 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next199 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %139, i32 0, i32 0
  store %struct.schedcmd* %138, %struct.schedcmd** %next199, align 4
  %140 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  store %struct.schedcmd* %140, %struct.schedcmd** @schedcmds, align 4
  call void @schedaddtimed()
  br label %if.end218

if.else200:                                       ; preds = %if.then193
  %141 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  store %struct.schedcmd* %141, %struct.schedcmd** %sch2, align 4
  br label %for.cond201

for.cond201:                                      ; preds = %for.inc212, %if.else200
  %142 = load %struct.schedcmd*, %struct.schedcmd** %sch2, align 4
  %next202 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %142, i32 0, i32 0
  %143 = load %struct.schedcmd*, %struct.schedcmd** %next202, align 4
  %tobool203 = icmp ne %struct.schedcmd* %143, null
  br i1 %tobool203, label %land.rhs204, label %land.end210

land.rhs204:                                      ; preds = %for.cond201
  %144 = load %struct.schedcmd*, %struct.schedcmd** %sch2, align 4
  %next205 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %144, i32 0, i32 0
  %145 = load %struct.schedcmd*, %struct.schedcmd** %next205, align 4
  %time206 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %145, i32 0, i32 2
  %146 = load i32, i32* %time206, align 4
  %147 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %time207 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %147, i32 0, i32 2
  %148 = load i32, i32* %time207, align 4
  %cmp208 = icmp slt i32 %146, %148
  br label %land.end210

land.end210:                                      ; preds = %land.rhs204, %for.cond201
  %149 = phi i1 [ false, %for.cond201 ], [ %cmp208, %land.rhs204 ]
  br i1 %149, label %for.body211, label %for.end214

for.body211:                                      ; preds = %land.end210
  br label %for.inc212

for.inc212:                                       ; preds = %for.body211
  %150 = load %struct.schedcmd*, %struct.schedcmd** %sch2, align 4
  %next213 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %150, i32 0, i32 0
  %151 = load %struct.schedcmd*, %struct.schedcmd** %next213, align 4
  store %struct.schedcmd* %151, %struct.schedcmd** %sch2, align 4
  br label %for.cond201

for.end214:                                       ; preds = %land.end210
  %152 = load %struct.schedcmd*, %struct.schedcmd** %sch2, align 4
  %next215 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %152, i32 0, i32 0
  %153 = load %struct.schedcmd*, %struct.schedcmd** %next215, align 4
  %154 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next216 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %154, i32 0, i32 0
  store %struct.schedcmd* %153, %struct.schedcmd** %next216, align 4
  %155 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %156 = load %struct.schedcmd*, %struct.schedcmd** %sch2, align 4
  %next217 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %156, i32 0, i32 0
  store %struct.schedcmd* %155, %struct.schedcmd** %next217, align 4
  br label %if.end218

if.end218:                                        ; preds = %for.end214, %if.then198
  br label %if.end221

if.else219:                                       ; preds = %if.end186
  %157 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next220 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %157, i32 0, i32 0
  store %struct.schedcmd* null, %struct.schedcmd** %next220, align 4
  %158 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  store %struct.schedcmd* %158, %struct.schedcmd** @schedcmds, align 4
  call void @schedaddtimed()
  br label %if.end221

if.end221:                                        ; preds = %if.else219, %if.end218
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end221, %if.else183, %if.then152, %if.else114, %if.then103, %if.then77, %for.end73, %if.end39, %if.end24, %if.then14, %if.then5
  %159 = load i32, i32* %retval, align 4
  ret i32 %159
}

declare i32 @atoi(i8*) #1

declare void @zwarnnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal void @schedaddtimed() #0 {
entry:
  %0 = load i32, i32* @schedcmdtimed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @scheddeltimed()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @schedcmdtimed, align 4
  %1 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  %time = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %1, i32 0, i32 2
  %2 = load i32, i32* %time, align 4
  call void @addtimedfn(void ()* @checksched, i32 %2)
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

declare %struct.tm* @localtime(i32*) #1

declare i32 @ztrftime(i8*, i32, i8*, %struct.tm*, i32) #1

declare i32 @printf(i8*, ...) #1

declare i8* @unmeta(i8*) #1

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i32 @time(i32*) #1

declare i8* @zalloc(i32) #1

declare i8* @zjoin(i8**, i32, i32) #1

declare void @addtimedfn(void ()*, i32) #1

; Function Attrs: noinline nounwind
define internal i8** @schedgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %i = alloca i32, align 4
  %sch = alloca %struct.schedcmd*, align 4
  %ret = alloca i8**, align 4
  %aptr = alloca i8**, align 4
  %tbuf = alloca [40 x i8], align 1
  %flagstr = alloca i8*, align 4
  %t = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  store %struct.schedcmd* %0, %struct.schedcmd** %sch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %tobool = icmp ne %struct.schedcmd* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %2, i32 0, i32 0
  %3 = load %struct.schedcmd*, %struct.schedcmd** %next, align 4
  store %struct.schedcmd* %3, %struct.schedcmd** %sch, align 4
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %mul = mul i32 4, %add
  %call = call i8* @zhalloc(i32 %mul)
  %6 = bitcast i8* %call to i8**
  store i8** %6, i8*** %ret, align 4
  store i8** %6, i8*** %aptr, align 4
  %7 = load %struct.schedcmd*, %struct.schedcmd** @schedcmds, align 4
  store %struct.schedcmd* %7, %struct.schedcmd** %sch, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.end
  %8 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %tobool2 = icmp ne %struct.schedcmd* %8, null
  br i1 %tobool2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %9 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %time = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %9, i32 0, i32 2
  %10 = load i32, i32* %time, align 4
  store i32 %10, i32* %t, align 4
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %tbuf, i32 0, i32 0
  %11 = load i32, i32* %t, align 4
  %conv = sext i32 %11 to i64
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 %conv)
  %12 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %flags = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %12, i32 0, i32 3
  %13 = load i32, i32* %flags, align 4
  %and = and i32 %13, 1
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8** %flagstr, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %flagstr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay6 = getelementptr inbounds [40 x i8], [40 x i8]* %tbuf, i32 0, i32 0
  %call7 = call i32 @strlen(i8* %arraydecay6)
  %add8 = add i32 5, %call7
  %14 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %14, i32 0, i32 1
  %15 = load i8*, i8** %cmd, align 4
  %call9 = call i32 @strlen(i8* %15)
  %add10 = add i32 %add8, %call9
  %call11 = call i8* @zhalloc(i32 %add10)
  %16 = load i8**, i8*** %aptr, align 4
  store i8* %call11, i8** %16, align 4
  %17 = load i8**, i8*** %aptr, align 4
  %18 = load i8*, i8** %17, align 4
  %arraydecay12 = getelementptr inbounds [40 x i8], [40 x i8]* %tbuf, i32 0, i32 0
  %19 = load i8*, i8** %flagstr, align 4
  %20 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %cmd13 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %20, i32 0, i32 1
  %21 = load i8*, i8** %cmd13, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay12, i8* %19, i8* %21)
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %22 = load %struct.schedcmd*, %struct.schedcmd** %sch, align 4
  %next16 = getelementptr inbounds %struct.schedcmd, %struct.schedcmd* %22, i32 0, i32 0
  %23 = load %struct.schedcmd*, %struct.schedcmd** %next16, align 4
  store %struct.schedcmd* %23, %struct.schedcmd** %sch, align 4
  %24 = load i8**, i8*** %aptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %incdec.ptr, i8*** %aptr, align 4
  br label %for.cond1

for.end17:                                        ; preds = %for.cond1
  %25 = load i8**, i8*** %aptr, align 4
  store i8* null, i8** %25, align 4
  %26 = load i8**, i8*** %ret, align 4
  ret i8** %26
}

declare void @arrsetfn(%struct.param*, i8**) #1

declare void @stdunsetfn(%struct.param*, i32) #1

declare i8* @zhalloc(i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @strlen(i8*) #1

declare i8* @zleentry(i32, ...) #1

declare void @execstring(i8*, i32, i32, i8*) #1

declare void @deltimedfn(void ()*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
