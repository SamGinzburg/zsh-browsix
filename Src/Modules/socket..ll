; ModuleID = 'socket.c'
source_filename = "socket.c"
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
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.pollfd = type { i32, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0), i32 1, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@bintab = internal global [1 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_zsocket, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null }], align 4
@.str = private unnamed_addr constant [8 x i8] c"zsocket\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ad:ltv\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s is an invalid argument to -d\00", align 1
@max_zsh_fd = external global i32, align 4
@fdtable = external global i8*, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"file descriptor %d is in use by the shell\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"-l requires an argument\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"socket error: %e \00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"could not bind to %s: %e\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"could not listen on socket: %e\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"cannot duplicate fd %d: %e\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s listener is on fd %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"-a requires an argument\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"invalid numerical argument\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"poll error: %e\00", align 1
@errflag = external global i32, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"could not accept connection: %e\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"could not duplicate socket fd to %d: %e\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"new connection from %s is on fd %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"zsocket requires an argument\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"socket creation failed: %e\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"connection failed: %e\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"%s is now on fd %d\0A\00", align 1

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
define internal i32 @bin_zsocket(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %verbose = alloca i32, align 4
  %test = alloca i32, align 4
  %targetfd = alloca i32, align 4
  %len = alloca i32, align 4
  %soun = alloca %struct.sockaddr_un, align 2
  %sfd = alloca i32, align 4
  %localfn = alloca i8*, align 4
  %lfd = alloca i32, align 4
  %rfd = alloca i32, align 4
  %pfd = alloca %struct.pollfd, align 4
  %ret = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 1, i32* %err, align 4
  store i32 0, i32* %verbose, align 4
  store i32 0, i32* %test, align 4
  store i32 0, i32* %targetfd, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 118
  %1 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %verbose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 116
  %3 = load i8, i8* %arrayidx3, align 4
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, i32* %test, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind9 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* %ind9, i32 0, i32 100
  %5 = load i8, i8* %arrayidx10, align 4
  %conv11 = zext i8 %5 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end37

if.then14:                                        ; preds = %if.end8
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args15 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 1
  %7 = load i8**, i8*** %args15, align 4
  %8 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind16 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [128 x i8], [128 x i8]* %ind16, i32 0, i32 100
  %9 = load i8, i8* %arrayidx17, align 4
  %conv18 = zext i8 %9 to i32
  %shr = ashr i32 %conv18, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx19 = getelementptr inbounds i8*, i8** %7, i32 %sub
  %10 = load i8*, i8** %arrayidx19, align 4
  %call = call i32 @atoi(i8* %10)
  store i32 %call, i32* %targetfd, align 4
  %11 = load i32, i32* %targetfd, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end28, label %if.then20

if.then20:                                        ; preds = %if.then14
  %12 = load i8*, i8** %nam.addr, align 4
  %13 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args21 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 1
  %14 = load i8**, i8*** %args21, align 4
  %15 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind22 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [128 x i8], [128 x i8]* %ind22, i32 0, i32 100
  %16 = load i8, i8* %arrayidx23, align 4
  %conv24 = zext i8 %16 to i32
  %shr25 = ashr i32 %conv24, 2
  %sub26 = sub nsw i32 %shr25, 1
  %arrayidx27 = getelementptr inbounds i8*, i8** %14, i32 %sub26
  %17 = load i8*, i8** %arrayidx27, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* %17)
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then14
  %18 = load i32, i32* %targetfd, align 4
  %19 = load i32, i32* @max_zsh_fd, align 4
  %cmp29 = icmp sle i32 %18, %19
  br i1 %cmp29, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.end28
  %20 = load i8*, i8** @fdtable, align 4
  %21 = load i32, i32* %targetfd, align 4
  %arrayidx31 = getelementptr inbounds i8, i8* %20, i32 %21
  %22 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %22 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  %23 = load i8*, i8** %nam.addr, align 4
  %24 = load i32, i32* %targetfd, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i32 %24)
  store i32 1, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %land.lhs.true, %if.end28
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end8
  %25 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind38 = getelementptr inbounds %struct.options, %struct.options* %25, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [128 x i8], [128 x i8]* %ind38, i32 0, i32 108
  %26 = load i8, i8* %arrayidx39, align 4
  %conv40 = zext i8 %26 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.else88

if.then43:                                        ; preds = %if.end37
  %27 = load i8**, i8*** %args.addr, align 4
  %arrayidx44 = getelementptr inbounds i8*, i8** %27, i32 0
  %28 = load i8*, i8** %arrayidx44, align 4
  %tobool45 = icmp ne i8* %28, null
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.then43
  %29 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.then43
  %30 = load i8**, i8*** %args.addr, align 4
  %arrayidx48 = getelementptr inbounds i8*, i8** %30, i32 0
  %31 = load i8*, i8** %arrayidx48, align 4
  store i8* %31, i8** %localfn, align 4
  %call49 = call i32 @socket(i32 1, i32 1, i32 0)
  store i32 %call49, i32* %sfd, align 4
  %32 = load i32, i32* %sfd, align 4
  %cmp50 = icmp eq i32 %32, -1
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end47
  %33 = load i8*, i8** %nam.addr, align 4
  %call53 = call i32* @__errno_location()
  %34 = load i32, i32* %call53, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %34)
  store i32 1, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end47
  %sun_family = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 0
  store i16 1, i16* %sun_family, align 2
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %35 = load i8*, i8** %localfn, align 4
  %call55 = call i8* @strncpy(i8* %arraydecay, i8* %35, i32 107)
  %36 = load i32, i32* %sfd, align 4
  %37 = bitcast %struct.sockaddr_un* %soun to %struct.sockaddr*
  %call56 = call i32 @bind(i32 %36, %struct.sockaddr* %37, i32 110)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.end54
  %38 = load i8*, i8** %nam.addr, align 4
  %sun_path59 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 1
  %arraydecay60 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path59, i32 0, i32 0
  %call61 = call i32* @__errno_location()
  %39 = load i32, i32* %call61, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay60, i32 %39)
  %40 = load i32, i32* %sfd, align 4
  %call62 = call i32 @close(i32 %40)
  store i32 1, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end54
  %41 = load i32, i32* %sfd, align 4
  %call64 = call i32 @listen(i32 %41, i32 1)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end63
  %42 = load i8*, i8** %nam.addr, align 4
  %call67 = call i32* @__errno_location()
  %43 = load i32, i32* %call67, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i32 %43)
  %44 = load i32, i32* %sfd, align 4
  %call68 = call i32 @close(i32 %44)
  store i32 1, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end63
  %45 = load i32, i32* %sfd, align 4
  call void @addmodulefd(i32 %45, i32 2)
  %46 = load i32, i32* %targetfd, align 4
  %tobool70 = icmp ne i32 %46, 0
  br i1 %tobool70, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end69
  %47 = load i32, i32* %sfd, align 4
  %48 = load i32, i32* %targetfd, align 4
  %call72 = call i32 @redup(i32 %47, i32 %48)
  store i32 %call72, i32* %sfd, align 4
  br label %if.end74

if.else:                                          ; preds = %if.end69
  %49 = load i32, i32* %sfd, align 4
  %call73 = call i32 @movefd(i32 %49)
  store i32 %call73, i32* %sfd, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then71
  %50 = load i32, i32* %sfd, align 4
  %cmp75 = icmp eq i32 %50, -1
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end74
  %51 = load i8*, i8** %nam.addr, align 4
  %52 = load i32, i32* %sfd, align 4
  %call78 = call i32* @__errno_location()
  %53 = load i32, i32* %call78, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 %52, i32 %53)
  store i32 1, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.end74
  %54 = load i8*, i8** @fdtable, align 4
  %55 = load i32, i32* %sfd, align 4
  %arrayidx80 = getelementptr inbounds i8, i8* %54, i32 %55
  store i8 2, i8* %arrayidx80, align 1
  %56 = load i32, i32* %sfd, align 4
  %call81 = call %struct.param* @setiparam_no_convert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %56)
  %57 = load i32, i32* %verbose, align 4
  %tobool82 = icmp ne i32 %57, 0
  br i1 %tobool82, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.end79
  %sun_path84 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 1
  %arraydecay85 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path84, i32 0, i32 0
  %58 = load i32, i32* %sfd, align 4
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay85, i32 %58)
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end79
  store i32 0, i32* %retval, align 4
  br label %return

if.else88:                                        ; preds = %if.end37
  %59 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind89 = getelementptr inbounds %struct.options, %struct.options* %59, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [128 x i8], [128 x i8]* %ind89, i32 0, i32 97
  %60 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %60 to i32
  %cmp92 = icmp ne i32 %conv91, 0
  br i1 %cmp92, label %if.then94, label %if.else150

if.then94:                                        ; preds = %if.else88
  %61 = load i8**, i8*** %args.addr, align 4
  %arrayidx95 = getelementptr inbounds i8*, i8** %61, i32 0
  %62 = load i8*, i8** %arrayidx95, align 4
  %tobool96 = icmp ne i8* %62, null
  br i1 %tobool96, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.then94
  %63 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end98:                                         ; preds = %if.then94
  %64 = load i8**, i8*** %args.addr, align 4
  %arrayidx99 = getelementptr inbounds i8*, i8** %64, i32 0
  %65 = load i8*, i8** %arrayidx99, align 4
  %call100 = call i32 @atoi(i8* %65)
  store i32 %call100, i32* %lfd, align 4
  %66 = load i32, i32* %lfd, align 4
  %tobool101 = icmp ne i32 %66, 0
  br i1 %tobool101, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end98
  %67 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.end98
  %68 = load i32, i32* %test, align 4
  %tobool104 = icmp ne i32 %68, 0
  br i1 %tobool104, label %if.then105, label %if.end117

if.then105:                                       ; preds = %if.end103
  %69 = load i32, i32* %lfd, align 4
  %fd = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pfd, i32 0, i32 0
  store i32 %69, i32* %fd, align 4
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pfd, i32 0, i32 1
  store i16 1, i16* %events, align 4
  %call106 = call i32 @poll(%struct.pollfd* %pfd, i32 1, i32 0)
  store i32 %call106, i32* %ret, align 4
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.else110

if.then109:                                       ; preds = %if.then105
  store i32 1, i32* %retval, align 4
  br label %return

if.else110:                                       ; preds = %if.then105
  %70 = load i32, i32* %ret, align 4
  %cmp111 = icmp eq i32 %70, -1
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.else110
  %71 = load i8*, i8** %nam.addr, align 4
  %call114 = call i32* @__errno_location()
  %72 = load i32, i32* %call114, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %72)
  store i32 1, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.else110
  br label %if.end116

if.end116:                                        ; preds = %if.end115
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end103
  store i32 110, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end117
  %73 = load i32, i32* %lfd, align 4
  %74 = bitcast %struct.sockaddr_un* %soun to %struct.sockaddr*
  %call118 = call i32 @accept(i32 %73, %struct.sockaddr* %74, i32* %len)
  store i32 %call118, i32* %rfd, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %75 = load i32, i32* %rfd, align 4
  %cmp119 = icmp slt i32 %75, 0
  br i1 %cmp119, label %land.lhs.true121, label %land.end

land.lhs.true121:                                 ; preds = %do.cond
  %call122 = call i32* @__errno_location()
  %76 = load i32, i32* %call122, align 4
  %cmp123 = icmp eq i32 %76, 4
  br i1 %cmp123, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true121
  %77 = load i32, i32* @errflag, align 4
  %tobool125 = icmp ne i32 %77, 0
  %lnot = xor i1 %tobool125, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true121, %do.cond
  %78 = phi i1 [ false, %land.lhs.true121 ], [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %78, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %79 = load i32, i32* %rfd, align 4
  %cmp126 = icmp eq i32 %79, -1
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %do.end
  %80 = load i8*, i8** %nam.addr, align 4
  %call129 = call i32* @__errno_location()
  %81 = load i32, i32* %call129, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i32 %81)
  store i32 1, i32* %retval, align 4
  br label %return

if.end130:                                        ; preds = %do.end
  %82 = load i32, i32* %rfd, align 4
  call void @addmodulefd(i32 %82, i32 2)
  %83 = load i32, i32* %targetfd, align 4
  %tobool131 = icmp ne i32 %83, 0
  br i1 %tobool131, label %if.then132, label %if.else141

if.then132:                                       ; preds = %if.end130
  %84 = load i32, i32* %rfd, align 4
  %85 = load i32, i32* %targetfd, align 4
  %call133 = call i32 @redup(i32 %84, i32 %85)
  store i32 %call133, i32* %sfd, align 4
  %86 = load i32, i32* %sfd, align 4
  %cmp134 = icmp slt i32 %86, 0
  br i1 %cmp134, label %if.then136, label %if.end139

if.then136:                                       ; preds = %if.then132
  %87 = load i8*, i8** %nam.addr, align 4
  %88 = load i32, i32* %targetfd, align 4
  %call137 = call i32* @__errno_location()
  %89 = load i32, i32* %call137, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i32 %88, i32 %89)
  %90 = load i32, i32* %rfd, align 4
  %call138 = call i32 @zclose(i32 %90)
  store i32 1, i32* %retval, align 4
  br label %return

if.end139:                                        ; preds = %if.then132
  %91 = load i8*, i8** @fdtable, align 4
  %92 = load i32, i32* %sfd, align 4
  %arrayidx140 = getelementptr inbounds i8, i8* %91, i32 %92
  store i8 2, i8* %arrayidx140, align 1
  br label %if.end142

if.else141:                                       ; preds = %if.end130
  %93 = load i32, i32* %rfd, align 4
  store i32 %93, i32* %sfd, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.else141, %if.end139
  %94 = load i32, i32* %sfd, align 4
  %call143 = call %struct.param* @setiparam_no_convert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %94)
  %95 = load i32, i32* %verbose, align 4
  %tobool144 = icmp ne i32 %95, 0
  br i1 %tobool144, label %if.then145, label %if.end149

if.then145:                                       ; preds = %if.end142
  %sun_path146 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 1
  %arraydecay147 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path146, i32 0, i32 0
  %96 = load i32, i32* %sfd, align 4
  %call148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay147, i32 %96)
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %if.end142
  br label %if.end191

if.else150:                                       ; preds = %if.else88
  %97 = load i8**, i8*** %args.addr, align 4
  %arrayidx151 = getelementptr inbounds i8*, i8** %97, i32 0
  %98 = load i8*, i8** %arrayidx151, align 4
  %tobool152 = icmp ne i8* %98, null
  br i1 %tobool152, label %if.end154, label %if.then153

if.then153:                                       ; preds = %if.else150
  %99 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end154:                                        ; preds = %if.else150
  %call155 = call i32 @socket(i32 1, i32 1, i32 0)
  store i32 %call155, i32* %sfd, align 4
  %100 = load i32, i32* %sfd, align 4
  %cmp156 = icmp eq i32 %100, -1
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %if.end154
  %101 = load i8*, i8** %nam.addr, align 4
  %call159 = call i32* @__errno_location()
  %102 = load i32, i32* %call159, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 %102)
  store i32 1, i32* %retval, align 4
  br label %return

if.end160:                                        ; preds = %if.end154
  %sun_family161 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 0
  store i16 1, i16* %sun_family161, align 2
  %sun_path162 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 1
  %arraydecay163 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path162, i32 0, i32 0
  %103 = load i8**, i8*** %args.addr, align 4
  %arrayidx164 = getelementptr inbounds i8*, i8** %103, i32 0
  %104 = load i8*, i8** %arrayidx164, align 4
  %call165 = call i8* @strncpy(i8* %arraydecay163, i8* %104, i32 107)
  %105 = load i32, i32* %sfd, align 4
  %106 = bitcast %struct.sockaddr_un* %soun to %struct.sockaddr*
  %call166 = call i32 @connect(i32 %105, %struct.sockaddr* %106, i32 110)
  store i32 %call166, i32* %err, align 4
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then168, label %if.else171

if.then168:                                       ; preds = %if.end160
  %107 = load i8*, i8** %nam.addr, align 4
  %call169 = call i32* @__errno_location()
  %108 = load i32, i32* %call169, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* %sfd, align 4
  %call170 = call i32 @close(i32 %109)
  store i32 1, i32* %retval, align 4
  br label %return

if.else171:                                       ; preds = %if.end160
  %110 = load i32, i32* %sfd, align 4
  call void @addmodulefd(i32 %110, i32 2)
  %111 = load i32, i32* %targetfd, align 4
  %tobool172 = icmp ne i32 %111, 0
  br i1 %tobool172, label %if.then173, label %if.end182

if.then173:                                       ; preds = %if.else171
  %112 = load i32, i32* %sfd, align 4
  %113 = load i32, i32* %targetfd, align 4
  %call174 = call i32 @redup(i32 %112, i32 %113)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.then177, label %if.end180

if.then177:                                       ; preds = %if.then173
  %114 = load i8*, i8** %nam.addr, align 4
  %115 = load i32, i32* %targetfd, align 4
  %call178 = call i32* @__errno_location()
  %116 = load i32, i32* %call178, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i32 %115, i32 %116)
  %117 = load i32, i32* %sfd, align 4
  %call179 = call i32 @zclose(i32 %117)
  store i32 1, i32* %retval, align 4
  br label %return

if.end180:                                        ; preds = %if.then173
  %118 = load i32, i32* %targetfd, align 4
  store i32 %118, i32* %sfd, align 4
  %119 = load i8*, i8** @fdtable, align 4
  %120 = load i32, i32* %sfd, align 4
  %arrayidx181 = getelementptr inbounds i8, i8* %119, i32 %120
  store i8 2, i8* %arrayidx181, align 1
  br label %if.end182

if.end182:                                        ; preds = %if.end180, %if.else171
  %121 = load i32, i32* %sfd, align 4
  %call183 = call %struct.param* @setiparam_no_convert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %121)
  %122 = load i32, i32* %verbose, align 4
  %tobool184 = icmp ne i32 %122, 0
  br i1 %tobool184, label %if.then185, label %if.end189

if.then185:                                       ; preds = %if.end182
  %sun_path186 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %soun, i32 0, i32 1
  %arraydecay187 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path186, i32 0, i32 0
  %123 = load i32, i32* %sfd, align 4
  %call188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay187, i32 %123)
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %if.end182
  br label %if.end190

if.end190:                                        ; preds = %if.end189
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.end149
  br label %if.end192

if.end192:                                        ; preds = %if.end191
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end192, %if.then177, %if.then168, %if.then158, %if.then153, %if.then136, %if.then128, %if.then113, %if.then109, %if.then102, %if.then97, %if.end87, %if.then77, %if.then66, %if.then58, %if.then52, %if.then46, %if.then35, %if.then20
  %124 = load i32, i32* %retval, align 4
  ret i32 %124
}

declare i32 @atoi(i8*) #1

declare void @zwarnnam(i8*, i8*, ...) #1

declare i32 @socket(i32, i32, i32) #1

declare i32* @__errno_location() #1

declare i8* @strncpy(i8*, i8*, i32) #1

declare i32 @bind(i32, %struct.sockaddr*, i32) #1

declare i32 @close(i32) #1

declare i32 @listen(i32, i32) #1

declare void @addmodulefd(i32, i32) #1

declare i32 @redup(i32, i32) #1

declare i32 @movefd(i32) #1

declare void @zerrnam(i8*, i8*, ...) #1

declare %struct.param* @setiparam_no_convert(i8*, i32) #1

declare i32 @printf(i8*, ...) #1

declare i32 @poll(%struct.pollfd*, i32, i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare i32 @zclose(i32) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
