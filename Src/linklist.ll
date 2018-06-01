; ModuleID = 'linklist.c'
source_filename = "linklist.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }

; Function Attrs: noinline nounwind
define %union.linkroot* @newlinklist() #0 {
entry:
  %list = alloca %union.linkroot*, align 4
  %call = call i8* @zhalloc(i32 12)
  %0 = bitcast i8* %call to %union.linkroot*
  store %union.linkroot* %0, %union.linkroot** %list, align 4
  %1 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list1 = bitcast %union.linkroot* %1 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %first, align 4
  %2 = load %union.linkroot*, %union.linkroot** %list, align 4
  %node = bitcast %union.linkroot* %2 to %struct.linknode*
  %3 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list2 = bitcast %union.linkroot* %3 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %last, align 4
  %4 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list3 = bitcast %union.linkroot* %4 to %struct.linklist*
  %flags = getelementptr inbounds %struct.linklist, %struct.linklist* %list3, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %5 = load %union.linkroot*, %union.linkroot** %list, align 4
  ret %union.linkroot* %5
}

declare i8* @zhalloc(i32) #1

; Function Attrs: noinline nounwind
define %union.linkroot* @znewlinklist() #0 {
entry:
  %retval = alloca %union.linkroot*, align 4
  %list = alloca %union.linkroot*, align 4
  %call = call i8* @zalloc(i32 12)
  %0 = bitcast i8* %call to %union.linkroot*
  store %union.linkroot* %0, %union.linkroot** %list, align 4
  %1 = load %union.linkroot*, %union.linkroot** %list, align 4
  %tobool = icmp ne %union.linkroot* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %union.linkroot* null, %union.linkroot** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list1 = bitcast %union.linkroot* %2 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %first, align 4
  %3 = load %union.linkroot*, %union.linkroot** %list, align 4
  %node = bitcast %union.linkroot* %3 to %struct.linknode*
  %4 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list2 = bitcast %union.linkroot* %4 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %last, align 4
  %5 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list3 = bitcast %union.linkroot* %5 to %struct.linklist*
  %flags = getelementptr inbounds %struct.linklist, %struct.linklist* %list3, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %6 = load %union.linkroot*, %union.linkroot** %list, align 4
  store %union.linkroot* %6, %union.linkroot** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %union.linkroot*, %union.linkroot** %retval, align 4
  ret %union.linkroot* %7
}

declare i8* @zalloc(i32) #1

; Function Attrs: noinline nounwind
define %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %node, i8* %dat) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %node.addr = alloca %struct.linknode*, align 4
  %dat.addr = alloca i8*, align 4
  %tmp = alloca %struct.linknode*, align 4
  %new = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %node, %struct.linknode** %node.addr, align 4
  store i8* %dat, i8** %dat.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %1, %struct.linknode** %tmp, align 4
  %call = call i8* @zhalloc(i32 12)
  %2 = bitcast i8* %call to %struct.linknode*
  store %struct.linknode* %2, %struct.linknode** %new, align 4
  %3 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %next2 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  store %struct.linknode* %2, %struct.linknode** %next2, align 4
  %4 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %5 = load %struct.linknode*, %struct.linknode** %new, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %5, i32 0, i32 1
  store %struct.linknode* %4, %struct.linknode** %prev, align 4
  %6 = load i8*, i8** %dat.addr, align 4
  %7 = load %struct.linknode*, %struct.linknode** %new, align 4
  %dat3 = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 2
  store i8* %6, i8** %dat3, align 4
  %8 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %9 = load %struct.linknode*, %struct.linknode** %new, align 4
  %next4 = getelementptr inbounds %struct.linknode, %struct.linknode* %9, i32 0, i32 0
  store %struct.linknode* %8, %struct.linknode** %next4, align 4
  %10 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %tobool = icmp ne %struct.linknode* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.linknode*, %struct.linknode** %new, align 4
  %12 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %prev5 = getelementptr inbounds %struct.linknode, %struct.linknode* %12, i32 0, i32 1
  store %struct.linknode* %11, %struct.linknode** %prev5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.linknode*, %struct.linknode** %new, align 4
  %14 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list6 = bitcast %union.linkroot* %14 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list6, i32 0, i32 1
  store %struct.linknode* %13, %struct.linknode** %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.linknode*, %struct.linknode** %new, align 4
  ret %struct.linknode* %15
}

; Function Attrs: noinline nounwind
define %struct.linknode* @zinsertlinknode(%union.linkroot* %list, %struct.linknode* %node, i8* %dat) #0 {
entry:
  %retval = alloca %struct.linknode*, align 4
  %list.addr = alloca %union.linkroot*, align 4
  %node.addr = alloca %struct.linknode*, align 4
  %dat.addr = alloca i8*, align 4
  %tmp = alloca %struct.linknode*, align 4
  %new = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %node, %struct.linknode** %node.addr, align 4
  store i8* %dat, i8** %dat.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %1, %struct.linknode** %tmp, align 4
  %call = call i8* @zalloc(i32 12)
  %2 = bitcast i8* %call to %struct.linknode*
  store %struct.linknode* %2, %struct.linknode** %new, align 4
  %3 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %next2 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  store %struct.linknode* %2, %struct.linknode** %next2, align 4
  %4 = load %struct.linknode*, %struct.linknode** %new, align 4
  %tobool = icmp ne %struct.linknode* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %6 = load %struct.linknode*, %struct.linknode** %new, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %6, i32 0, i32 1
  store %struct.linknode* %5, %struct.linknode** %prev, align 4
  %7 = load i8*, i8** %dat.addr, align 4
  %8 = load %struct.linknode*, %struct.linknode** %new, align 4
  %dat3 = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 2
  store i8* %7, i8** %dat3, align 4
  %9 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %10 = load %struct.linknode*, %struct.linknode** %new, align 4
  %next4 = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 0
  store %struct.linknode* %9, %struct.linknode** %next4, align 4
  %11 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %tobool5 = icmp ne %struct.linknode* %11, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %12 = load %struct.linknode*, %struct.linknode** %new, align 4
  %13 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %prev7 = getelementptr inbounds %struct.linknode, %struct.linknode* %13, i32 0, i32 1
  store %struct.linknode* %12, %struct.linknode** %prev7, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %14 = load %struct.linknode*, %struct.linknode** %new, align 4
  %15 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list8 = bitcast %union.linkroot* %15 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list8, i32 0, i32 1
  store %struct.linknode* %14, %struct.linknode** %last, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %16 = load %struct.linknode*, %struct.linknode** %new, align 4
  store %struct.linknode* %16, %struct.linknode** %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %17 = load %struct.linknode*, %struct.linknode** %retval, align 4
  ret %struct.linknode* %17
}

; Function Attrs: noinline nounwind
define %struct.linknode* @uinsertlinknode(%union.linkroot* %list, %struct.linknode* %node, %struct.linknode* %new) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %node.addr = alloca %struct.linknode*, align 4
  %new.addr = alloca %struct.linknode*, align 4
  %tmp = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %node, %struct.linknode** %node.addr, align 4
  store %struct.linknode* %new, %struct.linknode** %new.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %1, %struct.linknode** %tmp, align 4
  %2 = load %struct.linknode*, %struct.linknode** %new.addr, align 4
  %3 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %next1 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  store %struct.linknode* %2, %struct.linknode** %next1, align 4
  %4 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %5 = load %struct.linknode*, %struct.linknode** %new.addr, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %5, i32 0, i32 1
  store %struct.linknode* %4, %struct.linknode** %prev, align 4
  %6 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %7 = load %struct.linknode*, %struct.linknode** %new.addr, align 4
  %next2 = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 0
  store %struct.linknode* %6, %struct.linknode** %next2, align 4
  %8 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %tobool = icmp ne %struct.linknode* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.linknode*, %struct.linknode** %new.addr, align 4
  %10 = load %struct.linknode*, %struct.linknode** %tmp, align 4
  %prev3 = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 1
  store %struct.linknode* %9, %struct.linknode** %prev3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.linknode*, %struct.linknode** %new.addr, align 4
  %12 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list4 = bitcast %union.linkroot* %12 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list4, i32 0, i32 1
  store %struct.linknode* %11, %struct.linknode** %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.linknode*, %struct.linknode** %new.addr, align 4
  ret %struct.linknode* %13
}

; Function Attrs: noinline nounwind
define void @insertlinklist(%union.linkroot* %l, %struct.linknode* %where, %union.linkroot* %x) #0 {
entry:
  %l.addr = alloca %union.linkroot*, align 4
  %where.addr = alloca %struct.linknode*, align 4
  %x.addr = alloca %union.linkroot*, align 4
  %nx = alloca %struct.linknode*, align 4
  store %union.linkroot* %l, %union.linkroot** %l.addr, align 4
  store %struct.linknode* %where, %struct.linknode** %where.addr, align 4
  store %union.linkroot* %x, %union.linkroot** %x.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %where.addr, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %1, %struct.linknode** %nx, align 4
  %2 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list = bitcast %union.linkroot* %2 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %3 = load %struct.linknode*, %struct.linknode** %first, align 4
  %tobool = icmp ne %struct.linknode* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end17

if.end:                                           ; preds = %entry
  %4 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list1 = bitcast %union.linkroot* %4 to %struct.linklist*
  %first2 = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %5 = load %struct.linknode*, %struct.linknode** %first2, align 4
  %6 = load %struct.linknode*, %struct.linknode** %where.addr, align 4
  %next3 = getelementptr inbounds %struct.linknode, %struct.linknode* %6, i32 0, i32 0
  store %struct.linknode* %5, %struct.linknode** %next3, align 4
  %7 = load %struct.linknode*, %struct.linknode** %nx, align 4
  %8 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list4 = bitcast %union.linkroot* %8 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list4, i32 0, i32 1
  %9 = load %struct.linknode*, %struct.linknode** %last, align 4
  %next5 = getelementptr inbounds %struct.linknode, %struct.linknode* %9, i32 0, i32 0
  store %struct.linknode* %7, %struct.linknode** %next5, align 4
  %10 = load %struct.linknode*, %struct.linknode** %where.addr, align 4
  %11 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list6 = bitcast %union.linkroot* %11 to %struct.linklist*
  %first7 = getelementptr inbounds %struct.linklist, %struct.linklist* %list6, i32 0, i32 0
  %12 = load %struct.linknode*, %struct.linknode** %first7, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %12, i32 0, i32 1
  store %struct.linknode* %10, %struct.linknode** %prev, align 4
  %13 = load %struct.linknode*, %struct.linknode** %nx, align 4
  %tobool8 = icmp ne %struct.linknode* %13, null
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %14 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list10 = bitcast %union.linkroot* %14 to %struct.linklist*
  %last11 = getelementptr inbounds %struct.linklist, %struct.linklist* %list10, i32 0, i32 1
  %15 = load %struct.linknode*, %struct.linknode** %last11, align 4
  %16 = load %struct.linknode*, %struct.linknode** %nx, align 4
  %prev12 = getelementptr inbounds %struct.linknode, %struct.linknode* %16, i32 0, i32 1
  store %struct.linknode* %15, %struct.linknode** %prev12, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end
  %17 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list13 = bitcast %union.linkroot* %17 to %struct.linklist*
  %last14 = getelementptr inbounds %struct.linklist, %struct.linklist* %list13, i32 0, i32 1
  %18 = load %struct.linknode*, %struct.linknode** %last14, align 4
  %19 = load %union.linkroot*, %union.linkroot** %x.addr, align 4
  %list15 = bitcast %union.linkroot* %19 to %struct.linklist*
  %last16 = getelementptr inbounds %struct.linklist, %struct.linklist* %list15, i32 0, i32 1
  store %struct.linknode* %18, %struct.linknode** %last16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then, %if.else, %if.then9
  ret void
}

; Function Attrs: noinline nounwind
define i8* @getlinknode(%union.linkroot* %list) #0 {
entry:
  %retval = alloca i8*, align 4
  %list.addr = alloca %union.linkroot*, align 4
  %dat = alloca i8*, align 4
  %node = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list1 = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat2 = getelementptr inbounds %struct.linknode, %struct.linknode* %2, i32 0, i32 2
  %3 = load i8*, i8** %dat2, align 4
  store i8* %3, i8** %dat, align 4
  %4 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 0
  %5 = load %struct.linknode*, %struct.linknode** %next, align 4
  %6 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list3 = bitcast %union.linkroot* %6 to %struct.linklist*
  %first4 = getelementptr inbounds %struct.linklist, %struct.linklist* %list3, i32 0, i32 0
  store %struct.linknode* %5, %struct.linknode** %first4, align 4
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next5 = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 0
  %8 = load %struct.linknode*, %struct.linknode** %next5, align 4
  %tobool6 = icmp ne %struct.linknode* %8, null
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %9 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %node8 = bitcast %union.linkroot* %9 to %struct.linknode*
  %10 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next9 = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 0
  %11 = load %struct.linknode*, %struct.linknode** %next9, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %11, i32 0, i32 1
  store %struct.linknode* %node8, %struct.linknode** %prev, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %12 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %node10 = bitcast %union.linkroot* %12 to %struct.linknode*
  %13 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list11 = bitcast %union.linkroot* %13 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list11, i32 0, i32 1
  store %struct.linknode* %node10, %struct.linknode** %last, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %14 = load %struct.linknode*, %struct.linknode** %node, align 4
  %15 = bitcast %struct.linknode* %14 to i8*
  call void @zfree(i8* %15, i32 12)
  %16 = load i8*, i8** %dat, align 4
  store i8* %16, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %17 = load i8*, i8** %retval, align 4
  ret i8* %17
}

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define i8* @ugetnode(%union.linkroot* %list) #0 {
entry:
  %retval = alloca i8*, align 4
  %list.addr = alloca %union.linkroot*, align 4
  %dat = alloca i8*, align 4
  %node = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list1 = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat2 = getelementptr inbounds %struct.linknode, %struct.linknode* %2, i32 0, i32 2
  %3 = load i8*, i8** %dat2, align 4
  store i8* %3, i8** %dat, align 4
  %4 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 0
  %5 = load %struct.linknode*, %struct.linknode** %next, align 4
  %6 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list3 = bitcast %union.linkroot* %6 to %struct.linklist*
  %first4 = getelementptr inbounds %struct.linklist, %struct.linklist* %list3, i32 0, i32 0
  store %struct.linknode* %5, %struct.linknode** %first4, align 4
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next5 = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 0
  %8 = load %struct.linknode*, %struct.linknode** %next5, align 4
  %tobool6 = icmp ne %struct.linknode* %8, null
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %9 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %node8 = bitcast %union.linkroot* %9 to %struct.linknode*
  %10 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next9 = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 0
  %11 = load %struct.linknode*, %struct.linknode** %next9, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %11, i32 0, i32 1
  store %struct.linknode* %node8, %struct.linknode** %prev, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %12 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %node10 = bitcast %union.linkroot* %12 to %struct.linknode*
  %13 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list11 = bitcast %union.linkroot* %13 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list11, i32 0, i32 1
  store %struct.linknode* %node10, %struct.linknode** %last, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %14 = load i8*, i8** %dat, align 4
  store i8* %14, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %15 = load i8*, i8** %retval, align 4
  ret i8* %15
}

; Function Attrs: noinline nounwind
define i8* @remnode(%union.linkroot* %list, %struct.linknode* %nd) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %nd.addr = alloca %struct.linknode*, align 4
  %dat = alloca i8*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %nd, %struct.linknode** %nd.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %next, align 4
  %2 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %2, i32 0, i32 1
  %3 = load %struct.linknode*, %struct.linknode** %prev, align 4
  %next1 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  store %struct.linknode* %1, %struct.linknode** %next1, align 4
  %4 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %next2 = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 0
  %5 = load %struct.linknode*, %struct.linknode** %next2, align 4
  %tobool = icmp ne %struct.linknode* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev3 = getelementptr inbounds %struct.linknode, %struct.linknode* %6, i32 0, i32 1
  %7 = load %struct.linknode*, %struct.linknode** %prev3, align 4
  %8 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %next4 = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 0
  %9 = load %struct.linknode*, %struct.linknode** %next4, align 4
  %prev5 = getelementptr inbounds %struct.linknode, %struct.linknode* %9, i32 0, i32 1
  store %struct.linknode* %7, %struct.linknode** %prev5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev6 = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 1
  %11 = load %struct.linknode*, %struct.linknode** %prev6, align 4
  %12 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list7 = bitcast %union.linkroot* %12 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list7, i32 0, i32 1
  store %struct.linknode* %11, %struct.linknode** %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %dat8 = getelementptr inbounds %struct.linknode, %struct.linknode* %13, i32 0, i32 2
  %14 = load i8*, i8** %dat8, align 4
  store i8* %14, i8** %dat, align 4
  %15 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %16 = bitcast %struct.linknode* %15 to i8*
  call void @zfree(i8* %16, i32 12)
  %17 = load i8*, i8** %dat, align 4
  ret i8* %17
}

; Function Attrs: noinline nounwind
define i8* @uremnode(%union.linkroot* %list, %struct.linknode* %nd) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %nd.addr = alloca %struct.linknode*, align 4
  %dat = alloca i8*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %nd, %struct.linknode** %nd.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %next, align 4
  %2 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %2, i32 0, i32 1
  %3 = load %struct.linknode*, %struct.linknode** %prev, align 4
  %next1 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  store %struct.linknode* %1, %struct.linknode** %next1, align 4
  %4 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %next2 = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 0
  %5 = load %struct.linknode*, %struct.linknode** %next2, align 4
  %tobool = icmp ne %struct.linknode* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev3 = getelementptr inbounds %struct.linknode, %struct.linknode* %6, i32 0, i32 1
  %7 = load %struct.linknode*, %struct.linknode** %prev3, align 4
  %8 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %next4 = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 0
  %9 = load %struct.linknode*, %struct.linknode** %next4, align 4
  %prev5 = getelementptr inbounds %struct.linknode, %struct.linknode* %9, i32 0, i32 1
  store %struct.linknode* %7, %struct.linknode** %prev5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev6 = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 1
  %11 = load %struct.linknode*, %struct.linknode** %prev6, align 4
  %12 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list7 = bitcast %union.linkroot* %12 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list7, i32 0, i32 1
  store %struct.linknode* %11, %struct.linknode** %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %dat8 = getelementptr inbounds %struct.linknode, %struct.linknode* %13, i32 0, i32 2
  %14 = load i8*, i8** %dat8, align 4
  store i8* %14, i8** %dat, align 4
  %15 = load i8*, i8** %dat, align 4
  ret i8* %15
}

; Function Attrs: noinline nounwind
define void @freelinklist(%union.linkroot* %list, void (i8*)* %freefunc) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %freefunc.addr = alloca void (i8*)*, align 4
  %node = alloca %struct.linknode*, align 4
  %next = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store void (i8*)* %freefunc, void (i8*)** %freefunc.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list1 = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next2 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  %4 = load %struct.linknode*, %struct.linknode** %next2, align 4
  store %struct.linknode* %4, %struct.linknode** %next, align 4
  %5 = load void (i8*)*, void (i8*)** %freefunc.addr, align 4
  %tobool3 = icmp ne void (i8*)* %5, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load void (i8*)*, void (i8*)** %freefunc.addr, align 4
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 2
  %8 = load i8*, i8** %dat, align 4
  call void %6(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load %struct.linknode*, %struct.linknode** %node, align 4
  %10 = bitcast %struct.linknode* %9 to i8*
  call void @zfree(i8* %10, i32 12)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %11, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %13 = bitcast %union.linkroot* %12 to i8*
  call void @zfree(i8* %13, i32 12)
  ret void
}

; Function Attrs: noinline nounwind
define i32 @countlinknodes(%union.linkroot* %list) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %nd = alloca %struct.linknode*, align 4
  %ct = alloca i32, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store i32 0, i32* %ct, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list1 = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %nd, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  %4 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %4, %struct.linknode** %nd, align 4
  %5 = load i32, i32* %ct, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ct, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %ct, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define void @rolllist(%union.linkroot* %l, %struct.linknode* %nd) #0 {
entry:
  %l.addr = alloca %union.linkroot*, align 4
  %nd.addr = alloca %struct.linknode*, align 4
  store %union.linkroot* %l, %union.linkroot** %l.addr, align 4
  store %struct.linknode* %nd, %struct.linknode** %nd.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  %2 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list1 = bitcast %union.linkroot* %2 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 1
  %3 = load %struct.linknode*, %struct.linknode** %last, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  store %struct.linknode* %1, %struct.linknode** %next, align 4
  %4 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list2 = bitcast %union.linkroot* %4 to %struct.linklist*
  %last3 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 1
  %5 = load %struct.linknode*, %struct.linknode** %last3, align 4
  %6 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list4 = bitcast %union.linkroot* %6 to %struct.linklist*
  %first5 = getelementptr inbounds %struct.linklist, %struct.linklist* %list4, i32 0, i32 0
  %7 = load %struct.linknode*, %struct.linknode** %first5, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 1
  store %struct.linknode* %5, %struct.linknode** %prev, align 4
  %8 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %9 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list6 = bitcast %union.linkroot* %9 to %struct.linklist*
  %first7 = getelementptr inbounds %struct.linklist, %struct.linklist* %list6, i32 0, i32 0
  store %struct.linknode* %8, %struct.linknode** %first7, align 4
  %10 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev8 = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 1
  %11 = load %struct.linknode*, %struct.linknode** %prev8, align 4
  %12 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list9 = bitcast %union.linkroot* %12 to %struct.linklist*
  %last10 = getelementptr inbounds %struct.linklist, %struct.linklist* %list9, i32 0, i32 1
  store %struct.linknode* %11, %struct.linknode** %last10, align 4
  %13 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %node = bitcast %union.linkroot* %13 to %struct.linknode*
  %14 = load %struct.linknode*, %struct.linknode** %nd.addr, align 4
  %prev11 = getelementptr inbounds %struct.linknode, %struct.linknode* %14, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev11, align 4
  %15 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list12 = bitcast %union.linkroot* %15 to %struct.linklist*
  %last13 = getelementptr inbounds %struct.linklist, %struct.linklist* %list12, i32 0, i32 1
  %16 = load %struct.linknode*, %struct.linknode** %last13, align 4
  %next14 = getelementptr inbounds %struct.linknode, %struct.linknode* %16, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next14, align 4
  ret void
}

; Function Attrs: noinline nounwind
define %union.linkroot* @newsizedlist(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %list = alloca %union.linkroot*, align 4
  %node = alloca %struct.linknode*, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %mul = mul i32 %0, 12
  %add = add i32 12, %mul
  %call = call i8* @zhalloc(i32 %add)
  %1 = bitcast i8* %call to %union.linkroot*
  store %union.linkroot* %1, %union.linkroot** %list, align 4
  %2 = load %union.linkroot*, %union.linkroot** %list, align 4
  %arrayidx = getelementptr inbounds %union.linkroot, %union.linkroot* %2, i32 1
  %node1 = bitcast %union.linkroot* %arrayidx to %struct.linknode*
  %3 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list2 = bitcast %union.linkroot* %3 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 0
  store %struct.linknode* %node1, %struct.linknode** %first, align 4
  %4 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list3 = bitcast %union.linkroot* %4 to %struct.linklist*
  %first4 = getelementptr inbounds %struct.linklist, %struct.linklist* %list3, i32 0, i32 0
  %5 = load %struct.linknode*, %struct.linknode** %first4, align 4
  store %struct.linknode* %5, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %add.ptr = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 -1
  %8 = load %struct.linknode*, %struct.linknode** %node, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 1
  store %struct.linknode* %add.ptr, %struct.linknode** %prev, align 4
  %9 = load %struct.linknode*, %struct.linknode** %node, align 4
  %add.ptr5 = getelementptr inbounds %struct.linknode, %struct.linknode* %9, i32 1
  %10 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 0
  store %struct.linknode* %add.ptr5, %struct.linknode** %next, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %size.addr, align 4
  %12 = load %struct.linknode*, %struct.linknode** %node, align 4
  %incdec.ptr = getelementptr inbounds %struct.linknode, %struct.linknode* %12, i32 1
  store %struct.linknode* %incdec.ptr, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.linknode*, %struct.linknode** %node, align 4
  %add.ptr6 = getelementptr inbounds %struct.linknode, %struct.linknode* %13, i32 -1
  %14 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list7 = bitcast %union.linkroot* %14 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list7, i32 0, i32 1
  store %struct.linknode* %add.ptr6, %struct.linknode** %last, align 4
  %15 = load %union.linkroot*, %union.linkroot** %list, align 4
  %node8 = bitcast %union.linkroot* %15 to %struct.linknode*
  %16 = load %union.linkroot*, %union.linkroot** %list, align 4
  %list9 = bitcast %union.linkroot* %16 to %struct.linklist*
  %first10 = getelementptr inbounds %struct.linklist, %struct.linklist* %list9, i32 0, i32 0
  %17 = load %struct.linknode*, %struct.linknode** %first10, align 4
  %prev11 = getelementptr inbounds %struct.linknode, %struct.linknode* %17, i32 0, i32 1
  store %struct.linknode* %node8, %struct.linknode** %prev11, align 4
  %18 = load %struct.linknode*, %struct.linknode** %node, align 4
  %arrayidx12 = getelementptr inbounds %struct.linknode, %struct.linknode* %18, i32 -1
  %next13 = getelementptr inbounds %struct.linknode, %struct.linknode* %arrayidx12, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next13, align 4
  %19 = load %union.linkroot*, %union.linkroot** %list, align 4
  ret %union.linkroot* %19
}

; Function Attrs: noinline nounwind
define %union.linkroot* @joinlists(%union.linkroot* %first, %union.linkroot* %second) #0 {
entry:
  %first.addr = alloca %union.linkroot*, align 4
  %second.addr = alloca %union.linkroot*, align 4
  %moveme = alloca %struct.linknode*, align 4
  %anchor = alloca %struct.linknode*, align 4
  store %union.linkroot* %first, %union.linkroot** %first.addr, align 4
  store %union.linkroot* %second, %union.linkroot** %second.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %second.addr, align 4
  %list = bitcast %union.linkroot* %0 to %struct.linklist*
  %first1 = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first1, align 4
  store %struct.linknode* %1, %struct.linknode** %moveme, align 4
  %2 = load %struct.linknode*, %struct.linknode** %moveme, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %3 = load %union.linkroot*, %union.linkroot** %first.addr, align 4
  %list2 = bitcast %union.linkroot* %3 to %struct.linklist*
  %first3 = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 0
  %4 = load %struct.linknode*, %struct.linknode** %first3, align 4
  %tobool4 = icmp ne %struct.linknode* %4, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %5 = load %union.linkroot*, %union.linkroot** %first.addr, align 4
  %list6 = bitcast %union.linkroot* %5 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list6, i32 0, i32 1
  %6 = load %struct.linknode*, %struct.linknode** %last, align 4
  store %struct.linknode* %6, %struct.linknode** %anchor, align 4
  %7 = load %struct.linknode*, %struct.linknode** %moveme, align 4
  %8 = load %struct.linknode*, %struct.linknode** %anchor, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 0
  store %struct.linknode* %7, %struct.linknode** %next, align 4
  %9 = load %struct.linknode*, %struct.linknode** %anchor, align 4
  %10 = load %struct.linknode*, %struct.linknode** %moveme, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 1
  store %struct.linknode* %9, %struct.linknode** %prev, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.linknode*, %struct.linknode** %moveme, align 4
  %12 = load %union.linkroot*, %union.linkroot** %first.addr, align 4
  %list7 = bitcast %union.linkroot* %12 to %struct.linklist*
  %first8 = getelementptr inbounds %struct.linklist, %struct.linklist* %list7, i32 0, i32 0
  store %struct.linknode* %11, %struct.linknode** %first8, align 4
  %13 = load %union.linkroot*, %union.linkroot** %first.addr, align 4
  %node = bitcast %union.linkroot* %13 to %struct.linknode*
  %14 = load %struct.linknode*, %struct.linknode** %moveme, align 4
  %prev9 = getelementptr inbounds %struct.linknode, %struct.linknode* %14, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %15 = load %union.linkroot*, %union.linkroot** %second.addr, align 4
  %list10 = bitcast %union.linkroot* %15 to %struct.linklist*
  %last11 = getelementptr inbounds %struct.linklist, %struct.linklist* %list10, i32 0, i32 1
  %16 = load %struct.linknode*, %struct.linknode** %last11, align 4
  %17 = load %union.linkroot*, %union.linkroot** %first.addr, align 4
  %list12 = bitcast %union.linkroot* %17 to %struct.linklist*
  %last13 = getelementptr inbounds %struct.linklist, %struct.linklist* %list12, i32 0, i32 1
  store %struct.linknode* %16, %struct.linknode** %last13, align 4
  %18 = load %union.linkroot*, %union.linkroot** %second.addr, align 4
  %list14 = bitcast %union.linkroot* %18 to %struct.linklist*
  %last15 = getelementptr inbounds %struct.linklist, %struct.linklist* %list14, i32 0, i32 1
  store %struct.linknode* null, %struct.linknode** %last15, align 4
  %19 = load %union.linkroot*, %union.linkroot** %second.addr, align 4
  %list16 = bitcast %union.linkroot* %19 to %struct.linklist*
  %first17 = getelementptr inbounds %struct.linklist, %struct.linklist* %list16, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %first17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry
  %20 = load %union.linkroot*, %union.linkroot** %first.addr, align 4
  ret %union.linkroot* %20
}

; Function Attrs: noinline nounwind
define %struct.linknode* @linknodebydatum(%union.linkroot* %list, i8* %dat) #0 {
entry:
  %retval = alloca %struct.linknode*, align 4
  %list.addr = alloca %union.linkroot*, align 4
  %dat.addr = alloca i8*, align 4
  %node = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store i8* %dat, i8** %dat.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list1 = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat2 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 2
  %4 = load i8*, i8** %dat2, align 4
  %5 = load i8*, i8** %dat.addr, align 4
  %cmp = icmp eq i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.linknode*, %struct.linknode** %node, align 4
  store %struct.linknode* %6, %struct.linknode** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 0
  %8 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %8, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.linknode*, %struct.linknode** %retval, align 4
  ret %struct.linknode* %9
}

; Function Attrs: noinline nounwind
define %struct.linknode* @linknodebystring(%union.linkroot* %list, i8* %dat) #0 {
entry:
  %retval = alloca %struct.linknode*, align 4
  %list.addr = alloca %union.linkroot*, align 4
  %dat.addr = alloca i8*, align 4
  %node = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store i8* %dat, i8** %dat.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list1 = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat2 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 2
  %4 = load i8*, i8** %dat2, align 4
  %5 = load i8*, i8** %dat.addr, align 4
  %call = call i32 @strcmp(i8* %4, i8* %5)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load %struct.linknode*, %struct.linknode** %node, align 4
  store %struct.linknode* %6, %struct.linknode** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 0
  %8 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %8, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.linknode* null, %struct.linknode** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.linknode*, %struct.linknode** %retval, align 4
  ret %struct.linknode* %9
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i8** @hlinklist2array(%union.linkroot* %list, i32 %copy) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %copy.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  %n = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store i32 %copy, i32* %copy.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %call = call i32 @countlinknodes(%union.linkroot* %0)
  store i32 %call, i32* %l, align 4
  %1 = load i32, i32* %l, align 4
  %add = add nsw i32 %1, 1
  %mul = mul i32 %add, 4
  %call1 = call i8* @zhalloc(i32 %mul)
  %2 = bitcast i8* %call1 to i8**
  store i8** %2, i8*** %ret, align 4
  %3 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list2 = bitcast %union.linkroot* %3 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 0
  %4 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %4, %struct.linknode** %n, align 4
  %5 = load i8**, i8*** %ret, align 4
  store i8** %5, i8*** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool = icmp ne %struct.linknode* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 2
  %8 = load i8*, i8** %dat, align 4
  %9 = load i8**, i8*** %p, align 4
  store i8* %8, i8** %9, align 4
  %10 = load i32, i32* %copy.addr, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i8**, i8*** %p, align 4
  %12 = load i8*, i8** %11, align 4
  %call4 = call i8* @dupstring(i8* %12)
  %13 = load i8**, i8*** %p, align 4
  store i8* %call4, i8** %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %14, i32 0, i32 0
  %15 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %15, %struct.linknode** %n, align 4
  %16 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8**, i8*** %p, align 4
  store i8* null, i8** %17, align 4
  %18 = load i8**, i8*** %ret, align 4
  ret i8** %18
}

declare i8* @dupstring(i8*) #1

; Function Attrs: noinline nounwind
define i8** @zlinklist2array(%union.linkroot* %list) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %l = alloca i32, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  %n = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %call = call i32 @countlinknodes(%union.linkroot* %0)
  store i32 %call, i32* %l, align 4
  %1 = load i32, i32* %l, align 4
  %add = add nsw i32 %1, 1
  %mul = mul i32 %add, 4
  %call1 = call i8* @zalloc(i32 %mul)
  %2 = bitcast i8* %call1 to i8**
  store i8** %2, i8*** %ret, align 4
  %3 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list2 = bitcast %union.linkroot* %3 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 0
  %4 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %4, %struct.linknode** %n, align 4
  %5 = load i8**, i8*** %ret, align 4
  store i8** %5, i8*** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool = icmp ne %struct.linknode* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 2
  %8 = load i8*, i8** %dat, align 4
  %call3 = call i8* @ztrdup(i8* %8)
  %9 = load i8**, i8*** %p, align 4
  store i8* %call3, i8** %9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %10, i32 0, i32 0
  %11 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %11, %struct.linknode** %n, align 4
  %12 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8**, i8*** %p, align 4
  store i8* null, i8** %13, align 4
  %14 = load i8**, i8*** %ret, align 4
  ret i8** %14
}

declare i8* @ztrdup(i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
