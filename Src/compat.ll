; ModuleID = 'compat.c'
source_filename = "compat.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.dirsav = type { i32, i32, i8*, i32, i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.dirent = type { i32, i32, i32, i32, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque

@max_zsh_fd = external global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@pwd = external global i8*, align 4

; Function Attrs: noinline nounwind
define i32 @zopenmax() #0 {
entry:
  %openmax = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %call = call i32 @sysconf(i32 4)
  store i32 %call, i32* %openmax, align 4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 64, i32* %openmax, align 4
  br label %if.end18

if.else:                                          ; preds = %entry
  %0 = load i32, i32* %openmax, align 4
  %cmp1 = icmp sgt i32 %0, 64
  br i1 %cmp1, label %if.then2, label %if.end17

if.then2:                                         ; preds = %if.else
  store i32 64, i32* %j, align 4
  %1 = load i32, i32* %openmax, align 4
  %cmp3 = icmp sgt i32 %1, 64
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  store i32 64, i32* %openmax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  %2 = load i32, i32* %j, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %openmax, align 4
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call i32* @__errno_location()
  store i32 0, i32* %call6, align 4
  %5 = load i32, i32* %i, align 4
  %call7 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 3, i32 0)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %call9 = call i32* @__errno_location()
  %6 = load i32, i32* %call9, align 4
  %cmp10 = icmp eq i32 %6, 9
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call11 = call i32* @__errno_location()
  %7 = load i32, i32* %call11, align 4
  %cmp12 = icmp eq i32 %7, 4
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false, %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then13
  %call15 = call i32* @__errno_location()
  %9 = load i32, i32* %call15, align 4
  %cmp16 = icmp ne i32 %9, 4
  %conv = zext i1 %cmp16 to i32
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, %conv
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %j, align 4
  store i32 %11, i32* %openmax, align 4
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %12 = load i32, i32* @max_zsh_fd, align 4
  %13 = load i32, i32* %openmax, align 4
  %cmp19 = icmp sgt i32 %12, %13
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  %14 = load i32, i32* @max_zsh_fd, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  %15 = load i32, i32* %openmax, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  ret i32 %cond
}

declare i32 @sysconf(i32) #1

declare i32* @__errno_location() #1

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: noinline nounwind
define i8* @zgetdir(%struct.dirsav* %d) #0 {
entry:
  %retval = alloca i8*, align 4
  %d.addr = alloca %struct.dirsav*, align 4
  %nbuf = alloca [4099 x i8], align 1
  %buf = alloca i8*, align 4
  %bufsiz = alloca i32, align 4
  %pos = alloca i32, align 4
  %sbuf = alloca %struct.stat, align 8
  %pino = alloca i32, align 4
  %pdev = alloca i32, align 4
  %de = alloca %struct.dirent*, align 4
  %dir = alloca %struct.__dirstream*, align 4
  %dev = alloca i32, align 4
  %ino = alloca i32, align 4
  %len = alloca i32, align 4
  %fn = alloca i8*, align 4
  %newbuf = alloca i8*, align 4
  store %struct.dirsav* %d, %struct.dirsav** %d.addr, align 4
  store i32 4097, i32* %bufsiz, align 4
  %call = call i8* @zhalloc(i32 4097)
  store i8* %call, i8** %buf, align 4
  %0 = load i32, i32* %bufsiz, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %pos, align 4
  %1 = load i8*, i8** %buf, align 4
  %2 = load i32, i32* %pos, align 4
  %arrayidx = getelementptr inbounds i8, i8* %1, i32 %2
  store i8 0, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [4099 x i8], [4099 x i8]* %nbuf, i32 0, i32 0
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %call2 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct.stat* %sbuf)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 2
  %3 = load i32, i32* %st_ino, align 8
  store i32 %3, i32* %pino, align 4
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 0
  %4 = load i32, i32* %st_dev, align 8
  store i32 %4, i32* %pdev, align 4
  %5 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %tobool = icmp ne %struct.dirsav* %5, null
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %pino, align 4
  %7 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %ino4 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %7, i32 0, i32 4
  store i32 %6, i32* %ino4, align 4
  %8 = load i32, i32* %pdev, align 4
  %9 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dev5 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %9, i32 0, i32 3
  store i32 %8, i32* %dev5, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @holdintr()
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  br label %for.cond

for.cond:                                         ; preds = %if.end105, %if.end6
  %call7 = call i32 @stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct.stat* %sbuf)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.cond
  br label %for.end

if.end10:                                         ; preds = %for.cond
  %10 = load i32, i32* %pino, align 4
  store i32 %10, i32* %ino, align 4
  %11 = load i32, i32* %pdev, align 4
  store i32 %11, i32* %dev, align 4
  %st_ino11 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 2
  %12 = load i32, i32* %st_ino11, align 8
  store i32 %12, i32* %pino, align 4
  %st_dev12 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 0
  %13 = load i32, i32* %st_dev12, align 8
  store i32 %13, i32* %pdev, align 4
  %14 = load i32, i32* %ino, align 4
  %15 = load i32, i32* %pino, align 4
  %cmp13 = icmp eq i32 %14, %15
  br i1 %cmp13, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end10
  %16 = load i32, i32* %dev, align 4
  %17 = load i32, i32* %pdev, align 4
  %cmp14 = icmp eq i32 %16, %17
  br i1 %cmp14, label %if.then15, label %if.end28

if.then15:                                        ; preds = %land.lhs.true
  %18 = load i8*, i8** %buf, align 4
  %19 = load i32, i32* %pos, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i32 %19
  %20 = load i8, i8* %arrayidx16, align 1
  %tobool17 = icmp ne i8 %20, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then15
  %21 = load i8*, i8** %buf, align 4
  %22 = load i32, i32* %pos, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %pos, align 4
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i32 %dec
  store i8 47, i8* %arrayidx19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15
  %23 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %tobool21 = icmp ne %struct.dirsav* %23, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %24 = load i8*, i8** %buf, align 4
  %25 = load i32, i32* %pos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %24, i32 %25
  %call23 = call i8* @ztrdup(i8* %add.ptr)
  %26 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname = getelementptr inbounds %struct.dirsav, %struct.dirsav* %26, i32 0, i32 2
  store i8* %call23, i8** %dirname, align 4
  store i8* %call23, i8** %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %27 = load i8*, i8** %buf, align 4
  %28 = load i32, i32* %pos, align 4
  %add.ptr25 = getelementptr inbounds i8, i8* %27, i32 %28
  %call26 = call i32 @zchdir(i8* %add.ptr25)
  call void @noholdintr()
  %29 = load i8*, i8** %buf, align 4
  %30 = load i32, i32* %pos, align 4
  %add.ptr27 = getelementptr inbounds i8, i8* %29, i32 %30
  store i8* %add.ptr27, i8** %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true, %if.end10
  %call29 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct.__dirstream* %call29, %struct.__dirstream** %dir, align 4
  %tobool30 = icmp ne %struct.__dirstream* %call29, null
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  br label %for.end

if.end32:                                         ; preds = %if.end28
  br label %while.cond

while.cond:                                       ; preds = %if.end75, %if.then53, %if.end32
  %31 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 4
  %call33 = call %struct.dirent* @readdir(%struct.__dirstream* %31)
  store %struct.dirent* %call33, %struct.dirent** %de, align 4
  %tobool34 = icmp ne %struct.dirent* %call33, null
  br i1 %tobool34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 6
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  store i8* %arraydecay35, i8** %fn, align 4
  %33 = load i8*, i8** %fn, align 4
  %arrayidx36 = getelementptr inbounds i8, i8* %33, i32 0
  %34 = load i8, i8* %arrayidx36, align 1
  %conv = sext i8 %34 to i32
  %cmp37 = icmp eq i32 %conv, 46
  br i1 %cmp37, label %land.lhs.true39, label %if.end54

land.lhs.true39:                                  ; preds = %while.body
  %35 = load i8*, i8** %fn, align 4
  %arrayidx40 = getelementptr inbounds i8, i8* %35, i32 1
  %36 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %36 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true39
  %37 = load i8*, i8** %fn, align 4
  %arrayidx44 = getelementptr inbounds i8, i8* %37, i32 1
  %38 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %38 to i32
  %cmp46 = icmp eq i32 %conv45, 46
  br i1 %cmp46, label %land.lhs.true48, label %if.end54

land.lhs.true48:                                  ; preds = %lor.lhs.false
  %39 = load i8*, i8** %fn, align 4
  %arrayidx49 = getelementptr inbounds i8, i8* %39, i32 2
  %40 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %40 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true48, %land.lhs.true39
  br label %while.cond

if.end54:                                         ; preds = %land.lhs.true48, %lor.lhs.false, %while.body
  %41 = load i32, i32* %dev, align 4
  %42 = load i32, i32* %pdev, align 4
  %cmp55 = icmp ne i32 %41, %42
  br i1 %cmp55, label %if.then60, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end54
  %43 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %44 = load i32, i32* %d_ino, align 4
  %45 = load i32, i32* %ino, align 4
  %cmp58 = icmp eq i32 %44, %45
  br i1 %cmp58, label %if.then60, label %if.end75

if.then60:                                        ; preds = %lor.lhs.false57, %if.end54
  %arraydecay61 = getelementptr inbounds [4099 x i8], [4099 x i8]* %nbuf, i32 0, i32 0
  %add.ptr62 = getelementptr inbounds i8, i8* %arraydecay61, i32 3
  %46 = load i8*, i8** %fn, align 4
  %call63 = call i8* @strncpy(i8* %add.ptr62, i8* %46, i32 4096)
  %arraydecay64 = getelementptr inbounds [4099 x i8], [4099 x i8]* %nbuf, i32 0, i32 0
  %call65 = call i32 @lstat(i8* %arraydecay64, %struct.stat* %sbuf)
  %st_dev66 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 0
  %47 = load i32, i32* %st_dev66, align 8
  %48 = load i32, i32* %dev, align 4
  %cmp67 = icmp eq i32 %47, %48
  br i1 %cmp67, label %land.lhs.true69, label %if.end74

land.lhs.true69:                                  ; preds = %if.then60
  %st_ino70 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf, i32 0, i32 2
  %49 = load i32, i32* %st_ino70, align 8
  %50 = load i32, i32* %ino, align 4
  %cmp71 = icmp eq i32 %49, %50
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %land.lhs.true69
  br label %while.end

if.end74:                                         ; preds = %land.lhs.true69, %if.then60
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %lor.lhs.false57
  br label %while.cond

while.end:                                        ; preds = %if.then73, %while.cond
  %51 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 4
  %call76 = call i32 @closedir(%struct.__dirstream* %51)
  %52 = load %struct.dirent*, %struct.dirent** %de, align 4
  %tobool77 = icmp ne %struct.dirent* %52, null
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %while.end
  br label %for.end

if.end79:                                         ; preds = %while.end
  %arraydecay80 = getelementptr inbounds [4099 x i8], [4099 x i8]* %nbuf, i32 0, i32 0
  %add.ptr81 = getelementptr inbounds i8, i8* %arraydecay80, i32 2
  %call82 = call i32 @strlen(i8* %add.ptr81)
  store i32 %call82, i32* %len, align 4
  %53 = load i32, i32* %len, align 4
  %54 = load i32, i32* %pos, align 4
  %sub83 = sub nsw i32 %54, %53
  store i32 %sub83, i32* %pos, align 4
  br label %while.cond84

while.cond84:                                     ; preds = %while.body87, %if.end79
  %55 = load i32, i32* %pos, align 4
  %cmp85 = icmp sle i32 %55, 1
  br i1 %cmp85, label %while.body87, label %while.end91

while.body87:                                     ; preds = %while.cond84
  %56 = load i32, i32* %bufsiz, align 4
  %mul = mul nsw i32 2, %56
  %call88 = call i8* @zhalloc(i32 %mul)
  store i8* %call88, i8** %newbuf, align 4
  %57 = load i8*, i8** %newbuf, align 4
  %58 = load i32, i32* %bufsiz, align 4
  %add.ptr89 = getelementptr inbounds i8, i8* %57, i32 %58
  %59 = load i8*, i8** %buf, align 4
  %60 = load i32, i32* %bufsiz, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr89, i8* %59, i32 %60, i32 1, i1 false)
  %61 = load i8*, i8** %newbuf, align 4
  store i8* %61, i8** %buf, align 4
  %62 = load i32, i32* %bufsiz, align 4
  %63 = load i32, i32* %pos, align 4
  %add = add nsw i32 %63, %62
  store i32 %add, i32* %pos, align 4
  %64 = load i32, i32* %bufsiz, align 4
  %mul90 = mul nsw i32 %64, 2
  store i32 %mul90, i32* %bufsiz, align 4
  br label %while.cond84

while.end91:                                      ; preds = %while.cond84
  %65 = load i8*, i8** %buf, align 4
  %66 = load i32, i32* %pos, align 4
  %add.ptr92 = getelementptr inbounds i8, i8* %65, i32 %66
  %arraydecay93 = getelementptr inbounds [4099 x i8], [4099 x i8]* %nbuf, i32 0, i32 0
  %add.ptr94 = getelementptr inbounds i8, i8* %arraydecay93, i32 2
  %67 = load i32, i32* %len, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr92, i8* %add.ptr94, i32 %67, i32 1, i1 false)
  %68 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %tobool95 = icmp ne %struct.dirsav* %68, null
  br i1 %tobool95, label %if.then96, label %if.end101

if.then96:                                        ; preds = %while.end91
  %69 = load i8*, i8** %buf, align 4
  %70 = load i32, i32* %pos, align 4
  %add.ptr97 = getelementptr inbounds i8, i8* %69, i32 %70
  %add.ptr98 = getelementptr inbounds i8, i8* %add.ptr97, i32 1
  %call99 = call i8* @ztrdup(i8* %add.ptr98)
  %71 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %dirname100 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %71, i32 0, i32 2
  store i8* %call99, i8** %dirname100, align 4
  store i8* %call99, i8** %retval, align 4
  br label %return

if.end101:                                        ; preds = %while.end91
  %call102 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end101
  br label %for.end

if.end105:                                        ; preds = %if.end101
  br label %for.cond

for.end:                                          ; preds = %if.then104, %if.then78, %if.then31, %if.then9
  %72 = load %struct.dirsav*, %struct.dirsav** %d.addr, align 4
  %tobool106 = icmp ne %struct.dirsav* %72, null
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %for.end
  store i8* null, i8** %retval, align 4
  br label %return

if.end108:                                        ; preds = %for.end
  %73 = load i8*, i8** %buf, align 4
  %74 = load i32, i32* %pos, align 4
  %arrayidx109 = getelementptr inbounds i8, i8* %73, i32 %74
  %75 = load i8, i8* %arrayidx109, align 1
  %tobool110 = icmp ne i8 %75, 0
  br i1 %tobool110, label %if.then111, label %if.end115

if.then111:                                       ; preds = %if.end108
  %76 = load i8*, i8** %buf, align 4
  %77 = load i32, i32* %pos, align 4
  %add.ptr112 = getelementptr inbounds i8, i8* %76, i32 %77
  %add.ptr113 = getelementptr inbounds i8, i8* %add.ptr112, i32 1
  %call114 = call i32 @zchdir(i8* %add.ptr113)
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.end108
  call void @noholdintr()
  store i8* null, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end115, %if.then107, %if.then96, %if.end24, %if.then22, %if.then
  %78 = load i8*, i8** %retval, align 4
  ret i8* %78
}

declare i8* @zhalloc(i32) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare void @holdintr() #1

declare i8* @ztrdup(i8*) #1

; Function Attrs: noinline nounwind
define i32 @zchdir(i8* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 4
  %s = alloca i8*, align 4
  %currdir = alloca i32, align 4
  store i8* %dir, i8** %dir.addr, align 4
  store i32 -2, i32* %currdir, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %0 = load i8*, i8** %dir.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.cond
  %2 = load i8*, i8** %dir.addr, align 4
  %call = call i32 @chdir(i8* %2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  %3 = load i32, i32* %currdir, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %currdir, align 4
  %call3 = call i32 @close(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = call i32* @__errno_location()
  %5 = load i32, i32* %call5, align 4
  %cmp6 = icmp ne i32 %5, 36
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false9

land.lhs.true:                                    ; preds = %if.end4
  %call7 = call i32* @__errno_location()
  %6 = load i32, i32* %call7, align 4
  %cmp8 = icmp ne i32 %6, 12
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true, %if.end4
  %7 = load i8*, i8** %dir.addr, align 4
  %call10 = call i32 @strlen(i8* %7)
  %cmp11 = icmp ult i32 %call10, 4096
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false9, %land.lhs.true
  br label %for.end37

if.end13:                                         ; preds = %lor.lhs.false9
  %8 = load i8*, i8** %dir.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 4096
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i32 -1
  store i8* %add.ptr14, i8** %s, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %if.end13
  %9 = load i8*, i8** %s, align 4
  %10 = load i8*, i8** %dir.addr, align 4
  %cmp16 = icmp ugt i8* %9, %10
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond15
  %11 = load i8*, i8** %s, align 4
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %cmp17 = icmp ne i32 %conv, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond15
  %13 = phi i1 [ false, %for.cond15 ], [ %cmp17, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %for.cond15

for.end:                                          ; preds = %land.end
  %15 = load i8*, i8** %s, align 4
  %16 = load i8*, i8** %dir.addr, align 4
  %cmp19 = icmp eq i8* %15, %16
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.end
  br label %for.end37

if.end22:                                         ; preds = %for.end
  %17 = load i32, i32* %currdir, align 4
  %cmp23 = icmp eq i32 %17, -2
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  %call26 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 256)
  store i32 %call26, i32* %currdir, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22
  %18 = load i8*, i8** %s, align 4
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %dir.addr, align 4
  %call28 = call i32 @chdir(i8* %19)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  %20 = load i8*, i8** %s, align 4
  store i8 47, i8* %20, align 1
  br label %for.end37

if.end32:                                         ; preds = %if.end27
  %21 = load i8*, i8** %s, align 4
  store i8 47, i8* %21, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end32
  %22 = load i8*, i8** %s, align 4
  %incdec.ptr33 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr33, i8** %s, align 4
  %23 = load i8, i8* %incdec.ptr33, align 1
  %conv34 = sext i8 %23 to i32
  %cmp35 = icmp eq i32 %conv34, 47
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %s, align 4
  store i8* %24, i8** %dir.addr, align 4
  br label %for.cond

for.end37:                                        ; preds = %if.then31, %if.then21, %if.then12
  %25 = load i32, i32* %currdir, align 4
  %cmp38 = icmp sge i32 %25, 0
  br i1 %cmp38, label %if.then40, label %if.end48

if.then40:                                        ; preds = %for.end37
  %26 = load i32, i32* %currdir, align 4
  %call41 = call i32 @fchdir(i32 %26)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then40
  %27 = load i32, i32* %currdir, align 4
  %call45 = call i32 @close(i32 %27)
  store i32 -2, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then40
  %28 = load i32, i32* %currdir, align 4
  %call47 = call i32 @close(i32 %28)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %for.end37
  %29 = load i32, i32* %currdir, align 4
  %cmp49 = icmp eq i32 %29, -2
  %cond = select i1 %cmp49, i32 -1, i32 -2
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.end46, %if.then44, %if.end
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare void @noholdintr() #1

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

declare i8* @strncpy(i8*, i8*, i32) #1

declare i32 @lstat(i8*, %struct.stat*) #1

declare i32 @closedir(%struct.__dirstream*) #1

declare i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare i32 @chdir(i8*) #1

; Function Attrs: noinline nounwind
define i8* @zgetcwd() #0 {
entry:
  %ret = alloca i8*, align 4
  %cwd = alloca i8*, align 4
  %call = call i8* @zgetdir(%struct.dirsav* null)
  store i8* %call, i8** %ret, align 4
  %0 = load i8*, i8** %ret, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @getcwd(i8* null, i32 0)
  store i8* %call1, i8** %cwd, align 4
  %1 = load i8*, i8** %cwd, align 4
  %tobool2 = icmp ne i8* %1, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %2 = load i8*, i8** %cwd, align 4
  %call4 = call i8* @dupstring(i8* %2)
  store i8* %call4, i8** %ret, align 4
  %3 = load i8*, i8** %cwd, align 4
  call void @free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %4 = load i8*, i8** %ret, align 4
  %tobool6 = icmp ne i8* %4, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %5 = load i8*, i8** @pwd, align 4
  %call8 = call i8* @unmeta(i8* %5)
  store i8* %call8, i8** %ret, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %6 = load i8*, i8** %ret, align 4
  %tobool10 = icmp ne i8* %6, null
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call12, i8** %ret, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %7 = load i8*, i8** %ret, align 4
  ret i8* %7
}

declare i8* @getcwd(i8*, i32) #1

declare i8* @dupstring(i8*) #1

declare void @free(i8*) #1

declare i8* @unmeta(i8*) #1

declare i32 @close(i32) #1

declare i32 @open(i8*, i32, ...) #1

declare i32 @fchdir(i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
