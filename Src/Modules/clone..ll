; ModuleID = 'clone.c'
source_filename = "clone.c"
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

@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0), i32 1, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@bintab = internal global [1 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_clone, i32 1, i32 1, i32 0, i8* null, i8* null }], align 4
@.str = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %e\00", align 1
@ppid = external global i32, align 4
@mypid = external global i32, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to create new session: %e\00", align 1
@coprocin = external global i32, align 4
@coprocout = external global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"could not make %s my controlling tty, job control disabled\00", align 1
@mypgrp = external global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"TTY\00", align 1
@ttystrname = external global i8*, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"fork failed: %e\00", align 1
@lastpid = external global i32, align 4

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
define internal i32 @bin_clone(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %ttyfd = alloca i32, align 4
  %pid = alloca i32, align 4
  %cttyfd = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @unmetafy(i8* %1, i32* null)
  %2 = load i8**, i8*** %args.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %call1 = call i32 (i8*, i32, ...) @open(i8* %3, i32 258)
  store i32 %call1, i32* %ttyfd, align 4
  %4 = load i32, i32* %ttyfd, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %nam.addr, align 4
  %6 = load i8**, i8*** %args.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %call2 = call i32* @__errno_location()
  %8 = load i32, i32* %call2, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %7, i32 %8)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i32 @fork()
  store i32 %call3, i32* %pid, align 4
  %9 = load i32, i32* %pid, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end36, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @clearjobtab(i32 0)
  %call5 = call i32 @getppid()
  store i32 %call5, i32* @ppid, align 4
  %call6 = call i32 @getpid()
  store i32 %call6, i32* @mypid, align 4
  %call7 = call i32 @setsid()
  %10 = load i32, i32* @mypid, align 4
  %cmp8 = icmp ne i32 %call7, %10
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then4
  %11 = load i8*, i8** %nam.addr, align 4
  %call10 = call i32* @__errno_location()
  %12 = load i32, i32* %call10, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 %12)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then4
  %13 = load i32, i32* %ttyfd, align 4
  %call12 = call i32 @dup2(i32 %13, i32 0)
  %14 = load i32, i32* %ttyfd, align 4
  %call13 = call i32 @dup2(i32 %14, i32 1)
  %15 = load i32, i32* %ttyfd, align 4
  %call14 = call i32 @dup2(i32 %15, i32 2)
  %16 = load i32, i32* %ttyfd, align 4
  %cmp15 = icmp sgt i32 %16, 2
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  %17 = load i32, i32* %ttyfd, align 4
  %call17 = call i32 @close(i32 %17)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11
  call void @closem(i32 0, i32 0)
  %18 = load i32, i32* @coprocin, align 4
  %call19 = call i32 @close(i32 %18)
  %19 = load i32, i32* @coprocout, align 4
  %call20 = call i32 @close(i32 %19)
  %20 = load i8**, i8*** %args.addr, align 4
  %21 = load i8*, i8** %20, align 4
  %call21 = call i32 (i8*, i32, ...) @open(i8* %21, i32 2)
  store i32 %call21, i32* %cttyfd, align 4
  %22 = load i32, i32* %cttyfd, align 4
  %cmp22 = icmp eq i32 %22, -1
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end18
  %23 = load i8*, i8** %nam.addr, align 4
  %call24 = call i32* @__errno_location()
  %24 = load i32, i32* %call24, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %24)
  br label %if.end27

if.else:                                          ; preds = %if.end18
  %25 = load i32, i32* %cttyfd, align 4
  %call25 = call i32 (i32, i32, ...) @ioctl(i32 %25, i32 21518, i32 0)
  %26 = load i32, i32* %cttyfd, align 4
  %call26 = call i32 @close(i32 %26)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then23
  %call28 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2)
  store i32 %call28, i32* %cttyfd, align 4
  %27 = load i32, i32* %cttyfd, align 4
  %cmp29 = icmp eq i32 %27, -1
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.end27
  %28 = load i8*, i8** %nam.addr, align 4
  %29 = load i8**, i8*** %args.addr, align 4
  %30 = load i8*, i8** %29, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %28, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0), i8* %30)
  br label %if.end33

if.else31:                                        ; preds = %if.end27
  %31 = load i32, i32* %cttyfd, align 4
  %call32 = call i32 @close(i32 %31)
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30
  store i32 0, i32* @mypgrp, align 4
  call void @init_io(i8* null)
  %32 = load i8*, i8** @ttystrname, align 4
  %call34 = call i8* @ztrdup(i8* %32)
  %call35 = call %struct.param* @setsparam(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %call34)
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end
  %33 = load i32, i32* %ttyfd, align 4
  %call37 = call i32 @close(i32 %33)
  %34 = load i32, i32* %pid, align 4
  %cmp38 = icmp slt i32 %34, 0
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %35 = load i8*, i8** %nam.addr, align 4
  %call40 = call i32* @__errno_location()
  %36 = load i32, i32* %call40, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %36)
  store i32 1, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end36
  %37 = load i32, i32* %pid, align 4
  store i32 %37, i32* @lastpid, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then39, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

declare i8* @unmetafy(i8*, i32*) #1

declare i32 @open(i8*, i32, ...) #1

declare void @zwarnnam(i8*, i8*, ...) #1

declare i32* @__errno_location() #1

declare i32 @fork() #1

declare void @clearjobtab(i32) #1

declare i32 @getppid() #1

declare i32 @getpid() #1

declare i32 @setsid() #1

declare i32 @dup2(i32, i32) #1

declare i32 @close(i32) #1

declare void @closem(i32, i32) #1

declare i32 @ioctl(i32, i32, ...) #1

declare void @init_io(i8*) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i8* @ztrdup(i8*) #1

declare void @zerrnam(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
