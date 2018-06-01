; ModuleID = 'newuser.c'
source_filename = "newuser.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"ZDOTDIR\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"/usr/local/share/zsh/scripts\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"/usr/local/share/zsh/5.5.1-dev-0/scripts\00", align 1
@boot_.spaths = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* null], align 4
@emulation = external global i32, align 4
@home = external global i8*, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c".zshenv\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".zprofile\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".zshrc\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".zlogin\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s/newuser\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

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
  ret i32 1
}

; Function Attrs: noinline nounwind
define i32 @enables_(%struct.module* %m, i32** %enables) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %enables.addr = alloca i32**, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @boot_(%struct.module* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %dotdir = alloca i8*, align 4
  %spaths = alloca [3 x i8*], align 4
  %sp = alloca i8**, align 4
  %buf = alloca i8*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %call = call i8* @getsparam_u(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %dotdir, align 4
  %0 = bitcast [3 x i8*]* %spaths to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast ([3 x i8*]* @boot_.spaths to i8*), i32 12, i32 4, i1 false)
  %1 = load i32, i32* @emulation, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %dotdir, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** @home, align 4
  store i8* %3, i8** %dotdir, align 4
  %4 = load i8*, i8** %dotdir, align 4
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %5 = load i8*, i8** %dotdir, align 4
  %call7 = call i32 @check_dotfile(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i8*, i8** %dotdir, align 4
  %call8 = call i32 @check_dotfile(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then16, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %7 = load i8*, i8** %dotdir, align 4
  %call11 = call i32 @check_dotfile(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %8 = load i8*, i8** %dotdir, align 4
  %call14 = call i32 @check_dotfile(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false, %if.end6
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false13
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %spaths, i32 0, i32 0
  store i8** %arraydecay, i8*** %sp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %9 = load i8**, i8*** %sp, align 4
  %10 = load i8*, i8** %9, align 4
  %tobool18 = icmp ne i8* %10, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8**, i8*** %sp, align 4
  %12 = load i8*, i8** %11, align 4
  %call19 = call i32 @strlen(i8* %12)
  %add = add i32 %call19, 9
  %mul = mul i32 1, %add
  %call20 = call i8* @zhalloc(i32 %mul)
  store i8* %call20, i8** %buf, align 4
  %13 = load i8*, i8** %buf, align 4
  %14 = load i8**, i8*** %sp, align 4
  %15 = load i8*, i8** %14, align 4
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %15)
  %16 = load i8*, i8** %buf, align 4
  %call22 = call i32 @source(i8* %16)
  %cmp23 = icmp ne i32 %call22, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body
  br label %for.end

if.end25:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %17 = load i8**, i8*** %sp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %sp, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then24, %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then16, %if.then4, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare i8* @getsparam_u(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal i32 @check_dotfile(i8* %dotdir, i8* %fname) #0 {
entry:
  %dotdir.addr = alloca i8*, align 4
  %fname.addr = alloca i8*, align 4
  %buf = alloca i8*, align 4
  store i8* %dotdir, i8** %dotdir.addr, align 4
  store i8* %fname, i8** %fname.addr, align 4
  %0 = load i8*, i8** %dotdir.addr, align 4
  %call = call i32 @strlen(i8* %0)
  %1 = load i8*, i8** %fname.addr, align 4
  %call1 = call i32 @strlen(i8* %1)
  %add = add i32 %call, %call1
  %add2 = add i32 %add, 2
  %mul = mul i32 1, %add2
  %call3 = call i8* @zhalloc(i32 %mul)
  store i8* %call3, i8** %buf, align 4
  %2 = load i8*, i8** %buf, align 4
  %3 = load i8*, i8** %dotdir.addr, align 4
  %4 = load i8*, i8** %fname.addr, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %3, i8* %4)
  %5 = load i8*, i8** %buf, align 4
  %call5 = call i32 @access(i8* %5, i32 0)
  ret i32 %call5
}

declare i8* @zhalloc(i32) #1

declare i32 @strlen(i8*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @source(i8*) #1

; Function Attrs: noinline nounwind
define i32 @cleanup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @finish_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

declare i32 @access(i8*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
