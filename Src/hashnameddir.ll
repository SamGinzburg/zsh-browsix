; ModuleID = 'hashnameddir.c'
source_filename = "hashnameddir.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct._IO_FILE = type opaque
%struct.nameddir = type { %struct.hashnode, i8*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"nameddirtab\00", align 1
@nameddirtab = common global %struct.hashtable* null, align 4
@allusersadded = internal global i32 0, align 4
@errflag = external global i32, align 4
@stdout = external constant %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"hash -d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-- \00", align 1

; Function Attrs: noinline nounwind
define void @createnameddirtable() #0 {
entry:
  %call = call %struct.hashtable* @newhashtable(i32 201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** @nameddirtab, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 5
  store void (%struct.hashtable*)* @emptynameddirtable, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 6
  store void (%struct.hashtable*)* @fillnameddirtable, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addnameddirnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removenameddirnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  store void (%struct.hashnode*)* @freenameddirnode, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printnameddirnode, void (%struct.hashnode*, i32)** %printnode, align 4
  store i32 0, i32* @allusersadded, align 4
  %call1 = call %struct.nameddir* @finddir(i8* null)
  ret void
}

declare %struct.hashtable* @newhashtable(i32, i8*, void (%struct.hashtable*)*) #1

declare i32 @hasher(i8*) #1

; Function Attrs: noinline nounwind
define internal void @emptynameddirtable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @emptyhashtable(%struct.hashtable* %0)
  store i32 0, i32* @allusersadded, align 4
  %call = call %struct.nameddir* @finddir(i8* null)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @fillnameddirtable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %pw = alloca %struct.passwd*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load i32, i32* @allusersadded, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @setpwent()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %call = call %struct.passwd* @getpwent()
  store %struct.passwd* %call, %struct.passwd** %pw, align 4
  %tobool1 = icmp ne %struct.passwd* %call, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @errflag, align 4
  %tobool2 = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load %struct.passwd*, %struct.passwd** %pw, align 4
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %3, i32 0, i32 0
  %4 = load i8*, i8** %pw_name, align 4
  %5 = load %struct.passwd*, %struct.passwd** %pw, align 4
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 5
  %6 = load i8*, i8** %pw_dir, align 4
  call void @adduserdir(i8* %4, i8* %6, i32 2, i32 1)
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @endpwent()
  store i32 1, i32* @allusersadded, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal void @addnameddirnode(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %nodeptr.addr = alloca i8*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %nodeptr, i8** %nodeptr.addr, align 4
  %0 = load i8*, i8** %nodeptr.addr, align 4
  %1 = bitcast i8* %0 to %struct.nameddir*
  store %struct.nameddir* %1, %struct.nameddir** %nd, align 4
  %2 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %2, i32 0, i32 1
  %3 = load i8*, i8** %dir, align 4
  %call = call i32 @strlen(i8* %3)
  %4 = load i8*, i8** %nam.addr, align 4
  %call1 = call i32 @strlen(i8* %4)
  %sub = sub i32 %call, %call1
  %5 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %diff = getelementptr inbounds %struct.nameddir, %struct.nameddir* %5, i32 0, i32 2
  store i32 %sub, i32* %diff, align 4
  %call2 = call %struct.nameddir* @finddir(i8* null)
  %6 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %7 = load i8*, i8** %nam.addr, align 4
  %8 = load i8*, i8** %nodeptr.addr, align 4
  call void @addhashnode(%struct.hashtable* %6, i8* %7, i8* %8)
  ret void
}

declare %struct.hashnode* @gethashnode(%struct.hashtable*, i8*) #1

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*) #1

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @removenameddirnode(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hn = alloca %struct.hashnode*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* @removehashnode(%struct.hashtable* %0, i8* %1)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %2 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.nameddir* @finddir(i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  ret %struct.hashnode* %3
}

; Function Attrs: noinline nounwind
define internal void @freenameddirnode(%struct.hashnode* %hn) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.nameddir*
  store %struct.nameddir* %1, %struct.nameddir** %nd, align 4
  %2 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  call void @zsfree(i8* %3)
  %4 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %4, i32 0, i32 1
  %5 = load i8*, i8** %dir, align 4
  call void @zsfree(i8* %5)
  %6 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %7 = bitcast %struct.nameddir* %6 to i8*
  call void @zfree(i8* %7, i32 20)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printnameddirnode(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.nameddir*
  store %struct.nameddir* %1, %struct.nameddir** %nd, align 4
  %2 = load i32, i32* %printflags.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @zputs(i8* %4, %struct._IO_FILE* %5)
  %call1 = call i32 @putchar(i32 10)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %printflags.addr, align 4
  %and2 = and i32 %6, 4
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %7 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node6 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %7, i32 0, i32 0
  %nam7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 1
  %8 = load i8*, i8** %nam7, align 4
  %arrayidx = getelementptr inbounds i8, i8* %8, i32 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %10 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node13 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %10, i32 0, i32 0
  %nam14 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node13, i32 0, i32 1
  %11 = load i8*, i8** %nam14, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call15 = call i8* @quotedzputs(i8* %11, %struct._IO_FILE* %12)
  %call16 = call i32 @putchar(i32 61)
  %13 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %13, i32 0, i32 1
  %14 = load i8*, i8** %dir, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call17 = call i8* @quotedzputs(i8* %14, %struct._IO_FILE* %15)
  %call18 = call i32 @putchar(i32 10)
  br label %return

return:                                           ; preds = %if.end12, %if.then
  ret void
}

declare %struct.nameddir* @finddir(i8*) #1

declare void @emptyhashtable(%struct.hashtable*) #1

declare void @setpwent() #1

declare %struct.passwd* @getpwent() #1

declare void @adduserdir(i8*, i8*, i32, i32) #1

declare void @endpwent() #1

declare i32 @strlen(i8*) #1

declare void @addhashnode(%struct.hashtable*, i8*, i8*) #1

declare %struct.hashnode* @removehashnode(%struct.hashtable*, i8*) #1

declare void @zsfree(i8*) #1

declare void @zfree(i8*, i32) #1

declare i32 @zputs(i8*, %struct._IO_FILE*) #1

declare i32 @putchar(i32) #1

declare i32 @printf(i8*, ...) #1

declare i8* @quotedzputs(i8*, %struct._IO_FILE*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
