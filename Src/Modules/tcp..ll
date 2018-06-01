; ModuleID = 'tcp.c'
source_filename = "tcp.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.features = type { %struct.builtin*, i32, %struct.conddef*, i32, %struct.mathfunc*, i32, %struct.paramdef*, i32, i32 }
%struct.builtin = type { %struct.hashnode, i32 (i8*, i8**, %struct.options*, i32)*, i32, i32, i32, i8*, i8* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.mathfunc = type { %struct.mathfunc*, i8*, i32, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)*, void (%struct.mnumber*, i8*, i8*, i32)*, i8*, i32, i32, i32 }
%struct.mnumber = type { %union.anon.1, i32 }
%union.anon.1 = type { double }
%struct.paramdef = type { i8*, i32, i8*, i8*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, %struct.param* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, {}*, {}*, {}*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.param = type { %struct.hashnode, %union.anon.2, %union.anon.3, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.2 = type { double }
%union.anon.3 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.tcp_session = type { i32, %union.tcp_sockaddr, %union.tcp_sockaddr, i32 }
%union.tcp_sockaddr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.module = type { %struct.hashnode, %union.anon.0, %union.linkroot*, %union.linkroot*, i32 }
%union.anon.0 = type { i8* }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.pollfd = type { i32, i16, i16 }

@zsh_getipnodebyname.ahe = internal global %struct.hostent zeroinitializer, align 4
@zsh_getipnodebyname.nbuf = internal global [16 x i8] zeroinitializer, align 1
@zsh_getipnodebyname.addrlist = internal global [2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @zsh_getipnodebyname.nbuf, i32 0, i32 0), i8* null], align 4
@zsh_getipnodebyname.pbuf = internal global [46 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [28 x i8] c"connection close failed: %e\00", align 1
@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0), i32 1, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@ztcp_sessions = internal global %union.linkroot* null, align 4
@bintab = internal global [1 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0 }, i32 (i8*, i8**, %struct.options*, i32)* @bin_ztcp, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* null }], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ztcp\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"acd:flLtv\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s is an invalid argument to -d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s is an invalid argument to -c\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"use -f to force closure of a zftp control connection\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"fd %s not found in tcp table\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"-l requires an argument\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"bad service name or port number\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"unable to allocate a TCP session slot\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"bad address: %s\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"could not bind to port %s: %e\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"could not listen on socket: %e\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"cannot duplicate fd %d: %e\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"%d listener is on fd %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"-a requires an argument\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"invalid numerical argument\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"fd %s is not registered as a tcp connection\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"tcp connection not a listener\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"poll error: %e\00", align 1
@errflag = external global i32, align 4
@.str.23 = private unnamed_addr constant [32 x i8] c"could not accept connection: %e\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"could not duplicate socket fd to %d: %e\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%d is on fd %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"%d %c %s %d %s %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"%s:%d %s %s:%d is on fd %d%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-<\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c" ZFTP\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"host resolution failure: %s\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"socket creation failed: %e\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"address length mismatch\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"connection failed: %e\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"%s:%d is now on fd %d\0A\00", align 1

; Function Attrs: noinline nounwind
define %struct.hostent* @zsh_getipnodebyname(i8* %name, i32 %af, i32 %flags, i32* %errorp) #0 {
entry:
  %retval = alloca %struct.hostent*, align 4
  %name.addr = alloca i8*, align 4
  %af.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %errorp.addr = alloca i32*, align 4
  %he = alloca %struct.hostent*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %af, i32* %af.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %errorp, i32** %errorp.addr, align 4
  %0 = load i32, i32* %af.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call i32 @inet_pton(i32 %0, i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @zsh_getipnodebyname.nbuf, i32 0, i32 0))
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %af.addr, align 4
  %call1 = call i8* @inet_ntop(i32 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @zsh_getipnodebyname.nbuf, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @zsh_getipnodebyname.pbuf, i32 0, i32 0), i32 46)
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @zsh_getipnodebyname.pbuf, i32 0, i32 0), i8** getelementptr inbounds (%struct.hostent, %struct.hostent* @zsh_getipnodebyname.ahe, i32 0, i32 0), align 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @zsh_getipnodebyname.addrlist, i32 0, i32 1), i8*** getelementptr inbounds (%struct.hostent, %struct.hostent* @zsh_getipnodebyname.ahe, i32 0, i32 1), align 4
  %3 = load i32, i32* %af.addr, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @zsh_getipnodebyname.ahe, i32 0, i32 2), align 4
  %4 = load i32, i32* %af.addr, align 4
  %cmp2 = icmp eq i32 %4, 2
  %cond = select i1 %cmp2, i32 4, i32 16
  store i32 %cond, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @zsh_getipnodebyname.ahe, i32 0, i32 3), align 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @zsh_getipnodebyname.addrlist, i32 0, i32 0), i8*** getelementptr inbounds (%struct.hostent, %struct.hostent* @zsh_getipnodebyname.ahe, i32 0, i32 4), align 4
  store %struct.hostent* @zsh_getipnodebyname.ahe, %struct.hostent** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %name.addr, align 4
  %6 = load i32, i32* %af.addr, align 4
  %call3 = call %struct.hostent* @gethostbyname2(i8* %5, i32 %6)
  store %struct.hostent* %call3, %struct.hostent** %he, align 4
  %7 = load %struct.hostent*, %struct.hostent** %he, align 4
  %tobool = icmp ne %struct.hostent* %7, null
  br i1 %tobool, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32* @__h_errno_location()
  %8 = load i32, i32* %call5, align 4
  %9 = load i32*, i32** %errorp.addr, align 4
  store i32 %8, i32* %9, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load %struct.hostent*, %struct.hostent** %he, align 4
  store %struct.hostent* %10, %struct.hostent** %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %11 = load %struct.hostent*, %struct.hostent** %retval, align 4
  ret %struct.hostent* %11
}

declare i32 @inet_pton(i32, i8*, i8*) #1

declare i8* @inet_ntop(i32, i8*, i8*, i32) #1

declare %struct.hostent* @gethostbyname2(i8*, i32) #1

declare i32* @__h_errno_location() #1

; Function Attrs: noinline nounwind
define void @freehostent(%struct.hostent* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.hostent*, align 4
  store %struct.hostent* %ptr, %struct.hostent** %ptr.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind
define %struct.tcp_session* @tcp_socket(i32 %domain, i32 %type, i32 %protocol, i32 %ztflags) #0 {
entry:
  %retval = alloca %struct.tcp_session*, align 4
  %domain.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %protocol.addr = alloca i32, align 4
  %ztflags.addr = alloca i32, align 4
  %sess = alloca %struct.tcp_session*, align 4
  store i32 %domain, i32* %domain.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %protocol, i32* %protocol.addr, align 4
  store i32 %ztflags, i32* %ztflags.addr, align 4
  %0 = load i32, i32* %ztflags.addr, align 4
  %call = call %struct.tcp_session* @zts_alloc(i32 %0)
  store %struct.tcp_session* %call, %struct.tcp_session** %sess, align 4
  %1 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %tobool = icmp ne %struct.tcp_session* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.tcp_session* null, %struct.tcp_session** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %domain.addr, align 4
  %3 = load i32, i32* %type.addr, align 4
  %4 = load i32, i32* %protocol.addr, align 4
  %call1 = call i32 @socket(i32 %2, i32 %3, i32 %4)
  %5 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %5, i32 0, i32 0
  store i32 %call1, i32* %fd, align 4
  %6 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd2 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %6, i32 0, i32 0
  %7 = load i32, i32* %fd2, align 4
  call void @addmodulefd(i32 %7, i32 3)
  %8 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  store %struct.tcp_session* %8, %struct.tcp_session** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.tcp_session*, %struct.tcp_session** %retval, align 4
  ret %struct.tcp_session* %9
}

; Function Attrs: noinline nounwind
define internal %struct.tcp_session* @zts_alloc(i32 %ztflags) #0 {
entry:
  %retval = alloca %struct.tcp_session*, align 4
  %ztflags.addr = alloca i32, align 4
  %sess = alloca %struct.tcp_session*, align 4
  store i32 %ztflags, i32* %ztflags.addr, align 4
  %call = call i8* @zshcalloc(i32 64)
  %0 = bitcast i8* %call to %struct.tcp_session*
  store %struct.tcp_session* %0, %struct.tcp_session** %sess, align 4
  %1 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %tobool = icmp ne %struct.tcp_session* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.tcp_session* null, %struct.tcp_session** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %2, i32 0, i32 0
  store i32 -1, i32* %fd, align 4
  %3 = load i32, i32* %ztflags.addr, align 4
  %4 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %4, i32 0, i32 3
  store i32 %3, i32* %flags, align 4
  %5 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  %6 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  %list = bitcast %union.linkroot* %6 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %7 = load %struct.linknode*, %struct.linknode** %last, align 4
  %8 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %9 = bitcast %struct.tcp_session* %8 to i8*
  %call1 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %5, %struct.linknode* %7, i8* %9)
  %10 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  store %struct.tcp_session* %10, %struct.tcp_session** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.tcp_session*, %struct.tcp_session** %retval, align 4
  ret %struct.tcp_session* %11
}

declare i32 @socket(i32, i32, i32) #1

declare void @addmodulefd(i32, i32) #1

; Function Attrs: noinline nounwind
define i32 @tcp_close(%struct.tcp_session* %sess) #0 {
entry:
  %retval = alloca i32, align 4
  %sess.addr = alloca %struct.tcp_session*, align 4
  %err = alloca i32, align 4
  store %struct.tcp_session* %sess, %struct.tcp_session** %sess.addr, align 4
  %0 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %tobool = icmp ne %struct.tcp_session* %0, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %fd = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %1, i32 0, i32 0
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.then
  %3 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %fd2 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %3, i32 0, i32 0
  %4 = load i32, i32* %fd2, align 4
  %call = call i32 @zclose(i32 %4)
  store i32 %call, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then1
  %call5 = call i32* @__errno_location()
  %6 = load i32, i32* %call5, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then1
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %7 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %call7 = call i32 @zts_delete(%struct.tcp_session* %7)
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.end6
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare i32 @zclose(i32) #1

declare void @zwarn(i8*, ...) #1

declare i32* @__errno_location() #1

; Function Attrs: noinline nounwind
define internal i32 @zts_delete(%struct.tcp_session* %sess) #0 {
entry:
  %retval = alloca i32, align 4
  %sess.addr = alloca %struct.tcp_session*, align 4
  %node = alloca %struct.linknode*, align 4
  store %struct.tcp_session* %sess, %struct.tcp_session** %sess.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  %1 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %2 = bitcast %struct.tcp_session* %1 to i8*
  %call = call %struct.linknode* @linknodebydatum(%union.linkroot* %0, i8* %2)
  store %struct.linknode* %call, %struct.linknode** %node, align 4
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 2
  %5 = load i8*, i8** %dat, align 4
  %6 = bitcast i8* %5 to %struct.tcp_session*
  %call1 = call i32 @ztcp_free_session(%struct.tcp_session* %6)
  %7 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  %8 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call2 = call i8* @remnode(%union.linkroot* %7, %struct.linknode* %8)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define i32 @tcp_connect(%struct.tcp_session* %sess, i8* %addrp, %struct.hostent* %zhost, i32 %d_port) #0 {
entry:
  %sess.addr = alloca %struct.tcp_session*, align 4
  %addrp.addr = alloca i8*, align 4
  %zhost.addr = alloca %struct.hostent*, align 4
  %d_port.addr = alloca i32, align 4
  %salen = alloca i32, align 4
  store %struct.tcp_session* %sess, %struct.tcp_session** %sess.addr, align 4
  store i8* %addrp, i8** %addrp.addr, align 4
  store %struct.hostent* %zhost, %struct.hostent** %zhost.addr, align 4
  store i32 %d_port, i32* %d_port.addr, align 4
  %0 = load %struct.hostent*, %struct.hostent** %zhost.addr, align 4
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %0, i32 0, i32 2
  %1 = load i32, i32* %h_addrtype, align 4
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %2, i32 0, i32 2
  %in6 = bitcast %union.tcp_sockaddr* %peer to %struct.sockaddr_in6*
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %in6, i32 0, i32 3
  %3 = bitcast %struct.in6_addr* %sin6_addr to i8*
  %4 = load i8*, i8** %addrp.addr, align 4
  %5 = load %struct.hostent*, %struct.hostent** %zhost.addr, align 4
  %h_length = getelementptr inbounds %struct.hostent, %struct.hostent* %5, i32 0, i32 3
  %6 = load i32, i32* %h_length, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 %6, i32 1, i1 false)
  %7 = load i32, i32* %d_port.addr, align 4
  %conv = trunc i32 %7 to i16
  %8 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer1 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %8, i32 0, i32 2
  %in62 = bitcast %union.tcp_sockaddr* %peer1 to %struct.sockaddr_in6*
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %in62, i32 0, i32 1
  store i16 %conv, i16* %sin6_port, align 2
  %9 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer3 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %9, i32 0, i32 2
  %in64 = bitcast %union.tcp_sockaddr* %peer3 to %struct.sockaddr_in6*
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %in64, i32 0, i32 2
  store i32 0, i32* %sin6_flowinfo, align 4
  %10 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer5 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %10, i32 0, i32 2
  %in66 = bitcast %union.tcp_sockaddr* %peer5 to %struct.sockaddr_in6*
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %in66, i32 0, i32 4
  store i32 0, i32* %sin6_scope_id, align 4
  %11 = load %struct.hostent*, %struct.hostent** %zhost.addr, align 4
  %h_addrtype7 = getelementptr inbounds %struct.hostent, %struct.hostent* %11, i32 0, i32 2
  %12 = load i32, i32* %h_addrtype7, align 4
  %conv8 = trunc i32 %12 to i16
  %13 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer9 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %13, i32 0, i32 2
  %in610 = bitcast %union.tcp_sockaddr* %peer9 to %struct.sockaddr_in6*
  %sin6_family = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %in610, i32 0, i32 0
  store i16 %conv8, i16* %sin6_family, align 4
  store i32 28, i32* %salen, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer11 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %14, i32 0, i32 2
  %in = bitcast %union.tcp_sockaddr* %peer11 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in, i32 0, i32 2
  %15 = bitcast %struct.in_addr* %sin_addr to i8*
  %16 = load i8*, i8** %addrp.addr, align 4
  %17 = load %struct.hostent*, %struct.hostent** %zhost.addr, align 4
  %h_length12 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 3
  %18 = load i32, i32* %h_length12, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 %18, i32 1, i1 false)
  %19 = load i32, i32* %d_port.addr, align 4
  %conv13 = trunc i32 %19 to i16
  %20 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer14 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %20, i32 0, i32 2
  %in15 = bitcast %union.tcp_sockaddr* %peer14 to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in15, i32 0, i32 1
  store i16 %conv13, i16* %sin_port, align 2
  %21 = load %struct.hostent*, %struct.hostent** %zhost.addr, align 4
  %h_addrtype16 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 2
  %22 = load i32, i32* %h_addrtype16, align 4
  %conv17 = trunc i32 %22 to i16
  %23 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer18 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %23, i32 0, i32 2
  %in19 = bitcast %union.tcp_sockaddr* %peer18 to %struct.sockaddr_in*
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in19, i32 0, i32 0
  store i16 %conv17, i16* %sin_family, align 4
  store i32 16, i32* %salen, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %fd = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %24, i32 0, i32 0
  %25 = load i32, i32* %fd, align 4
  %26 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %peer20 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %26, i32 0, i32 2
  %27 = bitcast %union.tcp_sockaddr* %peer20 to %struct.sockaddr*
  %28 = load i32, i32* %salen, align 4
  %call = call i32 @connect(i32 %25, %struct.sockaddr* %27, i32 %28)
  ret i32 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

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
  %call = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call, %union.linkroot** @ztcp_sessions, align 4
  ret i32 0
}

declare %union.linkroot* @znewlinklist() #1

; Function Attrs: noinline nounwind
define i32 @cleanup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  call void @tcp_cleanup()
  %0 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  call void @freelinklist(%union.linkroot* %0, void (i8*)* bitcast (i32 (%struct.tcp_session*)* @ztcp_free_session to void (i8*)*))
  %1 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 @setfeatureenables(%struct.module* %1, %struct.features* @module_features, i32* null)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define internal void @tcp_cleanup() #0 {
entry:
  %node = alloca %struct.linknode*, align 4
  %next = alloca %struct.linknode*, align 4
  %0 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  %list = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next1 = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 0
  %4 = load %struct.linknode*, %struct.linknode** %next1, align 4
  store %struct.linknode* %4, %struct.linknode** %next, align 4
  %5 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %5, i32 0, i32 2
  %6 = load i8*, i8** %dat, align 4
  %7 = bitcast i8* %6 to %struct.tcp_session*
  %call = call i32 @tcp_close(%struct.tcp_session* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %8, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @freelinklist(%union.linkroot*, void (i8*)*) #1

; Function Attrs: noinline nounwind
define internal i32 @ztcp_free_session(%struct.tcp_session* %sess) #0 {
entry:
  %sess.addr = alloca %struct.tcp_session*, align 4
  store %struct.tcp_session* %sess, %struct.tcp_session** %sess.addr, align 4
  %0 = load %struct.tcp_session*, %struct.tcp_session** %sess.addr, align 4
  %1 = bitcast %struct.tcp_session* %0 to i8*
  call void @zfree(i8* %1, i32 64)
  ret i32 0
}

declare i32 @setfeatureenables(%struct.module*, %struct.features*, i32*) #1

; Function Attrs: noinline nounwind
define i32 @finish_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

declare i8* @zshcalloc(i32) #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare %struct.linknode* @linknodebydatum(%union.linkroot*, i8*) #1

declare i8* @remnode(%union.linkroot*, %struct.linknode*) #1

; Function Attrs: noinline nounwind
define internal i32 @bin_ztcp(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %herrno = alloca i32, align 4
  %err = alloca i32, align 4
  %destport = alloca i32, align 4
  %force = alloca i32, align 4
  %verbose = alloca i32, align 4
  %test = alloca i32, align 4
  %targetfd = alloca i32, align 4
  %len = alloca i32, align 4
  %addrp = alloca i8**, align 4
  %desthost = alloca i8*, align 4
  %localname = alloca i8*, align 4
  %remotename = alloca i8*, align 4
  %zthost = alloca %struct.hostent*, align 4
  %ztpeer = alloca %struct.hostent*, align 4
  %srv = alloca %struct.servent*, align 4
  %sess = alloca %struct.tcp_session*, align 4
  %lport = alloca i32, align 4
  %buf = alloca [12 x i8], align 1
  %lfd = alloca i32, align 4
  %rfd = alloca i32, align 4
  %pfd = alloca %struct.pollfd, align 4
  %ret = alloca i32, align 4
  %node = alloca %struct.linknode*, align 4
  %schar = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 1, i32* %err, align 4
  store i32 0, i32* %force, align 4
  store i32 0, i32* %verbose, align 4
  store i32 0, i32* %test, align 4
  store i32 0, i32* %targetfd, align 4
  store %struct.hostent* null, %struct.hostent** %zthost, align 4
  store %struct.hostent* null, %struct.hostent** %ztpeer, align 4
  store %struct.tcp_session* null, %struct.tcp_session** %sess, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 102
  %1 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %force, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 118
  %3 = load i8, i8* %arrayidx3, align 2
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, i32* %verbose, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind9 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* %ind9, i32 0, i32 116
  %5 = load i8, i8* %arrayidx10, align 4
  %conv11 = zext i8 %5 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end8
  store i32 1, i32* %test, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind16 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [128 x i8], [128 x i8]* %ind16, i32 0, i32 100
  %7 = load i8, i8* %arrayidx17, align 4
  %conv18 = zext i8 %7 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.end36

if.then21:                                        ; preds = %if.end15
  %8 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args22 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 1
  %9 = load i8**, i8*** %args22, align 4
  %10 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind23 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [128 x i8], [128 x i8]* %ind23, i32 0, i32 100
  %11 = load i8, i8* %arrayidx24, align 4
  %conv25 = zext i8 %11 to i32
  %shr = ashr i32 %conv25, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx26 = getelementptr inbounds i8*, i8** %9, i32 %sub
  %12 = load i8*, i8** %arrayidx26, align 4
  %call = call i32 @atoi(i8* %12)
  store i32 %call, i32* %targetfd, align 4
  %13 = load i32, i32* %targetfd, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.then21
  %14 = load i8*, i8** %nam.addr, align 4
  %15 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args28 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 1
  %16 = load i8**, i8*** %args28, align 4
  %17 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind29 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [128 x i8], [128 x i8]* %ind29, i32 0, i32 100
  %18 = load i8, i8* %arrayidx30, align 4
  %conv31 = zext i8 %18 to i32
  %shr32 = ashr i32 %conv31, 2
  %sub33 = sub nsw i32 %shr32, 1
  %arrayidx34 = getelementptr inbounds i8*, i8** %16, i32 %sub33
  %19 = load i8*, i8** %arrayidx34, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %19)
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end15
  %20 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind37 = getelementptr inbounds %struct.options, %struct.options* %20, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [128 x i8], [128 x i8]* %ind37, i32 0, i32 99
  %21 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %21 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br i1 %cmp40, label %if.then42, label %if.else63

if.then42:                                        ; preds = %if.end36
  %22 = load i8**, i8*** %args.addr, align 4
  %arrayidx43 = getelementptr inbounds i8*, i8** %22, i32 0
  %23 = load i8*, i8** %arrayidx43, align 4
  %tobool44 = icmp ne i8* %23, null
  br i1 %tobool44, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @tcp_cleanup()
  br label %if.end62

if.else:                                          ; preds = %if.then42
  %24 = load i8**, i8*** %args.addr, align 4
  %arrayidx46 = getelementptr inbounds i8*, i8** %24, i32 0
  %25 = load i8*, i8** %arrayidx46, align 4
  %call47 = call i32 @atoi(i8* %25)
  store i32 %call47, i32* %targetfd, align 4
  %26 = load i32, i32* %targetfd, align 4
  %call48 = call %struct.tcp_session* @zts_byfd(i32 %26)
  store %struct.tcp_session* %call48, %struct.tcp_session** %sess, align 4
  %27 = load i32, i32* %targetfd, align 4
  %tobool49 = icmp ne i32 %27, 0
  br i1 %tobool49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.else
  %28 = load i8*, i8** %nam.addr, align 4
  %29 = load i8**, i8*** %args.addr, align 4
  %arrayidx51 = getelementptr inbounds i8*, i8** %29, i32 0
  %30 = load i8*, i8** %arrayidx51, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* %30)
  store i32 1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.else
  %31 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %tobool53 = icmp ne %struct.tcp_session* %31, null
  br i1 %tobool53, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.end52
  %32 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %32, i32 0, i32 3
  %33 = load i32, i32* %flags, align 4
  %and = and i32 %33, 16
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.then54
  %34 = load i32, i32* %force, align 4
  %tobool56 = icmp ne i32 %34, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %land.lhs.true
  %35 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %land.lhs.true, %if.then54
  %36 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call59 = call i32 @tcp_close(%struct.tcp_session* %36)
  store i32 0, i32* %retval, align 4
  br label %return

if.else60:                                        ; preds = %if.end52
  %37 = load i8*, i8** %nam.addr, align 4
  %38 = load i8**, i8*** %args.addr, align 4
  %arrayidx61 = getelementptr inbounds i8*, i8** %38, i32 0
  %39 = load i8*, i8** %arrayidx61, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* %39)
  store i32 1, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then45
  br label %if.end424

if.else63:                                        ; preds = %if.end36
  %40 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind64 = getelementptr inbounds %struct.options, %struct.options* %40, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [128 x i8], [128 x i8]* %ind64, i32 0, i32 108
  %41 = load i8, i8* %arrayidx65, align 4
  %conv66 = zext i8 %41 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %if.then69, label %if.else152

if.then69:                                        ; preds = %if.else63
  store i32 0, i32* %lport, align 4
  %42 = load i8**, i8*** %args.addr, align 4
  %arrayidx70 = getelementptr inbounds i8*, i8** %42, i32 0
  %43 = load i8*, i8** %arrayidx70, align 4
  %tobool71 = icmp ne i8* %43, null
  br i1 %tobool71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.then69
  %44 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.then69
  %45 = load i8**, i8*** %args.addr, align 4
  %arrayidx74 = getelementptr inbounds i8*, i8** %45, i32 0
  %46 = load i8*, i8** %arrayidx74, align 4
  %call75 = call %struct.servent* @getservbyname(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  store %struct.servent* %call75, %struct.servent** %srv, align 4
  %47 = load %struct.servent*, %struct.servent** %srv, align 4
  %tobool76 = icmp ne %struct.servent* %47, null
  br i1 %tobool76, label %if.then77, label %if.else78

if.then77:                                        ; preds = %if.end73
  %48 = load %struct.servent*, %struct.servent** %srv, align 4
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %48, i32 0, i32 2
  %49 = load i32, i32* %s_port, align 4
  store i32 %49, i32* %lport, align 4
  br label %if.end84

if.else78:                                        ; preds = %if.end73
  %50 = load i8**, i8*** %args.addr, align 4
  %arrayidx79 = getelementptr inbounds i8*, i8** %50, i32 0
  %51 = load i8*, i8** %arrayidx79, align 4
  %call80 = call i32 @atoi(i8* %51)
  %conv81 = trunc i32 %call80 to i16
  %call82 = call zeroext i16 @htons(i16 zeroext %conv81)
  %conv83 = zext i16 %call82 to i32
  store i32 %conv83, i32* %lport, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else78, %if.then77
  %52 = load i32, i32* %lport, align 4
  %tobool85 = icmp ne i32 %52, 0
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end84
  %53 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end84
  %call88 = call %struct.tcp_session* @tcp_socket(i32 2, i32 1, i32 0, i32 1)
  store %struct.tcp_session* %call88, %struct.tcp_session** %sess, align 4
  %54 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %tobool89 = icmp ne %struct.tcp_session* %54, null
  br i1 %tobool89, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end87
  %55 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.end87
  store i32 1, i32* %len, align 4
  %56 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %56, i32 0, i32 0
  %57 = load i32, i32* %fd, align 4
  %58 = bitcast i32* %len to i8*
  %call92 = call i32 @setsockopt(i32 %57, i32 1, i32 10, i8* %58, i32 4)
  %59 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %59, i32 0, i32 1
  %in = bitcast %union.tcp_sockaddr* %sock to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in, i32 0, i32 2
  %call93 = call i32 @inet_aton(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct.in_addr* %sin_addr)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end91
  %60 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end91
  %61 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock97 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %61, i32 0, i32 1
  %in98 = bitcast %union.tcp_sockaddr* %sock97 to %struct.sockaddr_in*
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in98, i32 0, i32 0
  store i16 2, i16* %sin_family, align 4
  %62 = load i32, i32* %lport, align 4
  %conv99 = trunc i32 %62 to i16
  %63 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock100 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %63, i32 0, i32 1
  %in101 = bitcast %union.tcp_sockaddr* %sock100 to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in101, i32 0, i32 1
  store i16 %conv99, i16* %sin_port, align 2
  %64 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd102 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %64, i32 0, i32 0
  %65 = load i32, i32* %fd102, align 4
  %66 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock103 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %66, i32 0, i32 1
  %in104 = bitcast %union.tcp_sockaddr* %sock103 to %struct.sockaddr_in*
  %67 = bitcast %struct.sockaddr_in* %in104 to %struct.sockaddr*
  %call105 = call i32 @bind(i32 %65, %struct.sockaddr* %67, i32 16)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end114

if.then107:                                       ; preds = %if.end96
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %68 = load i32, i32* %lport, align 4
  %conv108 = trunc i32 %68 to i16
  %call109 = call zeroext i16 @ntohs(i16 zeroext %conv108)
  %conv110 = zext i16 %call109 to i32
  call void @convbase(i8* %arraydecay, i32 %conv110, i32 10)
  %69 = load i8*, i8** %nam.addr, align 4
  %arraydecay111 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call112 = call i32* @__errno_location()
  %70 = load i32, i32* %call112, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay111, i32 %70)
  %71 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call113 = call i32 @tcp_close(%struct.tcp_session* %71)
  store i32 1, i32* %retval, align 4
  br label %return

if.end114:                                        ; preds = %if.end96
  %72 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd115 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %72, i32 0, i32 0
  %73 = load i32, i32* %fd115, align 4
  %call116 = call i32 @listen(i32 %73, i32 1)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end121

if.then118:                                       ; preds = %if.end114
  %74 = load i8*, i8** %nam.addr, align 4
  %call119 = call i32* @__errno_location()
  %75 = load i32, i32* %call119, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i32 %75)
  %76 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call120 = call i32 @tcp_close(%struct.tcp_session* %76)
  store i32 1, i32* %retval, align 4
  br label %return

if.end121:                                        ; preds = %if.end114
  %77 = load i32, i32* %targetfd, align 4
  %tobool122 = icmp ne i32 %77, 0
  br i1 %tobool122, label %if.then123, label %if.else127

if.then123:                                       ; preds = %if.end121
  %78 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd124 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %78, i32 0, i32 0
  %79 = load i32, i32* %fd124, align 4
  %80 = load i32, i32* %targetfd, align 4
  %call125 = call i32 @redup(i32 %79, i32 %80)
  %81 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd126 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %81, i32 0, i32 0
  store i32 %call125, i32* %fd126, align 4
  br label %if.end131

if.else127:                                       ; preds = %if.end121
  %82 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd128 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %82, i32 0, i32 0
  %83 = load i32, i32* %fd128, align 4
  %call129 = call i32 @movefd(i32 %83)
  %84 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd130 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %84, i32 0, i32 0
  store i32 %call129, i32* %fd130, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else127, %if.then123
  %85 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd132 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %85, i32 0, i32 0
  %86 = load i32, i32* %fd132, align 4
  %cmp133 = icmp eq i32 %86, -1
  br i1 %cmp133, label %if.then135, label %if.end139

if.then135:                                       ; preds = %if.end131
  %87 = load i8*, i8** %nam.addr, align 4
  %88 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd136 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %88, i32 0, i32 0
  %89 = load i32, i32* %fd136, align 4
  %call137 = call i32* @__errno_location()
  %90 = load i32, i32* %call137, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i32 %89, i32 %90)
  %91 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call138 = call i32 @tcp_close(%struct.tcp_session* %91)
  store i32 1, i32* %retval, align 4
  br label %return

if.end139:                                        ; preds = %if.end131
  %92 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd140 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %92, i32 0, i32 0
  %93 = load i32, i32* %fd140, align 4
  %call141 = call %struct.param* @setiparam_no_convert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* %verbose, align 4
  %tobool142 = icmp ne i32 %94, 0
  br i1 %tobool142, label %if.then143, label %if.end151

if.then143:                                       ; preds = %if.end139
  %95 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock144 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %95, i32 0, i32 1
  %in145 = bitcast %union.tcp_sockaddr* %sock144 to %struct.sockaddr_in*
  %sin_port146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in145, i32 0, i32 1
  %96 = load i16, i16* %sin_port146, align 2
  %call147 = call zeroext i16 @ntohs(i16 zeroext %96)
  %conv148 = zext i16 %call147 to i32
  %97 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd149 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %97, i32 0, i32 0
  %98 = load i32, i32* %fd149, align 4
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i32 %conv148, i32 %98)
  br label %if.end151

if.end151:                                        ; preds = %if.then143, %if.end139
  store i32 0, i32* %retval, align 4
  br label %return

if.else152:                                       ; preds = %if.else63
  %99 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind153 = getelementptr inbounds %struct.options, %struct.options* %99, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [128 x i8], [128 x i8]* %ind153, i32 0, i32 97
  %100 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %100 to i32
  %cmp156 = icmp ne i32 %conv155, 0
  br i1 %cmp156, label %if.then158, label %if.else234

if.then158:                                       ; preds = %if.else152
  %101 = load i8**, i8*** %args.addr, align 4
  %arrayidx159 = getelementptr inbounds i8*, i8** %101, i32 0
  %102 = load i8*, i8** %arrayidx159, align 4
  %tobool160 = icmp ne i8* %102, null
  br i1 %tobool160, label %if.end162, label %if.then161

if.then161:                                       ; preds = %if.then158
  %103 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end162:                                        ; preds = %if.then158
  %104 = load i8**, i8*** %args.addr, align 4
  %arrayidx163 = getelementptr inbounds i8*, i8** %104, i32 0
  %105 = load i8*, i8** %arrayidx163, align 4
  %call164 = call i32 @atoi(i8* %105)
  store i32 %call164, i32* %lfd, align 4
  %106 = load i32, i32* %lfd, align 4
  %tobool165 = icmp ne i32 %106, 0
  br i1 %tobool165, label %if.end167, label %if.then166

if.then166:                                       ; preds = %if.end162
  %107 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end167:                                        ; preds = %if.end162
  %108 = load i32, i32* %lfd, align 4
  %call168 = call %struct.tcp_session* @zts_byfd(i32 %108)
  store %struct.tcp_session* %call168, %struct.tcp_session** %sess, align 4
  %109 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %tobool169 = icmp ne %struct.tcp_session* %109, null
  br i1 %tobool169, label %if.end172, label %if.then170

if.then170:                                       ; preds = %if.end167
  %110 = load i8*, i8** %nam.addr, align 4
  %111 = load i8**, i8*** %args.addr, align 4
  %arrayidx171 = getelementptr inbounds i8*, i8** %111, i32 0
  %112 = load i8*, i8** %arrayidx171, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0), i8* %112)
  store i32 1, i32* %retval, align 4
  br label %return

if.end172:                                        ; preds = %if.end167
  %113 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags173 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %113, i32 0, i32 3
  %114 = load i32, i32* %flags173, align 4
  %and174 = and i32 %114, 1
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.end177, label %if.then176

if.then176:                                       ; preds = %if.end172
  %115 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end177:                                        ; preds = %if.end172
  %116 = load i32, i32* %test, align 4
  %tobool178 = icmp ne i32 %116, 0
  br i1 %tobool178, label %if.then179, label %if.end192

if.then179:                                       ; preds = %if.end177
  %117 = load i32, i32* %lfd, align 4
  %fd180 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pfd, i32 0, i32 0
  store i32 %117, i32* %fd180, align 4
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pfd, i32 0, i32 1
  store i16 1, i16* %events, align 4
  %call181 = call i32 @poll(%struct.pollfd* %pfd, i32 1, i32 0)
  store i32 %call181, i32* %ret, align 4
  %cmp182 = icmp eq i32 %call181, 0
  br i1 %cmp182, label %if.then184, label %if.else185

if.then184:                                       ; preds = %if.then179
  store i32 1, i32* %retval, align 4
  br label %return

if.else185:                                       ; preds = %if.then179
  %118 = load i32, i32* %ret, align 4
  %cmp186 = icmp eq i32 %118, -1
  br i1 %cmp186, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.else185
  %119 = load i8*, i8** %nam.addr, align 4
  %call189 = call i32* @__errno_location()
  %120 = load i32, i32* %call189, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %120)
  store i32 1, i32* %retval, align 4
  br label %return

if.end190:                                        ; preds = %if.else185
  br label %if.end191

if.end191:                                        ; preds = %if.end190
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.end177
  %call193 = call %struct.tcp_session* @zts_alloc(i32 2)
  store %struct.tcp_session* %call193, %struct.tcp_session** %sess, align 4
  store i32 16, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end192
  %121 = load i32, i32* %lfd, align 4
  %122 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %peer = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %122, i32 0, i32 2
  %in194 = bitcast %union.tcp_sockaddr* %peer to %struct.sockaddr_in*
  %123 = bitcast %struct.sockaddr_in* %in194 to %struct.sockaddr*
  %call195 = call i32 @accept(i32 %121, %struct.sockaddr* %123, i32* %len)
  store i32 %call195, i32* %rfd, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %124 = load i32, i32* %rfd, align 4
  %cmp196 = icmp slt i32 %124, 0
  br i1 %cmp196, label %land.lhs.true198, label %land.end

land.lhs.true198:                                 ; preds = %do.cond
  %call199 = call i32* @__errno_location()
  %125 = load i32, i32* %call199, align 4
  %cmp200 = icmp eq i32 %125, 4
  br i1 %cmp200, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true198
  %126 = load i32, i32* @errflag, align 4
  %tobool202 = icmp ne i32 %126, 0
  %lnot = xor i1 %tobool202, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true198, %do.cond
  %127 = phi i1 [ false, %land.lhs.true198 ], [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %127, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %128 = load i32, i32* %rfd, align 4
  %cmp203 = icmp eq i32 %128, -1
  br i1 %cmp203, label %if.then205, label %if.end208

if.then205:                                       ; preds = %do.end
  %129 = load i8*, i8** %nam.addr, align 4
  %call206 = call i32* @__errno_location()
  %130 = load i32, i32* %call206, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), i32 %130)
  %131 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call207 = call i32 @tcp_close(%struct.tcp_session* %131)
  store i32 1, i32* %retval, align 4
  br label %return

if.end208:                                        ; preds = %do.end
  %132 = load i32, i32* %rfd, align 4
  call void @addmodulefd(i32 %132, i32 3)
  %133 = load i32, i32* %targetfd, align 4
  %tobool209 = icmp ne i32 %133, 0
  br i1 %tobool209, label %if.then210, label %if.else219

if.then210:                                       ; preds = %if.end208
  %134 = load i32, i32* %rfd, align 4
  %135 = load i32, i32* %targetfd, align 4
  %call211 = call i32 @redup(i32 %134, i32 %135)
  %136 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd212 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %136, i32 0, i32 0
  store i32 %call211, i32* %fd212, align 4
  %137 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd213 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %137, i32 0, i32 0
  %138 = load i32, i32* %fd213, align 4
  %cmp214 = icmp slt i32 %138, 0
  br i1 %cmp214, label %if.then216, label %if.end218

if.then216:                                       ; preds = %if.then210
  %139 = load i8*, i8** %nam.addr, align 4
  %140 = load i32, i32* %targetfd, align 4
  %call217 = call i32* @__errno_location()
  %141 = load i32, i32* %call217, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0), i32 %140, i32 %141)
  store i32 1, i32* %retval, align 4
  br label %return

if.end218:                                        ; preds = %if.then210
  br label %if.end221

if.else219:                                       ; preds = %if.end208
  %142 = load i32, i32* %rfd, align 4
  %143 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd220 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %143, i32 0, i32 0
  store i32 %142, i32* %fd220, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else219, %if.end218
  %144 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd222 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %144, i32 0, i32 0
  %145 = load i32, i32* %fd222, align 4
  %call223 = call %struct.param* @setiparam_no_convert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* %verbose, align 4
  %tobool224 = icmp ne i32 %146, 0
  br i1 %tobool224, label %if.then225, label %if.end233

if.then225:                                       ; preds = %if.end221
  %147 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %peer226 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %147, i32 0, i32 2
  %in227 = bitcast %union.tcp_sockaddr* %peer226 to %struct.sockaddr_in*
  %sin_port228 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in227, i32 0, i32 1
  %148 = load i16, i16* %sin_port228, align 2
  %call229 = call zeroext i16 @ntohs(i16 zeroext %148)
  %conv230 = zext i16 %call229 to i32
  %149 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd231 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %149, i32 0, i32 0
  %150 = load i32, i32* %fd231, align 4
  %call232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 %conv230, i32 %150)
  br label %if.end233

if.end233:                                        ; preds = %if.then225, %if.end221
  br label %if.end422

if.else234:                                       ; preds = %if.else152
  %151 = load i8**, i8*** %args.addr, align 4
  %arrayidx235 = getelementptr inbounds i8*, i8** %151, i32 0
  %152 = load i8*, i8** %arrayidx235, align 4
  %tobool236 = icmp ne i8* %152, null
  br i1 %tobool236, label %if.else330, label %if.then237

if.then237:                                       ; preds = %if.else234
  %153 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  %list = bitcast %union.linkroot* %153 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %154 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %154, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then237
  %155 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool238 = icmp ne %struct.linknode* %155, null
  br i1 %tobool238, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %156 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %156, i32 0, i32 2
  %157 = load i8*, i8** %dat, align 4
  %158 = bitcast i8* %157 to %struct.tcp_session*
  store %struct.tcp_session* %158, %struct.tcp_session** %sess, align 4
  %159 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd239 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %159, i32 0, i32 0
  %160 = load i32, i32* %fd239, align 4
  %cmp240 = icmp ne i32 %160, -1
  br i1 %cmp240, label %if.then242, label %if.end329

if.then242:                                       ; preds = %for.body
  %161 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock243 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %161, i32 0, i32 1
  %in244 = bitcast %union.tcp_sockaddr* %sock243 to %struct.sockaddr_in*
  %sin_addr245 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in244, i32 0, i32 2
  %162 = bitcast %struct.in_addr* %sin_addr245 to i8*
  %call246 = call %struct.hostent* @gethostbyaddr(i8* %162, i32 4, i32 2)
  store %struct.hostent* %call246, %struct.hostent** %zthost, align 4
  %163 = load %struct.hostent*, %struct.hostent** %zthost, align 4
  %tobool247 = icmp ne %struct.hostent* %163, null
  br i1 %tobool247, label %if.then248, label %if.else249

if.then248:                                       ; preds = %if.then242
  %164 = load %struct.hostent*, %struct.hostent** %zthost, align 4
  %h_name = getelementptr inbounds %struct.hostent, %struct.hostent* %164, i32 0, i32 0
  %165 = load i8*, i8** %h_name, align 4
  store i8* %165, i8** %localname, align 4
  br label %if.end254

if.else249:                                       ; preds = %if.then242
  %166 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock250 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %166, i32 0, i32 1
  %in251 = bitcast %union.tcp_sockaddr* %sock250 to %struct.sockaddr_in*
  %sin_addr252 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in251, i32 0, i32 2
  %call253 = call i8* @inet_ntoa(%struct.in_addr* byval align 4 %sin_addr252)
  store i8* %call253, i8** %localname, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.else249, %if.then248
  %167 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %peer255 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %167, i32 0, i32 2
  %in256 = bitcast %union.tcp_sockaddr* %peer255 to %struct.sockaddr_in*
  %sin_addr257 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in256, i32 0, i32 2
  %168 = bitcast %struct.in_addr* %sin_addr257 to i8*
  %call258 = call %struct.hostent* @gethostbyaddr(i8* %168, i32 4, i32 2)
  store %struct.hostent* %call258, %struct.hostent** %ztpeer, align 4
  %169 = load %struct.hostent*, %struct.hostent** %ztpeer, align 4
  %tobool259 = icmp ne %struct.hostent* %169, null
  br i1 %tobool259, label %if.then260, label %if.else262

if.then260:                                       ; preds = %if.end254
  %170 = load %struct.hostent*, %struct.hostent** %ztpeer, align 4
  %h_name261 = getelementptr inbounds %struct.hostent, %struct.hostent* %170, i32 0, i32 0
  %171 = load i8*, i8** %h_name261, align 4
  store i8* %171, i8** %remotename, align 4
  br label %if.end267

if.else262:                                       ; preds = %if.end254
  %172 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %peer263 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %172, i32 0, i32 2
  %in264 = bitcast %union.tcp_sockaddr* %peer263 to %struct.sockaddr_in*
  %sin_addr265 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in264, i32 0, i32 2
  %call266 = call i8* @inet_ntoa(%struct.in_addr* byval align 4 %sin_addr265)
  store i8* %call266, i8** %remotename, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.else262, %if.then260
  %173 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind268 = getelementptr inbounds %struct.options, %struct.options* %173, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [128 x i8], [128 x i8]* %ind268, i32 0, i32 76
  %174 = load i8, i8* %arrayidx269, align 4
  %conv270 = zext i8 %174 to i32
  %cmp271 = icmp ne i32 %conv270, 0
  br i1 %cmp271, label %if.then273, label %if.else304

if.then273:                                       ; preds = %if.end267
  %175 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags274 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %175, i32 0, i32 3
  %176 = load i32, i32* %flags274, align 4
  %and275 = and i32 %176, 16
  %tobool276 = icmp ne i32 %and275, 0
  br i1 %tobool276, label %if.then277, label %if.else278

if.then277:                                       ; preds = %if.then273
  store i32 90, i32* %schar, align 4
  br label %if.end291

if.else278:                                       ; preds = %if.then273
  %177 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags279 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %177, i32 0, i32 3
  %178 = load i32, i32* %flags279, align 4
  %and280 = and i32 %178, 1
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.then282, label %if.else283

if.then282:                                       ; preds = %if.else278
  store i32 76, i32* %schar, align 4
  br label %if.end290

if.else283:                                       ; preds = %if.else278
  %179 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags284 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %179, i32 0, i32 3
  %180 = load i32, i32* %flags284, align 4
  %and285 = and i32 %180, 2
  %tobool286 = icmp ne i32 %and285, 0
  br i1 %tobool286, label %if.then287, label %if.else288

if.then287:                                       ; preds = %if.else283
  store i32 73, i32* %schar, align 4
  br label %if.end289

if.else288:                                       ; preds = %if.else283
  store i32 79, i32* %schar, align 4
  br label %if.end289

if.end289:                                        ; preds = %if.else288, %if.then287
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %if.then282
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.then277
  %181 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd292 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %181, i32 0, i32 0
  %182 = load i32, i32* %fd292, align 4
  %183 = load i32, i32* %schar, align 4
  %184 = load i8*, i8** %localname, align 4
  %185 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock293 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %185, i32 0, i32 1
  %in294 = bitcast %union.tcp_sockaddr* %sock293 to %struct.sockaddr_in*
  %sin_port295 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in294, i32 0, i32 1
  %186 = load i16, i16* %sin_port295, align 2
  %call296 = call zeroext i16 @ntohs(i16 zeroext %186)
  %conv297 = zext i16 %call296 to i32
  %187 = load i8*, i8** %remotename, align 4
  %188 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %peer298 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %188, i32 0, i32 2
  %in299 = bitcast %union.tcp_sockaddr* %peer298 to %struct.sockaddr_in*
  %sin_port300 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in299, i32 0, i32 1
  %189 = load i16, i16* %sin_port300, align 2
  %call301 = call zeroext i16 @ntohs(i16 zeroext %189)
  %conv302 = zext i16 %call301 to i32
  %call303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 %182, i32 %183, i8* %184, i32 %conv297, i8* %187, i32 %conv302)
  br label %if.end328

if.else304:                                       ; preds = %if.end267
  %190 = load i8*, i8** %localname, align 4
  %191 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %sock305 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %191, i32 0, i32 1
  %in306 = bitcast %union.tcp_sockaddr* %sock305 to %struct.sockaddr_in*
  %sin_port307 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in306, i32 0, i32 1
  %192 = load i16, i16* %sin_port307, align 2
  %call308 = call zeroext i16 @ntohs(i16 zeroext %192)
  %conv309 = zext i16 %call308 to i32
  %193 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags310 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %193, i32 0, i32 3
  %194 = load i32, i32* %flags310, align 4
  %and311 = and i32 %194, 1
  %tobool312 = icmp ne i32 %and311, 0
  br i1 %tobool312, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else304
  br label %cond.end

cond.false:                                       ; preds = %if.else304
  %195 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags313 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %195, i32 0, i32 3
  %196 = load i32, i32* %flags313, align 4
  %and314 = and i32 %196, 2
  %tobool315 = icmp ne i32 %and314, 0
  %cond = select i1 %tobool315, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond316 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %197 = load i8*, i8** %remotename, align 4
  %198 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %peer317 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %198, i32 0, i32 2
  %in318 = bitcast %union.tcp_sockaddr* %peer317 to %struct.sockaddr_in*
  %sin_port319 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %in318, i32 0, i32 1
  %199 = load i16, i16* %sin_port319, align 2
  %call320 = call zeroext i16 @ntohs(i16 zeroext %199)
  %conv321 = zext i16 %call320 to i32
  %200 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd322 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %200, i32 0, i32 0
  %201 = load i32, i32* %fd322, align 4
  %202 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %flags323 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %202, i32 0, i32 3
  %203 = load i32, i32* %flags323, align 4
  %and324 = and i32 %203, 16
  %tobool325 = icmp ne i32 %and324, 0
  %cond326 = select i1 %tobool325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0)
  %call327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i8* %190, i32 %conv309, i8* %cond316, i8* %197, i32 %conv321, i32 %201, i8* %cond326)
  br label %if.end328

if.end328:                                        ; preds = %cond.end, %if.end291
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end329
  %204 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %204, i32 0, i32 0
  %205 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %205, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

if.else330:                                       ; preds = %if.else234
  %206 = load i8**, i8*** %args.addr, align 4
  %arrayidx331 = getelementptr inbounds i8*, i8** %206, i32 1
  %207 = load i8*, i8** %arrayidx331, align 4
  %tobool332 = icmp ne i8* %207, null
  br i1 %tobool332, label %if.else336, label %if.then333

if.then333:                                       ; preds = %if.else330
  %call334 = call zeroext i16 @htons(i16 zeroext 23)
  %conv335 = zext i16 %call334 to i32
  store i32 %conv335, i32* %destport, align 4
  br label %if.end349

if.else336:                                       ; preds = %if.else330
  %208 = load i8**, i8*** %args.addr, align 4
  %arrayidx337 = getelementptr inbounds i8*, i8** %208, i32 1
  %209 = load i8*, i8** %arrayidx337, align 4
  %call338 = call %struct.servent* @getservbyname(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  store %struct.servent* %call338, %struct.servent** %srv, align 4
  %210 = load %struct.servent*, %struct.servent** %srv, align 4
  %tobool339 = icmp ne %struct.servent* %210, null
  br i1 %tobool339, label %if.then340, label %if.else342

if.then340:                                       ; preds = %if.else336
  %211 = load %struct.servent*, %struct.servent** %srv, align 4
  %s_port341 = getelementptr inbounds %struct.servent, %struct.servent* %211, i32 0, i32 2
  %212 = load i32, i32* %s_port341, align 4
  store i32 %212, i32* %destport, align 4
  br label %if.end348

if.else342:                                       ; preds = %if.else336
  %213 = load i8**, i8*** %args.addr, align 4
  %arrayidx343 = getelementptr inbounds i8*, i8** %213, i32 1
  %214 = load i8*, i8** %arrayidx343, align 4
  %call344 = call i32 @atoi(i8* %214)
  %conv345 = trunc i32 %call344 to i16
  %call346 = call zeroext i16 @htons(i16 zeroext %conv345)
  %conv347 = zext i16 %call346 to i32
  store i32 %conv347, i32* %destport, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.else342, %if.then340
  br label %if.end349

if.end349:                                        ; preds = %if.end348, %if.then333
  br label %if.end350

if.end350:                                        ; preds = %if.end349
  %215 = load i8**, i8*** %args.addr, align 4
  %arrayidx351 = getelementptr inbounds i8*, i8** %215, i32 0
  %216 = load i8*, i8** %arrayidx351, align 4
  %call352 = call i8* @ztrdup(i8* %216)
  store i8* %call352, i8** %desthost, align 4
  %217 = load i8*, i8** %desthost, align 4
  %call353 = call %struct.hostent* @zsh_getipnodebyname(i8* %217, i32 2, i32 0, i32* %herrno)
  store %struct.hostent* %call353, %struct.hostent** %zthost, align 4
  %218 = load %struct.hostent*, %struct.hostent** %zthost, align 4
  %tobool354 = icmp ne %struct.hostent* %218, null
  br i1 %tobool354, label %lor.lhs.false, label %if.then356

lor.lhs.false:                                    ; preds = %if.end350
  %219 = load i32, i32* @errflag, align 4
  %tobool355 = icmp ne i32 %219, 0
  br i1 %tobool355, label %if.then356, label %if.end357

if.then356:                                       ; preds = %lor.lhs.false, %if.end350
  %220 = load i8*, i8** %nam.addr, align 4
  %221 = load i8*, i8** %desthost, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %220, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i8* %221)
  %222 = load i8*, i8** %desthost, align 4
  call void @zsfree(i8* %222)
  store i32 1, i32* %retval, align 4
  br label %return

if.end357:                                        ; preds = %lor.lhs.false
  %call358 = call %struct.tcp_session* @tcp_socket(i32 2, i32 1, i32 0, i32 0)
  store %struct.tcp_session* %call358, %struct.tcp_session** %sess, align 4
  %223 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %tobool359 = icmp ne %struct.tcp_session* %223, null
  br i1 %tobool359, label %if.end361, label %if.then360

if.then360:                                       ; preds = %if.end357
  %224 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %224, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0))
  %225 = load i8*, i8** %desthost, align 4
  call void @zsfree(i8* %225)
  store i32 1, i32* %retval, align 4
  br label %return

if.end361:                                        ; preds = %if.end357
  store i32 1, i32* %len, align 4
  %226 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd362 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %226, i32 0, i32 0
  %227 = load i32, i32* %fd362, align 4
  %228 = bitcast i32* %len to i8*
  %call363 = call i32 @setsockopt(i32 %227, i32 1, i32 10, i8* %228, i32 4)
  %229 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd364 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %229, i32 0, i32 0
  %230 = load i32, i32* %fd364, align 4
  %cmp365 = icmp slt i32 %230, 0
  br i1 %cmp365, label %if.then367, label %if.end370

if.then367:                                       ; preds = %if.end361
  %231 = load i8*, i8** %nam.addr, align 4
  %call368 = call i32* @__errno_location()
  %232 = load i32, i32* %call368, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0), i32 %232)
  %233 = load i8*, i8** %desthost, align 4
  call void @zsfree(i8* %233)
  %234 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call369 = call i32 @zts_delete(%struct.tcp_session* %234)
  store i32 1, i32* %retval, align 4
  br label %return

if.end370:                                        ; preds = %if.end361
  %235 = load %struct.hostent*, %struct.hostent** %zthost, align 4
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %235, i32 0, i32 4
  %236 = load i8**, i8*** %h_addr_list, align 4
  store i8** %236, i8*** %addrp, align 4
  br label %for.cond371

for.cond371:                                      ; preds = %for.inc394, %if.end370
  %237 = load i32, i32* %err, align 4
  %tobool372 = icmp ne i32 %237, 0
  br i1 %tobool372, label %land.rhs373, label %land.end375

land.rhs373:                                      ; preds = %for.cond371
  %238 = load i8**, i8*** %addrp, align 4
  %239 = load i8*, i8** %238, align 4
  %tobool374 = icmp ne i8* %239, null
  br label %land.end375

land.end375:                                      ; preds = %land.rhs373, %for.cond371
  %240 = phi i1 [ false, %for.cond371 ], [ %tobool374, %land.rhs373 ]
  br i1 %240, label %for.body376, label %for.end395

for.body376:                                      ; preds = %land.end375
  %241 = load %struct.hostent*, %struct.hostent** %zthost, align 4
  %h_length = getelementptr inbounds %struct.hostent, %struct.hostent* %241, i32 0, i32 3
  %242 = load i32, i32* %h_length, align 4
  %cmp377 = icmp ne i32 %242, 4
  br i1 %cmp377, label %if.then379, label %if.end380

if.then379:                                       ; preds = %for.body376
  %243 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end380

if.end380:                                        ; preds = %if.then379, %for.body376
  br label %do.body381

do.body381:                                       ; preds = %land.end392, %if.end380
  %244 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %245 = load i8**, i8*** %addrp, align 4
  %246 = load i8*, i8** %245, align 4
  %247 = load %struct.hostent*, %struct.hostent** %zthost, align 4
  %248 = load i32, i32* %destport, align 4
  %call382 = call i32 @tcp_connect(%struct.tcp_session* %244, i8* %246, %struct.hostent* %247, i32 %248)
  store i32 %call382, i32* %err, align 4
  br label %do.cond383

do.cond383:                                       ; preds = %do.body381
  %249 = load i32, i32* %err, align 4
  %tobool384 = icmp ne i32 %249, 0
  br i1 %tobool384, label %land.lhs.true385, label %land.end392

land.lhs.true385:                                 ; preds = %do.cond383
  %call386 = call i32* @__errno_location()
  %250 = load i32, i32* %call386, align 4
  %cmp387 = icmp eq i32 %250, 4
  br i1 %cmp387, label %land.rhs389, label %land.end392

land.rhs389:                                      ; preds = %land.lhs.true385
  %251 = load i32, i32* @errflag, align 4
  %tobool390 = icmp ne i32 %251, 0
  %lnot391 = xor i1 %tobool390, true
  br label %land.end392

land.end392:                                      ; preds = %land.rhs389, %land.lhs.true385, %do.cond383
  %252 = phi i1 [ false, %land.lhs.true385 ], [ false, %do.cond383 ], [ %lnot391, %land.rhs389 ]
  br i1 %252, label %do.body381, label %do.end393

do.end393:                                        ; preds = %land.end392
  br label %for.inc394

for.inc394:                                       ; preds = %do.end393
  %253 = load i8**, i8*** %addrp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %253, i32 1
  store i8** %incdec.ptr, i8*** %addrp, align 4
  br label %for.cond371

for.end395:                                       ; preds = %land.end375
  %254 = load i32, i32* %err, align 4
  %tobool396 = icmp ne i32 %254, 0
  br i1 %tobool396, label %if.then397, label %if.else400

if.then397:                                       ; preds = %for.end395
  %255 = load i8*, i8** %nam.addr, align 4
  %call398 = call i32* @__errno_location()
  %256 = load i32, i32* %call398, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %255, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 %256)
  %257 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call399 = call i32 @tcp_close(%struct.tcp_session* %257)
  %258 = load i8*, i8** %desthost, align 4
  call void @zsfree(i8* %258)
  store i32 1, i32* %retval, align 4
  br label %return

if.else400:                                       ; preds = %for.end395
  %259 = load i32, i32* %targetfd, align 4
  %tobool401 = icmp ne i32 %259, 0
  br i1 %tobool401, label %if.then402, label %if.end413

if.then402:                                       ; preds = %if.else400
  %260 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd403 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %260, i32 0, i32 0
  %261 = load i32, i32* %fd403, align 4
  %262 = load i32, i32* %targetfd, align 4
  %call404 = call i32 @redup(i32 %261, i32 %262)
  %263 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd405 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %263, i32 0, i32 0
  store i32 %call404, i32* %fd405, align 4
  %264 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd406 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %264, i32 0, i32 0
  %265 = load i32, i32* %fd406, align 4
  %cmp407 = icmp slt i32 %265, 0
  br i1 %cmp407, label %if.then409, label %if.end412

if.then409:                                       ; preds = %if.then402
  %266 = load i8*, i8** %nam.addr, align 4
  %267 = load i32, i32* %targetfd, align 4
  %call410 = call i32* @__errno_location()
  %268 = load i32, i32* %call410, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %266, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0), i32 %267, i32 %268)
  %269 = load i8*, i8** %desthost, align 4
  call void @zsfree(i8* %269)
  %270 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %call411 = call i32 @tcp_close(%struct.tcp_session* %270)
  store i32 1, i32* %retval, align 4
  br label %return

if.end412:                                        ; preds = %if.then402
  br label %if.end413

if.end413:                                        ; preds = %if.end412, %if.else400
  %271 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd414 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %271, i32 0, i32 0
  %272 = load i32, i32* %fd414, align 4
  %call415 = call %struct.param* @setiparam_no_convert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %272)
  %273 = load i32, i32* %verbose, align 4
  %tobool416 = icmp ne i32 %273, 0
  br i1 %tobool416, label %if.then417, label %if.end420

if.then417:                                       ; preds = %if.end413
  %274 = load i8*, i8** %desthost, align 4
  %275 = load i32, i32* %destport, align 4
  %276 = load %struct.tcp_session*, %struct.tcp_session** %sess, align 4
  %fd418 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %276, i32 0, i32 0
  %277 = load i32, i32* %fd418, align 4
  %call419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), i8* %274, i32 %275, i32 %277)
  br label %if.end420

if.end420:                                        ; preds = %if.then417, %if.end413
  br label %if.end421

if.end421:                                        ; preds = %if.end420
  %278 = load i8*, i8** %desthost, align 4
  call void @zsfree(i8* %278)
  br label %if.end422

if.end422:                                        ; preds = %if.end421, %if.end233
  br label %if.end423

if.end423:                                        ; preds = %if.end422
  br label %if.end424

if.end424:                                        ; preds = %if.end423, %if.end62
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end424, %if.then409, %if.then397, %if.then367, %if.then360, %if.then356, %for.end, %if.then216, %if.then205, %if.then188, %if.then184, %if.then176, %if.then170, %if.then166, %if.then161, %if.end151, %if.then135, %if.then118, %if.then107, %if.then95, %if.then90, %if.then86, %if.then72, %if.else60, %if.end58, %if.then57, %if.then50, %if.then27
  %279 = load i32, i32* %retval, align 4
  ret i32 %279
}

declare i32 @atoi(i8*) #1

declare void @zwarnnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal %struct.tcp_session* @zts_byfd(i32 %fd) #0 {
entry:
  %retval = alloca %struct.tcp_session*, align 4
  %fd.addr = alloca i32, align 4
  %node = alloca %struct.linknode*, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @ztcp_sessions, align 4
  %list = bitcast %union.linkroot* %0 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %1 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool = icmp ne %struct.linknode* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %3, i32 0, i32 2
  %4 = load i8*, i8** %dat, align 4
  %5 = bitcast i8* %4 to %struct.tcp_session*
  %fd1 = getelementptr inbounds %struct.tcp_session, %struct.tcp_session* %5, i32 0, i32 0
  %6 = load i32, i32* %fd1, align 4
  %7 = load i32, i32* %fd.addr, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat2 = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 2
  %9 = load i8*, i8** %dat2, align 4
  %10 = bitcast i8* %9 to %struct.tcp_session*
  store %struct.tcp_session* %10, %struct.tcp_session** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %11, i32 0, i32 0
  %12 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %12, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.tcp_session* null, %struct.tcp_session** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct.tcp_session*, %struct.tcp_session** %retval, align 4
  ret %struct.tcp_session* %13
}

declare %struct.servent* @getservbyname(i8*, i8*) #1

declare zeroext i16 @htons(i16 zeroext) #1

declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare i32 @inet_aton(i8*, %struct.in_addr*) #1

declare i32 @bind(i32, %struct.sockaddr*, i32) #1

declare void @convbase(i8*, i32, i32) #1

declare zeroext i16 @ntohs(i16 zeroext) #1

declare i32 @listen(i32, i32) #1

declare i32 @redup(i32, i32) #1

declare i32 @movefd(i32) #1

declare %struct.param* @setiparam_no_convert(i8*, i32) #1

declare i32 @printf(i8*, ...) #1

declare i32 @poll(%struct.pollfd*, i32, i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare void @zerrnam(i8*, i8*, ...) #1

declare %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare i8* @inet_ntoa(%struct.in_addr* byval align 4) #1

declare i8* @ztrdup(i8*) #1

declare void @zsfree(i8*) #1

declare void @zfree(i8*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
