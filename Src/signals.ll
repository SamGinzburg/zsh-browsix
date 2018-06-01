; ModuleID = 'signals.c'
source_filename = "signals.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.execstack = type { %struct.execstack*, i32, i32, i32, i32, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.job = type { i32, i32, i32, i8*, %struct.process*, %struct.process*, %union.linkroot*, i32, %struct.ttyinfo* }
%struct.process = type { %struct.process*, i32, [80 x i8], i32, %struct.rusage, %struct.timeval, %struct.timeval }
%struct.rusage = type { %struct.timeval, %struct.timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.timeval = type { i32, i32 }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.__sigset_t = type { [32 x i32] }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hookdef = type { %struct.hookdef*, i8*, {}*, i32, %union.linkroot* }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.param = type { %struct.hashnode, %union.anon.11, %union.anon.12, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.11 = type { double }
%union.anon.12 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.timezone = type { i32, i32 }
%struct.savetrap = type { i32, i32, i32, i32, i8* }

@opts = external global [181 x i8], align 1
@sigtrapped = common global [34 x i32] zeroinitializer, align 4
@cmdoutpid = external global i32, align 4
@cmdoutval = external global i32, align 4
@exstack = external global %struct.execstack*, align 4
@use_cmdoutval = external global i32, align 4
@.str = private unnamed_addr constant [16 x i8] c"wait failed: %e\00", align 1
@queueing_enabled = common global i32 0, align 4
@list_pipe = external global i32, align 4
@thisjob = external global i32, align 4
@jobtab = external global %struct.job*, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"job can't be suspended\00", align 1
@mypgrp = external global i32, align 4
@queue_front = common global i32 0, align 4
@queue_rear = common global i32 0, align 4
@signal_mask_queue = common global [128 x %struct.__sigset_t] zeroinitializer, align 4
@signal_queue = common global [128 x i32] zeroinitializer, align 4
@last_signal = common global i32 0, align 4
@SHTTY = external global i32, align 4
@stopmsg = external global i32, align 4
@noerrexit = external global i32, align 4
@chline = external global i8*, align 4
@simple_pline = external global i32, align 4
@loops = external global i32, align 4
@breaks = external global i32, align 4
@errflag = external global i32, align 4
@lastval = external global i32, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"TMOUT\00", align 1
@noerrs = external global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@maxjob = external global i32, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"warning: %d jobs SIGHUPed\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"can't trap SIG%s in interactive shells\00", align 1
@sigs = external global [35 x i8*], align 4
@siglists = common global [34 x %struct.eprog*] zeroinitializer, align 4
@nsigtrapped = common global i32 0, align 4
@exit_trap_posix = internal global i32 0, align 4
@locallevel = external global i32, align 4
@shfunctab = external global %struct.hashtable*, align 4
@dontsavetrap = internal global i32 0, align 4
@forklevel = external global i32, align 4
@intrap = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"TRAPEXIT\00", align 1
@savetraps = internal global %union.linkroot* null, align 4
@trap_queueing_enabled = common global i32 0, align 4
@trap_queue_front = common global i32 0, align 4
@trap_queue_rear = common global i32 0, align 4
@trap_queue = common global [128 x i32] zeroinitializer, align 4
@in_exit_trap = common global i32 0, align 4
@trapisfunc = common global i32 0, align 4
@traplocallevel = common global i32 0, align 4
@retflag = external global i32, align 4
@zshhooks = external global [0 x %struct.hookdef], align 4
@sfcontext = external global i32, align 4
@incompfunc = external global i32, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"TRAP%s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@trap_return = external global i32, align 4
@trap_state = external global i32, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@emulation = external global i32, align 4
@try_tryflag = external global i32, align 4
@zleactive = external global i32, align 4
@resetneeded = external global i32, align 4

; Function Attrs: noinline nounwind
define void @install_handler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %act = alloca %struct.sigaction, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %__sa_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sa_handler to void (i32)**
  store void (i32)* @zhandler, void (i32)** %sa_handler, align 4
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask)
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 2
  store i32 0, i32* %sa_flags, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %call1 = call i32 @sigaction(i32 %0, %struct.sigaction* %act, %struct.sigaction* null)
  ret void
}

; Function Attrs: noinline nounwind
define void @zhandler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %newmask = alloca %struct.__sigset_t, align 4
  %oldmask = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %temp_rear = alloca i32, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %idle = alloca i32, align 4
  %tmout = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  store i32 %0, i32* @last_signal, align 4
  %call = call i32 @sigfillset(%struct.__sigset_t* %newmask)
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %newmask)
  %1 = bitcast %struct.__sigset_t* %oldmask to i8*
  %2 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %2, i32 128, i32 4, i1 false)
  %3 = load i32, i32* @queueing_enabled, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @queue_rear, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @queue_rear, align 4
  %rem = srem i32 %inc, 128
  store i32 %rem, i32* %temp_rear, align 4
  %5 = load i32, i32* %temp_rear, align 4
  %6 = load i32, i32* @queue_front, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load i32, i32* %temp_rear, align 4
  store i32 %7, i32* @queue_rear, align 4
  %8 = load i32, i32* %sig.addr, align 4
  %9 = load i32, i32* @queue_rear, align 4
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %9
  store i32 %8, i32* %arrayidx, align 4
  %10 = load i32, i32* @queue_rear, align 4
  %arrayidx3 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %10
  %11 = bitcast %struct.__sigset_t* %arrayidx3 to i8*
  %12 = bitcast %struct.__sigset_t* %oldmask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %sw.epilog

if.end4:                                          ; preds = %entry
  call void @signal_setmask(%struct.__sigset_t* sret %tmp5, %struct.__sigset_t* byval align 4 %oldmask)
  %13 = load i32, i32* %sig.addr, align 4
  switch i32 %13, label %sw.default [
    i32 17, label %sw.bb
    i32 13, label %sw.bb6
    i32 1, label %sw.bb18
    i32 2, label %sw.bb23
    i32 28, label %sw.bb44
    i32 14, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end4
  call void @wait_for_processes()
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  %call7 = call i32 @handletrap(i32 13)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %sw.bb6
  %14 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool10 = icmp ne i8 %14, 0
  br i1 %tobool10, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  call void @_exit(i32 13) #4
  unreachable

if.else:                                          ; preds = %if.then9
  %15 = load i32, i32* @SHTTY, align 4
  %call12 = call i32 @isatty(i32 %15)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.else
  store i32 1, i32* @stopmsg, align 4
  call void @zexit(i32 13, i32 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %sw.bb6
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end4
  %call19 = call i32 @handletrap(i32 1)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %sw.bb18
  store i32 1, i32* @stopmsg, align 4
  call void @zexit(i32 1, i32 1)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %sw.bb18
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end4
  %call24 = call i32 @handletrap(i32 2)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end43, label %if.then26

if.then26:                                        ; preds = %sw.bb23
  %16 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 140), align 1
  %conv = sext i8 %16 to i32
  %tobool27 = icmp ne i32 %conv, 0
  br i1 %tobool27, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26
  %17 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %conv28 = sext i8 %17 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then26
  %18 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv30 = sext i8 %18 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.lhs.true32, label %if.end35

land.lhs.true32:                                  ; preds = %land.lhs.true
  %19 = load i32, i32* @noerrexit, align 4
  %and = and i32 %19, 8
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true32
  call void @zexit(i32 2, i32 1)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true32, %land.lhs.true, %lor.lhs.false
  %20 = load i32, i32* @list_pipe, align 4
  %tobool36 = icmp ne i32 %20, 0
  br i1 %tobool36, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end35
  %21 = load i8*, i8** @chline, align 4
  %tobool38 = icmp ne i8* %21, null
  br i1 %tobool38, label %if.then41, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false37
  %22 = load i32, i32* @simple_pline, align 4
  %tobool40 = icmp ne i32 %22, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false39, %lor.lhs.false37, %if.end35
  %23 = load i32, i32* @loops, align 4
  store i32 %23, i32* @breaks, align 4
  %24 = load i32, i32* @errflag, align 4
  %or = or i32 %24, 2
  store i32 %or, i32* @errflag, align 4
  call void @inerrflush()
  call void @check_cursh_sig(i32 2)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %lor.lhs.false39
  store i32 130, i32* @lastval, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %sw.bb23
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end4
  call void @adjustwinsize(i32 1)
  %call45 = call i32 @handletrap(i32 28)
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end4
  %call47 = call i32 @handletrap(i32 14)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end63, label %if.then49

if.then49:                                        ; preds = %sw.bb46
  %call51 = call i32 @ttyidlegetfn(%struct.param* null)
  store i32 %call51, i32* %idle, align 4
  %call53 = call i32 @getiparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call53, i32* %tmout, align 4
  %25 = load i32, i32* %idle, align 4
  %cmp54 = icmp sge i32 %25, 0
  br i1 %cmp54, label %land.lhs.true56, label %if.else61

land.lhs.true56:                                  ; preds = %if.then49
  %26 = load i32, i32* %idle, align 4
  %27 = load i32, i32* %tmout, align 4
  %cmp57 = icmp slt i32 %26, %27
  br i1 %cmp57, label %if.then59, label %if.else61

if.then59:                                        ; preds = %land.lhs.true56
  %28 = load i32, i32* %tmout, align 4
  %29 = load i32, i32* %idle, align 4
  %sub = sub nsw i32 %28, %29
  %call60 = call i32 @alarm(i32 %sub)
  br label %if.end62

if.else61:                                        ; preds = %land.lhs.true56, %if.then49
  store i32 0, i32* @noerrs, align 4
  store i32 0, i32* @errflag, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* @stopmsg, align 4
  call void @zexit(i32 14, i32 1)
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then59
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %sw.bb46
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  %30 = load i32, i32* %sig.addr, align 4
  %call64 = call i32 @handletrap(i32 %30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.default, %if.end63, %sw.bb44, %if.end43, %if.end22, %if.end17, %sw.bb
  ret void
}

declare i32 @sigemptyset(%struct.__sigset_t*) #1

declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: noinline nounwind
define void @intr() #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @install_handler(i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @holdintr() #0 {
entry:
  %agg.tmp = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp, i32 2)
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %agg.tmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @signal_block(%struct.__sigset_t* noalias sret %agg.result, %struct.__sigset_t* byval align 4 %set) #0 {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %call = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %set, %struct.__sigset_t* %oset)
  %0 = bitcast %struct.__sigset_t* %agg.result to i8*
  %1 = bitcast %struct.__sigset_t* %oset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 128, i32 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define void @signal_mask(%struct.__sigset_t* noalias sret %agg.result, i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %set = alloca %struct.__sigset_t, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %call = call i32 @sigemptyset(%struct.__sigset_t* %set)
  %0 = load i32, i32* %sig.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %sig.addr, align 4
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %set, i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = bitcast %struct.__sigset_t* %agg.result to i8*
  %3 = bitcast %struct.__sigset_t* %set to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 128, i32 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define void @noholdintr() #0 {
entry:
  %agg.tmp = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp, i32 2)
  call void @signal_unblock(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %agg.tmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @signal_unblock(%struct.__sigset_t* noalias sret %agg.result, %struct.__sigset_t* byval align 4 %set) #0 {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %call = call i32 @sigprocmask(i32 1, %struct.__sigset_t* %set, %struct.__sigset_t* %oset)
  %0 = bitcast %struct.__sigset_t* %agg.result to i8*
  %1 = bitcast %struct.__sigset_t* %oset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 128, i32 4, i1 false)
  ret void
}

declare i32 @sigaddset(%struct.__sigset_t*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #1

; Function Attrs: noinline nounwind
define void @signal_setmask(%struct.__sigset_t* noalias sret %agg.result, %struct.__sigset_t* byval align 4 %set) #0 {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %call = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %set, %struct.__sigset_t* %oset)
  %0 = bitcast %struct.__sigset_t* %agg.result to i8*
  %1 = bitcast %struct.__sigset_t* %oset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 128, i32 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define i32 @signal_suspend(i32 %sig, i32 %wait_cmd) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %wait_cmd.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %set = alloca %struct.__sigset_t, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store i32 %wait_cmd, i32* %wait_cmd.addr, align 4
  %call = call i32 @sigemptyset(%struct.__sigset_t* %set)
  %0 = load i32, i32* %wait_cmd.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 171), align 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 2), align 4
  %and = and i32 %2, -3
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2
  %call4 = call i32 @sigaddset(%struct.__sigset_t* %set, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2, %lor.lhs.false, %entry
  %call5 = call i32 @sigsuspend(%struct.__sigset_t* %set)
  store i32 %call5, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

declare i32 @sigsuspend(%struct.__sigset_t*) #1

; Function Attrs: noinline nounwind
define void @wait_for_processes() #0 {
entry:
  %old_errno = alloca i32, align 4
  %status = alloca i32, align 4
  %jn = alloca %struct.job*, align 4
  %pn = alloca %struct.process*, align 4
  %pid = alloca i32, align 4
  %procsubpid = alloca i32*, align 4
  %procsubval = alloca i32*, align 4
  %cont = alloca i32, align 4
  %es = alloca %struct.execstack*, align 4
  %ru = alloca %struct.rusage, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %val = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp125 = alloca %struct.__sigset_t, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.end127, %if.then14, %entry
  %call = call i32* @__errno_location()
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %old_errno, align 4
  store i32* @cmdoutpid, i32** %procsubpid, align 4
  store i32* @cmdoutval, i32** %procsubval, align 4
  store i32 0, i32* %cont, align 4
  %1 = load %struct.execstack*, %struct.execstack** @exstack, align 4
  store %struct.execstack* %1, %struct.execstack** %es, align 4
  %2 = bitcast i32* %status to i8*
  %3 = bitcast i8* %2 to i32*
  %call1 = call i32 @wait3(i32* %3, i32 11, %struct.rusage* %ru)
  store i32 %call1, i32* %pid, align 4
  %4 = load i32, i32* %pid, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end128

if.end:                                           ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %if.end12, %if.end
  %5 = load i32, i32* %pid, align 4
  %6 = load i32*, i32** %procsubpid, align 4
  %7 = load i32, i32* %6, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then3, label %if.end9

if.then3:                                         ; preds = %for.cond2
  %8 = load i32*, i32** %procsubpid, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %status, align 4
  %and = and i32 %9, 65535
  %sub = sub i32 %and, 1
  %cmp4 = icmp ult i32 %sub, 255
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %10 = load i32, i32* %status, align 4
  %and6 = and i32 %10, 127
  %or = or i32 128, %and6
  %11 = load i32*, i32** %procsubval, align 4
  store i32 %or, i32* %11, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then3
  %12 = load i32, i32* %status, align 4
  %and7 = and i32 %12, 65280
  %shr = ashr i32 %and7, 8
  %13 = load i32*, i32** %procsubval, align 4
  store i32 %shr, i32* %13, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  store i32 1, i32* @use_cmdoutval, align 4
  call void @get_usage()
  store i32 1, i32* %cont, align 4
  br label %for.end

if.end9:                                          ; preds = %for.cond2
  %14 = load %struct.execstack*, %struct.execstack** %es, align 4
  %tobool10 = icmp ne %struct.execstack* %14, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  br label %for.end

if.end12:                                         ; preds = %if.end9
  %15 = load %struct.execstack*, %struct.execstack** %es, align 4
  %cmdoutpid = getelementptr inbounds %struct.execstack, %struct.execstack* %15, i32 0, i32 10
  store i32* %cmdoutpid, i32** %procsubpid, align 4
  %16 = load %struct.execstack*, %struct.execstack** %es, align 4
  %cmdoutval = getelementptr inbounds %struct.execstack, %struct.execstack* %16, i32 0, i32 11
  store i32* %cmdoutval, i32** %procsubval, align 4
  %17 = load %struct.execstack*, %struct.execstack** %es, align 4
  %next = getelementptr inbounds %struct.execstack, %struct.execstack* %17, i32 0, i32 0
  %18 = load %struct.execstack*, %struct.execstack** %next, align 4
  store %struct.execstack* %18, %struct.execstack** %es, align 4
  br label %for.cond2

for.end:                                          ; preds = %if.then11, %if.end8
  %19 = load i32, i32* %cont, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  br label %for.cond

if.end15:                                         ; preds = %for.end
  %20 = load i32, i32* %pid, align 4
  %cmp16 = icmp eq i32 %20, -1
  br i1 %cmp16, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end15
  %call18 = call i32* @__errno_location()
  %21 = load i32, i32* %call18, align 4
  %cmp19 = icmp ne i32 %21, 10
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then17
  %call21 = call i32* @__errno_location()
  %22 = load i32, i32* %call21, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %22)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then17
  %23 = load i32, i32* %old_errno, align 4
  %call23 = call i32* @__errno_location()
  store i32 %23, i32* %call23, align 4
  br label %for.end128

if.end24:                                         ; preds = %if.end15
  %24 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %25 = load i32, i32* %pid, align 4
  %call25 = call i32 @findproc(i32 %25, %struct.job** %jn, %struct.process** %pn, i32 0)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else78

if.then27:                                        ; preds = %if.end24
  %26 = load %struct.job*, %struct.job** %jn, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %26, i32 0, i32 2
  %27 = load i32, i32* %stat, align 4
  %and28 = and i32 %27, 16384
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then27
  %28 = load i32, i32* @list_pipe, align 4
  %tobool30 = icmp ne i32 %28, 0
  br i1 %tobool30, label %land.lhs.true, label %if.else49

land.lhs.true:                                    ; preds = %lor.lhs.false
  %29 = load i32, i32* @thisjob, align 4
  %cmp31 = icmp eq i32 %29, -1
  br i1 %cmp31, label %land.lhs.true36, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true
  %30 = load %struct.job*, %struct.job** @jobtab, align 4
  %31 = load i32, i32* @thisjob, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %30, i32 %31
  %stat33 = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %32 = load i32, i32* %stat33, align 4
  %and34 = and i32 %32, 16384
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %if.else49

land.lhs.true36:                                  ; preds = %lor.lhs.false32, %land.lhs.true, %if.then27
  %33 = load i32, i32* %status, align 4
  %and37 = and i32 %33, 65535
  %mul = mul nsw i32 %and37, 65537
  %shr38 = ashr i32 %mul, 8
  %conv = trunc i32 %shr38 to i16
  %conv39 = sext i16 %conv to i32
  %cmp40 = icmp sgt i32 %conv39, 32512
  br i1 %cmp40, label %land.lhs.true42, label %if.else49

land.lhs.true42:                                  ; preds = %land.lhs.true36
  %34 = load i32, i32* %status, align 4
  %and43 = and i32 %34, 65280
  %shr44 = ashr i32 %and43, 8
  %cmp45 = icmp eq i32 %shr44, 20
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %land.lhs.true42
  %35 = load %struct.job*, %struct.job** %jn, align 4
  %call48 = call i32 @killjb(%struct.job* %35, i32 18)
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end77

if.else49:                                        ; preds = %land.lhs.true42, %land.lhs.true36, %lor.lhs.false32, %lor.lhs.false
  %36 = load %struct.process*, %struct.process** %pn, align 4
  %endtime = getelementptr inbounds %struct.process, %struct.process* %36, i32 0, i32 6
  %37 = bitcast %struct.timezone* %dummy_tz to i8*
  %call50 = call i32 @gettimeofday(%struct.timeval* %endtime, i8* %37)
  %38 = load i32, i32* %status, align 4
  %cmp51 = icmp eq i32 %38, 65535
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %39 = load %struct.process*, %struct.process** %pn, align 4
  %status54 = getelementptr inbounds %struct.process, %struct.process* %39, i32 0, i32 3
  store i32 -1, i32* %status54, align 4
  br label %if.end57

if.else55:                                        ; preds = %if.else49
  %40 = load i32, i32* %status, align 4
  %41 = load %struct.process*, %struct.process** %pn, align 4
  %status56 = getelementptr inbounds %struct.process, %struct.process* %41, i32 0, i32 3
  store i32 %40, i32* %status56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then53
  %42 = load %struct.process*, %struct.process** %pn, align 4
  %ti = getelementptr inbounds %struct.process, %struct.process* %42, i32 0, i32 4
  %43 = bitcast %struct.rusage* %ti to i8*
  %44 = bitcast %struct.rusage* %ru to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 136, i32 4, i1 false)
  %45 = load i32, i32* %status, align 4
  %and58 = and i32 %45, 127
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.end76, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end57
  %46 = load %struct.process*, %struct.process** %pn, align 4
  %pid61 = getelementptr inbounds %struct.process, %struct.process* %46, i32 0, i32 1
  %47 = load i32, i32* %pid61, align 4
  %48 = load %struct.job*, %struct.job** %jn, align 4
  %gleader = getelementptr inbounds %struct.job, %struct.job* %48, i32 0, i32 0
  %49 = load i32, i32* %gleader, align 4
  %cmp62 = icmp eq i32 %47, %49
  br i1 %cmp62, label %land.lhs.true64, label %if.end76

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %50 = load %struct.process*, %struct.process** %pn, align 4
  %pid65 = getelementptr inbounds %struct.process, %struct.process* %50, i32 0, i32 1
  %51 = load i32, i32* %pid65, align 4
  %call66 = call i32 @killpg(i32 %51, i32 0)
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then69, label %if.end76

if.then69:                                        ; preds = %land.lhs.true64
  %52 = load %struct.job*, %struct.job** %jn, align 4
  %gleader70 = getelementptr inbounds %struct.job, %struct.job* %52, i32 0, i32 0
  store i32 0, i32* %gleader70, align 4
  %53 = load %struct.job*, %struct.job** %jn, align 4
  %stat71 = getelementptr inbounds %struct.job, %struct.job* %53, i32 0, i32 2
  %54 = load i32, i32* %stat71, align 4
  %and72 = and i32 %54, 2048
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.then69
  %55 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %55)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then69
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %land.lhs.true64, %land.lhs.true60, %if.end57
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then47
  %56 = load %struct.job*, %struct.job** %jn, align 4
  call void @update_job(%struct.job* %56)
  br label %if.end85

if.else78:                                        ; preds = %if.end24
  %57 = load i32, i32* %pid, align 4
  %call79 = call i32 @findproc(i32 %57, %struct.job** %jn, %struct.process** %pn, i32 1)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else78
  %58 = load i32, i32* %status, align 4
  %59 = load %struct.process*, %struct.process** %pn, align 4
  %status82 = getelementptr inbounds %struct.process, %struct.process* %59, i32 0, i32 3
  store i32 %58, i32* %status82, align 4
  %60 = load %struct.job*, %struct.job** %jn, align 4
  call void @update_job(%struct.job* %60)
  br label %if.end84

if.else83:                                        ; preds = %if.else78
  call void @get_usage()
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.then81
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end77
  %61 = load %struct.job*, %struct.job** %jn, align 4
  %tobool86 = icmp ne %struct.job* %61, null
  br i1 %tobool86, label %land.lhs.true87, label %if.end117

land.lhs.true87:                                  ; preds = %if.end85
  %62 = load %struct.job*, %struct.job** %jn, align 4
  %stat88 = getelementptr inbounds %struct.job, %struct.job* %62, i32 0, i32 2
  %63 = load i32, i32* %stat88, align 4
  %and89 = and i32 %63, 17408
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.end117, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %land.lhs.true87
  %64 = load %struct.job*, %struct.job** %jn, align 4
  %65 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast = ptrtoint %struct.job* %64 to i32
  %sub.ptr.rhs.cast = ptrtoint %struct.job* %65 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %66 = load i32, i32* @thisjob, align 4
  %cmp92 = icmp ne i32 %sub.ptr.div, %66
  br i1 %cmp92, label %if.then94, label %if.end117

if.then94:                                        ; preds = %land.lhs.true91
  %67 = load i32, i32* %status, align 4
  %and95 = and i32 %67, 65535
  %sub96 = sub i32 %and95, 1
  %cmp97 = icmp ult i32 %sub96, 255
  br i1 %cmp97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then94
  %68 = load i32, i32* %status, align 4
  %and99 = and i32 %68, 127
  %or100 = or i32 128, %and99
  br label %cond.end115

cond.false:                                       ; preds = %if.then94
  %69 = load i32, i32* %status, align 4
  %and101 = and i32 %69, 65535
  %mul102 = mul nsw i32 %and101, 65537
  %shr103 = ashr i32 %mul102, 8
  %conv104 = trunc i32 %shr103 to i16
  %conv105 = sext i16 %conv104 to i32
  %cmp106 = icmp sgt i32 %conv105, 32512
  br i1 %cmp106, label %cond.true108, label %cond.false112

cond.true108:                                     ; preds = %cond.false
  %70 = load i32, i32* %status, align 4
  %and109 = and i32 %70, 65280
  %shr110 = ashr i32 %and109, 8
  %or111 = or i32 128, %shr110
  br label %cond.end

cond.false112:                                    ; preds = %cond.false
  %71 = load i32, i32* %status, align 4
  %and113 = and i32 %71, 65280
  %shr114 = ashr i32 %and113, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false112, %cond.true108
  %cond = phi i32 [ %or111, %cond.true108 ], [ %shr114, %cond.false112 ]
  br label %cond.end115

cond.end115:                                      ; preds = %cond.end, %cond.true
  %cond116 = phi i32 [ %or100, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond116, i32* %val, align 4
  %72 = load i32, i32* %pid, align 4
  %73 = load i32, i32* %val, align 4
  call void @addbgstatus(i32 %72, i32 %73)
  br label %if.end117

if.end117:                                        ; preds = %cond.end115, %land.lhs.true91, %land.lhs.true87, %if.end85
  br label %do.body

do.body:                                          ; preds = %if.end117
  %74 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %74, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool118 = icmp ne i32 %dec, 0
  br i1 %tobool118, label %if.end126, label %if.then119

if.then119:                                       ; preds = %do.body
  br label %do.body120

do.body120:                                       ; preds = %if.then119
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body120
  %75 = load i32, i32* @queue_front, align 4
  %76 = load i32, i32* @queue_rear, align 4
  %cmp121 = icmp ne i32 %75, %76
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %77 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %77, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %78 = load i32, i32* @queue_front, align 4
  %arrayidx123 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %78
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx123)
  %79 = bitcast %struct.__sigset_t* %oset to i8*
  %80 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %79, i8* %80, i32 128, i32 4, i1 false)
  %81 = load i32, i32* @queue_front, align 4
  %arrayidx124 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %81
  %82 = load i32, i32* %arrayidx124, align 4
  call void @zhandler(i32 %82)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp125, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end126

if.end126:                                        ; preds = %do.end, %do.body
  br label %do.end127

do.end127:                                        ; preds = %if.end126
  br label %for.cond

for.end128:                                       ; preds = %if.end22, %if.then
  ret void
}

declare i32* @__errno_location() #1

declare i32 @wait3(i32*, i32, %struct.rusage*) #1

declare void @get_usage() #1

declare void @zerr(i8*, ...) #1

declare i32 @findproc(i32, %struct.job**, %struct.process**, i32) #1

; Function Attrs: noinline nounwind
define i32 @killjb(%struct.job* %jn, i32 %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %jn.addr = alloca %struct.job*, align 4
  %sig.addr = alloca i32, align 4
  %pn = alloca %struct.process*, align 4
  %err = alloca i32, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store i32 0, i32* %err, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end66

if.then:                                          ; preds = %entry
  %1 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %1, i32 0, i32 2
  %2 = load i32, i32* %stat, align 4
  %and = and i32 %2, 128
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %sig.addr, align 4
  %cmp = icmp eq i32 %3, 18
  br i1 %cmp, label %if.then3, label %if.end46

if.then3:                                         ; preds = %if.then2
  %4 = load %struct.job*, %struct.job** @jobtab, align 4
  %5 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other = getelementptr inbounds %struct.job, %struct.job* %5, i32 0, i32 1
  %6 = load i32, i32* %other, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %4, i32 %6
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 4
  %7 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %7, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %8 = load %struct.process*, %struct.process** %pn, align 4
  %tobool4 = icmp ne %struct.process* %8, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.process*, %struct.process** %pn, align 4
  %pid = getelementptr inbounds %struct.process, %struct.process* %9, i32 0, i32 1
  %10 = load i32, i32* %pid, align 4
  %11 = load i32, i32* %sig.addr, align 4
  %call = call i32 @killpg(i32 %10, i32 %11)
  %cmp5 = icmp eq i32 %call, -1
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %for.body
  %12 = load %struct.process*, %struct.process** %pn, align 4
  %pid7 = getelementptr inbounds %struct.process, %struct.process* %12, i32 0, i32 1
  %13 = load i32, i32* %pid7, align 4
  %14 = load i32, i32* %sig.addr, align 4
  %call8 = call i32 @kill(i32 %13, i32 %14)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then6
  %call10 = call i32* @__errno_location()
  %15 = load i32, i32* %call10, align 4
  %cmp11 = icmp ne i32 %15, 3
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %16 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %16, i32 0, i32 0
  %17 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %17, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs14 = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 4
  %19 = load %struct.process*, %struct.process** %procs14, align 4
  store %struct.process* %19, %struct.process** %pn, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.end
  %20 = load %struct.process*, %struct.process** %pn, align 4
  %next16 = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 0
  %21 = load %struct.process*, %struct.process** %next16, align 4
  %tobool17 = icmp ne %struct.process* %21, null
  br i1 %tobool17, label %for.body18, label %for.end29

for.body18:                                       ; preds = %for.cond15
  %22 = load %struct.process*, %struct.process** %pn, align 4
  %pid19 = getelementptr inbounds %struct.process, %struct.process* %22, i32 0, i32 1
  %23 = load i32, i32* %pid19, align 4
  %24 = load i32, i32* %sig.addr, align 4
  %call20 = call i32 @kill(i32 %23, i32 %24)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %land.lhs.true22, label %if.end26

land.lhs.true22:                                  ; preds = %for.body18
  %call23 = call i32* @__errno_location()
  %25 = load i32, i32* %call23, align 4
  %cmp24 = icmp ne i32 %25, 3
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true22
  store i32 -1, i32* %err, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true22, %for.body18
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %26 = load %struct.process*, %struct.process** %pn, align 4
  %next28 = getelementptr inbounds %struct.process, %struct.process* %26, i32 0, i32 0
  %27 = load %struct.process*, %struct.process** %next28, align 4
  store %struct.process* %27, %struct.process** %pn, align 4
  br label %for.cond15

for.end29:                                        ; preds = %for.cond15
  %28 = load %struct.job*, %struct.job** @jobtab, align 4
  %29 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other30 = getelementptr inbounds %struct.job, %struct.job* %29, i32 0, i32 1
  %30 = load i32, i32* %other30, align 4
  %arrayidx31 = getelementptr inbounds %struct.job, %struct.job* %28, i32 %30
  %procs32 = getelementptr inbounds %struct.job, %struct.job* %arrayidx31, i32 0, i32 4
  %31 = load %struct.process*, %struct.process** %procs32, align 4
  %tobool33 = icmp ne %struct.process* %31, null
  br i1 %tobool33, label %if.end45, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %for.end29
  %32 = load %struct.process*, %struct.process** %pn, align 4
  %tobool35 = icmp ne %struct.process* %32, null
  br i1 %tobool35, label %if.then36, label %if.end45

if.then36:                                        ; preds = %land.lhs.true34
  %33 = load %struct.process*, %struct.process** %pn, align 4
  %pid37 = getelementptr inbounds %struct.process, %struct.process* %33, i32 0, i32 1
  %34 = load i32, i32* %pid37, align 4
  %35 = load i32, i32* %sig.addr, align 4
  %call38 = call i32 @kill(i32 %34, i32 %35)
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %land.lhs.true40, label %if.end44

land.lhs.true40:                                  ; preds = %if.then36
  %call41 = call i32* @__errno_location()
  %36 = load i32, i32* %call41, align 4
  %cmp42 = icmp ne i32 %36, 3
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true40
  store i32 -1, i32* %err, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true40, %if.then36
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %land.lhs.true34, %for.end29
  %37 = load i32, i32* %err, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then2
  %38 = load %struct.job*, %struct.job** @jobtab, align 4
  %39 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other47 = getelementptr inbounds %struct.job, %struct.job* %39, i32 0, i32 1
  %40 = load i32, i32* %other47, align 4
  %arrayidx48 = getelementptr inbounds %struct.job, %struct.job* %38, i32 %40
  %gleader = getelementptr inbounds %struct.job, %struct.job* %arrayidx48, i32 0, i32 0
  %41 = load i32, i32* %gleader, align 4
  %42 = load i32, i32* %sig.addr, align 4
  %call49 = call i32 @killpg(i32 %41, i32 %42)
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %land.lhs.true51, label %if.end55

land.lhs.true51:                                  ; preds = %if.end46
  %call52 = call i32* @__errno_location()
  %43 = load i32, i32* %call52, align 4
  %cmp53 = icmp ne i32 %43, 3
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %land.lhs.true51
  store i32 -1, i32* %err, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %land.lhs.true51, %if.end46
  %44 = load %struct.job*, %struct.job** %jn.addr, align 4
  %gleader56 = getelementptr inbounds %struct.job, %struct.job* %44, i32 0, i32 0
  %45 = load i32, i32* %gleader56, align 4
  %46 = load i32, i32* %sig.addr, align 4
  %call57 = call i32 @killpg(i32 %45, i32 %46)
  %cmp58 = icmp eq i32 %call57, -1
  br i1 %cmp58, label %land.lhs.true59, label %if.end63

land.lhs.true59:                                  ; preds = %if.end55
  %call60 = call i32* @__errno_location()
  %47 = load i32, i32* %call60, align 4
  %cmp61 = icmp ne i32 %47, 3
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %land.lhs.true59
  store i32 -1, i32* %err, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true59, %if.end55
  %48 = load i32, i32* %err, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %49 = load %struct.job*, %struct.job** %jn.addr, align 4
  %gleader64 = getelementptr inbounds %struct.job, %struct.job* %49, i32 0, i32 0
  %50 = load i32, i32* %gleader64, align 4
  %51 = load i32, i32* %sig.addr, align 4
  %call65 = call i32 @killpg(i32 %50, i32 %51)
  store i32 %call65, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %entry
  %52 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs67 = getelementptr inbounds %struct.job, %struct.job* %52, i32 0, i32 4
  %53 = load %struct.process*, %struct.process** %procs67, align 4
  store %struct.process* %53, %struct.process** %pn, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc92, %if.end66
  %54 = load %struct.process*, %struct.process** %pn, align 4
  %tobool69 = icmp ne %struct.process* %54, null
  br i1 %tobool69, label %for.body70, label %for.end94

for.body70:                                       ; preds = %for.cond68
  %55 = load %struct.process*, %struct.process** %pn, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %55, i32 0, i32 3
  %56 = load i32, i32* %status, align 4
  %cmp71 = icmp eq i32 %56, -1
  br i1 %cmp71, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body70
  %57 = load %struct.process*, %struct.process** %pn, align 4
  %status72 = getelementptr inbounds %struct.process, %struct.process* %57, i32 0, i32 3
  %58 = load i32, i32* %status72, align 4
  %and73 = and i32 %58, 65535
  %mul = mul nsw i32 %and73, 65537
  %shr = ashr i32 %mul, 8
  %conv = trunc i32 %shr to i16
  %conv74 = sext i16 %conv to i32
  %cmp75 = icmp sgt i32 %conv74, 32512
  br i1 %cmp75, label %if.then77, label %if.end91

if.then77:                                        ; preds = %lor.lhs.false, %for.body70
  %59 = load %struct.process*, %struct.process** %pn, align 4
  %pid78 = getelementptr inbounds %struct.process, %struct.process* %59, i32 0, i32 1
  %60 = load i32, i32* %pid78, align 4
  %61 = load i32, i32* %sig.addr, align 4
  %call79 = call i32 @kill(i32 %60, i32 %61)
  store i32 %call79, i32* %err, align 4
  %cmp80 = icmp eq i32 %call79, -1
  br i1 %cmp80, label %land.lhs.true82, label %if.end90

land.lhs.true82:                                  ; preds = %if.then77
  %call83 = call i32* @__errno_location()
  %62 = load i32, i32* %call83, align 4
  %cmp84 = icmp ne i32 %62, 3
  br i1 %cmp84, label %land.lhs.true86, label %if.end90

land.lhs.true86:                                  ; preds = %land.lhs.true82
  %63 = load i32, i32* %sig.addr, align 4
  %cmp87 = icmp ne i32 %63, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %land.lhs.true86
  store i32 -1, i32* %retval, align 4
  br label %return

if.end90:                                         ; preds = %land.lhs.true86, %land.lhs.true82, %if.then77
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %lor.lhs.false
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %64 = load %struct.process*, %struct.process** %pn, align 4
  %next93 = getelementptr inbounds %struct.process, %struct.process* %64, i32 0, i32 0
  %65 = load %struct.process*, %struct.process** %next93, align 4
  store %struct.process* %65, %struct.process** %pn, align 4
  br label %for.cond68

for.end94:                                        ; preds = %for.cond68
  %66 = load i32, i32* %err, align 4
  store i32 %66, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end94, %if.then89, %if.else, %if.end63, %if.end45
  %67 = load i32, i32* %retval, align 4
  ret i32 %67
}

declare void @zwarn(i8*, ...) #1

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare i32 @killpg(i32, i32) #1

declare void @attachtty(i32) #1

declare void @update_job(%struct.job*) #1

declare void @addbgstatus(i32, i32) #1

declare i32 @sigfillset(%struct.__sigset_t*) #1

; Function Attrs: noinline nounwind
define internal i32 @handletrap(i32 %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %sig.addr = alloca i32, align 4
  %temp_rear = alloca i32, align 4
  %tmout = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %0
  %1 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @trap_queueing_enabled, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* @trap_queue_rear, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @trap_queue_rear, align 4
  %rem = srem i32 %inc, 128
  store i32 %rem, i32* %temp_rear, align 4
  %4 = load i32, i32* %temp_rear, align 4
  %5 = load i32, i32* @trap_queue_front, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then2
  %6 = load i32, i32* %temp_rear, align 4
  store i32 %6, i32* @trap_queue_rear, align 4
  %7 = load i32, i32* %sig.addr, align 4
  %8 = load i32, i32* @trap_queue_rear, align 4
  %arrayidx4 = getelementptr inbounds [128 x i32], [128 x i32]* @trap_queue, i32 0, i32 %8
  store i32 %7, i32* %arrayidx4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then2
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %sig.addr, align 4
  call void @dotrap(i32 %9)
  %10 = load i32, i32* %sig.addr, align 4
  %cmp7 = icmp eq i32 %10, 14
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end6
  %call = call i32 @getiparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call, i32* %tmout, align 4
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %11 = load i32, i32* %tmout, align 4
  %call11 = call i32 @alarm(i32 %11)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end6
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.end5, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noreturn
declare void @_exit(i32) #3

declare i32 @isatty(i32) #1

declare void @zexit(i32, i32) #1

declare void @inerrflush() #1

declare void @check_cursh_sig(i32) #1

declare void @adjustwinsize(i32) #1

declare i32 @ttyidlegetfn(%struct.param*) #1

declare i32 @getiparam(i8*) #1

declare i32 @alarm(i32) #1

; Function Attrs: noinline nounwind
define void @killrunjobs(i32 %from_signal) #0 {
entry:
  %from_signal.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %killed = alloca i32, align 4
  store i32 %from_signal, i32* %from_signal.addr, align 4
  store i32 0, i32* %killed, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 88), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end28

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %from_signal.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @thisjob, align 4
  %cmp2 = icmp ne i32 %4, %5
  br i1 %cmp2, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %6 = load %struct.job*, %struct.job** @jobtab, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %6, i32 %7
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %8 = load i32, i32* %stat, align 4
  %and = and i32 %8, 16
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end24

land.lhs.true4:                                   ; preds = %land.lhs.true
  %9 = load %struct.job*, %struct.job** @jobtab, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds %struct.job, %struct.job* %9, i32 %10
  %stat6 = getelementptr inbounds %struct.job, %struct.job* %arrayidx5, i32 0, i32 2
  %11 = load i32, i32* %stat6, align 4
  %and7 = and i32 %11, 32
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end24, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %12 = load %struct.job*, %struct.job** @jobtab, align 4
  %13 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds %struct.job, %struct.job* %12, i32 %13
  %stat11 = getelementptr inbounds %struct.job, %struct.job* %arrayidx10, i32 0, i32 2
  %14 = load i32, i32* %stat11, align 4
  %and12 = and i32 %14, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end24, label %if.then14

if.then14:                                        ; preds = %land.lhs.true9
  %15 = load %struct.job*, %struct.job** @jobtab, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx15 = getelementptr inbounds %struct.job, %struct.job* %15, i32 %16
  %gleader = getelementptr inbounds %struct.job, %struct.job* %arrayidx15, i32 0, i32 0
  %17 = load i32, i32* %gleader, align 4
  %call = call i32 @getpid()
  %cmp16 = icmp ne i32 %17, %call
  br i1 %cmp16, label %land.lhs.true17, label %if.end23

land.lhs.true17:                                  ; preds = %if.then14
  %18 = load %struct.job*, %struct.job** @jobtab, align 4
  %19 = load i32, i32* %i, align 4
  %arrayidx18 = getelementptr inbounds %struct.job, %struct.job* %18, i32 %19
  %gleader19 = getelementptr inbounds %struct.job, %struct.job* %arrayidx18, i32 0, i32 0
  %20 = load i32, i32* %gleader19, align 4
  %call20 = call i32 @killpg(i32 %20, i32 1)
  %cmp21 = icmp ne i32 %call20, -1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true17
  %21 = load i32, i32* %killed, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %killed, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true17, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.lhs.true9, %land.lhs.true4, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %22 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %22, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %killed, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end
  %24 = load i32, i32* %killed, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i32 %24)
  br label %if.end28

if.end28:                                         ; preds = %if.then, %if.then27, %for.end
  ret void
}

declare i32 @getpid() #1

declare i32 @kill(i32, i32) #1

; Function Attrs: noinline nounwind
define i32 @settrap(i32 %sig, %struct.eprog* %l, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %sig.addr = alloca i32, align 4
  %l.addr = alloca %struct.eprog*, align 4
  %flags.addr = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp66 = alloca %struct.__sigset_t, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store %struct.eprog* %l, %struct.eprog** %l.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %sig.addr, align 4
  %cmp1 = icmp eq i32 %2, 22
  br i1 %cmp1, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, i32* %sig.addr, align 4
  %cmp3 = icmp eq i32 %3, 20
  br i1 %cmp3, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %sig.addr, align 4
  %cmp6 = icmp eq i32 %4, 21
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %land.lhs.true
  %5 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %5
  %6 = load i8*, i8** %arrayidx, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* %6)
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5, %if.end
  %7 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %8 = load i32, i32* %sig.addr, align 4
  call void @unsettrap(i32 %8)
  %9 = load %struct.eprog*, %struct.eprog** %l.addr, align 4
  %10 = load i32, i32* %sig.addr, align 4
  %arrayidx10 = getelementptr inbounds [34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 %10
  store %struct.eprog* %9, %struct.eprog** %arrayidx10, align 4
  %11 = load i32, i32* %flags.addr, align 4
  %and = and i32 %11, 4
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end9
  %12 = load %struct.eprog*, %struct.eprog** %l.addr, align 4
  %call = call i32 @empty_eprog(%struct.eprog* %12)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %land.lhs.true12
  %13 = load i32, i32* %sig.addr, align 4
  %arrayidx15 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %13
  store i32 2, i32* %arrayidx15, align 4
  %14 = load i32, i32* %sig.addr, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %land.lhs.true17, label %if.end28

land.lhs.true17:                                  ; preds = %if.then14
  %15 = load i32, i32* %sig.addr, align 4
  %cmp18 = icmp sle i32 %15, 31
  br i1 %cmp18, label %land.lhs.true20, label %if.end28

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %16 = load i32, i32* %sig.addr, align 4
  %cmp21 = icmp ne i32 %16, 28
  br i1 %cmp21, label %land.lhs.true23, label %if.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %17 = load i32, i32* %sig.addr, align 4
  %cmp24 = icmp ne i32 %17, 17
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %land.lhs.true23
  %18 = load i32, i32* %sig.addr, align 4
  %call27 = call void (i32)* @signal(i32 %18, void (i32)* inttoptr (i32 1 to void (i32)*))
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true23, %land.lhs.true20, %land.lhs.true17, %if.then14
  br label %if.end43

if.else:                                          ; preds = %land.lhs.true12, %if.end9
  %19 = load i32, i32* @nsigtrapped, align 4
  %inc29 = add nsw i32 %19, 1
  store i32 %inc29, i32* @nsigtrapped, align 4
  %20 = load i32, i32* %sig.addr, align 4
  %arrayidx30 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %20
  store i32 1, i32* %arrayidx30, align 4
  %21 = load i32, i32* %sig.addr, align 4
  %tobool31 = icmp ne i32 %21, 0
  br i1 %tobool31, label %land.lhs.true32, label %if.end42

land.lhs.true32:                                  ; preds = %if.else
  %22 = load i32, i32* %sig.addr, align 4
  %cmp33 = icmp sle i32 %22, 31
  br i1 %cmp33, label %land.lhs.true35, label %if.end42

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %23 = load i32, i32* %sig.addr, align 4
  %cmp36 = icmp ne i32 %23, 28
  br i1 %cmp36, label %land.lhs.true38, label %if.end42

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %24 = load i32, i32* %sig.addr, align 4
  %cmp39 = icmp ne i32 %24, 17
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true38
  %25 = load i32, i32* %sig.addr, align 4
  call void @install_handler(i32 %25)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.lhs.true38, %land.lhs.true35, %land.lhs.true32, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end28
  %26 = load i32, i32* %flags.addr, align 4
  %27 = load i32, i32* %sig.addr, align 4
  %arrayidx44 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %27
  %28 = load i32, i32* %arrayidx44, align 4
  %or = or i32 %28, %26
  store i32 %or, i32* %arrayidx44, align 4
  %29 = load i32, i32* %sig.addr, align 4
  %cmp45 = icmp eq i32 %29, 0
  br i1 %cmp45, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.end43
  %30 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 137), align 1
  %conv48 = sext i8 %30 to i32
  store i32 %conv48, i32* @exit_trap_posix, align 4
  %31 = load i32, i32* @exit_trap_posix, align 4
  %tobool49 = icmp ne i32 %31, 0
  br i1 %tobool49, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.then47
  %32 = load i32, i32* @locallevel, align 4
  %shl = shl i32 %32, 4
  %33 = load i32, i32* %sig.addr, align 4
  %arrayidx51 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %33
  %34 = load i32, i32* %arrayidx51, align 4
  %or52 = or i32 %34, %shl
  store i32 %or52, i32* %arrayidx51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then47
  br label %if.end58

if.else54:                                        ; preds = %if.end43
  %35 = load i32, i32* @locallevel, align 4
  %shl55 = shl i32 %35, 4
  %36 = load i32, i32* %sig.addr, align 4
  %arrayidx56 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %36
  %37 = load i32, i32* %arrayidx56, align 4
  %or57 = or i32 %37, %shl55
  store i32 %or57, i32* %arrayidx56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.end53
  br label %do.body

do.body:                                          ; preds = %if.end58
  %38 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool59 = icmp ne i32 %dec, 0
  br i1 %tobool59, label %if.end67, label %if.then60

if.then60:                                        ; preds = %do.body
  br label %do.body61

do.body61:                                        ; preds = %if.then60
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body61
  %39 = load i32, i32* @queue_front, align 4
  %40 = load i32, i32* @queue_rear, align 4
  %cmp62 = icmp ne i32 %39, %40
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %41, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %42 = load i32, i32* @queue_front, align 4
  %arrayidx64 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %42
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx64)
  %43 = bitcast %struct.__sigset_t* %oset to i8*
  %44 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 128, i32 4, i1 false)
  %45 = load i32, i32* @queue_front, align 4
  %arrayidx65 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %45
  %46 = load i32, i32* %arrayidx65, align 4
  call void @zhandler(i32 %46)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp66, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end67

if.end67:                                         ; preds = %do.end, %do.body
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end68, %if.then8, %if.then
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind
define void @unsettrap(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32, i32* %sig.addr, align 4
  %call = call %struct.hashnode* @removetrap(i32 %1)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %2 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 14
  %4 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  call void %4(%struct.hashnode* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool1 = icmp ne i32 %dec, 0
  br i1 %tobool1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body3
  %7 = load i32, i32* @queue_front, align 4
  %8 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %9, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %10 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %10
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %11 = bitcast %struct.__sigset_t* %oset to i8*
  %12 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 128, i32 4, i1 false)
  %13 = load i32, i32* @queue_front, align 4
  %arrayidx4 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %13
  %14 = load i32, i32* %arrayidx4, align 4
  call void @zhandler(i32 %14)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp5, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  ret void
}

declare i32 @empty_eprog(%struct.eprog*) #1

declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind
define %struct.hashnode* @removetrap(i32 %sig) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %sig.addr = alloca i32, align 4
  %trapped = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp35 = alloca %struct.__sigset_t, align 4
  %node = alloca %struct.hashnode*, align 4
  %oset102 = alloca %struct.__sigset_t, align 4
  %tmp106 = alloca %struct.__sigset_t, align 4
  %tmp108 = alloca %struct.__sigset_t, align 4
  %oset131 = alloca %struct.__sigset_t, align 4
  %tmp135 = alloca %struct.__sigset_t, align 4
  %tmp137 = alloca %struct.__sigset_t, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %sig.addr, align 4
  %cmp1 = icmp eq i32 %2, 22
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %sig.addr, align 4
  %cmp4 = icmp eq i32 %3, 20
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %4 = load i32, i32* %sig.addr, align 4
  %cmp7 = icmp eq i32 %4, 21
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %land.lhs.true, %entry
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false6, %lor.lhs.false
  %5 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %6 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %6
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %trapped, align 4
  %8 = load i32, i32* @dontsavetrap, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %if.end25, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end
  %9 = load i32, i32* %sig.addr, align 4
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  %10 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 137), align 1
  %tobool13 = icmp ne i8 %10, 0
  br i1 %tobool13, label %if.end25, label %land.lhs.true16

cond.false:                                       ; preds = %land.lhs.true10
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 110), align 1
  %conv14 = sext i8 %11 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.lhs.true16, label %if.end25

land.lhs.true16:                                  ; preds = %cond.false, %cond.true
  %12 = load i32, i32* @locallevel, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %land.lhs.true18, label %if.end25

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %13 = load i32, i32* %trapped, align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %lor.lhs.false20, label %if.then24

lor.lhs.false20:                                  ; preds = %land.lhs.true18
  %14 = load i32, i32* @locallevel, align 4
  %15 = load i32, i32* %sig.addr, align 4
  %arrayidx21 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %15
  %16 = load i32, i32* %arrayidx21, align 4
  %shr = ashr i32 %16, 4
  %cmp22 = icmp sgt i32 %14, %shr
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false20, %land.lhs.true18
  %17 = load i32, i32* %sig.addr, align 4
  %18 = load i32, i32* @locallevel, align 4
  call void @dosavetrap(i32 %17, i32 %18)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %lor.lhs.false20, %land.lhs.true16, %cond.false, %cond.true, %if.end
  %19 = load i32, i32* %trapped, align 4
  %tobool26 = icmp ne i32 %19, 0
  br i1 %tobool26, label %if.end38, label %if.then27

if.then27:                                        ; preds = %if.end25
  br label %do.body

do.body:                                          ; preds = %if.then27
  %20 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool28 = icmp ne i32 %dec, 0
  br i1 %tobool28, label %if.end36, label %if.then29

if.then29:                                        ; preds = %do.body
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body30
  %21 = load i32, i32* @queue_front, align 4
  %22 = load i32, i32* @queue_rear, align 4
  %cmp31 = icmp ne i32 %21, %22
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %23, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %24 = load i32, i32* @queue_front, align 4
  %arrayidx33 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %24
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx33)
  %25 = bitcast %struct.__sigset_t* %oset to i8*
  %26 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 128, i32 4, i1 false)
  %27 = load i32, i32* @queue_front, align 4
  %arrayidx34 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %27
  %28 = load i32, i32* %arrayidx34, align 4
  call void @zhandler(i32 %28)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp35, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end36

if.end36:                                         ; preds = %do.end, %do.body
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end25
  %29 = load i32, i32* %sig.addr, align 4
  %arrayidx39 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %29
  %30 = load i32, i32* %arrayidx39, align 4
  %and = and i32 %30, 1
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %31 = load i32, i32* @nsigtrapped, align 4
  %dec42 = add nsw i32 %31, -1
  store i32 %dec42, i32* @nsigtrapped, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  %32 = load i32, i32* %sig.addr, align 4
  %arrayidx44 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %32
  store i32 0, i32* %arrayidx44, align 4
  %33 = load i32, i32* %sig.addr, align 4
  %cmp45 = icmp eq i32 %33, 2
  br i1 %cmp45, label %land.lhs.true47, label %if.else

land.lhs.true47:                                  ; preds = %if.end43
  %34 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv48 = sext i8 %34 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  br i1 %tobool49, label %if.then50, label %if.else

if.then50:                                        ; preds = %land.lhs.true47
  call void @intr()
  call void @noholdintr()
  br label %if.end78

if.else:                                          ; preds = %land.lhs.true47, %if.end43
  %35 = load i32, i32* %sig.addr, align 4
  %cmp51 = icmp eq i32 %35, 1
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else
  %36 = load i32, i32* %sig.addr, align 4
  call void @install_handler(i32 %36)
  br label %if.end77

if.else54:                                        ; preds = %if.else
  %37 = load i32, i32* %sig.addr, align 4
  %cmp55 = icmp eq i32 %37, 13
  br i1 %cmp55, label %land.lhs.true57, label %if.else63

land.lhs.true57:                                  ; preds = %if.else54
  %38 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv58 = sext i8 %38 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %land.lhs.true60, label %if.else63

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %39 = load i32, i32* @forklevel, align 4
  %tobool61 = icmp ne i32 %39, 0
  br i1 %tobool61, label %if.else63, label %if.then62

if.then62:                                        ; preds = %land.lhs.true60
  %40 = load i32, i32* %sig.addr, align 4
  call void @install_handler(i32 %40)
  br label %if.end76

if.else63:                                        ; preds = %land.lhs.true60, %land.lhs.true57, %if.else54
  %41 = load i32, i32* %sig.addr, align 4
  %tobool64 = icmp ne i32 %41, 0
  br i1 %tobool64, label %land.lhs.true65, label %if.end75

land.lhs.true65:                                  ; preds = %if.else63
  %42 = load i32, i32* %sig.addr, align 4
  %cmp66 = icmp sle i32 %42, 31
  br i1 %cmp66, label %land.lhs.true68, label %if.end75

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %43 = load i32, i32* %sig.addr, align 4
  %cmp69 = icmp ne i32 %43, 28
  br i1 %cmp69, label %land.lhs.true71, label %if.end75

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %44 = load i32, i32* %sig.addr, align 4
  %cmp72 = icmp ne i32 %44, 17
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %land.lhs.true71
  %45 = load i32, i32* %sig.addr, align 4
  %call = call void (i32)* @signal(i32 %45, void (i32)* null)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %land.lhs.true71, %land.lhs.true68, %land.lhs.true65, %if.else63
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then62
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then53
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then50
  %46 = load i32, i32* %sig.addr, align 4
  %cmp79 = icmp eq i32 %46, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end78
  store i32 0, i32* @exit_trap_posix, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end78
  %47 = load i32, i32* %trapped, align 4
  %and83 = and i32 %47, 4
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.else113

if.then85:                                        ; preds = %if.end82
  %48 = load i32, i32* %sig.addr, align 4
  %call87 = call %struct.hashnode* @gettrapnode(i32 %48, i32 1)
  store %struct.hashnode* %call87, %struct.hashnode** %node, align 4
  %49 = load %struct.hashnode*, %struct.hashnode** %node, align 4
  %tobool88 = icmp ne %struct.hashnode* %49, null
  br i1 %tobool88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.then85
  %50 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %51 = load %struct.hashnode*, %struct.hashnode** %node, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %51, i32 0, i32 1
  %52 = load i8*, i8** %nam, align 4
  %call90 = call %struct.hashnode* @removehashnode(%struct.hashtable* %50, i8* %52)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then85
  br label %do.body92

do.body92:                                        ; preds = %if.end91
  %53 = load i32, i32* @queueing_enabled, align 4
  %dec93 = add nsw i32 %53, -1
  store i32 %dec93, i32* @queueing_enabled, align 4
  %tobool94 = icmp ne i32 %dec93, 0
  br i1 %tobool94, label %if.end111, label %if.then95

if.then95:                                        ; preds = %do.body92
  br label %do.body96

do.body96:                                        ; preds = %if.then95
  br label %while.cond97

while.cond97:                                     ; preds = %while.body100, %do.body96
  %54 = load i32, i32* @queue_front, align 4
  %55 = load i32, i32* @queue_rear, align 4
  %cmp98 = icmp ne i32 %54, %55
  br i1 %cmp98, label %while.body100, label %while.end109

while.body100:                                    ; preds = %while.cond97
  %56 = load i32, i32* @queue_front, align 4
  %add103 = add nsw i32 %56, 1
  %rem104 = srem i32 %add103, 128
  store i32 %rem104, i32* @queue_front, align 4
  %57 = load i32, i32* @queue_front, align 4
  %arrayidx105 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %57
  call void @signal_setmask(%struct.__sigset_t* sret %tmp106, %struct.__sigset_t* byval align 4 %arrayidx105)
  %58 = bitcast %struct.__sigset_t* %oset102 to i8*
  %59 = bitcast %struct.__sigset_t* %tmp106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %58, i8* %59, i32 128, i32 4, i1 false)
  %60 = load i32, i32* @queue_front, align 4
  %arrayidx107 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %60
  %61 = load i32, i32* %arrayidx107, align 4
  call void @zhandler(i32 %61)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp108, %struct.__sigset_t* byval align 4 %oset102)
  br label %while.cond97

while.end109:                                     ; preds = %while.cond97
  br label %do.end110

do.end110:                                        ; preds = %while.end109
  br label %if.end111

if.end111:                                        ; preds = %do.end110, %do.body92
  br label %do.end112

do.end112:                                        ; preds = %if.end111
  %62 = load %struct.hashnode*, %struct.hashnode** %node, align 4
  store %struct.hashnode* %62, %struct.hashnode** %retval, align 4
  br label %return

if.else113:                                       ; preds = %if.end82
  %63 = load i32, i32* %sig.addr, align 4
  %arrayidx114 = getelementptr inbounds [34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 %63
  %64 = load %struct.eprog*, %struct.eprog** %arrayidx114, align 4
  %tobool115 = icmp ne %struct.eprog* %64, null
  br i1 %tobool115, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.else113
  %65 = load i32, i32* %sig.addr, align 4
  %arrayidx117 = getelementptr inbounds [34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 %65
  %66 = load %struct.eprog*, %struct.eprog** %arrayidx117, align 4
  call void @freeeprog(%struct.eprog* %66)
  %67 = load i32, i32* %sig.addr, align 4
  %arrayidx118 = getelementptr inbounds [34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 %67
  store %struct.eprog* null, %struct.eprog** %arrayidx118, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.else113
  br label %if.end120

if.end120:                                        ; preds = %if.end119
  br label %do.body121

do.body121:                                       ; preds = %if.end120
  %68 = load i32, i32* @queueing_enabled, align 4
  %dec122 = add nsw i32 %68, -1
  store i32 %dec122, i32* @queueing_enabled, align 4
  %tobool123 = icmp ne i32 %dec122, 0
  br i1 %tobool123, label %if.end140, label %if.then124

if.then124:                                       ; preds = %do.body121
  br label %do.body125

do.body125:                                       ; preds = %if.then124
  br label %while.cond126

while.cond126:                                    ; preds = %while.body129, %do.body125
  %69 = load i32, i32* @queue_front, align 4
  %70 = load i32, i32* @queue_rear, align 4
  %cmp127 = icmp ne i32 %69, %70
  br i1 %cmp127, label %while.body129, label %while.end138

while.body129:                                    ; preds = %while.cond126
  %71 = load i32, i32* @queue_front, align 4
  %add132 = add nsw i32 %71, 1
  %rem133 = srem i32 %add132, 128
  store i32 %rem133, i32* @queue_front, align 4
  %72 = load i32, i32* @queue_front, align 4
  %arrayidx134 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %72
  call void @signal_setmask(%struct.__sigset_t* sret %tmp135, %struct.__sigset_t* byval align 4 %arrayidx134)
  %73 = bitcast %struct.__sigset_t* %oset131 to i8*
  %74 = bitcast %struct.__sigset_t* %tmp135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %73, i8* %74, i32 128, i32 4, i1 false)
  %75 = load i32, i32* @queue_front, align 4
  %arrayidx136 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %75
  %76 = load i32, i32* %arrayidx136, align 4
  call void @zhandler(i32 %76)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp137, %struct.__sigset_t* byval align 4 %oset131)
  br label %while.cond126

while.end138:                                     ; preds = %while.cond126
  br label %do.end139

do.end139:                                        ; preds = %while.end138
  br label %if.end140

if.end140:                                        ; preds = %do.end139, %do.body121
  br label %do.end141

do.end141:                                        ; preds = %if.end140
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %do.end141, %do.end112, %do.end37, %if.then
  %77 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %77
}

; Function Attrs: noinline nounwind
define internal void @dosavetrap(i32 %sig, i32 %level) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %st = alloca %struct.savetrap*, align 4
  %shf = alloca %struct.shfunc*, align 4
  %newshf = alloca %struct.shfunc*, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %call = call i8* @zalloc(i32 20)
  %0 = bitcast i8* %call to %struct.savetrap*
  store %struct.savetrap* %0, %struct.savetrap** %st, align 4
  %1 = load i32, i32* %sig.addr, align 4
  %2 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %sig1 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %2, i32 0, i32 0
  store i32 %1, i32* %sig1, align 4
  %3 = load i32, i32* %level.addr, align 4
  %4 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %local = getelementptr inbounds %struct.savetrap, %struct.savetrap* %4, i32 0, i32 2
  store i32 %3, i32* %local, align 4
  %5 = load i32, i32* %sig.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* @exit_trap_posix, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ]
  %7 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %posix = getelementptr inbounds %struct.savetrap, %struct.savetrap* %7, i32 0, i32 3
  store i32 %cond, i32* %posix, align 4
  %8 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %8
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %flags = getelementptr inbounds %struct.savetrap, %struct.savetrap* %10, i32 0, i32 1
  store i32 %9, i32* %flags, align 4
  %and = and i32 %9, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else41

if.then:                                          ; preds = %cond.end
  store %struct.shfunc* null, %struct.shfunc** %newshf, align 4
  %11 = load i32, i32* %sig.addr, align 4
  %call2 = call %struct.hashnode* @gettrapnode(i32 %11, i32 1)
  %12 = bitcast %struct.hashnode* %call2 to %struct.shfunc*
  store %struct.shfunc* %12, %struct.shfunc** %shf, align 4
  %tobool3 = icmp ne %struct.shfunc* %12, null
  br i1 %tobool3, label %if.then4, label %if.end40

if.then4:                                         ; preds = %if.then
  %call5 = call i8* @zshcalloc(i32 32)
  %13 = bitcast i8* %call5 to %struct.shfunc*
  store %struct.shfunc* %13, %struct.shfunc** %newshf, align 4
  %14 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %14, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %15 = load i8*, i8** %nam, align 4
  %call6 = call i8* @ztrdup(i8* %15)
  %16 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %node7 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %16, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  store i8* %call6, i8** %nam8, align 4
  %17 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node9 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %17, i32 0, i32 0
  %flags10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 2
  %18 = load i32, i32* %flags10, align 4
  %19 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %node11 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %19, i32 0, i32 0
  %flags12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 2
  store i32 %18, i32* %flags12, align 4
  %20 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %20, i32 0, i32 3
  %21 = load %struct.eprog*, %struct.eprog** %funcdef, align 4
  %call13 = call %struct.eprog* @dupeprog(%struct.eprog* %21, i32 0)
  %22 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %funcdef14 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %22, i32 0, i32 3
  store %struct.eprog* %call13, %struct.eprog** %funcdef14, align 4
  %23 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node15 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %23, i32 0, i32 0
  %flags16 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node15, i32 0, i32 2
  %24 = load i32, i32* %flags16, align 4
  %and17 = and i32 %24, 524288
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then4
  %25 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %filename = getelementptr inbounds %struct.shfunc, %struct.shfunc* %25, i32 0, i32 1
  %26 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %filename20 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %26, i32 0, i32 1
  %27 = load i8*, i8** %filename20, align 4
  call void @dircache_set(i8** %filename, i8* %27)
  br label %if.end

if.else:                                          ; preds = %if.then4
  %28 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %filename21 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %28, i32 0, i32 1
  %29 = load i8*, i8** %filename21, align 4
  %call22 = call i8* @ztrdup(i8* %29)
  %30 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %filename23 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %30, i32 0, i32 1
  store i8* %call22, i8** %filename23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  %31 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky = getelementptr inbounds %struct.shfunc, %struct.shfunc* %31, i32 0, i32 5
  %32 = load %struct.emulation_options*, %struct.emulation_options** %sticky, align 4
  %tobool24 = icmp ne %struct.emulation_options* %32, null
  br i1 %tobool24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %if.end
  %33 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky26 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %33, i32 0, i32 5
  %34 = load %struct.emulation_options*, %struct.emulation_options** %sticky26, align 4
  %call27 = call %struct.emulation_options* @sticky_emulation_dup(%struct.emulation_options* %34, i32 0)
  %35 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %sticky28 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %35, i32 0, i32 5
  store %struct.emulation_options* %call27, %struct.emulation_options** %sticky28, align 4
  br label %if.end31

if.else29:                                        ; preds = %if.end
  %36 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %sticky30 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %36, i32 0, i32 5
  store %struct.emulation_options* null, %struct.emulation_options** %sticky30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then25
  %37 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node32 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %37, i32 0, i32 0
  %flags33 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node32, i32 0, i32 2
  %38 = load i32, i32* %flags33, align 4
  %and34 = and i32 %38, 512
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  %39 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %40 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %funcdef37 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %40, i32 0, i32 3
  %41 = load %struct.eprog*, %struct.eprog** %funcdef37, align 4
  %shf38 = getelementptr inbounds %struct.eprog, %struct.eprog* %41, i32 0, i32 7
  store %struct.shfunc* %39, %struct.shfunc** %shf38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end31
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then
  %42 = load %struct.shfunc*, %struct.shfunc** %newshf, align 4
  %43 = bitcast %struct.shfunc* %42 to i8*
  %44 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %list = getelementptr inbounds %struct.savetrap, %struct.savetrap* %44, i32 0, i32 4
  store i8* %43, i8** %list, align 4
  br label %if.end57

if.else41:                                        ; preds = %cond.end
  %45 = load i32, i32* %sig.addr, align 4
  %arrayidx42 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %45
  %46 = load i32, i32* %arrayidx42, align 4
  %tobool43 = icmp ne i32 %46, 0
  br i1 %tobool43, label %if.then44, label %if.else54

if.then44:                                        ; preds = %if.else41
  %47 = load i32, i32* %sig.addr, align 4
  %arrayidx45 = getelementptr inbounds [34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 %47
  %48 = load %struct.eprog*, %struct.eprog** %arrayidx45, align 4
  %tobool46 = icmp ne %struct.eprog* %48, null
  br i1 %tobool46, label %cond.true47, label %cond.false50

cond.true47:                                      ; preds = %if.then44
  %49 = load i32, i32* %sig.addr, align 4
  %arrayidx48 = getelementptr inbounds [34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 %49
  %50 = load %struct.eprog*, %struct.eprog** %arrayidx48, align 4
  %call49 = call %struct.eprog* @dupeprog(%struct.eprog* %50, i32 0)
  br label %cond.end51

cond.false50:                                     ; preds = %if.then44
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true47
  %cond52 = phi %struct.eprog* [ %call49, %cond.true47 ], [ null, %cond.false50 ]
  %51 = bitcast %struct.eprog* %cond52 to i8*
  %52 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %list53 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %52, i32 0, i32 4
  store i8* %51, i8** %list53, align 4
  br label %if.end56

if.else54:                                        ; preds = %if.else41
  %53 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %list55 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %53, i32 0, i32 4
  store i8* null, i8** %list55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %cond.end51
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end40
  %54 = load %union.linkroot*, %union.linkroot** @savetraps, align 4
  %tobool58 = icmp ne %union.linkroot* %54, null
  br i1 %tobool58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end57
  %call60 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call60, %union.linkroot** @savetraps, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %55 = load %union.linkroot*, %union.linkroot** @savetraps, align 4
  %56 = load %union.linkroot*, %union.linkroot** @savetraps, align 4
  %57 = bitcast %union.linkroot* %56 to %struct.linknode*
  %58 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %59 = bitcast %struct.savetrap* %58 to i8*
  %call62 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %55, %struct.linknode* %57, i8* %59)
  ret void
}

declare %struct.hashnode* @gettrapnode(i32, i32) #1

declare %struct.hashnode* @removehashnode(%struct.hashtable*, i8*) #1

declare void @freeeprog(%struct.eprog*) #1

; Function Attrs: noinline nounwind
define void @starttrapscope() #0 {
entry:
  %0 = load i32, i32* @intrap, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 0), align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @exit_trap_posix, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* @locallevel, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @locallevel, align 4
  call void @unsettrap(i32 0)
  %4 = load i32, i32* @locallevel, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @locallevel, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then3, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define void @endtrapscope() #0 {
entry:
  %ln = alloca %struct.linknode*, align 4
  %st = alloca %struct.savetrap*, align 4
  %exittr = alloca i32, align 4
  %exitfn = alloca i8*, align 4
  %sig = alloca i32, align 4
  store i32 0, i32* %exittr, align 4
  store i8* null, i8** %exitfn, align 4
  %0 = load i32, i32* @intrap, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @exit_trap_posix, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end10, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 0), align 4
  store i32 %2, i32* %exittr, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true2
  %3 = load i32, i32* %exittr, align 4
  %and = and i32 %3, 4
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %4 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %call = call %struct.hashnode* @removehashnode(%struct.hashtable* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %5 = bitcast %struct.hashnode* %call to i8*
  store i8* %5, i8** %exitfn, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.eprog*, %struct.eprog** getelementptr inbounds ([34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 0), align 4
  %7 = bitcast %struct.eprog* %6 to i8*
  store i8* %7, i8** %exitfn, align 4
  store %struct.eprog* null, %struct.eprog** getelementptr inbounds ([34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %8 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 0), align 4
  %and6 = and i32 %8, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %9 = load i32, i32* @nsigtrapped, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* @nsigtrapped, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  store i32 0, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 0), align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %land.lhs.true2, %land.lhs.true, %entry
  %10 = load %union.linkroot*, %union.linkroot** @savetraps, align 4
  %tobool11 = icmp ne %union.linkroot* %10, null
  br i1 %tobool11, label %if.then12, label %if.end53

if.then12:                                        ; preds = %if.end10
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %if.then12
  %11 = load %union.linkroot*, %union.linkroot** @savetraps, align 4
  %list = bitcast %union.linkroot* %11 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %12 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %12, %struct.linknode** %ln, align 4
  %tobool13 = icmp ne %struct.linknode* %12, null
  br i1 %tobool13, label %land.lhs.true14, label %land.end

land.lhs.true14:                                  ; preds = %while.cond
  %13 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %13, i32 0, i32 2
  %14 = load i8*, i8** %dat, align 4
  %15 = bitcast i8* %14 to %struct.savetrap*
  store %struct.savetrap* %15, %struct.savetrap** %st, align 4
  %tobool15 = icmp ne %struct.savetrap* %15, null
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true14
  %16 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %local = getelementptr inbounds %struct.savetrap, %struct.savetrap* %16, i32 0, i32 2
  %17 = load i32, i32* %local, align 4
  %18 = load i32, i32* @locallevel, align 4
  %cmp = icmp sgt i32 %17, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true14, %while.cond
  %19 = phi i1 [ false, %land.lhs.true14 ], [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %sig16 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %20, i32 0, i32 0
  %21 = load i32, i32* %sig16, align 4
  store i32 %21, i32* %sig, align 4
  %22 = load %union.linkroot*, %union.linkroot** @savetraps, align 4
  %23 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %call17 = call i8* @remnode(%union.linkroot* %22, %struct.linknode* %23)
  %24 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %flags = getelementptr inbounds %struct.savetrap, %struct.savetrap* %24, i32 0, i32 1
  %25 = load i32, i32* %flags, align 4
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %land.lhs.true19, label %if.else43

land.lhs.true19:                                  ; preds = %while.body
  %26 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %list20 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %26, i32 0, i32 4
  %27 = load i8*, i8** %list20, align 4
  %cmp21 = icmp ne i8* %27, null
  br i1 %cmp21, label %if.then22, label %if.else43

if.then22:                                        ; preds = %land.lhs.true19
  %28 = load i32, i32* @dontsavetrap, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* @dontsavetrap, align 4
  %29 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %flags23 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %29, i32 0, i32 1
  %30 = load i32, i32* %flags23, align 4
  %and24 = and i32 %30, 4
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.then22
  %31 = load i32, i32* %sig, align 4
  %call27 = call i32 @settrap(i32 %31, %struct.eprog* null, i32 4)
  br label %if.end31

if.else28:                                        ; preds = %if.then22
  %32 = load i32, i32* %sig, align 4
  %33 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %list29 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %33, i32 0, i32 4
  %34 = load i8*, i8** %list29, align 4
  %35 = bitcast i8* %34 to %struct.eprog*
  %call30 = call i32 @settrap(i32 %32, %struct.eprog* %35, i32 0)
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then26
  %36 = load i32, i32* %sig, align 4
  %cmp32 = icmp eq i32 %36, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %37 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %posix = getelementptr inbounds %struct.savetrap, %struct.savetrap* %37, i32 0, i32 3
  %38 = load i32, i32* %posix, align 4
  store i32 %38, i32* @exit_trap_posix, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31
  %39 = load i32, i32* @dontsavetrap, align 4
  %dec35 = add nsw i32 %39, -1
  store i32 %dec35, i32* @dontsavetrap, align 4
  %40 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %flags36 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %40, i32 0, i32 1
  %41 = load i32, i32* %flags36, align 4
  %42 = load i32, i32* %sig, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %42
  store i32 %41, i32* %arrayidx, align 4
  %and37 = and i32 %41, 4
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  %43 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %43, i32 0, i32 8
  %44 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %45 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %46 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %list40 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %46, i32 0, i32 4
  %47 = load i8*, i8** %list40, align 4
  %48 = bitcast i8* %47 to %struct.shfunc*
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %48, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %49 = load i8*, i8** %nam, align 4
  %50 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %list41 = getelementptr inbounds %struct.savetrap, %struct.savetrap* %50, i32 0, i32 4
  %51 = load i8*, i8** %list41, align 4
  %52 = bitcast i8* %51 to %struct.shfunc*
  %53 = bitcast %struct.shfunc* %52 to i8*
  call void %44(%struct.hashtable* %45, i8* %49, i8* %53)
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end34
  br label %if.end52

if.else43:                                        ; preds = %land.lhs.true19, %while.body
  %54 = load i32, i32* %sig, align 4
  %arrayidx44 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %54
  %55 = load i32, i32* %arrayidx44, align 4
  %tobool45 = icmp ne i32 %55, 0
  br i1 %tobool45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.else43
  %56 = load i32, i32* %sig, align 4
  %cmp47 = icmp ne i32 %56, 0
  br i1 %cmp47, label %if.then49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then46
  %57 = load i32, i32* @exit_trap_posix, align 4
  %tobool48 = icmp ne i32 %57, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %lor.lhs.false, %if.then46
  %58 = load i32, i32* %sig, align 4
  call void @unsettrap(i32 %58)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %lor.lhs.false
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.else43
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end42
  %59 = load %struct.savetrap*, %struct.savetrap** %st, align 4
  %60 = bitcast %struct.savetrap* %59 to i8*
  call void @zfree(i8* %60, i32 20)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end53

if.end53:                                         ; preds = %while.end, %if.end10
  %61 = load i32, i32* %exittr, align 4
  %tobool54 = icmp ne i32 %61, 0
  br i1 %tobool54, label %if.then55, label %if.end61

if.then55:                                        ; preds = %if.end53
  %62 = load i8*, i8** %exitfn, align 4
  call void @dotrapargs(i32 0, i32* %exittr, i8* %62)
  %63 = load i32, i32* %exittr, align 4
  %and56 = and i32 %63, 4
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.then55
  %64 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %64, i32 0, i32 14
  %65 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %66 = load i8*, i8** %exitfn, align 4
  %67 = bitcast i8* %66 to %struct.hashnode*
  call void %65(%struct.hashnode* %67)
  br label %if.end60

if.else59:                                        ; preds = %if.then55
  %68 = load i8*, i8** %exitfn, align 4
  %69 = bitcast i8* %68 to %struct.eprog*
  call void @freeeprog(%struct.eprog* %69)
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end53
  ret void
}

declare i8* @remnode(%union.linkroot*, %struct.linknode*) #1

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @dotrapargs(i32 %sig, i32* %sigtr, i8* %sigfn) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %sigtr.addr = alloca i32*, align 4
  %sigfn.addr = alloca i8*, align 4
  %args = alloca %union.linkroot*, align 4
  %name = alloca i8*, align 4
  %num = alloca [4 x i8], align 1
  %obreaks = alloca i32, align 4
  %oretflag = alloca i32, align 4
  %olastval = alloca i32, align 4
  %isfunc = alloca i32, align 4
  %traperr = alloca i32, align 4
  %new_trap_state = alloca i32, align 4
  %new_trap_return = alloca i32, align 4
  %osc = alloca i32, align 4
  %old_incompfunc = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp86 = alloca %struct.__sigset_t, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store i32* %sigtr, i32** %sigtr.addr, align 4
  store i8* %sigfn, i8** %sigfn.addr, align 4
  %0 = load i32, i32* @breaks, align 4
  store i32 %0, i32* %obreaks, align 4
  %1 = load i32, i32* @retflag, align 4
  store i32 %1, i32* %oretflag, align 4
  %2 = load i32, i32* @lastval, align 4
  store i32 %2, i32* %olastval, align 4
  %3 = load i32*, i32** %sigtr.addr, align 4
  %4 = load i32, i32* %3, align 4
  %and = and i32 %4, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %sigfn.addr, align 4
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* @errflag, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.end88

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load i32, i32* @intrap, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %sig.addr, align 4
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 33, label %sw.bb
    i32 32, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then5, %if.then5, %if.then5
  br label %do.end88

sw.epilog:                                        ; preds = %if.then5
  br label %if.end6

if.end6:                                          ; preds = %sw.epilog, %if.end
  %9 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %10 = load i32, i32* @intrap, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* @intrap, align 4
  %11 = load i32*, i32** %sigtr.addr, align 4
  %12 = load i32, i32* %11, align 4
  %or = or i32 %12, 2
  store i32 %or, i32* %11, align 4
  call void @zcontext_save()
  call void @execsave()
  store i32 0, i32* @retflag, align 4
  store i32 0, i32* @breaks, align 4
  %13 = load i32, i32* @locallevel, align 4
  store i32 %13, i32* @traplocallevel, align 4
  %call = call i32 @runhookdef(%struct.hookdef* getelementptr inbounds ([0 x %struct.hookdef], [0 x %struct.hookdef]* @zshhooks, i32 0, i32 1), i8* null)
  %14 = load i32*, i32** %sigtr.addr, align 4
  %15 = load i32, i32* %14, align 4
  %and8 = and i32 %15, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.else28

if.then10:                                        ; preds = %if.end6
  %16 = load i32, i32* @sfcontext, align 4
  store i32 %16, i32* %osc, align 4
  %17 = load i32, i32* @incompfunc, align 4
  store i32 %17, i32* %old_incompfunc, align 4
  %18 = load i32, i32* %sig.addr, align 4
  %call11 = call %struct.hashnode* @gettrapnode(i32 %18, i32 0)
  store %struct.hashnode* %call11, %struct.hashnode** %hn, align 4
  %call12 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call12, %union.linkroot** %args, align 4
  %19 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool13 = icmp ne %struct.hashnode* %19, null
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  %20 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %20, i32 0, i32 1
  %21 = load i8*, i8** %nam, align 4
  %call15 = call i8* @ztrdup(i8* %21)
  store i8* %call15, i8** %name, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then10
  %22 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %22
  %23 = load i8*, i8** %arrayidx, align 4
  %call16 = call i32 @strlen(i8* %23)
  %add = add i32 5, %call16
  %call17 = call i8* @zalloc(i32 %add)
  store i8* %call17, i8** %name, align 4
  %24 = load i8*, i8** %name, align 4
  %25 = load i32, i32* %sig.addr, align 4
  %arrayidx18 = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %25
  %26 = load i8*, i8** %arrayidx18, align 4
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %26)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %27 = load %union.linkroot*, %union.linkroot** %args, align 4
  %28 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list = bitcast %union.linkroot* %28 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %29 = load %struct.linknode*, %struct.linknode** %last, align 4
  %30 = load i8*, i8** %name, align 4
  %call21 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %27, %struct.linknode* %29, i8* %30)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i32 0
  %31 = load i32, i32* %sig.addr, align 4
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %31)
  %32 = load %union.linkroot*, %union.linkroot** %args, align 4
  %33 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list23 = bitcast %union.linkroot* %33 to %struct.linklist*
  %last24 = getelementptr inbounds %struct.linklist, %struct.linklist* %list23, i32 0, i32 1
  %34 = load %struct.linknode*, %struct.linknode** %last24, align 4
  %arraydecay25 = getelementptr inbounds [4 x i8], [4 x i8]* %num, i32 0, i32 0
  %call26 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %32, %struct.linknode* %34, i8* %arraydecay25)
  store i32 -1, i32* @trap_return, align 4
  store i32 1, i32* @trap_state, align 4
  store i32 1, i32* %isfunc, align 4
  store i32 1, i32* @trapisfunc, align 4
  store i32 2, i32* @sfcontext, align 4
  store i32 0, i32* @incompfunc, align 4
  %35 = load i8*, i8** %sigfn.addr, align 4
  %36 = bitcast i8* %35 to %struct.shfunc*
  %37 = load %union.linkroot*, %union.linkroot** %args, align 4
  %call27 = call i32 @doshfunc(%struct.shfunc* %36, %union.linkroot* %37, i32 1)
  %38 = load i32, i32* %osc, align 4
  store i32 %38, i32* @sfcontext, align 4
  %39 = load i32, i32* %old_incompfunc, align 4
  store i32 %39, i32* @incompfunc, align 4
  %40 = load %union.linkroot*, %union.linkroot** %args, align 4
  call void @freelinklist(%union.linkroot* %40, void (i8*)* null)
  %41 = load i8*, i8** %name, align 4
  call void @zsfree(i8* %41)
  br label %if.end29

if.else28:                                        ; preds = %if.end6
  store i32 -2, i32* @trap_return, align 4
  store i32 1, i32* @trap_state, align 4
  store i32 0, i32* %isfunc, align 4
  store i32 0, i32* @trapisfunc, align 4
  %42 = load i8*, i8** %sigfn.addr, align 4
  %43 = bitcast i8* %42 to %struct.eprog*
  call void @execode(%struct.eprog* %43, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.end20
  %call30 = call i32 @runhookdef(%struct.hookdef* getelementptr inbounds ([0 x %struct.hookdef], [0 x %struct.hookdef]* @zshhooks, i32 0, i32 2), i8* null)
  %44 = load i32, i32* @errflag, align 4
  store i32 %44, i32* %traperr, align 4
  %45 = load i32, i32* @trap_state, align 4
  store i32 %45, i32* %new_trap_state, align 4
  %46 = load i32, i32* @trap_return, align 4
  store i32 %46, i32* %new_trap_return, align 4
  call void @execrestore()
  call void @zcontext_restore()
  %47 = load i32, i32* %new_trap_state, align 4
  %cmp = icmp eq i32 %47, 2
  br i1 %cmp, label %land.lhs.true, label %if.else46

land.lhs.true:                                    ; preds = %if.end29
  %48 = load i32, i32* %isfunc, align 4
  %tobool31 = icmp ne i32 %48, 0
  br i1 %tobool31, label %land.lhs.true32, label %if.then34

land.lhs.true32:                                  ; preds = %land.lhs.true
  %49 = load i32, i32* %new_trap_return, align 4
  %cmp33 = icmp eq i32 %49, 0
  br i1 %cmp33, label %if.else46, label %if.then34

if.then34:                                        ; preds = %land.lhs.true32, %land.lhs.true
  %50 = load i32, i32* %isfunc, align 4
  %tobool35 = icmp ne i32 %50, 0
  br i1 %tobool35, label %if.then36, label %if.end45

if.then36:                                        ; preds = %if.then34
  %51 = load i32, i32* @loops, align 4
  store i32 %51, i32* @breaks, align 4
  %52 = load i32, i32* %sig.addr, align 4
  %cmp37 = icmp eq i32 %52, 2
  br i1 %cmp37, label %if.then40, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.then36
  %53 = load i32, i32* %sig.addr, align 4
  %cmp39 = icmp eq i32 %53, 3
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %lor.lhs.false38, %if.then36
  %54 = load i32, i32* @errflag, align 4
  %or41 = or i32 %54, 2
  store i32 %or41, i32* @errflag, align 4
  br label %if.end44

if.else42:                                        ; preds = %lor.lhs.false38
  %55 = load i32, i32* @errflag, align 4
  %or43 = or i32 %55, 1
  store i32 %or43, i32* @errflag, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then40
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then34
  %56 = load i32, i32* %new_trap_return, align 4
  store i32 %56, i32* @lastval, align 4
  store i32 1, i32* @retflag, align 4
  br label %if.end67

if.else46:                                        ; preds = %land.lhs.true32, %if.end29
  %57 = load i32, i32* %traperr, align 4
  %tobool47 = icmp ne i32 %57, 0
  br i1 %tobool47, label %land.lhs.true48, label %if.else52

land.lhs.true48:                                  ; preds = %if.else46
  %58 = load i32, i32* @emulation, align 4
  %and49 = and i32 %58, 8
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.else52, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  store i32 1, i32* @lastval, align 4
  br label %if.end53

if.else52:                                        ; preds = %land.lhs.true48, %if.else46
  %59 = load i32, i32* %olastval, align 4
  store i32 %59, i32* @lastval, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then51
  %60 = load i32, i32* @try_tryflag, align 4
  %tobool54 = icmp ne i32 %60, 0
  br i1 %tobool54, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.end53
  %61 = load i32, i32* %traperr, align 4
  %tobool56 = icmp ne i32 %61, 0
  br i1 %tobool56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.then55
  %62 = load i32, i32* @errflag, align 4
  %or58 = or i32 %62, 1
  store i32 %or58, i32* @errflag, align 4
  br label %if.end61

if.else59:                                        ; preds = %if.then55
  %63 = load i32, i32* @errflag, align 4
  %and60 = and i32 %63, -2
  store i32 %and60, i32* @errflag, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end53
  %64 = load i32, i32* %obreaks, align 4
  %65 = load i32, i32* @breaks, align 4
  %add63 = add nsw i32 %65, %64
  store i32 %add63, i32* @breaks, align 4
  %66 = load i32, i32* %oretflag, align 4
  store i32 %66, i32* @retflag, align 4
  %67 = load i32, i32* @breaks, align 4
  %68 = load i32, i32* @loops, align 4
  %cmp64 = icmp sgt i32 %67, %68
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  %69 = load i32, i32* @loops, align 4
  store i32 %69, i32* @breaks, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end62
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end45
  %70 = load i32, i32* @zleactive, align 4
  %tobool68 = icmp ne i32 %70, 0
  br i1 %tobool68, label %land.lhs.true69, label %if.end73

land.lhs.true69:                                  ; preds = %if.end67
  %71 = load i32, i32* @resetneeded, align 4
  %tobool70 = icmp ne i32 %71, 0
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %land.lhs.true69
  %call72 = call i8* (i32, ...) @zleentry(i32 5)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %land.lhs.true69, %if.end67
  %72 = load i32*, i32** %sigtr.addr, align 4
  %73 = load i32, i32* %72, align 4
  %cmp74 = icmp ne i32 %73, 2
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end73
  %74 = load i32*, i32** %sigtr.addr, align 4
  %75 = load i32, i32* %74, align 4
  %and76 = and i32 %75, -3
  store i32 %and76, i32* %74, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73
  %76 = load i32, i32* @intrap, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* @intrap, align 4
  br label %do.body

do.body:                                          ; preds = %if.end77
  %77 = load i32, i32* @queueing_enabled, align 4
  %dec78 = add nsw i32 %77, -1
  store i32 %dec78, i32* @queueing_enabled, align 4
  %tobool79 = icmp ne i32 %dec78, 0
  br i1 %tobool79, label %if.end87, label %if.then80

if.then80:                                        ; preds = %do.body
  br label %do.body81

do.body81:                                        ; preds = %if.then80
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body81
  %78 = load i32, i32* @queue_front, align 4
  %79 = load i32, i32* @queue_rear, align 4
  %cmp82 = icmp ne i32 %78, %79
  br i1 %cmp82, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %80 = load i32, i32* @queue_front, align 4
  %add83 = add nsw i32 %80, 1
  %rem = srem i32 %add83, 128
  store i32 %rem, i32* @queue_front, align 4
  %81 = load i32, i32* @queue_front, align 4
  %arrayidx84 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %81
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx84)
  %82 = bitcast %struct.__sigset_t* %oset to i8*
  %83 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %82, i8* %83, i32 128, i32 4, i1 false)
  %84 = load i32, i32* @queue_front, align 4
  %arrayidx85 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %84
  %85 = load i32, i32* %arrayidx85, align 4
  call void @zhandler(i32 %85)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp86, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end87

if.end87:                                         ; preds = %do.end, %do.body
  br label %do.end88

do.end88:                                         ; preds = %if.then, %sw.bb, %if.end87
  ret void
}

; Function Attrs: noinline nounwind
define void @queue_traps(i32 %wait_cmd) #0 {
entry:
  %wait_cmd.addr = alloca i32, align 4
  store i32 %wait_cmd, i32* %wait_cmd.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 171), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %wait_cmd.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @trap_queueing_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @unqueue_traps() #0 {
entry:
  store i32 0, i32* @trap_queueing_enabled, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @trap_queue_front, align 4
  %1 = load i32, i32* @trap_queue_rear, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* @trap_queue_front, align 4
  %add = add nsw i32 %2, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @trap_queue_front, align 4
  %3 = load i32, i32* @trap_queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @trap_queue, i32 0, i32 %3
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 @handletrap(i32 %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind
define void @dotrap(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %funcprog = alloca i8*, align 4
  %q = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp17 = alloca %struct.__sigset_t, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  store i32 %0, i32* %q, align 4
  %1 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %1
  %2 = load i32, i32* %arrayidx, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %sig.addr, align 4
  %call = call %struct.hashnode* @gettrapnode(i32 %3, i32 0)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %4 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool1 = icmp ne %struct.hashnode* %4, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %6 = bitcast %struct.hashnode* %5 to i8*
  store i8* %6, i8** %funcprog, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i8* null, i8** %funcprog, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.else3:                                         ; preds = %entry
  %7 = load i32, i32* %sig.addr, align 4
  %arrayidx4 = getelementptr inbounds [34 x %struct.eprog*], [34 x %struct.eprog*]* @siglists, i32 0, i32 %7
  %8 = load %struct.eprog*, %struct.eprog** %arrayidx4, align 4
  %9 = bitcast %struct.eprog* %8 to i8*
  store i8* %9, i8** %funcprog, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  %10 = load i32, i32* %sig.addr, align 4
  %arrayidx6 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %10
  %11 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %11, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %12 = load i8*, i8** %funcprog, align 4
  %tobool9 = icmp ne i8* %12, null
  br i1 %tobool9, label %lor.lhs.false10, label %if.then12

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* @errflag, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end5
  br label %return

if.end13:                                         ; preds = %lor.lhs.false10
  br label %do.body

do.body:                                          ; preds = %if.end13
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body14

do.body14:                                        ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body14
  %14 = load i32, i32* @queue_front, align 4
  %15 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %14, %15
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %16, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %17 = load i32, i32* @queue_front, align 4
  %arrayidx15 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %17
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx15)
  %18 = bitcast %struct.__sigset_t* %oset to i8*
  %19 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 4, i1 false)
  %20 = load i32, i32* @queue_front, align 4
  %arrayidx16 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %20
  %21 = load i32, i32* %arrayidx16, align 4
  call void @zhandler(i32 %21)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp17, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %do.end18

do.end18:                                         ; preds = %do.end
  %22 = load i32, i32* %sig.addr, align 4
  %cmp19 = icmp eq i32 %22, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.end18
  %23 = load i32, i32* @in_exit_trap, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* @in_exit_trap, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end18
  %24 = load i32, i32* %sig.addr, align 4
  %25 = load i32, i32* %sig.addr, align 4
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 0), i32 %25
  %26 = load i8*, i8** %funcprog, align 4
  call void @dotrapargs(i32 %24, i32* %add.ptr, i8* %26)
  %27 = load i32, i32* %sig.addr, align 4
  %cmp22 = icmp eq i32 %27, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  %28 = load i32, i32* @in_exit_trap, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* @in_exit_trap, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %29 = load i32, i32* %q, align 4
  store i32 %29, i32* @queueing_enabled, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then12
  ret void
}

declare i8* @zalloc(i32) #1

declare i8* @zshcalloc(i32) #1

declare i8* @ztrdup(i8*) #1

declare %struct.eprog* @dupeprog(%struct.eprog*, i32) #1

declare void @dircache_set(i8**, i8*) #1

declare %struct.emulation_options* @sticky_emulation_dup(%struct.emulation_options*, i32) #1

declare %union.linkroot* @znewlinklist() #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare void @zcontext_save() #1

declare void @execsave() #1

declare i32 @runhookdef(%struct.hookdef*, i8*) #1

declare i32 @strlen(i8*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @doshfunc(%struct.shfunc*, %union.linkroot*, i32) #1

declare void @freelinklist(%union.linkroot*, void (i8*)*) #1

declare void @zsfree(i8*) #1

declare void @execode(%struct.eprog*, i32, i32, i8*) #1

declare void @execrestore() #1

declare void @zcontext_restore() #1

declare i8* @zleentry(i32, ...) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
